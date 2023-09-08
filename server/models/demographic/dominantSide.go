package demographic

type DominantSide struct {
	ID          int    `json:"id" gorm:"column:id"`
	Description string `json:"description" gorm:"column:description"`
}

func (DominantSide) TableName() string {
	return "dominantside"
}
