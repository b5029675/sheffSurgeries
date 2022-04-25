package com.slaird

class Surgery {
    String name
    String address
    String postcode
    Double telephone
    int numberOfPatients
    String description
    String openingTime

    static hasMany = [nurses:Nurse, patients:Patient, doctors:Doctor, appointments:Appointment, receptionists:Receptionist]
    static belongsTo = [patients:Patient, doctors:Doctor]

    String toString(){
        return name;
    }

    static constraints = {
        name blank:false, unique:true
        address blank:false
        postcode maxSize:7
        telephone maxSize:11, blank:false
        numberOfPatients blank:false
        description blank:false
        openingTime blank:false
    }
}
