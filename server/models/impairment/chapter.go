package impairment

type Chapter struct {
	ID   int    `json:"id" gorm:"column:id"`
	Name string `json:"name" gorm:"column:name"`
}

func (Chapter) TableName() string {
	return "chapter"
}
