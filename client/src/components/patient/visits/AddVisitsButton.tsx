import React from "react";
import {
    Button,
    CloseButton,
    Col,
    Form,
    Modal,
    Row,
    Stack,
    Tab,
    Table,
} from "react-bootstrap";
import { useAppDispatch } from "../../../redux/store";
import {
    closePatientVisits,
    openPatientVisits,
    setSelectedVisit,
    setVisitTab,
} from "../../../redux/reducers/patientReducer";
import { useDispatch, useSelector } from "react-redux";
import {
    Visit,
    addNewVisit,
    getVisitsByPatientID,
} from "../../../services/patient_services";
import ReactDatePicker from "react-datepicker";
import { Chapter, getChapters } from "../../../services/impairment_services";

const AddVisitsButton = (props: { patientID?: string }) => {
    const dispatch = useAppDispatch();
    const handleOpen = () => {
        dispatch(openPatientVisits());
    };
    return (
        <>
            <Button style={{ flex: 1 }} onClick={handleOpen}>
                Visits
            </Button>
            <AddVisitsModal patientID={props.patientID} />
        </>
    );
};
const AddVisitsModal = (props: { patientID?: string }) => {
    const [visits, setVisits] = React.useState<Visit[]>([]);
    const selectedVisit = useSelector(
        (state: any) => state.patient.selectedVisit
    );
    const [newVisit, setNewVisit] = React.useState<Visit>({
        patientID: props.patientID,
    } as Visit);

    const handleUpdateVisit = (param: string, val: any) => {
        let updatedVisit = {
            ...newVisit,
            [param]: val,
        };
        setNewVisit({ ...updatedVisit });
    };
    const handleAddVisit = async () => {
        await addNewVisit(newVisit);
    };
    const visitTab = useSelector((state: any) => state.patient.visitTab);
    const dispatch = useAppDispatch();
    const showPatientVisits = useSelector(
        (state: any) => state.patient.showPatientVisits
    );

    const loadVisits = async () => {
        const newVisits = await getVisitsByPatientID(props.patientID);
        console.log(newVisits);
        setVisits([...newVisits]);
    };
    const handleClose = () => {
        if (visitTab === "ADD-VISIT") {
            dispatch(setVisitTab("VISIT-TABLE"));
        } else {
            dispatch(closePatientVisits());
        }
    };

    React.useEffect(() => {
        if (showPatientVisits) {
            loadVisits();
        }
    }, [showPatientVisits]);

    const handleChangeToAdd = () => {
        dispatch(setVisitTab("ADD-VISIT"));
    };
    React.useEffect(() => {
        console.log("SELECTED V", selectedVisit);
    }, [selectedVisit]);
    return (
        <Modal show={showPatientVisits} centered size={"lg"}>
            <Modal.Header>
                <Modal.Title>Patient Visits</Modal.Title>
                <CloseButton onClick={handleClose} />
            </Modal.Header>
            <Tab.Container activeKey={visitTab} unmountOnExit>
                {visitTab === "VISIT-TABLE" && (
                    <Tab.Content eventKey={"VISIT-TABLE"}>
                        <PatientVisitsTable visits={visits} />
                    </Tab.Content>
                )}
                {visitTab === "ADD-VISIT" && (
                    <Tab.Content eventKey={"ADD-VISIT"}>
                        <AddVisitForm
                            newVisit={newVisit}
                            handleUpdateVisit={handleUpdateVisit}
                        />
                    </Tab.Content>
                )}
            </Tab.Container>
            <Modal.Footer>
                <Row style={{ width: "100%" }}>
                    <Col>
                        <Button
                            style={{ width: "100%" }}
                            variant={
                                visitTab === "VISIT-TABLE"
                                    ? "outline-primary"
                                    : "primary"
                            }
                            onClick={
                                visitTab === "VISIT-TABLE"
                                    ? handleChangeToAdd
                                    : handleAddVisit
                            }
                        >
                            {visitTab === "VISIT-TABLE" ? "Add" : "Save"} Visit
                        </Button>
                    </Col>
                    {selectedVisit && (
                        <Col>
                            <OpenVisitButton />
                        </Col>
                    )}
                </Row>
            </Modal.Footer>
        </Modal>
    );
};

const OpenVisitButton = () => {
    const [impairmentURL, setImpairmentURL] = React.useState<string>();
    const selectedVisit = useSelector(
        (state: any) => state.patient.selectedVisit
    );
    React.useEffect(() => {
        setImpairmentURL(
            `/impairment?patientID=${selectedVisit?.patientID}&visitID=${selectedVisit?.id}`
        );
    }, [selectedVisit]);
    return (
        selectedVisit &&
        impairmentURL && (
            <a href={impairmentURL}>
                <Button style={{ width: "100%" }}>Open Visit</Button>
            </a>
        )
    );
};
const PatientVisitsTable = (props: { visits: any[] }) => {
    return (
        <Table style={{ fontSize: 13 }} bordered hover striped>
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Default Chapter</th>
                </tr>
            </thead>
            <tbody>
                {props.visits.map((v) => (
                    <VisitRow visit={v} />
                ))}
            </tbody>
        </Table>
    );
};

const AddVisitForm = (props: { newVisit: Visit; handleUpdateVisit: any }) => {
    const handleUpdateDate = (newDate: Date): any =>
        props.handleUpdateVisit("visitDate", newDate.toISOString());
    const handleUpdateDescription = (e: any): any =>
        props.handleUpdateVisit("visitDescription", e.target.value);
    const handleUpdateChapterID = (e: any): any =>
        props.handleUpdateVisit("defaultChapterID", e.target.value);

    return (
        <Stack gap={3}>
            <Row>
                <Col>
                    <Form.Label>Visit Date</Form.Label>
                    <ReactDatePicker
                        value={new Date(
                            props.newVisit.visitDate
                        )?.toDateString()}
                        onChange={handleUpdateDate}
                    />
                </Col>
            </Row>
            <Row>
                <Col>
                    <Form.Label>Visit Description</Form.Label>
                    <Form.Control
                        as={"textarea"}
                        rows={4}
                        onChange={handleUpdateDescription}
                    />
                </Col>
            </Row>
            <Row>
                <Col>
                    <Form.Label>Default Chapter</Form.Label>
                    <VisitChapterSelect onChange={handleUpdateChapterID} />
                </Col>
            </Row>
        </Stack>
    );
};

const VisitChapterSelect = (props: { onChange: any }) => {
    const [chapters, setChapters] = React.useState<Chapter[]>([]);
    const loadChapters = async () => {
        const newChapters = await getChapters();
        setChapters([...newChapters]);
    };
    const patient = useSelector((state: any) => state.patient.patientChapters);
    React.useEffect(() => {
        loadChapters();
    }, []);
    return (
        <Form.Select onChange={props.onChange}>
            {chapters.map((c) => (
                <option value={c.id}>{c.name}</option>
            ))}
        </Form.Select>
    );
};
const VisitRow = (props: { visit: Visit }) => {
    const dispatch = useAppDispatch();
    const selectedVisit = useSelector(
        (state: any) => state.patient.selectedVisit
    );
    const [rowStyle, setRowStyle] = React.useState<React.CSSProperties>({});
    const handleClick = () => {
        dispatch(setSelectedVisit(props.visit));
    };
    React.useEffect(() => {
        if (selectedVisit) {
            const isSelected = selectedVisit.id === props.visit.id;
            const newColor = isSelected ? "white" : "black";
            const newBg = isSelected ? "rgb(114, 98, 170)" : "";
            setRowStyle({
                backgroundColor: newBg,
                color: newColor,
            });
        }
    }, [selectedVisit]);
    return (
        <tr onClick={handleClick} style={{ cursor: "pointer" }}>
            <td style={rowStyle}>{props.visit.visitDate.toString()}</td>
            <td style={rowStyle}>{props.visit.visitDescription}</td>
            <td style={rowStyle}>{props.visit.defaultChapterName}</td>
        </tr>
    );
};
export default AddVisitsButton;
