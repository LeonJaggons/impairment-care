package demographic

type OccupationCat struct {
	ID          int    `json:"id" gorm:"column:id"`
	Description string `json:"description" gorm:"column:description"`
}

func (OccupationCat) TableName() string {
	return "occupationcat"
}
