public class QuestionDetailController {

  


    

public string questionid {get;set;}
public string createdBy{get;set;}
public string title{get;set;}
public string body{get;set;} 
public string creationdate{get;set;}
public string score{get;set;}
public string userId{get;set;}
public string answerCount{get;set;}
public string answerbody{get;set;}
public string commentNodeId{get;set;}
public string quecommentbody{get;set;}
public List<WrapperAnswer> lswans {get;set;}
    public QuestionDetailController(){

     questionid = apexPages.currentpage().getParameters().get('questionid');
    // commentNodeId = '51';
     getQuestionDetail();
    
     
    }
    public PageReference commentOnQuestion() {
         
        system.debug('------quecommentbody----'+quecommentbody); 
        if(quecommentbody== '' || quecommentbody== null){
       ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Body is required for this Comment.'));  
       return null;  
       }
       
        String Url = '/services/v2/node/'+questionid+'/comment.json';
       
        try{    
            HttpResponse response = AHUtility.getAHData(Url,'POST',getJsonBody(quecommentbody));
        }catch(Exception  e){
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'Please Contact to Support :'+e));
            return null;
        }    
         
         
     PageReference pageRef = new PageReference('/Apex/QuestionDetails?questionid='+questionid);
     pageRef.setRedirect(true);
     return pageRef;
    }
    
    public void getQuestionDetail(){
    
            lswans = new List<WrapperAnswer>();
            String Url = '/services/v2/question/'+questionid+'.json';
            JSON2ApexQuestionDetails  jObj = JSON2ApexQuestionDetails.parse(AHUtility.getAHData(Url,'GET','').getBody());
            
           
            title=jObj.title;
            body=String.valueOf(jObj.body).replaceAll('<[/a-zAZ0-9]*>','');
            createdBy=jObj.author.username;
            creationdate=jObj.creationDateFormatted;
            score = string.ValueOf(jObj.score);
            userId = string.ValueOf(jObj.author.id);
            answerCount = string.ValueOf(jObj.answerCount);
             String ansUrl = '/services/v1/answer/list/'+questionid+'.json';
             JSON2ApexQuestionsAnswer ansObj = JSON2ApexQuestionsAnswer.parse(AHUtility.getAHData(ansUrl,'GET','').getBody());
             
            for(JSON2ApexQuestionsAnswer.result mainList: ansObj.result) {
            
             lswans.add(new WrapperAnswer(mainList.author.username,mainList.creationDateFormatted,String.valueOf(mainList.body).replaceAll('<[/a-zAZ0-9]*>',''),String.valueOf(mainList.score),String.valueOf(mainList.author.id)));
            }
            
               
                  Url = '/services/v2/question/'+questionid+'/comment.json';
                  JSON2ApexGetQuestionComment cmtObj= JSON2ApexGetQuestionComment.parse(AHUtility.getAHData(Url,'GET','').getBody());
    
   

     }
     
   public PageReference postAnswer() {
   
   system.debug(questionid+'--answerbody--'+answerbody);
        if(answerbody== '' || answerbody== null){
       ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Body is required for this Answer Post.'));  
       return null;  
       }
       
        String Url = '/services/v2/question/'+questionid+'/answer.json';
       
        try{    
            HttpResponse response = AHUtility.getAHData(Url,'POST',getJsonBody(answerbody));
        }catch(Exception  e){
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'Please Contact to Support :'+e));
            return null;
        }    
   system.debug(questionid+'--hello--'+ApexPages.currentPage().getUrl());
     PageReference pageRef = new PageReference('/Apex/QuestionDetails?questionid='+questionid);
     pageRef.setRedirect(true);
     return pageRef;
   // return new pagereference('/Apex/QuestionDetails?questionid='+questionid );
        
    } 
    /**
* getJsonBody: Method genrate body json string to update contactid to AnswerHub
*
**/    
    public static string getJsonBody(String body) {
        JSONGenerator gen = JSON.createGenerator(true);
        gen.writeStartObject();
        gen.writeStringField('body',body.replaceAll('\\s+$', ''));
        gen.writeEndObject();
        system.debug('----body---'+gen.getAsString());
        return gen.getAsString();
    } 
            /**
* WrapperAnswer: Wrapper class to add data to list for display
*
**/
    public class WrapperAnswer{
        public String answerby{get; set;}
        public String createdDate{get; set;}
        public String title{get; set;}
        public String likecount{get; set;}
        public String authorid{get; set;}
        public WrapperAnswer(String answerby,String createdDate,String title,String likecount,String authorid){
            this.answerby = answerby;
            this.createdDate = createdDate;
            this.title = title;
            this.likecount = likecount;
            this.authorid = authorid;
        }
    }

}