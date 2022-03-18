package com.slaird

class Prescription {
    String pharmacyName
    Int prescripNumber
    String medicine
    String totalCost
    String dateIssued
    String patientPaying

    static constraints = {
        pharmacyName blank:false
        prescripNumber blank:false
        medicine blank:false
        totalCost blank:false
        dateIssued blank:false
        patientPaying (inList: ["Yes", "No"])
    }
}
