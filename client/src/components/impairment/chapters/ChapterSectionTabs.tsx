import { Tab, Tabs } from "react-bootstrap";
import DigitImpairment, {
    ShoulderImpairment,
} from "./impairment-forms/UpperExtremity";
import { useSelector } from "react-redux";
import { useAppDispatch } from "../../../redux/store";
import { setSelectedChapterSection } from "../../../redux/reducers/patientReducer";
import { ReactNode } from "react";
import {
    CAFImpairment,
    HipImpairment,
    TKImpairment,
} from "./impairment-forms/LowerExtremity";

const sectionElements = {
    Thumb: <DigitImpairment digit={"THUMB"} />,
    Little: <DigitImpairment digit={"LITTLE"} />,
    Ring: <DigitImpairment digit={"RING"} />,
    Middle: <DigitImpairment digit={"MIDDLE"} />,
    Index: <DigitImpairment digit={"INDEX"} />,
    Shoulder: <ShoulderImpairment />,
    "Calf/Ankle/Foot": <CAFImpairment />,
    "Thigh/Knee": <TKImpairment />,
    Hip: <HipImpairment />,
};

const ChapterSectionTabs = (props: { chapterKey: string }) => {
    const selectedChapter = useSelector(
        (state) => state.patient.selectedChapter
    );
    const dispath = useAppDispatch();

    const handleClick = (c: any) => {
        dispath(setSelectedChapterSection(c));
    };

    return (
        <div>
            <Tabs>
                {selectedChapter?.chapterSections?.map((c) => (
                    <Tab
                        title={c.name}
                        eventKey={c.name}
                        onClick={() => handleClick(c)}
                    >
                        {sectionElements[c.name]}
                    </Tab>
                ))}
            </Tabs>
        </div>
    );
};

export default ChapterSectionTabs;
