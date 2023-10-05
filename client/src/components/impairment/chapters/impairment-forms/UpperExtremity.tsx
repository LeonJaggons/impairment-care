import React from "react";
import ICInput from "../../ICInput";
import { Col, Form, Modal, Row, Stack } from "react-bootstrap";
import {
    DigitImpairmentKeys,
    getLittleDataKeys,
    getThumbDataKeys,
    getRingDataKeys,
    getMiddleDataKeys,
    getIndexDataKeys,
} from "../IMPDataKeys";
import { ImpairmentSection } from "./ImpairmentSection";

const DigitImpairment = (props: { digit: string }) => {
    const [imps, setImps] = React.useState<DigitImpairmentKeys | undefined>();
    const updateImps = (newDigit: string) => {
        let newKeys;
        switch (newDigit) {
            case "THUMB":
                newKeys = { ...getThumbDataKeys() };
                break;
            case "LITTLE":
                newKeys = { ...getLittleDataKeys() };
                break;
            case "RING":
                newKeys = { ...getRingDataKeys() };
                break;
            case "MIDDLE":
                newKeys = { ...getMiddleDataKeys() };
                break;
            case "INDEX":
                newKeys = { ...getIndexDataKeys() };
                break;
        }
        setImps(newKeys);
    };
    React.useEffect(() => {
        updateImps(props.digit);
    }, [props.digit]);

    return (
        imps && (
            <Stack gap={2}>
                <Row style={{ marginBottom: 8 }}>
                    <ImpairmentSection title={"ROM"}>
                        <ROMGrid imps={imps} />
                    </ImpairmentSection>
                    <ImpairmentSection title={"Other Disorders (By Joints)"}>
                        <Stack gap={2}>
                            <Row style={{ alignItems: "center" }}>
                                <Col style={{ flex: "0 1 150px" }}></Col>
                                <Col style={{ flex: 1 }}>IP</Col>
                                <Col style={{ flex: 1 }}>MP</Col>
                                <Col style={{ flex: 1 }}>CMC</Col>
                            </Row>
                            <Row style={{ alignItems: "center" }}>
                                <Col
                                    style={{ flex: "0 1 150px", fontSize: 11 }}
                                >
                                    Synovial Hypertrophy
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.IP_HYPERTROPHY}
                                    />
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.MP_HYPERTROPHY}
                                    />
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.CMC_HYPERTROPHY}
                                    />
                                </Col>
                            </Row>
                            <Row style={{ alignItems: "center" }}>
                                <Col
                                    style={{ flex: "0 1 150px", fontSize: 11 }}
                                >
                                    Persistent Sublaxation or Dislocation
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.IP_SUBDIS}
                                    />
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.MP_SUBDIS}
                                    />
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.CMC_SUBDIS}
                                    />
                                </Col>
                            </Row>
                            <Row style={{ alignItems: "center" }}>
                                <Col
                                    style={{ flex: "0 1 150px", fontSize: 11 }}
                                >
                                    Passive Mediolateral Instability
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.IP_MEDINST}
                                    />
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.MP_MEDINST}
                                    />
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.CMC_MEDINST}
                                    />
                                </Col>
                            </Row>
                        </Stack>
                    </ImpairmentSection>
                </Row>
                <Row>
                    <ImpairmentSection title={"Anthroplasty"} />
                    <ImpairmentSection title={"Other Disorders (By Digits)"}>
                        <Stack gap={2}>
                            <Row>
                                <Col
                                    style={{ flex: "0 1 150px", fontSize: 11 }}
                                >
                                    Active Ulnar or Radial Deviation
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.AURD}
                                    />
                                </Col>
                            </Row>
                            <Row>
                                <Col
                                    style={{ flex: "0 1 150px", fontSize: 11 }}
                                >
                                    Rotational Deformity
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.ROTDEF}
                                    />
                                </Col>
                            </Row>
                            <Row>
                                <Col
                                    style={{ flex: "0 1 150px", fontSize: 11 }}
                                >
                                    Intrinsic Tightness
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.INTTIGHT}
                                    />
                                </Col>
                            </Row>
                            <Row>
                                <Col
                                    style={{ flex: "0 1 150px", fontSize: 11 }}
                                >
                                    Constrictive Tenosynovitis
                                </Col>
                                <Col style={{ flex: 1 }}>
                                    <ICInput
                                        type={"select"}
                                        impCode={imps.CONTEN}
                                    />
                                </Col>
                            </Row>
                        </Stack>
                    </ImpairmentSection>
                </Row>
            </Stack>
        )
    );
};

const ROMGrid = (props: { imps: DigitImpairmentKeys }) => {
    return (
        <div>
            <Row style={{ marginBottom: 8 }}>
                <Col style={{ flex: "0 1 80px" }}></Col>
                <Col>IP</Col>
                <Col>MP</Col>
            </Row>
            <Row
                style={{
                    marginBottom: 8,
                    alignItems: "center",
                }}
            >
                <Col style={{ flex: "0 1 80px" }}>Flexion</Col>
                <Col>
                    <ICInput impCode={props.imps.IP_FLEX} />
                </Col>
                <Col>
                    <ICInput impCode={props.imps.MP_FLEX} />
                </Col>
            </Row>
            <Row
                style={{
                    marginBottom: 8,
                    alignItems: "center",
                }}
            >
                <Col style={{ flex: "0 1 80px" }}>Extension</Col>
                <Col>
                    <ICInput impCode={props.imps.IP_EXT} />
                </Col>
                <Col>
                    <ICInput impCode={props.imps.MP_EXT} />
                </Col>
            </Row>
        </div>
    );
};

export const ShoulderImpairment = () => {
    return (
        <Stack gap={2}>
            <Stack
                direction={"horizontal"}
                gap={2}
                style={{ alignItems: "flex-start" }}
            >
                <ImpairmentSection title="ROM" block>
                    <Row>
                        <Row style={{ marginBottom: 8 }}>
                            <Col style={{ flex: "0 1 150px", fontSize: 11 }}>
                                Flexion
                            </Col>
                            <Col>
                                <ICInput impCode="" />
                            </Col>
                            <Col>
                                <ICInput impCode="" />
                            </Col>
                            <Col style={{ flex: "0 1 150px", fontSize: 11 }}>
                                Pronation
                            </Col>
                        </Row>
                        <Row style={{ marginBottom: 8 }}>
                            <Col style={{ flex: "0 1 150px", fontSize: 11 }}>
                                Extension
                            </Col>
                            <Col>
                                <ICInput impCode="" />
                            </Col>
                            <Col>
                                <ICInput impCode="" />
                            </Col>
                            <Col style={{ flex: "0 1 150px", fontSize: 11 }}>
                                Supination
                            </Col>
                        </Row>
                    </Row>
                </ImpairmentSection>
                <ImpairmentSection title="Anthroplasty"></ImpairmentSection>
            </Stack>
            <Row direction={"horizontal"} gap={2}>
                <ImpairmentSection title="Other Disorders">
                    <Stack gap={2} style={{ justifyContent: "center" }}>
                        <Row>
                            <Col style={{ flex: "0 1 150px", fontSize: 11 }} />
                            <Col>Implant</Col>
                            <Col>Resection</Col>
                        </Row>
                        <Row>
                            <Col style={{ flex: "0 1 150px", fontSize: 11 }}>
                                Total Elbow
                            </Col>
                            <Col>
                                <Form.Check />
                            </Col>
                            <Col>
                                <Form.Check />
                            </Col>
                        </Row>
                        <Row>
                            <Col style={{ flex: "0 1 150px", fontSize: 11 }}>
                                Radial Head (isolated)
                            </Col>
                            <Col>
                                <Form.Check />
                            </Col>
                            <Col>
                                <Form.Check />
                            </Col>
                        </Row>
                    </Stack>
                </ImpairmentSection>
            </Row>
        </Stack>
    );
};
export default DigitImpairment;
