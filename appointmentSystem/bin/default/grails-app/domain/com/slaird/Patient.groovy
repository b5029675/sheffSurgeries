package com.slaird

class Patient {
    String patientName
    String patientAddress
    String patientResidence
    String patientDob
    String patientID
    String dateRegistered
    String patientPhone

    static hasMany = [prescriptions:Prescription, doctor:Doctor, surgery:Surgery, appointments:Appointment]
    static belongsTo = [doctor:Doctor, surgery:Surgery]

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
