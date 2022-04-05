package com.slaird

class Nurse {
    String nurseName
    String qualifications
    String nurseEmail
    String nurseOffice
    String nursePhone

    static hasMany = [doctor:Doctor]
    static belongsTo = [doctor:Doctor, surgery:Surgery]

    String toString(){
        return nurseName;
    }
    
    static constraints = {
        nurseName blank:false
        qualifications blank:false
        nurseEmail email:true, blank:false
        nursePhone maxSize:11, blank:false
        nurseOffice blank:false
        
    }
}
