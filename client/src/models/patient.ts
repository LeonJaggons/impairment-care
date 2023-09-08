class Patient {
    ID: number = -1;
    medicalRecordNumber: string = "";
    dominantSideID: number = -1;
    activityLevelID: number = -1;
    birthCountryID: number = -1;
    genderID: number = -1;
    maritalID: number = -1;
    languageID: number = -1;
    ethnicityID: number = -1;
    suffixID: number = -1;
    middleName: string = "";
    namePrefixID: number = -1;
    lastName: string = "";
    firstName: string = "";
    dateOfBirth: Date | null = null;
    emailAddress: string = "";
    city: string = "";
    state: string = "";
    zip: string = "";
    socialSecurityNumber: string = "";
    dayPhone: string = "";
    countryID: number = -1;
    eveningPhone: string = "";
    fax: string = "";
    height: number = -1;
    weight: number = -1;
    heartRate: number = -1;
    livingConditionID: number = -1;
    assistedLivingID: number = -1;
    socialSecurityID: number = -1;
    disabilityID: number = -1;
    workersCompensationID: number = -1;
    smokerID: number = -1;
    lastEditedBy: string = "";
    lastEditedOn: Date | null = null;
    createdBy: string = "";
    createdOn: Date | null = null;
    bloodPressure: string = "";
    alternateID: string = "";
    county: string = "";
    patientText: string = "";
    dateOfExam: Date | null = null;
    dateOfInjury: Date | null = null;
    occupationCodePD: string = "";
    occupationNamePD: string = "";
    avgWeeklyEarningPD: number = -1;
    occupationCat: number = -1;
    insuranceID: number = -1;
    claimNumber: string = "";
    claimAdjuster: string = "";
    employerID: number = -1;
    lawyerID: number = -1;
    educationID: number = -1;
    treatingPhysicianID: number = -1;
    dateOfMMI: Date | null = null;
    isFourthEdition: number = -1;
    createdDate: Date | null = null;
    createdByUser: string = "";

    getMerged(data: Object): Patient {
        console.log("NEW DATA", data);
        const newPatient: Patient = Object.assign(this, data);
        return newPatient;
    }
}

export default Patient;
