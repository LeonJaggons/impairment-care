package models

type ImpairmentValue struct {
	ID              int     `json:"id" gorm:"column:id"`
	Value           float64 `json:"value" gorm:"column:value"`
	ImpairmentValue float64 `json:"impairmentValue" gorm:"column:impairment_value"`
}

func (iv ImpairmentValue) Add(otherIV ImpairmentValue) ImpairmentValue {
	return ImpairmentValue{
		Value:           0,
		ImpairmentValue: iv.ImpairmentValue + otherIV.ImpairmentValue,
	}
}
func (iv ImpairmentValue) Combine(otherIV ImpairmentValue) float64 {
	return 1 - (1 - (iv.ImpairmentValue/100)*(1-(otherIV.ImpairmentValue/100)))
}

func EmptyImpairmentValue() ImpairmentValue {
	return ImpairmentValue{
		Value:           0,
		ImpairmentValue: 0,
	}
}
