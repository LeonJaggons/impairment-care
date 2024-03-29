package models

import "fmt"

type PatientImpairmentError struct {
	Type        string `json:"type"`
	Description string `json:"description"`
}
type PatientImpairment struct {
	ID               int     `json:"id" gorm:"column:id"`
	PatientId        int     `json:"patientID" gorm:"column:patientid"`
	ImpairmentCode   string  `json:"impairmentCode" gorm:"column:impairment_code"`
	Value            float64 `json:"value" gorm:"column:value"`
	ImpairmentValue  float64 `json:"impairmentValue" gorm:"column:impairment_value"`
	ErrorCode        string  `json:"errorCode" gorm:"column:error_code"`
	ErrorDescription string  `json:"errorDescription" gorm:"column:error_description"`
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
func (iv PatientImpairment) Combine(otherIV PatientImpairment) PatientImpairment {
	firstFactor := (1 - iv.ImpairmentValue/100)
	otherFactor := (1 - otherIV.ImpairmentValue/100)
	newImpVal := 1 - firstFactor*otherFactor
	fmt.Println("FIRST FAC", firstFactor)
	fmt.Println("OTHER FAC", otherFactor)
	return PatientImpairment{
		PatientId:       iv.PatientId,
		Value:           0,
		ImpairmentValue: newImpVal,
	}
}

func EmptyPatientImpairment(patientID int) PatientImpairment {
	return PatientImpairment{
		Value:           0,
		ImpairmentValue: 0,
	}
}
