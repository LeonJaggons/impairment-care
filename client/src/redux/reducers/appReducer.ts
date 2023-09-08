import { createSlice } from "@reduxjs/toolkit";

export interface ApplicationInitialState {
    appName: string;
}

const initialState: ApplicationInitialState = {
    appName: "ImparimentCare",
};

export const appSlice = createSlice({
    name: "app",
    initialState,
    reducers: {},
});

export const {} = appSlice.actions;
export default appSlice.reducer;
