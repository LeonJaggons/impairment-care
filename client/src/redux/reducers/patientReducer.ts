import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import Patient from "../../models/patient";
import {
    DominantSide,
    Gender,
    Industry,
    MaritalStatus,
    OccupationCat,
} from "../../services/demographics_services";

export interface PatientInitialState {
    showAddPatient: boolean;
    addPatientEventKey: string;
    newPatient: string;
    patientGenders: Gender[];
    patientDominantSides: DominantSide[];
    patientOccupationCats: OccupationCat[];
    patientMaritalStatuses: MaritalStatus[];
    patientIndustries: Industry[];
    selectedOccupationID: number;
}

const initialState: PatientInitialState = {
    showAddPatient: false,
    addPatientEventKey: "",
    newPatient: JSON.stringify(new Patient()),
    patientGenders: [],
    patientDominantSides: [],
    patientOccupationCats: [],
    patientMaritalStatuses: [],
    patientIndustries: [],
    selectedOccupationID: -1,
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
        setPatientGenders: (state, action: PayloadAction<Gender[]>) => {
            state.patientGenders = action.payload;
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
    },
});

export const {
    toggleAddPatient,
    closeAddPatient,
    openAddPatient,
    updateNewPatient,
    setPatientGenders,
    setPatientDominantSides,
    setPatientOccupationCats,
    setPatientMaritalStatuses,
    setPatientIndustries,
    setSelectedOccupationID,
} = patientSlice.actions;
export default patientSlice.reducer;
