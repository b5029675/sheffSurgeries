package com.slaird

class Doctor {
    String fullName
    String qualification
    String position
    String doctorEmail
    String password
    String doctorOffice
    Int doctorPhone
    String bio

    static constraints = {
        fullName blank:false
        qualification blank:false
        position blank:false
        doctorEmail email:true
        password blank:false
        doctorOffice blank:false
        doctorPhone size:11
        bio blank:false
    }
}
