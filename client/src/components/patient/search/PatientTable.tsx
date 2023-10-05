import {
    Button,
    Collapse,
    Form,
    InputGroup,
    Stack,
    Table,
} from "react-bootstrap";
import AddPatientModal from "../add/AddPatientModal";
import { useAppDispatch } from "../../../redux/store";
import {
    setSelectedVisit,
    setShowPatientVisits,
    toggleAddPatient,
} from "../../../redux/reducers/patientReducer";
import Patient from "../../../models/patient";
import React, { useEffect } from "react";
import { Visit, getAllPatients } from "../../../services/patient_services";
import AddVisitsButton from "../visits/AddVisitsButton";
import {
    MdExpandLess,
    MdExpandMore,
    MdFilterAlt,
    MdPersonAdd,
} from "react-icons/md";
import { useSelector } from "react-redux";
export const PatientTableSection = () => {
    return (
        <div id={"patient-table-container"}>
            <div>
                <PatientTable />
            </div>
        </div>
    );
};

type PatientTableHeader = {
    label: string;
    dataKey: string;
};

const patientTableHeaders: PatientTableHeader[] = [
    { label: "Last Name", dataKey: "lastName" },
    { label: "First Name", dataKey: "firstName" },
    { label: "Middle Name", dataKey: "middleName" },
    { label: "Gender", dataKey: "gender" },
    { label: "Date of Birth", dataKey: "dob" },
];

const PatientTable = () => {
    const [patients, setPatients] = React.useState<Patient[]>([]);
    const loadPatients = async () => {
        const newPatients = await getAllPatients();
        setPatients([...newPatients]);
    };

    React.useEffect(() => {
        loadPatients();
    }, []);
    return (
            <Table style={{ border: "1px solid rgba(0,0,0,.1)" }} bordered>
                <PatientTableHeader headers={patientTableHeaders} />
                <tbody>
                    {patients.map((p) => (
                        <PatientRow patient={p} />
                    ))}
                </tbody>
            </Table>
        // <div
        //     style={{
        //         borderRadius: "6px",
        //         overflow: "hidden",
        //         backgroundColor: "white",
        //         padding: "25px 0px",
        //     }}
        // >
        // </div>
    );
};
const PatientRow = (props: { patient: Patient }) => {
    const dispatch = useAppDispatch();
    const [collapsed, setCollapsed] = React.useState(false);
    const showPatientVisits = useSelector(
        (state: any) => state.patient.showPatientVisits
    );
    console.log(props.patient);
    useEffect(() => {
        if (props.patient.id) {
            setCollapsed(props.patient.id === showPatientVisits);
        }
    }, [showPatientVisits]);

    const handleClick = () => {
        if (props.patient.id) {
            if (props.patient.id === showPatientVisits) {
                dispatch(setShowPatientVisits(""));
                dispatch(setSelectedVisit(null));
            } else {
                dispatch(setShowPatientVisits(props.patient.id?.toString()));
            }
        }
    };
    return (
        <>
            <tr>
                <td>{props.patient.lastName}</td>
                <td>{props.patient.firstName}</td>
                <td>{props.patient.middleName}</td>
                <td>{props.patient.genderID}</td>
                <td>{props.patient.dateOfBirth?.toString()}</td>
                <td>
                    <Stack
                        style={{ width: "100%" }}
                        direction={"horizontal"}
                        gap={1}
                    >
                        <Button
                            onClick={handleClick}
                            variant={"outline-primary"}
                            style={{ flex: 1 }}
                        >
                            {showPatientVisits !== props.patient.id ? (
                                <MdExpandMore size={15} />
                            ) : (
                                <MdExpandLess size={15} />
                            )}
                            <span style={{ marginLeft: 4 }}>Visits</span>
                        </Button>
                        <Button
                            style={{ flex: 1 }}
                            variant={"light"}
                            size={"sm"}
                        >
                            Edit
                        </Button>
                    </Stack>
                </td>
            </tr>
            <tr
                style={{
                    height: "auto",
                    lineHeight: "0px",
                }}
            >
                <td
                    colSpan={6}
                    style={{
                        padding: 0,
                        backgroundColor: "rgba(114, 98, 170,.2) !important",
                    }}
                >
                    <Collapse in={collapsed}>
                        <div style={{ height: 50 }}>
                            <div style={{ padding: 12 }}>
                                <AddVisitsButton patientID={props.patient.id} />
                            </div>
                        </div>
                    </Collapse>
                </td>
            </tr>
        </>
    );
};
const PatientTableHeader = (props: { headers: PatientTableHeader[] }) => {
    return (
        <thead>
            <tr>
                {props.headers.map((header) => (
                    <th key={"HEADER-" + header.dataKey}>
                        <p
                            style={{
                                marginBottom: 4,
                                fontWeight: 600,
                                fontSize: 12,
                                color: "rgba(0,0,0,.8)",
                            }}
                        >
                            {header.label}
                        </p>
                        <InputGroup>
                            <InputGroup.Text
                                style={{
                                    borderColor: "rgba(0,0,0,.2)",
                                    borderRadius: 0,
                                }}
                            >
                                <MdFilterAlt
                                    color={"rgba(0,0,0,.5)"}
                                    size={12}
                                />
                            </InputGroup.Text>
                            <Form.Control style={{ fontSize: 10 }} />
                        </InputGroup>
                    </th>
                ))}
                <th style={{ borderLeftColor: "white !important" }}>
                    <AddPatientButton />
                </th>
            </tr>
        </thead>
    );
};

const AddPatientButton = () => {
    const dispatch = useAppDispatch();

    const handleClick = () => {
        dispatch(toggleAddPatient());
    };
    return (
        <div style={{ height: "50px" }}>
            <Button
                size={"sm"}
                onClick={handleClick}
                style={{
                    display: "flex",
                    width: "100%",
                    height: "100%",
                    justifyContent: "center",
                    alignItems: "center",
                }}
                variant="primary"
            >
                <MdPersonAdd style={{ marginRight: 10 }} size={18} />
                Add New Patient
            </Button>
            <AddPatientModal />
        </div>
    );
};
