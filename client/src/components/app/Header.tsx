import { Stack } from "react-bootstrap";
import { useSelector } from "react-redux";

const Header = () => {
    return (
        <div id={"app-header"}>
            <ImpairmentCareLogo />
        </div>
    );
};

const ImpairmentCareLogo = () => {
    const appName = useSelector((state: any) => state.app.appName);
    return (
        <Stack>
            <h5 style={{ margin: 0 }}>{appName}</h5>
        </Stack>
    );
};

export default Header;
