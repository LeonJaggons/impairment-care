import store from "../redux/store";
import axios from "axios";
import { API_CHAPTER, API_EDITION } from "./base_services";
import { setPatientEditions } from "../redux/reducers/patientReducer";

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
