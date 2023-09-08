import { useEffect, useState } from "react";
import { Col, Form, Row } from "react-bootstrap";
import { useSelector } from "react-redux";
import { useAppDispatch } from "../../../redux/store";
import { updateNewPatient } from "../../../redux/reducers/patientReducer";
import { NewPatientInputTypes } from "./AddPatientModal";
import DatePicker from "react-datepicker";

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

    const [value, setValue] = useState<any>("");

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
        let newValue = { [props.dataKey]: e };
        switch (props.type) {
            case NewPatientInputTypes.Text:
            case NewPatientInputTypes.Select:
                newValue[props.dataKey] = e.target.value;
                break;
            case NewPatientInputTypes.Date:
                const newDate: Date = e;
                newValue[props.dataKey] = newDate.toISOString();
                break;
        }
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
            case NewPatientInputTypes.Select:
                return (
                    <NewPatientSelectInput
                        handleChange={handleChange}
                        value={value}
                        dataKey={props.dataKey}
                    />
                );

            case NewPatientInputTypes.Date:
                return (
                    <NewPatientDateInput
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

const NewPatientSelectInput = (props: {
    handleChange: any;
    value: any;
    dataKey?: string;
}) => {
    const [options, setOptions] = useState<any[]>([]);
    const stateOptions = useSelector((state: any) => {
        switch (props.dataKey) {
            case "genderID":
                return state.patient.patientGenders;
            case "dominantSideID":
                return state.patient.patientDominantSides;
            case "occupationCatID":
                return state.patient.patientOccupationCats;
            case "maritalStatusID":
                return state.patient.patientMaritalStatuses;
            case "industryID":
                return state.patient.patientIndustries;
            default:
                return [];
        }
    });
    useEffect(() => {
        setOptions(stateOptions);
    }, [stateOptions]);
    return (
        <>
            <Form.Select
                onChange={props.handleChange}
                value={props.value ? props.value : 0}
            >
                {options.map((opt) => (
                    <option
                        key={props.dataKey + "-ID-" + opt.id}
                        value={opt.id}
                    >
                        {opt.description}
                    </option>
                ))}
            </Form.Select>
        </>
    );
};

const NewPatientDateInput = (props: { handleChange: any; value: any }) => {
    return (
        <>
            <Row>
                <Col>
                    <DatePicker
                        selected={
                            props.value ? new Date(props.value) : new Date()
                        }
                        onChange={props.handleChange}
                    />
                </Col>
            </Row>
        </>
    );
};
