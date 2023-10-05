import React from "react";
import {
    Button,
    Card,
    Col,
    Collapse,
    Form,
    Nav,
    Row,
    Stack,
} from "react-bootstrap";
import {
    MdAccountBox,
    MdExpandLess,
    MdExpandMore,
    MdLocationCity,
    MdOutlineShield,
    MdQrCode,
    MdRefresh,
} from "react-icons/md";

enum PatientFilterTypes {
    Text,
    Numeric,
    SSN,
    Date,
    Select,
}

export const PatientFilters = () => {
    return (
        <div id={"patient-filters-container"}>
            <Stack
                style={{
                    padding: 12,
                }}
                gap={2}
            >
                <div
                    style={{
                        textAlign: "center",
                        display: "flex",
                        alignItems: "center",
                        justifyContent: "space-between",
                    }}
                >
                    <p style={{ margin: 0, fontWeight: 600, fontSize: 14 }}>
                        Patient Filters
                    </p>

                    <Nav.Link style={{ display: "flex", alignItems: "center" }}>
                        <MdRefresh size={16} />
                    </Nav.Link>
                </div>
                <Form.Control placeholder={"Search..."}></Form.Control>
            </Stack>
            <div
                style={{
                    borderBottom: "1px solid rgba(0,0,0,.05)",
                }}
            >
                <FilterSection label={"Demographic"} icon={<MdAccountBox />}>
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
                </FilterSection>
                <FilterSection label={"Insurance"} icon={<MdOutlineShield />}>
                    <PatientFilter
                        type={PatientFilterTypes.Numeric}
                        label={"Medical Record Number"}
                    />
                </FilterSection>
                <FilterSection label={"Location"} icon={<MdLocationCity />}>
                    <PatientFilter
                        type={PatientFilterTypes.Text}
                        label={"City"}
                    />
                    <PatientFilter
                        type={PatientFilterTypes.Text}
                        label={"State"}
                    />
                </FilterSection>
                <FilterSection label={"Identifiers"} icon={<MdQrCode />}>
                    <PatientFilter
                        type={PatientFilterTypes.Numeric}
                        label={"Medical Record Number"}
                    />
                    <PatientFilter
                        type={PatientFilterTypes.SSN}
                        label={"Social Security Number"}
                    />
                </FilterSection>
            </div>
            <Row style={{ padding: 12 }}>
                <Col style={{ paddingRight: 4, flex: 1 }}>
                    <Button style={{ width: "100%" }} variant="outline-primary">
                        Clear
                    </Button>
                </Col>
                <Col style={{ paddingLeft: 4, flex: 1 }}>
                    <PatientSearchButton />
                </Col>
            </Row>
        </div>
    );
};
const FilterSection = (props: {
    label?: string;
    children?: React.ReactNode[] | React.ReactNode | undefined;
    icon?: React.ReactNode;
}) => {
    const [collapsed, setCollapsed] = React.useState<boolean>(true);
    return (
        <Card style={{ borderRadius: 0, border: "none", marginBottom: 2 }}>
            <Card.Header
                style={{
                    borderBottom: "none",
                    borderTop: "1px solid rgba(0,0,0,.05)",
                    paddingLeft: 12,
                    borderRadius: 0,
                    backgroundColor: "white",
                    cursor: "pointer",
                    display: "flex",
                    paddingTop: 12,
                    paddingBottom: 12,
                    justifyContent: "space-between",
                }}
                onClick={() => setCollapsed(!collapsed)}
            >
                <div
                    style={{
                        display: "flex",
                        alignItems: "center",
                        color: "black",
                    }}
                >
                    {props.icon}
                    <Card.Title
                        style={{
                            fontSize: 12,
                            margin: 0,
                            marginLeft: props.icon ? 10 : 0,
                        }}
                    >
                        {props.label}
                    </Card.Title>
                </div>
                {collapsed ? <MdExpandMore /> : <MdExpandLess />}
            </Card.Header>
            <Collapse in={!collapsed}>
                <div
                    style={{
                        height: 50,
                        borderTop: "1px solid rgba(0,0,0,.05)",
                    }}
                >
                    <Stack
                        direction={"vertical"}
                        gap={2}
                        style={{
                            padding: 18,
                            paddingTop: 12,
                            paddingBottom: 12,
                        }}
                    >
                        {props.children}
                    </Stack>
                </div>
            </Collapse>
        </Card>
    );
};

const PatientSearchButton = () => {
    return <Button style={{ width: "100%" }}>Search</Button>;
};

const PatientFilter = (props: { label: string; type: PatientFilterTypes }) => {
    const getFilter = (type: PatientFilterTypes) => {
        switch (type) {
            case PatientFilterTypes.Text:
                return <PatientTextFilter />;
            case PatientFilterTypes.Numeric:
                return <PatientNumberFilter />;
            case PatientFilterTypes.SSN:
                return <PatientSSNFilter />;
            default:
                return <PatientTextFilter />;
        }
    };

    return (
        <div>
            <p
                style={{
                    margin: 0,
                    marginBottom: 4,
                    fontSize: 11,
                    fontWeight: 500,
                    color: "rgba(0,0,0,.9)",
                }}
            >
                {props.label}
            </p>
            {getFilter(props.type)}
        </div>
    );
};

const PatientTextFilter = () => {
    return <Form.Control type={""} />;
};
const PatientNumberFilter = () => {
    return (
        <Form.Control
            // placeholder={props.label}
            type={"number"}
        />
    );
};
const PatientSSNFilter = () => {
    return (
        <Form.Control
        //placeholder={props.label}
        />
    );
};
