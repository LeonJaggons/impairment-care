import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import Patient from "../../models/patient";
import { Gender } from "../../services/demographics_services";

export interface PatientInitialState {
    showAddPatient: boolean;
    addPatientEventKey: string;
    newPatient: string;
    patientGenders: Gender[];
}

const initialState: PatientInitialState = {
    showAddPatient: false,
    addPatientEventKey: "",
    newPatient: JSON.stringify(new Patient()),
    patientGenders: [],
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
        setPatientGenders: (state, action: PayloadAction<Gender[]>) => {
            state.patientGenders = action.payload;
        },
        updateNewPatient: (state, action: PayloadAction<Object>) => {
            const deserializedPatient = JSON.parse(state.newPatient);
            console.log(action);
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
} = patientSlice.actions;
export default patientSlice.reducer;
