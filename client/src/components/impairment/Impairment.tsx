import React from "react";
import { Tab, Tabs } from "react-bootstrap";
import { useSearchParams } from "react-router-dom";
import DemographicsTab from "./demographics/DemographicsTab";
import ChaptersTab from "./chapters/ChaptersTab";

const Impairment = () => {
    const [queryParams, _] = useSearchParams();
    const visitID = queryParams.get("visitID");
    const patientID = queryParams.get("patientID");
    return (
        <div>
            <ImpairmentNavigation />
        </div>
    );
};

const ImpairmentNavigation = () => {
    return (
        <Tabs className="">
            <Tab eventKey={"DEMOGRAPHICS"} title={"Demographics"}>
                <DemographicsTab />
            </Tab>
            <Tab eventKey={"CHAPTERS"} title={"Chapters"}>
                <ChaptersTab />
            </Tab>
            <Tab eventKey={"CALCULATOR"} title={"Calculator"}></Tab>
            <Tab eventKey={"ANALYSIS"} title={"Analysis"}></Tab>
            <Tab eventKey={"REPORTS"} title={"Reports"}></Tab>
            <Tab eventKey={"HELP"} title={"Help"}></Tab>
        </Tabs>
    );
};
export default Impairment;
