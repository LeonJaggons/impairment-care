package patient

import "time"

type Visit struct {
	ID               int       `json:"id" gorm:"column:id"`
	PatientId        int       `json:"patientID" gorm:"column:patientid"`
	VisitDate        time.Time `json:"visitDate" gorm:"column:visitdate"`
	Description      string    `json:"description" gorm:"column:description"`
	DefaultChapterId int       `json:"defaultChapterID" gorm:"column:defaultchapterid"`
}

type VisitView struct {
	ID                 int       `json:"id" gorm:"column:id"`
	PatientId          string    `json:"patientID" gorm:"column:patientid"`
	VisitDate          time.Time `json:"visitDate" gorm:"column:visitdate"`
	Description        string    `json:"description" gorm:"column:description"`
	DefaultChapterId   string    `json:"defaultChapterID" gorm:"column:defaultchapterid"`
	DefaultChapterName string    `json:"defaultChapterName" gorm:"column:name"`
}

func (Visit) TableName() string {
	return "visit"
}
