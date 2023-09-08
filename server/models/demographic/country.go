package demographic

type Country struct {
	ID   int    `json:"id" gorm:"column:id"`
	Name string `json:"name" gorm:"column:name"`
}

func (Country) TableName() string {
	return "country"
}
