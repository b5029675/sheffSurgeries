package com.slaird

class Receptionist {
    String recepName
    String recepEmail
    String recepUsername
    String recepPassword
    int recepPhone

    static  belongsTo = [surgery:Surgery]

    static constraints = {
        recepName blank:false
        recepEmail blank:false, email:true
        recepUsername blank:false, unique:true
        recepPassword blank:false
        recepPhone size:11, blank:false

    }
}
