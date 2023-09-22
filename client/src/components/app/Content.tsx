import {
    RouterProvider,
    createBrowserRouter,
    useRouteError,
} from "react-router-dom";
import PatientSearch from "../patient/search/PatientSearch";
import "../../styles/patient.css";
import Impairment from "../impairment/Impairment";
import { Button, Card, Col, Nav, Row, Stack } from "react-bootstrap";
import { MdChevronLeft } from "react-icons/md";
const ErrorElement = () => {
    const router = useRouteError();
    console.log(router);
    return (
        <div
            style={{
                display: "flex",
                flex: 1,
                alignItems: "center",
                justifyContent: "center",
            }}
        >
            <Card style={{ width: "30vw" }}>
                <Card.Body style={{ padding: 26 }}>
                    <Stack style={{ textAlign: "center" }} gap={3}>
                        <h1>Whoops</h1>
                        {/* <p style={{ fontSize: 18 }}>Page not found</p> */}

                        <Button>
                            <Nav.Link
                                href={"/"}
                                style={{ fontSize: 18, color: "white" }}
                            >
                                <MdChevronLeft size={20} />
                                Back to home
                            </Nav.Link>
                        </Button>
                    </Stack>
                </Card.Body>
            </Card>
        </div>
    );
};

const router = createBrowserRouter([
    {
        children: [
            { path: "/", element: <PatientSearch /> },
            { path: "/impairment", element: <Impairment /> },
        ],
    },
]);
const Content = () => {
    return (
        <div id="app-content">
            <RouterProvider router={router} />
        </div>
    );
};

export default Content;
