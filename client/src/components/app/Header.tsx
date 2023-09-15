import { Nav, Stack } from "react-bootstrap";
import { useSelector } from "react-redux";

const Header = () => {
    return (
        <div id={"app-header"}>
            <ImpairmentCareLogo />
            <ImpairmentCareMenu />
        </div>
    );
};

const ImpairmentCareLogo = () => {
    const appName = useSelector((state: any) => state.app.appName);
    return <h5 style={{ margin: 0 }}>{appName}</h5>;
};

const ImpairmentCareMenu = () => {
    return (
        <Nav>
            <Nav.Item>
                <Nav.Link href="/" className="ic-nav-item">
                    Patients
                </Nav.Link>
            </Nav.Item>
        </Nav>
    );
};

export default Header;
