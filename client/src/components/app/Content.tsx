import { RouterProvider, createBrowserRouter } from "react-router-dom";
import PatientSearch from "../patient/search/PatientSearch";
import "../../styles/patient.css";

const router = createBrowserRouter([{ path: "/", element: <PatientSearch /> }]);
const Content = () => {
    return (
        <div id="app-content">
            <RouterProvider router={router} />
        </div>
    );
};

export default Content;
