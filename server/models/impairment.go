package models

type Impairment struct {
	ID           int    `json:"id" gorm:"column:id"`
	Code         string `json:"code" gorm:"column:code"`
	Description  string `json:"description" gorm:"column:description"`
	CalculatedBy string `json:"calculatedBy" gorm:"column:calculatedby"`
	Factors      string `json:"factors" gorm:"column:factors"`
	ChapterID    int    `json:"chapterID" gorm:"column:chapterid"`
	EditionID    int    `json:"editionID" gorm:"column:editionid"`
}

func (Impairment) TableName() string {
	return "impairment"
}
