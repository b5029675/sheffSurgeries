package com.slaird

class Prescription {
    String pharmacyName
    int prescripNumber
    String medicine
    String totalCost
    Date dateIssued
    String patientPaying

    static belongsTo = [patient:Patient, doctor:Doctor]

    String toString(){
        return pharmacyName;
    }

    static constraints = {
        pharmacyName blank:false
        prescripNumber blank:false, unique:true
        medicine blank:false
        totalCost blank:false
        dateIssued blank:false
        patientPaying (inList: ["Yes", "No"])
    }
}
