package com.slaird

class Nurse {
    String nurseName
    String qualifications
    String nurseEmail
    String nurseOffice
    Int nursePhone
    static constraints = {
        nurseEmail email:true, blank:false
        nursePhone size:11
    }
}
