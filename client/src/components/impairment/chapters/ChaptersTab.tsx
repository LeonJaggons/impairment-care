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
import { MdChevronLeft, MdChevronRight } from "react-icons/md";
import ChapterSectionTabs from "./ChapterSectionTabs";
import { setSelectedChapter } from "../../../redux/reducers/patientReducer";
import { useAppDispatch } from "../../../redux/store";

const ChaptersTab = (props: { patientID: string | null }) => {
    const [chapterKey, setChapterKey] = React.useState("");
    useEffect(() => {
        props.patientID && loadPatientImpairment(parseInt(props.patientID));
    }, [chapterKey]);
    return (
        <div id={"chapter-tabs"}>
            <Tab.Container activeKey={chapterKey}>
                <Row>
                    <Col
                        style={{
                            flexGrow: 0,
                            flexShrink: 1,
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
                                <ChapterSectionTabs chapterKey="UPPER" />
                            </Tab.Pane>
                            <Tab.Pane eventKey={"Lower Extremity"}>
                                <ChapterSectionTabs chapterKey="LOWER" />
                            </Tab.Pane>
                            <Tab.Pane eventKey={"Spine"}>
                                <ChapterSectionTabs chapterKey="SPINE" />
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
                {CollapseButton(
                    setCollapseDone,
                    setIsCollapsed,
                    isCollapsed,
                    collapseDone
                )}
            </div>
            <Collapse
                in={isCollapsed}
                dimension={"width"}
                onExiting={() => setCollapseDone(false)}
                onEntered={() => setCollapseDone(true)}
            >
                {ChapterMenu(chapters, props)}
            </Collapse>
        </div>
    );
};

function ChapterMenu(
    chapters: Chapter[],
    props: { selectedChapterKey: string; setChapterKey: any }
) {
    return (
        <div style={{ width: "230px" }}>
            <Stack gap={1}>
                {/* <h6>Impairment Chapters</h6> */}
                {chapters.map((c) => (
                    <>
                        {console.log(c)}
                        {ChapterButton(props, c)}
                    </>
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
    );
}

function ChapterButton(
    props: { selectedChapterKey: string; setChapterKey: any },
    c: Chapter
) {
    const dispatch = useAppDispatch();
    return (
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
                props.setChapterKey(c.chapter.name);
                dispatch(setSelectedChapter(c));
                console.log(c.name);
                // setIsCollapsed(!isCollapsed);
            }}
            variant={
                props.selectedChapterKey === c.chapter.name
                    ? "primary"
                    : "outline-primary"
            }
        >
            {c.chapter.name}
        </Button>
    );
}

function CollapseButton(
    setCollapseDone: React.Dispatch<React.SetStateAction<boolean>>,
    setIsCollapsed: React.Dispatch<React.SetStateAction<boolean>>,
    isCollapsed: boolean,
    collapseDone: boolean
) {
    return (
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
    );
}

export default ChaptersTab;
