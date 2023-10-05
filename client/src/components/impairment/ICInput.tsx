import React, { useEffect, useRef, useState } from "react";
import { Button, Form, Stack } from "react-bootstrap";
import {
    getSelectImpairmentValues,
    updatePatientImpairment,
} from "../../services/impairment_services";
import { useSelector } from "react-redux";
import { MdClear } from "react-icons/md";

const ICInput = (props: { label?: string; impCode: string; type?: string }) => {
    const inputRef = useRef();
    const [hovered, setHovered] = useState(false);
    const [value, setValue] = useState();
    const [selectValues, setSelectValues] = useState<any[]>();
    const [error, setError] = useState<any>();
    const newPatient = useSelector((state: any) => state.patient.newPatient);
    const patientImpairments = useSelector(
        (state: any) => state.patient.patientImpairment
    );
    const handleChange = async (e) => {
        const newValue = e.target.value;
        console.log(newValue);
        console.log(JSON.parse(newPatient));
        setValue(newValue);
        await updatePatientImpairment(
            JSON.parse(newPatient).id,
            props.impCode,
            newValue
        );
    };

    const loadSelectValues = async () => {
        const values = await getSelectImpairmentValues(props.impCode);
        setSelectValues(values);
    };
    useEffect(() => {
        if (props.type === "select") {
            loadSelectValues();
        }
    }, [props.type]);

    const getImpairmentValue = (impCode: string, impairments: any[]) => {
        if (!impairments) return null;
        for (let imp of impairments) {
            if (imp.impairmentCode === impCode) {
                return imp.value;
            }
        }
        return null;
    };

    useEffect(() => {
        const newValue = getImpairmentValue(props.impCode, patientImpairments);
        // setValue(newValue || "");
    }, [newPatient]);

    useEffect(() => {
        const newValue = getImpairmentValue(props.impCode, patientImpairments);
        setValue(newValue || "");
    }, []);
    useEffect(() => {
        for (let imp of patientImpairments) {
            if (imp.impairmentCode === props.impCode) {
                console.log(imp);

                const newError = {
                    errorCode: imp.errorCode,
                    errorDescription: imp.errorDescription,
                };
                setError(newError);
            }
        }
        console.log(patientImpairments);
    }, [patientImpairments]);
    useEffect(() => {
        console.log(error);
    }, [error]);
    return (
        <Stack style={{ position: "relative", overflow: "hidden" }}>
            {props.label && (
                <p style={{ marginBottom: 8, fontSize: 14 }}>{props.label}</p>
            )}

            <div
                onFocus={() => setHovered(true)}
                onBlur={() => setHovered(false)}
                style={{
                    border:
                        error &&
                        error?.errorCode !== "" &&
                        "1px solid red !important",
                }}
            >
                {props.type === "select" ? (
                    <Form.Select value={value} onChange={handleChange}>
                        {selectValues?.map((s) => (
                            <option value={s.value}>{s.description}</option>
                        ))}
                    </Form.Select>
                ) : (
                    <Form.Control
                        style={{ fontSize: 12 }}
                        value={value}
                        onChange={handleChange}
                        type={"number"}
                    />
                )}
            </div>
            <div style={{ height: 12 }}>
                <p style={{ fontSize: "10px", color: "#F56565" }}>
                    {error?.errorDescription}
                </p>
            </div>
        </Stack>
    );
};

export default ICInput;
