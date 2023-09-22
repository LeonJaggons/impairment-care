import React, { useEffect } from "react";
import {
    Button,
    Col,
    Collapse,
    Row,
    Stack,
    Tab,
    TabContent,
} from "react-bootstrap";
import {
    Chapter,
    getChapters,
    loadPatientImpairment,
} from "../../../services/impairment_services";
import UpperExtremity from "./UpperExtremity";
import { MdChevronLeft, MdChevronRight } from "react-icons/md";

const ChaptersTab = (props: { patientID: string | null }) => {
    const [chapterKey, setChapterKey] = React.useState("");
    useEffect(() => {
        props.patientID && loadPatientImpairment(parseInt(props.patientID));
    }, [chapterKey]);
    return (
        <div id={"chapter-tabs"}>
            <Tab.Container activeKey={chapterKey}>
                <Row style={{ width: "100vw", maxWidth: "100vw" }}>
                    <Col
                        style={{
                            flexGrow: 0,
                            flexShrink: 1,
                            // flexBasis: "17.55%",
                            paddingRight: 0,
                        }}
                    >
                        <ChaptersMenu
                            selectedChapterKey={chapterKey}
                            setChapterKey={setChapterKey}
                        />
                    </Col>
                    <Col style={{ flex: "1 1 0px" }}>
                        <TabContent
                            style={{
                                border: "none",
                                padding: 0,
                                paddingTop: 18,
                            }}
                        >
                            <Tab.Pane eventKey={"Upper Extremity"}>
                                <UpperExtremity />
                            </Tab.Pane>
                        </TabContent>
                    </Col>
                </Row>
            </Tab.Container>
        </div>
    );
};

const ChaptersMenu = (props: {
    selectedChapterKey: string;
    setChapterKey: any;
}) => {
    const [chapters, setChapters] = React.useState<Chapter[]>([]);
    const [isCollapsed, setIsCollapsed] = React.useState<boolean>(true);
    const [collapseDone, setCollapseDone] = React.useState<boolean>(true);
    const loadChapters = async () => {
        const newChapters = await getChapters();
        setChapters([...newChapters]);
    };
    React.useEffect(() => {
        loadChapters();
    }, []);
    return (
        <div
            style={{
                backgroundColor: "white",
                height: "100%",
                borderRightColor: "rgba(0,0,0,.2)",
                borderRightWidth: 1,
                borderRightStyle: "solid",
                padding: 8,
            }}
        >
            {collapseDone && <div style={{ width: "15.5vw" }} />}
            <div
                style={{
                    justifyContent: "space-between",
                    alignItems: "center",
                    display: "flex",
                    flexFlow: "row nowrap",
                    width: "100%",
                    marginBottom: 6,
                    paddingLeft: 12,
                }}
            >
                <span>
                    {collapseDone && <h6 style={{ margin: 0 }}>Chapters</h6>}
                </span>
                {isCollapsed && <div style={{ flex: 1, height: 12 }} />}
                <Button
                    onClick={() => {
                        setCollapseDone(false);
                        setIsCollapsed(!isCollapsed);
                    }}
                    style={{
                        display: "flex",
                        alignItems: "center",
                        justifyContent: "center",
                        padding: 0,
                        aspectRatio: 1,
                        height: 30,
                    }}
                    variant={"ghost"}
                >
                    {!collapseDone ? (
                        <MdChevronRight size={20} />
                    ) : (
                        <MdChevronLeft size={20} />
                    )}
                </Button>
            </div>
            <Collapse
                in={isCollapsed}
                dimension={"width"}
                onExiting={() => setCollapseDone(false)}
                onEntered={() => setCollapseDone(true)}
            >
                <div>
                    <div>
                        <Stack gap={1}>
                            {/* <h6>Impairment Chapters</h6> */}
                            {chapters.map((c) => (
                                <Button
                                    style={{
                                        border: "none",
                                        width: "100%",
                                        overflow: "hidden",
                                        textOverflow: "clip",
                                        whiteSpace: "nowrap",
                                        display: "flex",
                                        justifyContent: "flex-start",
                                        fontSize: 12,
                                    }}
                                    onClick={() => {
                                        props.setChapterKey(c.name);
                                        console.log(c.name);
                                        // setIsCollapsed(!isCollapsed);
                                    }}
                                    variant={
                                        props.selectedChapterKey === c.name
                                            ? "primary"
                                            : "outline-primary"
                                    }
                                >
                                    {c.name}
                                </Button>
                            ))}
                            <hr />
                            <Button
                                style={{
                                    width: "100%",
                                    overflow: "hidden",
                                    textOverflow: "clip",
                                    whiteSpace: "nowrap",
                                    display: "flex",
                                    justifyContent: "flex-start",
                                    fontSize: 12,
                                }}
                                variant={"outline-primary"}
                            >
                                Apportionment Analysis
                            </Button>
                        </Stack>
                    </div>
                </div>
            </Collapse>
        </div>
    );
};

export default ChaptersTab;
