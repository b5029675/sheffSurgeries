package com.slaird

class Doctor {
    String fullName
    String qualification
    String position
    String email
    String username
    String password
    String doctorOffice
    double doctorPhone
    String bio

    static hasMany = [patients:Patient, nurses:Nurse, appointments:Appointment]
    static belongsTo = [patients:Patient]
    
    String toString(){
        return fullName;
    }

    static constraints = {
        fullName blank:false
        qualification blank:false
        position blank:false
	    username blank:false
        password blank:false
        doctorOffice blank:false
        doctorPhone size:11, blank:false
        bio blank:false
        email email:true
    }
}

