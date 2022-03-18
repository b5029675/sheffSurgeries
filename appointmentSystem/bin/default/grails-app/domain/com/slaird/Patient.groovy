package com.slaird

class Patient {
    String patientName

    static constraints = {
        patientName blank:false
    }
}
