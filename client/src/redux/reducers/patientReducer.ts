import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import Patient from "../../models/patient";
import {
    DominantSide,
    Gender,
    Industry,
    MaritalStatus,
    OccupationCat,
} from "../../services/demographics_services";
import { Edition } from "../../services/impairment_services";
import { Visit } from "../../services/patient_services";

export interface PatientInitialState {
    showAddPatient: boolean;
    showPatientVisits: string;
    addPatientEventKey: string;
    newPatient: string;
    patientGenders: Gender[];
    patientDominantSides: DominantSide[];
    patientOccupationCats: OccupationCat[];
    patientMaritalStatuses: MaritalStatus[];
    patientIndustries: Industry[];
    patientEditions: Edition[];
    selectedOccupationID: number;
    visitTab: string;
    selectedVisit?: Visit;
    patientImpairment: any;
    selectedChapter?: any;
    selectedChapterSection?: any;
}

const initialState: PatientInitialState = {
    showAddPatient: false,
    showPatientVisits: "",
    addPatientEventKey: "",
    newPatient: JSON.stringify(new Patient()),
    patientGenders: [],
    patientDominantSides: [],
    patientOccupationCats: [],
    patientMaritalStatuses: [],
    patientIndustries: [],
    patientEditions: [],
    selectedOccupationID: -1,
    visitTab: "VISIT-TABLE",
    selectedVisit: undefined,
    patientImpairment: [],
    selectedChapter: [],
    selectedChapterSection: {},
};

export const patientSlice = createSlice({
    name: "patient",
    initialState,
    reducers: {
        toggleAddPatient: (state) => {
            state.showAddPatient = !state.showAddPatient;
        },
        openAddPatient: (state) => {
            state.showAddPatient = true;
        },
        closeAddPatient: (state) => {
            state.showAddPatient = false;
        },
        setShowPatientVisits: (state, action: PayloadAction<string>) => {
            state.showPatientVisits = action.payload;
        },
        setSelectedVisit: (state, action: PayloadAction<Visit>) => {
            state.selectedVisit = action.payload;
        },
        setVisitTab: (state, action: PayloadAction<string>) => {
            state.visitTab = action.payload;
        },
        setAddPatientEventKey: (state, action: PayloadAction<string>) => {
            state.addPatientEventKey = action.payload;
        },
        setSelectedOccupationID: (state, action: PayloadAction<number>) => {
            state.selectedOccupationID = action.payload;
        },
        setPatientDominantSides: (
            state,
            action: PayloadAction<DominantSide[]>
        ) => {
            state.patientDominantSides = action.payload;
        },
        setPatientOccupationCats: (
            state,
            action: PayloadAction<OccupationCat[]>
        ) => {
            state.patientOccupationCats = action.payload;
        },
        setPatientMaritalStatuses: (
            state,
            action: PayloadAction<MaritalStatus[]>
        ) => {
            state.patientMaritalStatuses = action.payload;
        },
        setPatientIndustries: (state, action: PayloadAction<Industry[]>) => {
            state.patientIndustries = action.payload;
        },
        setPatientEditions: (state, action: PayloadAction<Edition[]>) => {
            state.patientEditions = action.payload;
        },
        setPatientGenders: (state, action: PayloadAction<Gender[]>) => {
            state.patientGenders = action.payload;
        },
        setNewPatient: (state, action: PayloadAction<Object>) => {
            const serializedPatient = JSON.stringify(action.payload);
            state.newPatient = serializedPatient;
        },
        updateNewPatient: (state, action: PayloadAction<Object>) => {
            const deserializedPatient = JSON.parse(state.newPatient);
            Object.assign(deserializedPatient, action.payload);
            state.newPatient = JSON.stringify(deserializedPatient);
        },
        clearNewPatient: (state) => {
            const clearPatient = new Patient();
            const serializedNewPatient = JSON.stringify(clearPatient);
            state.newPatient = serializedNewPatient;
        },
        setPatientImpairment: (state, action: PayloadAction<any>) => {
            state.patientImpairment = action.payload;
        },

        setSelectedChapter: (state, action: PayloadAction<any>) => {
            state.selectedChapter = action.payload;
        },
        setSelectedChapterSection: (state, action: PayloadAction<any>) => {
            state.selectedChapterSection = action.payload;
        },
    },
});

export const {
    toggleAddPatient,
    closeAddPatient,
    openAddPatient,
    updateNewPatient,
    setShowPatientVisits,
    setPatientGenders,
    setPatientDominantSides,
    setPatientOccupationCats,
    setPatientMaritalStatuses,
    setPatientIndustries,
    setSelectedOccupationID,
    setPatientEditions,
    clearNewPatient,
    setVisitTab,
    setSelectedVisit,
    setPatientImpairment,
    setNewPatient,
    setSelectedChapter,
    setSelectedChapterSection,
} = patientSlice.actions;
export default patientSlice.reducer;
