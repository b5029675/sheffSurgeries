package com.slaird

class Surgery {
    String name
    String address
    String postcode
    Int telephone
    Int numberOfPatients
    String description
    String openingTime

    static constraints = {
        name blank:false
        address blank:false
        postcode size:7
        telephone size:11
        numberOfPatients blank:false
        description blank:false
        openingTime blank:false
    }
}
