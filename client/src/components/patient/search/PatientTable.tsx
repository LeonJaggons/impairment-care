import { Button, Stack, Table } from "react-bootstrap";
import AddPatientModal from "../add/AddPatientModal";
import { useAppDispatch } from "../../../redux/store";
import { toggleAddPatient } from "../../../redux/reducers/patientReducer";
import Patient from "../../../models/patient";
import React from "react";
import { getAllPatients } from "../../../services/patient_services";
import AddVisitsButton from "../visits/AddVisitsButton";
export const PatientTableSection = () => {
    return (
        <div id={"patient-table-container"}>
            <PatientTable />
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
        <Table style={{ fontSize: 14 }} bordered hover>
            <PatientTableHeader headers={patientTableHeaders} />
            <tbody>
                {patients.map((p) => (
                    <PatientRow patient={p} />
                ))}
            </tbody>
        </Table>
    );
};
const PatientRow = (props: { patient: Patient }) => {
    return (
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
                    <AddVisitsButton patientID={props.patient.id} />
                    <Button style={{ flex: 1 }} variant={"light"}>
                        Edit
                    </Button>
                </Stack>
            </td>
        </tr>
    );
};
const PatientTableHeader = (props: { headers: PatientTableHeader[] }) => {
    return (
        <thead>
            <tr>
                {props.headers.map((header) => (
                    <th key={"HEADER-" + header.dataKey}>{header.label}</th>
                ))}
                <th>
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
        <>
            <Button
                onClick={handleClick}
                style={{ display: "block", width: "100%" }}
            >
                Add New Patient
            </Button>
            <AddPatientModal />
        </>
    );
};
