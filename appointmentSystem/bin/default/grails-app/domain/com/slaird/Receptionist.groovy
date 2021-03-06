package com.slaird

class Receptionist {
    String recepName
    String recepEmail
    String username
    String password
    double recepPhone

    static  belongsTo = [surgery:Surgery]

    String toString(){
        return recepName;
    }

    static constraints = {
        recepName blank:false
        recepEmail blank:false, email:true
        username blank:false, unique:true
        password blank:false
        recepPhone blank:false, maxSize:11

    }
}
