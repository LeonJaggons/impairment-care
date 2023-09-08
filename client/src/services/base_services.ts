export const API_URL = "http://localhost:8080/";

const joinAPIURL = (pathEndings: string[]) => {
    return API_URL + pathEndings.join("/");
};

export const API_PATIENT_URL = joinAPIURL(["patient"]);
export const API_OCCUPATION = joinAPIURL(["demographic", "occupation"]);
export const API_GENDER = joinAPIURL(["demographic", "gender"]);
