package patient

import "time"

type Patient struct {
	ID int `json:"id" gorm:"column:id"`
	// PatientId             string    `json:"patientID" gorm:"column:patientid"`
	MedicalRecordNumber   string    `json:"medicalRecordNumber" gorm:"column:medicalrecordnumber"`
	DominantSideId        int       `json:"dominantSideID" gorm:"column:dominantsideid"`
	ActivityLevelId       int       `json:"activityLevelID" gorm:"column:activitylevelid"`
	BirthCountryId        int       `json:"birthCountryID" gorm:"column:birthcountryid"`
	GenderId              int       `json:"genderID" gorm:"column:genderid"`
	MaritalId             int       `json:"maritalID" gorm:"column:maritalid"`
	LanguageId            int       `json:"languageID" gorm:"column:languageid"`
	EthnicityId           int       `json:"ethnicityID" gorm:"column:ethnicityid"`
	SuffixId              int       `json:"suffixID" gorm:"column:suffixid"`
	MiddleName            string    `json:"middleName" gorm:"column:middlename"`
	NamePrefixId          int       `json:"namePrefixID" gorm:"column:nameprefixid"`
	LastName              string    `json:"lastName" gorm:"column:lastname"`
	FirstName             string    `json:"firstName" gorm:"column:firstname"`
	DateOfBirth           time.Time `json:"dateOfBirth" gorm:"column:dateofbirth"`
	EmailAddress          string    `json:"emailAddress" gorm:"column:emailaddress"`
	City                  string    `json:"city" gorm:"column:city"`
	Address               string    `json:"address" gorm:"column:address"`
	State                 string    `json:"state" gorm:"column:state"`
	Zip                   string    `json:"zip" gorm:"column:zip"`
	SocialSecurityNumber  string    `json:"socialSecurityNumber" gorm:"column:socialsecuritynumber"`
	DayPhone              string    `json:"dayPhone" gorm:"column:dayphone"`
	CountryId             int       `json:"countryID" gorm:"column:countryid"`
	EveningPhone          string    `json:"eveningPhone" gorm:"column:eveningphone"`
	Fax                   string    `json:"fax" gorm:"column:fax"`
	Height                int       `json:"height" gorm:"column:height"`
	Weight                int       `json:"weight" gorm:"column:weight"`
	HeartRate             int       `json:"heartRate" gorm:"column:heartrate"`
	LivingConditionId     int       `json:"livingConditionID" gorm:"column:livingconditionid"`
	AssistedLivingId      int       `json:"assistedLivingID" gorm:"column:assistedlivingid"`
	SocialSecurityId      int       `json:"socialSecurityID" gorm:"column:socialsecurityid"`
	DisabilityId          int       `json:"disabilityID" gorm:"column:disabilityid"`
	WorkersCompensationId int       `json:"workersCompensationID" gorm:"column:workerscompensationid"`
	SmokerId              int       `json:"smokerID" gorm:"column:smokerid"`
	LastEditedBy          string    `json:"lastEditedBy" gorm:"column:lasteditedby"`
	LastEditedOn          time.Time `json:"lastEditedOn" gorm:"column:lasteditedon"`
	CreatedBy             string    `json:"createdBy" gorm:"column:createdby"`
	CreatedOn             time.Time `json:"createdOn" gorm:"column:createdon"`
	BloodPressure         string    `json:"bloodPressure" gorm:"column:bloodpressure"`
	AlternateID           string    `json:"alternateID" gorm:"column:alternateid"`
	County                string    `json:"county" gorm:"column:county"`
	PatientText           string    `json:"patientText" gorm:"column:patienttext"`
	DateOfExam            time.Time `json:"dateOfExam" gorm:"column:dateofexam"`
	DateOfInjury          time.Time `json:"dateOfInjury" gorm:"column:dateofinjury"`
	OccupationCodePD      string    `json:"occupationCodePD" gorm:"column:occupationcodepd"`
	OccupationNamePD      string    `json:"occupationNamePD" gorm:"column:occupationnamepd"`
	AvgWeeklyEarningPD    float32   `json:"avgWeeklyEarningPD" gorm:"column:avgweeklyearningpd"`
	OccupationCat         int       `json:"occupationCat" gorm:"column:occupationcat"`
	InsuranceId           int       `json:"insuranceID" gorm:"column:insuranceid"`
	ClaimNumber           string    `json:"claimNumber" gorm:"column:claimnumber"`
	ClaimAdjuster         string    `json:"claimAdjuster" gorm:"column:claimadjuster"`
	EmployerId            int       `json:"employerID" gorm:"column:employerid"`
	LawyerID              int       `json:"lawyerID" gorm:"column:lawyerid"`
	EducationID           int       `json:"educationID" gorm:"column:educationid"`
	TreatingPhysicianId   int       `json:"treatingPhysicianID" gorm:"column:treatingphysicianid"`
	DateOfMMI             time.Time `json:"dateOfMMI" gorm:"column:dateofmmi"`
	IsFourthEdition       int       `json:"isFourthEdition" gorm:"column:isfourthedition"`
	CreatedDate           time.Time `json:"createdDate" gorm:"column:createddate"`
	CreatedByUser         string    `json:"createdByUser" gorm:"column:createdbyuser"`
}

func (Patient) TableName() string {
	return "patient"
}
