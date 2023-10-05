import React from "react";
import { Card, Col } from "react-bootstrap";

export const ImpairmentSection = (props: {
    title?: string;
    children?: any;
    block?: boolean;
}) => {
    return (
        <Col
            style={{
                marginBottom: 12,
                width: "40%",
                height: "100%",
            }}
        >
            <Card
                style={{
                    backgroundColor: "white",
                    minHeight: "220px",
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
                <Card.Body
                    style={{
                        fontSize: 12,
                        display: "flex",
                        alignItems: "center",
                        justifyContent: "center",
                    }}
                >
                    {props.children}
                </Card.Body>
            </Card>
        </Col>
    );
};
