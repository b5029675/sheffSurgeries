package com.slaird

class Appointment {
    String appID
    Date appDate
    String appTime
    int appDuration
    String roomNumber
    
    static belongsTo = [patient:Patient, surgery:Surgery, doctor:Doctor]

    String toString(){
        return appDate;
    }

    static constraints = {
        appID blank:false, unique:true
        appDate blank:false
        appTime blank:false
        appDuration blank:false
        roomNumber blank:false
    }
}
