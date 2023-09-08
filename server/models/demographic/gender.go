package demographic

type Gender struct {
	ID          int    `json:"id" gorm:"column:id"`
	Description string `json:"description" gorm:"column:description"`
}

func (Gender) TableName() string {
	return "gender"
}
