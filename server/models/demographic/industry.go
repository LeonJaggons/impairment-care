package demographic

type Industry struct {
	ID          int    `json:"id" gorm:"column:id"`
	Description string `json:"description" gorm:"column:description"`
}

func (Industry) TableName() string {
	return "industry"
}
