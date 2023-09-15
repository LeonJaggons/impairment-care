package patient

import "time"

type Visit struct {
	ID               int       `json:"id" gorm:"column:id"`
	PatientId        int       `json:"patientID,string" gorm:"column:patientid"`
	VisitDate        time.Time `json:"visitDate" gorm:"column:visitdate"`
	VisitDescription string    `json:"visitDescription" gorm:"column:visitdescription"`
	DefaultChapterId int       `json:"defaultChapterID,string" gorm:"column:defaultchapterid"`
}

type VisitView struct {
	ID                 int       `json:"id" gorm:"column:id"`
	PatientId          string    `json:"patientID" gorm:"column:patientid"`
	VisitDate          time.Time `json:"visitDate" gorm:"column:visitdate"`
	VisitDescription   string    `json:"visitDescription" gorm:"column:visitdescription"`
	DefaultChapterId   string    `json:"defaultChapterID" gorm:"column:defaultchapterid"`
	DefaultChapterName string    `json:"defaultChapterName" gorm:"column:defaultchaptername"`
}

func (Visit) TableName() string {
	return "visit"
}
