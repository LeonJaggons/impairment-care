package impairment

type Edition struct {
	ID          int    `json:"id" gorm:"column:id"`
	Description string `json:"description" gorm:"column:description"`
	Code        string `json:"code" gorm:"column:code"`
}

func (Edition) TableName() string {
	return "edition"
}
