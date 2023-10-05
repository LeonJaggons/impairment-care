package models

import (
	"impairment-care/database"

	"github.com/lib/pq"
)

type Impairment struct {
	ID             int            `json:"id" gorm:"column:id"`
	Name           string         `json:"name" gorm:"column:name"`
	Code           string         `json:"code" gorm:"column:code"`
	Description    string         `json:"description" gorm:"column:description"`
	Factors        pq.StringArray `json:"factors" gorm:"type:text[];column:factors"`
	OperationCode  string         `json:"operationCode" gorm:"column:operation_code"`
	ImpairmentUnit string         `json:"impairmentUnit" gorm:"column:impairment_unit"`
	ValuesTable    string         `json:"valuesTable" gorm:"column:values_table"`
}

func (Impairment) TableName() string {
	return "impairment"
}

func (i Impairment) GetFactorImpairmentValues(patientID int) []PatientImpairment {
	var factors []PatientImpairment
	database.Store.Table("patient_impairment").Where("patientid = ?", patientID).Where("impairment_code = ANY(?)", i.Factors).Find(&factors)
	return factors
}
