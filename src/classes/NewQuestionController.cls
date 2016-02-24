public class NewQuestionController{

    public PageReference cancel() {
        return null;
    }


public String topic{set;get;}
public String title{set;get;}
public String body{set;get;}
public String space{set;get;}

public NewQuestionController(){



}

public SelectOption[] getSpaces() {
        return new SelectOption[] { new SelectOption('Default', 'Default'),new SelectOption('Help', 'Help'), 
            new SelectOption('Salesforce', 'Salesforce'), new SelectOption('Salesforce API', 'Salesforce API') };
    }
public pagereference save(){
  
  system.debug('---------body----'+body);

   if(title== '' || title == null){
       ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'The question title is required.'));
       return null;
       }
       
    if(topic == '' || topic == null){
       ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Topic is required for this question.'));  
       return null;  
       }
       
        if(body== '' || body== null){
       ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Body is required for this question.'));  
       return null;  
       }
       
        String Url = '/services/v2/question.json';
        try{    
            HttpResponse response = AHUtility.getAHData(Url,'POST',getJsonBody(title,body,topic,space));
        }catch(Exception  e){
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'Please Contact to Support :'+e));
            return null;
        }    
        return new pagereference('/apex/AHQuestionsView');


}

/**
* getJsonBody: Method genrate body json string to update contactid to AnswerHub
*
**/    
    public static string getJsonBody(String title,String body,String topic,String space) {
        JSONGenerator gen = JSON.createGenerator(true);
        gen.writeStartObject();
        gen.writeStringField('title',title);
        gen.writeStringField('body',body);
        gen.writeStringField('topics',topic);
        gen.writeStringField('space',space);
        
        gen.writeEndObject();
        system.debug('--------post string -------'+gen.getAsString());
        return gen.getAsString();
    }
}