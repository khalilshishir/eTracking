package util

import org.springframework.web.context.request.RequestContextHolder

/**
 * Created by khalil.ullah on 22-Nov-15.
 */
class Util {
    //for real ip from browser
    def getRealIpAddress(Object request){
        String ipAddress=request.getHeader("X-FORWARDED-FOR");
        if(ipAddress==null){
            ipAddress=request.getRemoteAddr()
        }
    }
    //for real ip from matchine
    def getIpAddress(Object request){
        String ipAddress=InetAddress.getLocalHost();

    }
//    get matchine name of user
    def getMachineName(){
        InetAddress ip=InetAddress.getLocalHost()
        String machineName=ip.getHostName();
    }
    def getGeoCode(String divCode){
        String geoCode=divCode
    }

    def getGeoCode(String divCode,String distCode){
        String geoCode=divCode.concat(distCode)

    }

    def getGeoCode(String divCode,String distCode,String thanaCode){
    String geoCode=divCode.concat(distCode).concat(thanaCode)
    }
}
