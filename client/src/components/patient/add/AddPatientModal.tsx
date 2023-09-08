import { Children, ReactElement, useEffect } from "react";
import {
    Button,
    CloseButton,
    Form,
    Modal,
    Stack,
    Tab,
    Tabs,
} from "react-bootstrap";
import { useSelector } from "react-redux";
import { useAppDispatch } from "../../../redux/store";
import { closeAddPatient } from "../../../redux/reducers/patientReducer";
import DemographicsForm from "./DemographicsForm";
import { loadGenders } from "../../../services/demographics_services";

const patientTabForms: PatientTabForm[] = [
    { title: "Demographics", eventKey: "demo", element: <DemographicsForm /> },
    { title: "Contact", eventKey: "contact", element: <></> },
    { title: "Location", eventKey: "location", element: <></> },
    { title: "Claim Details", eventKey: "claim", element: <></> },
    { title: "California Specific", eventKey: "california", element: <></> },
];

const AddPatientModal = () => {
    const dispatch = useAppDispatch();
    const newPatient = useSelector((state: any) => state.patient.newPatient);

    const loadSelectData = async () => {
        await loadGenders();
    };
    useEffect(() => {
        loadSelectData();
    }, []);
    useEffect(() => {
        // console.table(JSON.parse(newPatient));
    }, [newPatient]);

    const showAddPatient = useSelector(
        (state: any) => state.patient.showAddPatient
    );

    const handleClose = () => {
        dispatch(closeAddPatient());
    };

    return (
        <Modal show={showAddPatient} centered size={"xl"}>
            <Modal.Header>
                <Modal.Title>Add New Patient</Modal.Title>
                <CloseButton onClick={handleClose} />
            </Modal.Header>
            <AddPatientNavigation tabs={patientTabForms} />
            <Modal.Footer>
                <Button style={{ width: "100%" }} variant="outline-primary">
                    Review
                </Button>
            </Modal.Footer>
        </Modal>
    );
};

export type PatientTabForm = {
    title: string;
    eventKey: string;
    element: ReactElement;
};

const AddPatientNavigation = (props: { tabs: PatientTabForm[] }) => {
    return (
        <div style={{ padding: 12 }}>
            <Tabs justify>
                {props.tabs.map((tabForm) => (
                    <Tab
                        title={tabForm.title}
                        key={"TAB-" + tabForm.eventKey}
                        eventKey={tabForm.eventKey}
                    >
                        {tabForm.element}
                    </Tab>
                ))}
            </Tabs>
        </div>
    );
};

export enum NewPatientInputTypes {
    Text,
    Gender,
}

export const AddFormWrapper = (props: { children: any }) => {
    return (
        <Form>
            <Stack gap={3}>{props.children}</Stack>
        </Form>
    );
};
export default AddPatientModal;
