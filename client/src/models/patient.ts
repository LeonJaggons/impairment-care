class Patient {
    id?: string;
    medicalRecordNumber?: string;
    dominantSideID?: string;
    activityLevelID?: string;
    birthCountryID?: string;
    genderID?: string;
    maritalID?: string;
    languageID?: string;
    ethnicityID?: string;
    suffixID?: string;
    middleName?: string;
    namePrefixID?: string;
    lastName?: string;
    firstName?: string;
    dateOfBirth?: Date | null;
    emailAddress?: string;
    city?: string;
    state?: string;
    zip?: string;
    socialSecurityNumber?: string;
    dayPhone?: string;
    countryID?: string;
    eveningPhone?: string;
    fax?: string;
    height?: number;
    weight?: number;
    heartRate?: number;
    livingConditionID?: string;
    assistedLivingID?: string;
    socialSecurityID?: string;
    disabilityID?: string;
    workersCompensationID?: string;
    smokerID?: string;
    lastEditedBy?: string;
    lastEditedOn?: Date | null;
    createdBy?: string;
    createdOn?: Date | null;
    bloodPressure?: string;
    alternateID?: string;
    county?: string;
    patientText?: string;
    dateOfExam?: Date | null;
    dateOfInjury?: Date | null;
    occupationCodePD?: string;
    occupationNamePD?: string;
    avgWeeklyEarningPD?: number;
    occupationCat?: number;
    insuranceID?: string;
    claimNumber?: string;
    claimAdjuster?: string;
    employerID?: string;
    lawyerID?: string;
    educationID?: string;
    treatingPhysicianID?: string;
    dateOfMMI?: Date | null;
    isFourthEdition?: number;
    createdDate?: Date | null;
    createdByUser?: string;

    getMerged(data: Object): Patient {
        const newPatient: Patient = Object.assign(this, data);
        return newPatient;
    }
}

export default Patient;
