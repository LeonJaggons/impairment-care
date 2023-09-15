import { RouterProvider, createBrowserRouter } from "react-router-dom";
import PatientSearch from "../patient/search/PatientSearch";
import "../../styles/patient.css";
import Impairment from "../impairment/Impairment";

const router = createBrowserRouter([
    { path: "/", element: <PatientSearch /> },
    { path: "/impairment", element: <Impairment /> },
]);
const Content = () => {
    return (
        <div id="app-content">
            <RouterProvider router={router} />
        </div>
    );
};

export default Content;
