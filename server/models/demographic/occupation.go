package demographic

type Occupation struct {
	ID           int    `json:"id" gorm:"column:id"`
	GroupNumber  int    `json:"groupNumber" gorm:"column:groupnumber"`
	Description  string `json:"description" gorm:"column:description"`
	IndustryName string `json:"industryName" gorm:"column:industryname"`
}

func (Occupation) TableName() string {
	return "occupation"
}
