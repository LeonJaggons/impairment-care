import store from "../redux/store";
import axios from "axios";
import { API_PATIENT, API_VISIT } from "./base_services";
import Patient from "../models/patient";
import { clearNewPatient } from "../redux/reducers/patientReducer";

export type Visit = {
    id: number;
    patientID: string;
    visitDate: Date;
    visitDescription: string;
    defaultChapterID: number;
    defaultChapterName: string;
};

export const addNewPatient = async (): Promise<Patient> => {
    const newPatient = store.getState().patient.newPatient;
    console.log(JSON.parse(newPatient));

    const response = await axios
        .post(API_PATIENT, JSON.parse(newPatient), {
            headers: {
                "Content-Type": "application/json",
            },
        })
        .catch((err) => {
            console.log(err);
        });

    console.log(response?.data);
    store.dispatch(clearNewPatient());

    return response?.data as Patient;
};

export const addNewVisit = async (visit: Visit): Promise<Visit> => {
    const response = await axios
        .post(API_VISIT, visit, {
            headers: {
                "Content-Type": "application/json",
            },
        })
        .catch((err) => {
            console.log(err);
        });

    return response?.data as Visit;
};
export const getAllPatients = async (): Promise<Patient[]> => {
    const response = await axios.get(API_PATIENT).catch((err) => {
        console.log(err);
    });
    const res = response?.data as Patient[];
    return res;
};

export const getVisitsByPatientID = async (
    patientID?: string
): Promise<Visit[]> => {
    console.log("PATEINT ID", patientID);
    const response = await axios.get(API_VISIT, {
        params: {
            patientID: patientID,
        },
    });

    const visits = response.data as Visit[];
    return visits;
};
