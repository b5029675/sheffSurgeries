package com.slaird

class AppointmentSystemTagLib {
    //static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    def loginToggle = {
        out << "<div style='margin: 0px 0 0px;'>"
        if (request.getSession(false) && session.user){
            out << "<span style='float:left; margin-left: 0px'>"
            out << "Welcome ${session.user}."
            out << "</span><span style='float:right;margin-right:15px'>"
            out << "<a href='${createLink(controller:'Doctor', action:'logout')}'>"
            out << "<button class='logbutton'>Logout</button></a></span>"
        }
        else{
            out << "<span style='float:right;margin-right:0px'>"
            out << "<a href='${createLink(controller:'Doctor', action:'login')}'>"
            out << "<button class='logbutton'>Doctor login</button></a></span>"
        }
        out << "</div><br/>"
    }

    def loginToggleRecep = {
        out << "<div style='margin: 0px 0 0px;'>"
        if (request.getSession(false) && session.user2){
            out << "<span style='float:left; margin-left: 0px'>"
            out << "Welcome ${session.user2}."
            out << "</span><span style='float:right;margin-right:0px'>"
            out << "<a href='${createLink(controller:'Receptionist', action:'logout')}'>"
            out << "<button class='logbutton'>Logout</button></a></span>"
        }
        else{
            out << "<span style='float:right;margin-right:0px'>"
            out << "<a href='${createLink(controller:'Receptionist', action:'login')}'>"
            out << "<button class='logbutton'>Receptionist Login</button></a></span>"
        }
        out << "</div><br/>"
    }

}
