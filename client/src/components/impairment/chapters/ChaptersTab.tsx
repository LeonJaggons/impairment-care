import React from "react";
import { Button, Col, Collapse, Row, Stack, Tab } from "react-bootstrap";
import { Chapter, getChapters } from "../../../services/impairment_services";

const ChaptersTab = () => {
    const [chapterKey, setChapterKey] = React.useState("");
    return (
        <div>
            <Tab.Container>
                <Row>
                    <Col style={{ flex: "0 1 220px" }}>
                        <ChaptersMenu
                            selectedChapterKey={chapterKey}
                            setChapterKey={setChapterKey}
                        />
                    </Col>
                    <Col>
                        <h5>{chapterKey}</h5>
                    </Col>
                    <Tab.Content></Tab.Content>
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
        <>
            {!isCollapsed && (
                <Button
                    variant={"outline-primary"}
                    onClick={() => setIsCollapsed(!isCollapsed)}
                    style={{ width: "100%" }}
                >
                    View Chapters
                </Button>
            )}
            <Collapse in={isCollapsed} dimension={"width"}>
                <div>
                    <Stack gap={1}>
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
                                onClick={() => setIsCollapsed(!isCollapsed)}
                            >
                                Collapse
                            </Button>
                        </Col>
                        {chapters.map((c) => (
                            <Button
                                style={{
                                    width: "100%",
                                    overflow: "hidden",
                                    textOverflow: "clip",
                                }}
                                onClick={() => {
                                    props.setChapterKey(c.name);
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
        </>
    );
};

export default ChaptersTab;
