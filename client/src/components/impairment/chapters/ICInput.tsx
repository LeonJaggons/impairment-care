import React, { useEffect, useState } from "react";
import { Form, Stack } from "react-bootstrap";
import { updatePatientImpairment } from "../../../services/impairment_services";
import { useSelector } from "react-redux";

const ICInput = (props: { label?: string; impKey: string }) => {
    const [value, setValue] = useState();
    const patientImpairments = useSelector(
        (state) => state.patient.patientImpairment
    );
    const handleChange = async (e) => {
        const newValue = e.target.value;
        const imp = await updatePatientImpairment(1, props.impKey, newValue);
        setValue(newValue);
        console.log(imp);
    };

    const getImpairmentValue = (impCode: string, impairments: any[]) => {
        if (!impairments) return null;
        console.log(impairments);
        for (let imp of impairments) {
            console.log(imp.impairmentCode, impCode);
            if (imp.impairmentCode === impCode) {
                console.log("FOUND", props.impKey);
                return imp.value;
            }
        }
        return null;
    };
    useEffect(() => {
        const newValue = getImpairmentValue(props.impKey, patientImpairments);
        setValue(newValue || "");
    }, [patientImpairments]);

    useEffect(() => {
        const newValue = getImpairmentValue(props.impKey, patientImpairments);
        console.log(props.impKey, newValue);
        setValue(newValue || "");
    }, []);
    return (
        <Stack>
            {props.label && (
                <p style={{ marginBottom: 8, fontSize: 14 }}>{props.label}</p>
            )}
            <Form.Control
                value={value}
                onChange={handleChange}
                type={"number"}
            />
        </Stack>
    );
};

export default ICInput;
