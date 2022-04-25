package com.slaird

class Nurse {
    String nurseName
    String qualifications
    String nurseEmail
    String nurseOffice
    double nursePhone

    static hasMany = [doctor:Doctor]
    static belongsTo = [doctor:Doctor, surgery:Surgery]

    String toString(){
        return nurseName;
    }
    
    static constraints = {
        nurseName blank:false
        qualifications blank:false
        nurseEmail email:true, blank:false
        nursePhone blank:false, maxSize:11
        nurseOffice blank:false
        
    }
}
