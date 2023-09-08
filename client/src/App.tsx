import { Button } from "react-bootstrap";
import Header from "./components/app/Header";
import Content from "./components/app/Content";
import Footer from "./components/app/Footer";
import "./styles/app.css";
import "./styles/bootstrap-override.css";
function App() {
    return (
        <div id={"app-container"}>
            <Header />
            <Content />
            <Footer />
        </div>
    );
}

export default App;
