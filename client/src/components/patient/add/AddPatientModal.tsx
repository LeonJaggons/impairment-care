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
import {
    clearNewPatient,
    closeAddPatient,
    setNewPatient,
} from "../../../redux/reducers/patientReducer";
import DemographicsForm from "./forms/DemographicsForm";
import {
    loadGenders,
    loadDominantSides,
    loadOccupationCats,
    loadMaritalStatuses,
    loadIndustries,
} from "../../../services/demographics_services";
import CaliforniaForm from "./forms/CaliforniaForm";
import { loadEditions } from "../../../services/impairment_services";
import { addNewPatient } from "../../../services/patient_services";

const patientTabForms: PatientTabForm[] = [
    { title: "Demographics", eventKey: "demo", element: <DemographicsForm /> },
    { title: "Contact", eventKey: "contact", element: <></> },
    { title: "Location", eventKey: "location", element: <></> },
    { title: "Claim Details", eventKey: "claim", element: <></> },
    {
        title: "California Specific",
        eventKey: "california",
        element: <CaliforniaForm />,
    },
];

const AddPatientModal = (props: { static?: boolean }) => {
    const dispatch = useAppDispatch();
    const newPatient = useSelector((state: any) => state.patient.newPatient);

    const loadSelectData = async () => {
        await loadGenders();
        await loadDominantSides();
        await loadOccupationCats();
        await loadMaritalStatuses();
        await loadIndustries();
        await loadEditions();
    };
    useEffect(() => {
        loadSelectData();
        return () => {
            dispatch(setNewPatient({}));
        };
    }, []);

    const showAddPatient = useSelector(
        (state: any) => state.patient.showAddPatient
    );

    const handleClose = () => {
        dispatch(closeAddPatient());
    };

    const handleAddPatient = async () => {
        await addNewPatient();
    };
    return props.static ? (
        <div style={{ backgroundColor: "white" }}>
            <AddPatientNavigation tabs={patientTabForms} />
        </div>
    ) : (
        <Modal show={showAddPatient} centered size={"xl"}>
            <Modal.Header>
                <Modal.Title>Add New Patient</Modal.Title>
                <CloseButton onClick={handleClose} />
            </Modal.Header>
            <AddPatientNavigation tabs={patientTabForms} />
            <Modal.Footer>
                <Button
                    style={{ width: "100%" }}
                    variant="outline-primary"
                    onClick={handleAddPatient}
                >
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
    Date,
    Select,
}

export const AddFormWrapper = (props: { children: any }) => {
    return (
        <Form>
            <Stack gap={3}>{props.children}</Stack>
        </Form>
    );
};
export default AddPatientModal;
