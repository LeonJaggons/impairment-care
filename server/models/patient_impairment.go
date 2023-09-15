package models

type PatientImpairment struct {
	ID              int     `json:"id" gorm:"column:id"`
	PatientId       int     `json:"patientID" gorm:"column:patientid"`
	ImpairmentCode  string  `json:"impairmentCode" gorm:"column:impairment_code"`
	Value           float64 `json:"value" gorm:"column:value"`
	ImpairmentValue float64 `json:"impairmentValue" gorm:"column:impairment_value"`
}

func (PatientImpairment) TableName() string {
	return "patient_impairment"
}

func (iv PatientImpairment) Add(otherIV PatientImpairment) PatientImpairment {
	return PatientImpairment{
		PatientId:       iv.PatientId,
		Value:           0,
		ImpairmentValue: iv.ImpairmentValue + otherIV.ImpairmentValue,
	}
}
func (iv PatientImpairment) Combine(otherIV PatientImpairment) float64 {
	return 1 - (1 - (iv.ImpairmentValue/100)*(1-(otherIV.ImpairmentValue/100)))
}

func EmptyPatientImpairment(patientID int) PatientImpairment {
	return PatientImpairment{
		Value:           0,
		ImpairmentValue: 0,
	}
}
