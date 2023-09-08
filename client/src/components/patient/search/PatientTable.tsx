import { Button, Stack, Table } from "react-bootstrap";
import AddPatientModal from "../add/AddPatientModal";
import { useAppDispatch } from "../../../redux/store";
import { toggleAddPatient } from "../../../redux/reducers/patientReducer";
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
    return (
        <Table style={{ fontSize: 14 }} bordered hover>
            <PatientTableHeader headers={patientTableHeaders} />
            <tbody>
                <tr>
                    <td>Jaggon</td>
                    <td>Leon</td>
                    <td>Orlando</td>
                    <td>M</td>
                    <td>09/19/1996</td>
                    <td>
                        <Stack
                            style={{ width: "100%" }}
                            direction={"horizontal"}
                            gap={1}
                        >
                            <Button style={{ flex: 1 }}>Visits</Button>
                            <Button style={{ flex: 1 }} variant={"light"}>
                                Edit
                            </Button>
                        </Stack>
                    </td>
                </tr>
            </tbody>
        </Table>
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
