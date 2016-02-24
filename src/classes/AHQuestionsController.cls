public class AHQuestionsController {

    public List<WrapperQuestion> lswque {get;set;}
    public String spaceName{ get; set; }
   
    
    public AHQuestionsController(){
   
       getQuestions();
    
    }
    
    public class WrapperQuestion {
        public String question{get; set;}
        public String answercount{get; set;}
        public String topic{get; set;}
        public String createdDate{get; set;}
        public String link{get;set;}
        public String likeCount{get;set;}
        public String replyCount{get;set;}
        public String authId {get;set;}
        public String Id{get;set;}
                
        public WrapperQuestion(String question,String answercount,String topic,String createdDate,String link,String likeCount,String authId,String Id) {
            this.question = question;
            this.answercount = answercount;
            this.topic = topic;
            this.createdDate = createdDate;
            this.link = link;
            this.likeCount = likeCount;
            this.authId = authId;
            this.Id = Id;
          
        }
    }
    
    public SelectOption[] getSpaces() {
        return new SelectOption[] { new SelectOption('All', '--All Questions--'),new SelectOption('94', 'Help'), 
            new SelectOption('111', 'Salesforce'), new SelectOption('112', 'Salesforce API') };
    }
    
    
    Public PageReference getQuestions() {
       
        lswque = new List<WrapperQuestion>();
        String Url = '/services/v2/question.json';
        try{
            JSON2ApexAllQuestion jObj = JSON2ApexAllQuestion.parse(AHUtility.getAHData(Url,'GET','').getBody());
           
            String answerCount;
            String title;
            String topic='';
            String createdDate;
            String likeCount;
            String authId;
            String Id;
           
            for(JSON2ApexAllQuestion.list_Z  mainList: jObj.list_Z) {
                 topic = '';
                answerCount = String.valueOf(mainList.answerCount);
                createdDate = mainList.creationDateFormatted;
                title = mainList.title;
                likeCount = String.valueOf(mainList.score);
                authId = String.valueOf(mainList.author.id);
                for(JSON2ApexAllQuestion.Topics topicList :mainList.topics) {
                    topic += topicList.name+',';
                }
                
                lswque.add(new WrapperQuestion(title,answerCount,topic.removeEnd(','),createdDate,mainList.id+','+mainList.slug,likeCount,authId,String.valueOf(mainList.id)));
            }
 
        }catch(Exception e){
             ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'Please contact to Support :'+e));
           
        }
        return null;
    }
    
  
    
    
    Public PageReference questionWithSpace() {
   
    system.debug('-----spaceName----'+spaceName);
        String Url;
        lswque = new List<WrapperQuestion>();
        if(spaceName=='All'){
         Url = '/services/v2/question.json';
        }else{
         Url = '/services/v2/question.json?spaceId='+spaceName;
        }
         
        
         //system.debug('-----spaceName---'+AHUtility.getAHData(Url,'GET','').getBody());
        try{
            JSON2ApexAllQuestion jObj = JSON2ApexAllQuestion.parse(AHUtility.getAHData(Url,'GET','').getBody());
           
            String answerCount;
            String title;
            String topic;
            String createdDate;
            String likeCount;
            String authId;
            String Id;
           
               // system.debug('-----in jObj----'+jObj);
            for(JSON2ApexAllQuestion.list_Z  mainList: jObj.list_Z) {
                answerCount = String.valueOf(mainList.answerCount);
                createdDate = mainList.creationDateFormatted;
                title = mainList.title;
                likeCount = String.valueOf(mainList.score);
                authId = String.valueOf(mainList.author.id);
                topic = '';
                for(JSON2ApexAllQuestion.Topics topicList :mainList.topics) {
                    topic += topicList.name+',';
                }
                lswque.add(new WrapperQuestion(title,answerCount,topic.removeEnd(','),createdDate,mainList.id+','+mainList.slug,likeCount,authId,String.valueOf(mainList.id)));
            }
 
        }catch(Exception e){
             ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'Please contact to Support :'+e));
           
        }
        return null;
    }
    

    

}