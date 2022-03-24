package com.slaird

class Appointment {
    Date appDate
    String appTime
    int appDuration
    String roomNumber
    
    static belongsTo = [appointment:Appointment, surgery:Surgery, doctor:Doctor]

    static constraints = {
        appDate blank:false
        appTime blank:false
        appDuration blank:false
        roomNumber blank:false
    }
}
