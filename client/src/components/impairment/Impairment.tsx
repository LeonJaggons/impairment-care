import React, { useEffect } from "react";
import { Tab, Tabs } from "react-bootstrap";
import { useSearchParams } from "react-router-dom";
import DemographicsTab from "./demographics/DemographicsTab";
import ChaptersTab from "./chapters/ChaptersTab";
import { loadPatientImpairment } from "../../services/impairment_services";
import { useSelector } from "react-redux";

const Impairment = () => {
    const [queryParams, _] = useSearchParams();
    const visitID = queryParams.get("visitID");
    const patientID = queryParams.get("patientID");

    const patientImpairment = useSelector(
        (state: any) => state.patient.patientImpairment
    );

    useEffect(() => {
        const testPatientID = 1;
        loadPatientImpairment(testPatientID);
    }, []);
    useEffect(() => {
        console.table(patientImpairment);
    }, [[patientImpairment]]);
    return <ImpairmentNavigation />;
};

const ImpairmentNavigation = () => {
    return (
        <div id={"impairment-tabs"} style={{ flex: 1 }}>
            <Tabs>
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
        </div>
    );
};
export default Impairment;
