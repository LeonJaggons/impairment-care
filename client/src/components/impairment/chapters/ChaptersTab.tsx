import React from "react";
import {
    Button,
    Col,
    Collapse,
    Row,
    Stack,
    Tab,
    TabContent,
} from "react-bootstrap";
import { Chapter, getChapters } from "../../../services/impairment_services";
import UpperExtremity from "./UpperExtremity";

const ChaptersTab = () => {
    const [chapterKey, setChapterKey] = React.useState("");
    return (
        <div id={"chapter-tabs"}>
            <Tab.Container activeKey={chapterKey}>
                <Row style={{ width: "100vw !important" }}>
                    <Col style={{ flex: "0 1 220px" }}>
                        <ChaptersMenu
                            selectedChapterKey={chapterKey}
                            setChapterKey={setChapterKey}
                        />
                    </Col>
                    <Col style={{ flex: 1 }}>
                        <h5 style={{ marginTop: 16 }}>{chapterKey}</h5>
                        <TabContent style={{ border: "none" }}>
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
    const loadChapters = async () => {
        const newChapters = await getChapters();
        setChapters([...newChapters]);
    };
    React.useEffect(() => {
        loadChapters();
    }, []);
    return (
        <div style={{ backgroundColor: "white", padding: 18, height: "100%" }}>
            {!isCollapsed && (
                <Button
                    variant={"outline-primary"}
                    onClick={() => setIsCollapsed(!isCollapsed)}
                    style={{ width: "100%", marginBottom: 12 }}
                >
                    View Chapters
                </Button>
            )}
            <Collapse in={isCollapsed} dimension={"width"}>
                <div>
                    <Stack gap={1}>
                        {!isCollapsed && (
                            <Row>
                                <Col
                                    style={{
                                        marginBottom: 6,
                                        display: "flex",
                                        flexFlow: "row nowrap",
                                        alignItems: "center",
                                        justifyContent: "space-between",
                                    }}
                                >
                                    <h6 style={{ margin: 0 }}>Chapters</h6>
                                    <Button
                                        variant={"outline-primary"}
                                        onClick={() =>
                                            setIsCollapsed(!isCollapsed)
                                        }
                                    >
                                        Collapse
                                    </Button>
                                </Col>
                            </Row>
                        )}
                        {chapters.map((c) => (
                            <Button
                                style={{
                                    width: "100%",
                                    overflow: "hidden",
                                    textOverflow: "clip",
                                    whiteSpace: "nowrap",
                                    display: "flex",
                                    justifyContent: "flex-start",
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
                    </Stack>
                </div>
            </Collapse>
        </div>
    );
};

export default ChaptersTab;
