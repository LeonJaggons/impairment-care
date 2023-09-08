import { useEffect, useState } from "react";
import { Form } from "react-bootstrap";
import { useSelector } from "react-redux";
import { useAppDispatch } from "../../../redux/store";
import { updateNewPatient } from "../../../redux/reducers/patientReducer";
import { Gender } from "../../../services/demographics_services";
import { NewPatientInputTypes } from "./AddPatientModal";

export const NewPatientInput = (props: {
    label?: string;
    dataKey?: string;
    type: NewPatientInputTypes;
}) => {
    const dispatch = useAppDispatch();
    const newPatient = useSelector((state: any) => state.patient.newPatient);
    const showAddPatient = useSelector(
        (state: any) => state.patient.showAddPatient
    );

    const [value, setValue] = useState<any>();

    const updateValue = (patientStrData: string) => {
        if (!props.dataKey) return;
        const data = JSON.parse(patientStrData);
        setValue(data[props.dataKey]);
    };

    useEffect(() => {
        updateValue(newPatient);
    }, [newPatient, showAddPatient]);

    const handleChange = (e: any) => {
        if (!props.dataKey) return;
        console.log(e.target.value);
        let newValue = { [props.dataKey]: e };
        if (e.target) {
            newValue[props.dataKey] = e.target.value;
            if (e.target.checked) {
                newValue[props.dataKey] = e.target.checked;
            }
        }
        console.log("NEW VALUE", newValue);
        dispatch(updateNewPatient(newValue));
    };

    const getFormControl = (type: NewPatientInputTypes) => {
        switch (type) {
            case NewPatientInputTypes.Text:
                return (
                    <NewPatientTextInput
                        handleChange={handleChange}
                        value={value}
                    />
                );
            case NewPatientInputTypes.Gender:
                return (
                    <NewPatientGenderInput
                        handleChange={handleChange}
                        value={value}
                    />
                );
        }
    };

    return (
        <div>
            {props.label && (
                <Form.Label style={{ marginBottom: 2, fontSize: 14 }}>
                    {props.label}
                </Form.Label>
            )}
            {getFormControl(props.type)}
        </div>
    );
};
const NewPatientTextInput = (props: { handleChange: any; value: any }) => {
    return (
        <Form.Control
            value={props.value}
            onChange={props.handleChange}
        ></Form.Control>
    );
};
const NewPatientGenderInput = (props: { handleChange: any; value: any }) => {
    const [genders, setGenders] = useState<Gender[]>([]);
    const patientGenders = useSelector(
        (state: any) => state.patient.patientGenders
    );
    useEffect(() => {
        setGenders(patientGenders);
    }, [patientGenders]);
    return (
        <>
            <Form.Select onChange={props.handleChange} value={props.value}>
                {genders.map((gender) => (
                    <option key={"GENDER-ID-" + gender.id} value={gender.id}>
                        {gender.description}
                    </option>
                ))}
            </Form.Select>
        </>
    );
};
