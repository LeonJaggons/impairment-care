import store from "../redux/store";
import axios from "axios";
import { API_GENDER } from "./base_services";
import { setPatientGenders } from "../redux/reducers/patientReducer";
export type Gender = {
    id: number;
    description: string;
};
export const getGenders = async (): Promise<Gender[]> => {
    const response = await axios.get(API_GENDER);
    const genders = response.data as Gender[];
    return genders;
};

export const loadGenders = async () => {
    const genders = await getGenders();
    store.dispatch(setPatientGenders(genders));
};
