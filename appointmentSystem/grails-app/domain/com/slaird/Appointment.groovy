package com.slaird

class Appointment {
    Date appDate
    String appTime
    Int appDuration
    String roomNumber
    
    static constraints = {
        appDate blank:false
        appTime blank:false
        appDuration blank:false
        roomNumber blank:false
    }
}
