import React from "react";
import { PatientFilters } from "./PatientFilters";
import { PatientTableSection } from "./PatientTable";

const PatientSearch = () => {
    return (
        <div id={"patient-search-container"}>
            <PatientFilters />
            <PatientTableSection />
        </div>
    );
};

export default PatientSearch;
