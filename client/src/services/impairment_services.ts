import store from "../redux/store";
import axios from "axios";
import {
    API_CHAPTER,
    API_EDITION,
    API_PATIENT_IMPAIRMENT,
} from "./base_services";
import {
    setNewPatient,
    setPatientEditions,
    setPatientImpairment,
} from "../redux/reducers/patientReducer";
import { getAllPatients } from "./patient_services";

export type Edition = {
    id: number;
    description: string;
    code: string;
};
export type Chapter = {
    id: number;
    name: string;
};

export const getEditions = async (): Promise<Edition[]> => {
    const response = await axios.get(API_EDITION);
    const editions = response.data as Edition[];
    return editions;
};
export const loadEditions = async () => {
    const editions = await getEditions();
    store.dispatch(setPatientEditions(editions));
};

export const getChapters = async (): Promise<Chapter[]> => {
    const response = await axios.get(API_CHAPTER);
    const chapters = response.data as Chapter[];
    return chapters;
};

export const updatePatientImpairment = async (
    patientID: number,
    impCode: string,
    newValue: string
) => {
    console.log(patientID, impCode, newValue);
    const response = await axios.post(API_PATIENT_IMPAIRMENT, {
        patientID: parseInt(patientID),
        impCode: impCode,
        value: parseFloat(newValue),
    });
    const updatedImpairment = response.data;

    console.log(response.data);
    store.dispatch(setPatientImpairment(updatedImpairment));
    return updatedImpairment;
};
export const getPatientImpairment = async (patientID: number) => {
    const response = await axios.get(API_PATIENT_IMPAIRMENT, {
        params: {
            patientID: patientID,
        },
    });
    return response.data;
};

export const loadPatientImpairment = async (patientID: number) => {
    const patientImpairment = await getPatientImpairment(patientID);
    console.log("ASYNC", patientImpairment);
    store.dispatch(setPatientImpairment(patientImpairment));
};

export const loadPatient = async (patientID: number) => {
    const patient = (await getAllPatients()).find(
        (p) => p.id === patientID.toString()
    );
    store.dispatch(setNewPatient(patient as Object));
};
