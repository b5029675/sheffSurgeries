package com.slaird

class Doctor {
    String fullName
    String qualification
    String position
    String doctorEmail
    String username
    String password
    String doctorOffice
    String doctorPhone
    String bio

    static hasMany = [patients:Patient, nurses:Nurse, appointments:Appointment]
    static belongsTo = [surgery:Surgery]
    
    String toString(){
        return fullName;
    }

    static constraints = {
        fullName blank:false
        qualification blank:false
        position blank:false
	username blank:false
        doctorEmail email:true
        password blank:false
        doctorOffice blank:false
        doctorPhone maxSize:11, blank:false
        bio blank:false
    }
}
