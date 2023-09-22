import React from "react";
import ICInput from "./ICInput";
import { Card, Col, Modal, Row, Stack } from "react-bootstrap";
import { impDataKeys } from "./IMPDataKeys";

const UpperExtremity = () => {
    return (
        <Stack gap={2}>
            <Row style={{ marginBottom: 8 }}>
                <ImpairmentSection title={"ROM"}>
                    <ROMGrid />
                </ImpairmentSection>
                <ImpairmentSection title={"Other Disorders (By Joints)"} />
            </Row>
            <Row>
                <ImpairmentSection title={"Other Disorders (By Digits)"} />
                <ImpairmentSection title={"Anthroplasty"} />
            </Row>
        </Stack>
    );
};

const ImpairmentSection = (props: { title?: string; children?: any }) => {
    return (
        <Col>
            <Card
                style={{
                    backgroundColor: "white",
                    height: "100%",
                    borderRadius: 0,
                }}
            >
                <div
                    style={{
                        padding: 12,
                        paddingBottom: 8,
                        paddingTop: 8,
                        // backgroundColor: "rgba(0,0,0,.02)",
                        borderBottomColor: "#d2d2d2ff",
                        borderBottomWidth: 1,
                        borderBottomStyle: "solid",
                    }}
                >
                    <h6 style={{ margin: 0, fontSize: 13 }}>{props.title}</h6>
                </div>
                <Card.Body style={{ fontSize: 12 }}>{props.children}</Card.Body>
            </Card>
        </Col>
    );
};

const ROMGrid = () => {
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
                    flexWrap: "nowrap",
                    alignItems: "center",
                }}
            >
                <Col style={{ flex: "0 1 80px" }}>Flexion</Col>
                <Col>
                    <ICInput impKey={impDataKeys.THUMB_IP_FLEX} />
                </Col>
                <Col>
                    <ICInput impKey={impDataKeys.THUMB_IP_EXT} />
                </Col>
            </Row>
            <Row
                style={{
                    marginBottom: 8,
                    flexWrap: "nowrap",
                    alignItems: "center",
                }}
            >
                <Col style={{ flex: "0 1 80px" }}>Extension</Col>
                <Col>
                    <ICInput impKey={impDataKeys.THUMB_MP_FLEX} />
                </Col>
                <Col>
                    <ICInput impKey={impDataKeys.THUMB_MP_EXT} />
                </Col>
            </Row>
        </div>
    );
};

export default UpperExtremity;
