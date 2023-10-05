export type DigitImpairmentKeys = {
    IP_FLEX: string;
    IP_EXT: string;
    MP_FLEX: string;
    MP_EXT: string;
    IP_HYPERTROPHY: string;
    MP_HYPERTROPHY: string;
    CMC_HYPERTROPHY: string;
    IP_SUBDIS: string;
    MP_SUBDIS: string;
    CMC_SUBDIS: string;
    IP_MEDINST: string;
    MP_MEDINST: string;
    CMC_MEDINST: string;
    AURD: string;
    ROTDEF: string;
    INTTIGHT: string;
    CONTEN: string;
};
export const impDataKeys: DigitImpairmentKeys = {
    IP_FLEX: "IPFlex",
    IP_EXT: "IPExt",
    MP_FLEX: "MPFlex",
    MP_EXT: "MPExt",
    IP_HYPERTROPHY: "IPHypertrophy",
    MP_HYPERTROPHY: "MPHypertrophy",
    CMC_HYPERTROPHY: "CMCHypertrophy",
    IP_SUBDIS: "IPSubDis",
    MP_SUBDIS: "MPSubDis",
    CMC_SUBDIS: "CMCSubDis",
    IP_MEDINST: "IPMedInst",
    MP_MEDINST: "MPMedInst",
    CMC_MEDINST: "CMCMedInst",
    AURD: "AURD",
    ROTDEF: "RotDef",
    INTTIGHT: "IntTight",
    CONTEN: "ConTen",
};

export const getThumbDataKeys = (): DigitImpairmentKeys => {
    let thbDataKeys: DigitImpairmentKeys = Object.assign({}, impDataKeys);
    for (let dataKey of Object.keys(impDataKeys)) {
        const currKey = dataKey.toString();
        thbDataKeys[currKey] = "Thb" + impDataKeys[currKey];
    }
    return thbDataKeys;
};

export const getLittleDataKeys = (): DigitImpairmentKeys => {
    let littleDataKeys = Object.assign({}, impDataKeys);
    for (let dataKey of Object.keys(impDataKeys)) {
        const currKey = dataKey.toString();
        littleDataKeys[currKey] = "Little" + impDataKeys[currKey];
    }
    return littleDataKeys;
};

export const getRingDataKeys = (): DigitImpairmentKeys => {
    let ringDataKeys = Object.assign({}, impDataKeys);
    for (let dataKey of Object.keys(impDataKeys)) {
        const currKey = dataKey.toString();
        ringDataKeys[currKey] = "Ring" + impDataKeys[currKey];
    }
    return ringDataKeys;
};
export const getMiddleDataKeys = (): DigitImpairmentKeys => {
    let middleDataKeys = Object.assign({}, impDataKeys);
    for (let dataKey of Object.keys(impDataKeys)) {
        const currKey = dataKey.toString();
        middleDataKeys[currKey] = "Middle" + impDataKeys[currKey];
    }
    return middleDataKeys;
};
export const getIndexDataKeys = (): DigitImpairmentKeys => {
    let indexDataKeys = Object.assign({}, impDataKeys);
    for (let dataKey of Object.keys(impDataKeys)) {
        const currKey = dataKey.toString();
        indexDataKeys[currKey] = "Index" + impDataKeys[currKey];
    }
    return indexDataKeys;
};
