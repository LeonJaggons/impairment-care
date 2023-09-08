package demographic

type MaritalStatus struct {
	ID          int    `json:"id" gorm:"column:id"`
	Description string `json:"description" gorm:"column:description"`
}

func (MaritalStatus) TableName() string {
	return "maritalstatus"
}
