import { Card, Col, Row, Stack } from "react-bootstrap";
import { useSelector } from "react-redux";

const Calculator = () => {
    const patientImpairment = useSelector(
        (state: any) => state.patient.patientImpairment
    );
    console.log(patientImpairment);
    return (
        <div style={{ padding: 12 }}>
            <Row>
                {patientImpairment?.map((imp: any) => (
                    <ImpDisplay imp={imp} />
                ))}
            </Row>
        </div>
    );
};

const ImpDisplay = (props: { imp: any }) => {
    return (
        <Col xs={3} style={{ padding: 0 }}>
            <Card style={{ margin: 6, borderRadius: 0 }}>
                <Card.Body>
                    <Stack direction={"vertical"} gap={2}>
                        <h6 style={{ margin: 0 }}>
                            {props.imp.impairmentCode}
                        </h6>
                        <hr
                            style={{ margin: 0, marginTop: 8, marginBottom: 8 }}
                        />
                        <Row>
                            <Col>
                                <p style={{ fontSize: 12, margin: 0 }}>Value</p>
                                <h5>{props.imp.value}</h5>
                            </Col>
                            <Col>
                                <p style={{ fontSize: 12, margin: 0 }}>
                                    Impairment Value
                                </p>
                                <h5>{props.imp.impairmentValue}</h5>
                            </Col>
                        </Row>
                        <Row></Row>
                    </Stack>
                </Card.Body>
            </Card>
        </Col>
    );
};

export default Calculator;
