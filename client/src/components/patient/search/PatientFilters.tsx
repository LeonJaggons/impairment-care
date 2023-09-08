import React from "react";
import { Button, Form, Stack } from "react-bootstrap";

enum PatientFilterTypes {
    Text,
    Numeric,
    SSN,
    Date,
    Select,
}
const FilterDivider = () => {
    return (
        <hr
            style={{
                width: "100%",
                marginTop: 8,
                marginBottom: 8,
                color: "rgba(0,0,0,.4)",
            }}
        />
    );
};

export const PatientFilters = () => {
    return (
        <div id={"patient-filters-container"}>
            {/* <h5 style={{ marginBottom: 8 }}>Patient Search</h5> */}
            <Stack gap={2}>
                <PatientFilter
                    type={PatientFilterTypes.Text}
                    label={"First Name"}
                />
                <PatientFilter
                    type={PatientFilterTypes.Text}
                    label={"Last Name"}
                />
                <PatientFilter
                    type={PatientFilterTypes.Date}
                    label={"Gender"}
                />
                <PatientFilter
                    type={PatientFilterTypes.Date}
                    label={"Date of Birth"}
                />
                <FilterDivider />
                <PatientFilter
                    type={PatientFilterTypes.Numeric}
                    label={"Medical Record Number"}
                />
                <PatientFilter
                    type={PatientFilterTypes.SSN}
                    label={"Social Security Number"}
                />
                <PatientSearchButton />
            </Stack>
        </div>
    );
};

const PatientSearchButton = () => {
    return (
        <Button style={{ marginTop: 8 }} variant="primary">
            Search
        </Button>
    );
};

const PatientFilter = (props: { label: string; type: PatientFilterTypes }) => {
    const getFilter = (type: PatientFilterTypes) => {
        switch (type) {
            case PatientFilterTypes.Text:
                return <PatientTextFilter label={props.label} />;
            case PatientFilterTypes.Numeric:
                return <PatientNumberFilter label={props.label} />;
            case PatientFilterTypes.SSN:
                return <PatientSSNFilter label={props.label} />;
            default:
                return <PatientTextFilter label={props.label} />;
        }
    };

    return <Stack>{getFilter(props.type)}</Stack>;
};

const PatientTextFilter = (props: { label?: string }) => {
    return <Form.Control placeholder={props.label} />;
};
const PatientNumberFilter = (props: { label?: string }) => {
    return <Form.Control placeholder={props.label} type={"number"} />;
};
const PatientSSNFilter = (props: { label?: string }) => {
    return <Form.Control type={"number"} placeholder={props.label} />;
};
