import { Col, Row } from "react-bootstrap";
import { AddFormWrapper, NewPatientInputTypes } from "../AddPatientModal";
import { NewPatientInput } from "../NewPatientInput";

const DemographicsForm = () => {
    return (
        <AddFormWrapper>
            <Row>
                <Col xs={4}>
                    <NewPatientInput
                        label={"First Name"}
                        type={NewPatientInputTypes.Text}
                        dataKey={"firstName"}
                    />
                </Col>
                <Col xs={4}>
                    <NewPatientInput
                        label={"Middle Name"}
                        type={NewPatientInputTypes.Text}
                        dataKey={"middleName"}
                    />
                </Col>
                <Col xs={4}>
                    <NewPatientInput
                        label={"Last Name"}
                        type={NewPatientInputTypes.Text}
                        dataKey={"lastName"}
                    />
                </Col>
            </Row>
            <Row>
                <Col>
                    <NewPatientInput
                        label={"Date of Birth"}
                        type={NewPatientInputTypes.Date}
                        dataKey={"dateOfBirth"}
                    />
                </Col>
                <Col>
                    <NewPatientInput
                        label={"Marital Status"}
                        type={NewPatientInputTypes.Select}
                        dataKey={"maritalStatusID"}
                    />
                </Col>
            </Row>
            <Row>
                <Col>
                    <NewPatientInput
                        label={"Gender"}
                        type={NewPatientInputTypes.Select}
                        dataKey={"genderID"}
                    />
                </Col>
                <Col>
                    <NewPatientInput
                        label={"Dominant Side"}
                        type={NewPatientInputTypes.Select}
                        dataKey={"dominantSideID"}
                    />
                </Col>
                <Col>
                    <NewPatientInput
                        label={"Occupation Category"}
                        type={NewPatientInputTypes.Select}
                        dataKey={"occupationCatID"}
                    />
                </Col>
            </Row>
            <Row>
                <Col xs={6}>
                    <NewPatientInput
                        label={"Medical Record Number"}
                        type={NewPatientInputTypes.Text}
                        dataKey={"medicalRecordNumber"}
                    />
                </Col>
                <Col xs={6}>
                    <NewPatientInput
                        label={"Social Security Number"}
                        type={NewPatientInputTypes.Text}
                        dataKey={"socialSecurityNumber"}
                    />
                </Col>
            </Row>
            <Row>
                <Col>
                    <NewPatientInput
                        label={"Impairment Edition"}
                        type={NewPatientInputTypes.Select}
                        dataKey={"editionID"}
                    />
                </Col>
            </Row>
        </AddFormWrapper>
    );
};

export default DemographicsForm;
