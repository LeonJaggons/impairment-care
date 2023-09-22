import { Button, Col, Nav, Row, Stack } from "react-bootstrap";
import { MdAccountCircle, MdMonitorHeart } from "react-icons/md";
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
    return (
        <Nav.Link className="ic-nav-item" href={"/"}>
            <div style={{ display: "flex", alignItems: "center" }}>
                <MdMonitorHeart size={22} style={{ marginRight: 3 }} />
                <h6 style={{ margin: 0 }}>{appName}™</h6>
            </div>
        </Nav.Link>
    );
};

const ImpairmentCareMenu = () => {
    return (
        <Nav style={{ alignItems: "center" }}>
            <Nav.Item>
                <Nav.Link href="/" className="ic-nav-item">
                    Patients
                </Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/records" className="ic-nav-item">
                    Records
                </Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/support" className="ic-nav-item">
                    Support
                </Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Button href="/support" className="ic-nav-item" variant="ghost">
                    <MdAccountCircle size={35} />
                </Button>
            </Nav.Item>
        </Nav>
    );
};

export default Header;
