import { configureStore } from "@reduxjs/toolkit";
import appReducer, { ApplicationInitialState } from "./reducers/appReducer";
import patientReducer, { PatientInitialState } from "./reducers/patientReducer";
import { useDispatch } from "react-redux";
export interface ImpairmnetCareReducers {
    app: ApplicationInitialState;
    patient: PatientInitialState;
}

const store = configureStore({
    reducer: {
        app: appReducer,
        patient: patientReducer,
    },
});

export type AppDispatch = typeof store.dispatch;
export const useAppDispatch = () => useDispatch<AppDispatch>();
export default store;
