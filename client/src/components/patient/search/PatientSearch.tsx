import { PatientFilters } from "./PatientFilters";
import { PatientTableSection } from "./PatientTable";

const PatientSearch = () => {
    return (
        <div id={"patient-search-container"}>
            <PatientFilters />
            <span style={{ width: 12 }} />
            <PatientTableSection />
        </div>
    );
};

export default PatientSearch;
