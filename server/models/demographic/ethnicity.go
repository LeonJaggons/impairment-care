package demographic

type Ethnicity struct {
	ID          int    `json:"id" gorm:"column:id"`
	Description string `json:"description" gorm:"column:description"`
}

func (Ethnicity) TableName() string {
	return "ethnicity"
}
