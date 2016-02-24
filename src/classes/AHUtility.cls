/**
*  This class is Used For interact with AnswerHub from SF
*  ===============================================================================================
*    Version        Date                Author           Comment
*  ===============================================================================================
*    Initial 0.1    Nov-01-2015         Siddhraj A       Common RestAPI Callout Class
*
**/
public class AHUtility {
/**
* getAHData: Method retrive All data(user,Question,Answer,topics,etc) from AnswerHub portal
*
**/
    public static HttpResponse getAHData(String endPointURl,String method,String body){
        AHConfiguration__c configVar = AHConfiguration__c.getInstance('AdminAHCred');
        Blob headerValue = Blob.valueOf(configVar.AHUserName__c+ ':' +configVar.AHPassword__c);
        String authorizationHeader = 'Basic  ' +EncodingUtil.base64Encode(headerValue);
        Httprequest req = new HttpRequest();
        req.setEndpoint(configVar.AHEndpoint__c+endPointURl); 
        req.setMethod(method);
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('Authorization', authorizationHeader);
        if(body != null && body != '') {
            req.setBody(body);  
        }
        Http httpReq = new Http();
        HttpResponse response = httpReq.send(req);
        return response; 
    }
}