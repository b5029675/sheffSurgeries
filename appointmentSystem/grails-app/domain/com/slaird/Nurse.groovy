package com.slaird

class Nurse {
    String nurseName
    String qualifications
    String nurseEmail
    String nurseOffice
    Int nursePhone
    
    static constraints = {
        nurseName blank:false
        qualifications blank:false
        nurseEmail email:true, blank:false
        nursePhone size:11, blank:false
        nurseOffice blank:false
        
    }
}
