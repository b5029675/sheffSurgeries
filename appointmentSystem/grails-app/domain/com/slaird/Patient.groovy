package com.slaird

class Patient {
    String patientName
    String patientAddress
    String patientResidence
    Date patientDob
    String patientID
    Date dateRegistered
    double patientPhone

    static hasMany = [prescriptions:Prescription, doctor:Doctor, surgery:Surgery, appointments:Appointment]

    String toString(){
        return patientName;
    }

    static constraints = {
        patientName blank:false
        patientAddress blank:false
        patientResidence blank:false
        patientDob blank:false
        patientID blank:false
        dateRegistered blank:false
        patientPhone blank:false
    }
}
