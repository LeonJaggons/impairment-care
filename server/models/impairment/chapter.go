package impairment

type ChapterSection struct {
	ID      int    `json:"id" gorm:"column:id"`
	Name    string `json:"name" gorm:"column:name"`
	Code    string `json:"code" gorm:"column:code"`
	OrderID int    `json:"orderID" gorm"column:orderid"`
}
type Chapter struct {
	ID   int    `json:"id" gorm:"column:id"`
	Code string `json:"code" gorm:"column:code"`
	Name string `json:"name" gorm:"column:name"`
}

type ChapterView struct {
	Chapter         Chapter          `json:"chapter"`
	ChapterSections []ChapterSection `json:"chapterSections"`
}

func (Chapter) TableName() string {
	return "chapter"
}
