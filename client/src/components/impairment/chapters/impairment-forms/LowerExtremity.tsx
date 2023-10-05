import { Col, Form, Row, Stack } from "react-bootstrap";
import ICInput from "../../ICInput";
import { ImpairmentSection } from "./ImpairmentSection";

const LowerExtremity = () => {
    return (
        <div>
            <h1></h1>
        </div>
    );
};
export const CAFImpairment = () => {
    return (
        <Row>
            <ImpairmentSection title={"ROM"}>
                <Stack gap={1}>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 120px" }}></Col>
                        <Col></Col>
                        <Col>Ankylosis</Col>
                    </Row>
                    <Row style={{ width: "100%", alignItems: "center" }}>
                        <Col style={{ flex: "0 1 120px" }}>Dorsiflexion</Col>
                        <Col>
                            <ICInput impCode={""} />
                        </Col>
                        <Col>
                            <Form.Check />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%", alignItems: "center" }}>
                        <Col style={{ flex: "0 1 120px" }}>Plantar Flexion</Col>
                        <Col>
                            <ICInput impCode={""} />
                        </Col>
                        <Col>
                            <Form.Check />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%", alignItems: "center" }}>
                        <Col style={{ flex: "0 1 120px" }}>Inversion</Col>
                        <Col>
                            <ICInput impCode={""} />
                        </Col>
                        <Col>
                            <Form.Check />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%", alignItems: "center" }}>
                        <Col style={{ flex: "0 1 120px" }}>Eversion</Col>
                        <Col>
                            <ICInput impCode={""} />
                        </Col>
                        <Col>
                            <Form.Check />
                        </Col>
                    </Row>
                </Stack>
            </ImpairmentSection>
            <ImpairmentSection title={"Other Disorders"}>
                <Stack gap={2}>
                    <Row style={{ width: "100%" }}>
                        <Col>
                            <p>Ankle</p>
                        </Col>
                    </Row>

                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>Arthritis</Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            Ligamentous Instability
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>Anthroplasty</Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                </Stack>
                <Stack gap={2}>
                    <Row style={{ width: "100%" }}>
                        <Col>
                            <p>Foot</p>
                        </Col>
                    </Row>

                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>Arthritis</Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            Ligamentous Instability
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>Anthroplasty</Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                </Stack>
            </ImpairmentSection>
        </Row>
    );
};

export const TKImpairment = () => {
    return (
        <Row>
            <ImpairmentSection title={"ROM"}>
                <Stack gap={2}>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>Flexion</Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            Flexion Contracture
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                </Stack>
            </ImpairmentSection>
            <ImpairmentSection title={"Other Disorders"}>
                <Stack gap={2}>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>Patellectomy</Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            Torn meniscus (one)
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            Torn meniscus (both)
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            Knee replacement
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            Patella replacement
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>Arthritis</Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            Anterior Cruciate Ligmament loss
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                </Stack>
            </ImpairmentSection>
        </Row>
    );
};

export const HipImpairment = () => {
    return (
        <Row>
            <ImpairmentSection title={"ROM"}>
                <Stack gap={2}>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>Flexion</Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            Flexion Contracture
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            Internal Rotation
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>
                            External Rotation
                        </Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>Abduction</Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                    <Row style={{ width: "100%" }}>
                        <Col style={{ flex: "0 1 160px" }}>Adduction</Col>
                        <Col style={{ flex: "0 1 200px" }}>
                            <ICInput impCode={""} />
                        </Col>
                    </Row>
                </Stack>
            </ImpairmentSection>
        </Row>
    );
};
export default LowerExtremity;
