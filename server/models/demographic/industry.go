package demographic

type Industry struct {
	ID   int    `json:"id" gorm:"column:id"`
	Name string `json:"name" gorm:"column:name"`
}

func (Industry) TableName() string {
	return "industry"
}
