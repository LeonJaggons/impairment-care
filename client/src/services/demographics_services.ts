import store from "../redux/store";
import axios from "axios";
import {
    API_DOMINANT_SIDE,
    API_GENDER,
    API_INDUSTRY,
    API_MARITAL_STATUS,
    API_OCCUPATION,
    API_OCCUPATION_CAT,
} from "./base_services";
import {
    setPatientDominantSides,
    setPatientGenders,
    setPatientIndustries,
    setPatientMaritalStatuses,
    setPatientOccupationCats,
} from "../redux/reducers/patientReducer";

export type Gender = {
    id: number;
    description: string;
};
export type DominantSide = {
    id: number;
    description: string;
};
export type OccupationCat = {
    id: number;
    description: string;
};
export type MaritalStatus = {
    id: number;
    description: string;
};
export type Industry = {
    id: number;
    description: string;
};

export type Occupation = {
    id: number;
    groupNumber: number;
    description: string;
    industryName: string;
    industryID: number;
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

export const getDominantSides = async (): Promise<DominantSide[]> => {
    const response = await axios.get(API_DOMINANT_SIDE);
    const dominantSides = response.data as DominantSide[];
    return dominantSides;
};
export const loadDominantSides = async () => {
    const dominantSides = await getDominantSides();
    store.dispatch(setPatientDominantSides(dominantSides));
};

export const getOccupationCats = async (): Promise<OccupationCat[]> => {
    const response = await axios.get(API_OCCUPATION_CAT);
    const dominantSides = response.data as OccupationCat[];
    return dominantSides;
};
export const loadOccupationCats = async () => {
    const occupationCats = await getOccupationCats();
    store.dispatch(setPatientOccupationCats(occupationCats));
};
export const getMaritalStatuses = async (): Promise<MaritalStatus[]> => {
    const response = await axios.get(API_MARITAL_STATUS);
    const maritalStatuses = response.data as MaritalStatus[];
    return maritalStatuses;
};
export const loadMaritalStatuses = async () => {
    const maritalStatuses = await getMaritalStatuses();
    store.dispatch(setPatientMaritalStatuses(maritalStatuses));
};

export const getIndustries = async (): Promise<Industry[]> => {
    const response = await axios.get(API_INDUSTRY);
    const industries = response.data as Industry[];
    return industries;
};
export const loadIndustries = async () => {
    const industries = await getIndustries();
    store.dispatch(setPatientIndustries(industries));
};

export const getOccupations = async (
    industryID: string = "",
    q: string = ""
): Promise<Occupation[]> => {
    const queryParams = {
        q: q,
        industryID: industryID in [0, ""] ? "" : industryID,
    };
    const response = await axios.get(API_OCCUPATION, { params: queryParams });
    const occupations = response.data as Occupation[];
    return occupations;
};
