package com.slaird

class Surgery {
    String name
    String address
    String postcode
    String telephone
    int numberOfPatients
    String description
    String openingTime

    static hasMany = [nurses:Nurse, patients:Patient, doctors:Doctor, appointments:Appointment, receptionists:Receptionist]

    static constraints = {
        name blank:false
        address blank:false
        postcode maxSize:7, minSize:7
        telephone blank:false
        numberOfPatients blank:false
        description blank:false
        openingTime blank:false
    }
}
