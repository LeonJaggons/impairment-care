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
    setShowPatientVisits,
    setSelectedVisit,
    setVisitTab,
} from "../../../redux/reducers/patientReducer";
import { useSelector } from "react-redux";
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
        props.patientID && dispatch(setShowPatientVisits(props.patientID));
    };
    return (
        <>
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
            dispatch(setShowPatientVisits(""));
        }
    };

    React.useEffect(() => {
        if (showPatientVisits !== "") {
            loadVisits();
        } else {
            setVisits([]);
        }
    }, [showPatientVisits, visitTab]);

    const handleChangeToAdd = () => {
        dispatch(setVisitTab("ADD-VISIT"));
    };
    React.useEffect(() => {
        console.log("SELECTED V", selectedVisit);
    }, [selectedVisit]);
    return (
        <div>
            <Row style={{ justifyContent: "flex-end", width: "100%" }}>
                {visitTab === "ADD-VISIT" && (
                    <CloseButton
                        style={{ marginBottom: 12 }}
                        onClick={handleClose}
                    />
                )}
            </Row>
            <Tab.Container activeKey={visitTab} unmountOnExit>
                {visitTab === "VISIT-TABLE" && (
                    <Tab.Content
                        eventKey={"VISIT-TABLE"}
                        style={{ border: "none" }}
                    >
                        <PatientVisitsTable visits={visits} />
                    </Tab.Content>
                )}
                {visitTab === "ADD-VISIT" && (
                    <Tab.Content
                        eventKey={"ADD-VISIT"}
                        style={{ padding: 0, border: "none" }}
                    >
                        <AddVisitForm
                            newVisit={newVisit}
                            handleUpdateVisit={handleUpdateVisit}
                        />
                    </Tab.Content>
                )}
            </Tab.Container>
            <Row style={{ marginTop: 12 }}>
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
        </div>
    );
};

const OpenVisitButton = () => {
    const [impairmentURL, setImpairmentURL] = React.useState<string>();
    const selectedVisit = useSelector(
        (state: any) => state.patient.selectedVisit
    );
    React.useEffect(() => {
        console.log(selectedVisit);
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
        <Table bordered hover striped>
            {/* <thead>
                <tr>
                    <th style={{ padding: 18 }}>Date</th>
                    <th style={{ padding: 18 }}>Description</th>
                    <th style={{ padding: 18 }}>Default Chapter</th>
                </tr>
            </thead> */}
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
        <Stack gap={3} style={{ padding: 14 }}>
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
        console.log("VISITS", props.visit);
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
                padding: 18,
            });
        }
    }, [selectedVisit]);
    return (
        <tr onClick={handleClick} style={{ cursor: "pointer" }}>
            <td
                style={{
                    ...rowStyle,
                    padding: 18,
                }}
            >
                {props.visit.visitDate.toString()}
            </td>
            <td
                style={{
                    ...rowStyle,
                    padding: 18,
                }}
            >
                {props.visit.visitDescription}
            </td>
            <td
                style={{
                    ...rowStyle,
                    padding: 18,
                }}
            >
                {props.visit.defaultChapterName}
            </td>
        </tr>
    );
};
export default AddVisitsButton;
