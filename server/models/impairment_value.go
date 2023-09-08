package models

type ImpairmentValue struct {
	ID              int    `json:"id" gorm:"column:id"`
	ImpairmentCode  string `json:"impairmentCode" gorm:"column:impairmentcode"`
	Value           string `json:"value" gorm:"column:value"`
	ImpairmentValue string `json:"impairmentValue" gorm:"column:impairmentvalue"`
}
