import React, { useEffect } from "react";
import { AddFormWrapper, NewPatientInputTypes } from "../AddPatientModal";
import { Col, Placeholder, Row, Spinner, Table } from "react-bootstrap";
import { NewPatientInput } from "../NewPatientInput";
import {
    Occupation,
    getOccupations,
} from "../../../../services/demographics_services";
import { useSelector } from "react-redux";
import { useAppDispatch } from "../../../../redux/store";
import { setSelectedOccupationID } from "../../../../redux/reducers/patientReducer";

const CaliforniaForm = () => {
    return (
        <AddFormWrapper>
            <Row>
                <Col>
                    <NewPatientInput
                        label={"Industry"}
                        type={NewPatientInputTypes.Select}
                        dataKey={"industryID"}
                    />
                </Col>
            </Row>
            <Row>
                <Col>
                    <NewPatientInput
                        label={"Search Occupations"}
                        type={NewPatientInputTypes.Text}
                        dataKey={"occupationSearchTxt"}
                    />
                </Col>
            </Row>
            <Row>
                <Col>
                    <OccupationTable />
                </Col>
            </Row>
        </AddFormWrapper>
    );
};

export const OccupationTable = () => {
    const [occupations, setOccupations] = React.useState<Occupation[]>([]);
    const [selectedIndustry, setSelectedIndustry] = React.useState();
    const [searchText, setSearchText] = React.useState();
    const [loading, setLoading] = React.useState(true);
    const [tableHeight, setTableHeight] = React.useState(0);
    const newPatient = useSelector((state: any) => state.patient.newPatient);
    const loadOccupations = async (industryID: any) => {
        setLoading(true);
        const newOccupations = await getOccupations(industryID);
        setOccupations(newOccupations);
        dispatch(setSelectedOccupationID(-1));
        setLoading(false);
    };
    React.useEffect(() => {
        loadOccupations(selectedIndustry);
    }, [selectedIndustry]);

    React.useEffect(() => {
        const patient = JSON.parse(newPatient);
        setSelectedIndustry(patient["industryID"]);
        // TODO Implement search on occupation description field, endpoint exists with query param q=[searchTxt]
        setSearchText(patient["occupationSearchTxt"]);
    }, [newPatient]);

    const dispatch = useAppDispatch();
    React.useEffect(() => {
        const currRows = occupations.length;
        const maxRows = 8;
        const rowHeight = 36;
        const padding = 0;
        const newTableHeight =
            rowHeight * (Math.min(currRows, maxRows) + 1) + padding;
        setTableHeight(newTableHeight);
    }, [occupations]);

    return (
        <div
            style={{
                overflowY: "scroll",
                maxHeight: tableHeight,
                minHeight: tableHeight,
                display: "flex",
                alignItems: loading ? "center" : "flex-start",
                justifyContent: "center",
            }}
        >
            {!loading ? (
                <Table
                    style={{ fontSize: 13, margin: 0, marginBottom: -12 }}
                    bordered
                    striped
                    hover
                >
                    <thead>
                        <tr>
                            <th>Group No</th>
                            <th>Description</th>
                            <th>Industry</th>
                        </tr>
                    </thead>
                    <tbody>
                        {occupations.map((occ) => (
                            <OccupationRow
                                occ={occ}
                                key={"OCCUPATION-ID-" + occ.id}
                            />
                        ))}
                    </tbody>
                </Table>
            ) : (
                <Spinner style={{ color: "#7262aa" }} />
            )}
        </div>
    );
};

const OccupationRow = (props: { occ: Occupation }) => {
    const dispatch = useAppDispatch();
    const selectedOccupationID = useSelector(
        (state: any) => state.patient.selectedOccupationID
    );
    const [bg, setBg] = React.useState("");
    const [color, setColor] = React.useState("");

    useEffect(() => {
        const isSelected = selectedOccupationID === props.occ.id;
        const newColor = isSelected ? "white" : "black";
        const newBg = isSelected ? "rgb(114, 98, 170)" : "";
        setBg(newBg);
        setColor(newColor);
    }, [selectedOccupationID]);
    const handleClick = () => {
        dispatch(setSelectedOccupationID(props.occ.id));
    };
    return (
        <tr
            onClick={handleClick}
            style={{
                cursor: "pointer",
                userSelect: "none",
            }}
        >
            <td style={{ color: color, backgroundColor: bg }}>
                {props.occ.groupNumber}
            </td>
            <td style={{ color: color, backgroundColor: bg }}>
                {props.occ.description}
            </td>
            <td style={{ color: color, backgroundColor: bg }}>
                {props.occ.industryName}
            </td>
        </tr>
    );
};
export default CaliforniaForm;
