package models

type ImpairmentScale struct {
	ID            int     `json:"id" gorm:"column:id"`
	InputImpCode  string  `json:"inputImpCode" gorm:"column:input_imp_code"`
	TargetImpCode string  `json:"targetImpCode" gorm:"column:target_imp_code"`
	Operation     string  `json:"operation" gorm:"column:operation"`
	ScaleFactor   float64 `json:"scaleFactor" gorm:"column:scale_factor"`
}

func (ImpairmentScale) TableName() string {
	return "impairment_scale"
}
