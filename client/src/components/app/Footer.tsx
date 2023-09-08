import { Nav } from "react-bootstrap";

const Footer = () => {
    return (
        <div id={"app-footer"}>
            <Copyright />
        </div>
    );
};

const Copyright = () => {
    return (
        <Nav.Item>
            <Nav.Link>Cedaron Medical Inc. &copy; 2023</Nav.Link>
        </Nav.Item>
    );
};

export default Footer;
