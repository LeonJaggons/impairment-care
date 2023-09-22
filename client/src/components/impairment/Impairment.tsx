import React, { useEffect } from "react";
import { Tab, Tabs } from "react-bootstrap";
import { useSearchParams } from "react-router-dom";
import DemographicsTab from "./demographics/DemographicsTab";
import ChaptersTab from "./chapters/ChaptersTab";
import {
    loadPatient,
    loadPatientImpairment,
} from "../../services/impairment_services";
import { useSelector } from "react-redux";
import Calculator from "./calculator/Calculator";

const Impairment = () => {
    const [queryParams, _] = useSearchParams();
    const visitID = queryParams.get("visitID");
    let patientID = queryParams.get("patientID");

    const patientImpairment = useSelector(
        (state: any) => state.patient.patientImpairment
    );

    useEffect(() => {
        patientID = patientID ? patientID : "0";
        const newPatientID = parseInt(patientID);
        loadPatientImpairment(newPatientID);
        loadPatient(newPatientID);
    }, [patientID]);
    useEffect(() => {
        console.table(patientImpairment);
    }, [[patientImpairment]]);
    return <ImpairmentNavigation patientID={patientID} />;
};

const ImpairmentNavigation = (props: { patientID: string | null }) => {
    return (
        <div id={"impairment-tabs"}>
            <Tabs justify>
                <Tab eventKey={"CHAPTERS"} title={"Impairment"}>
                    <ChaptersTab patientID={props.patientID} />
                </Tab>
                <Tab eventKey={"CALCULATOR"} title={"Calculator"}>
                    <Calculator />
                </Tab>
                <Tab eventKey={"DEMOGRAPHICS"} title={"Demographics"}>
                    <DemographicsTab />
                </Tab>
                <Tab eventKey={"ANALYSIS"} title={"Analysis"}></Tab>
                <Tab eventKey={"REPORTS"} title={"Reports"}></Tab>
                <Tab eventKey={"HELP"} title={"Help"}></Tab>
            </Tabs>
        </div>
    );
};
export default Impairment;
