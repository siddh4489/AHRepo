//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//

@IsTest
public class JSON2ApexQuestionDetails_Test {
    
    // This test method should give 100% coverage
    static testMethod void testParse() {
        String json = '{\"id\":12,\"type\":\"question\",\"creationDate\":1446446586000,\"creationDateFormatted\":\"11/02/2015 06:43 AM\",\"title\":\"How to get User Details using Rest?\",\"body\":\"\",\"bodyAsHTML\":\"\",\"author\":{\"id\":8,\"username\":\"sid\",\"realname\":\"Siddhraj Atodaria\",\"reputation\":23},\"lastEditedAction\":43,\"activeRevisionId\":13,\"revisionIds\":[13],\"lastActiveUserId\":8,\"lastActiveDate\":1446449964000,\"attachments\":[],\"childrenIds\":[13,14],\"commentIds\":[],\"marked\":true,\"topics\":[{\"id\":11,\"creationDate\":1446446586000,\"creationDateFormatted\":\"11/02/2015 06:43 AM\",\"name\":\"ah rest api\",\"author\":{\"id\":8,\"username\":\"sid\",\"realname\":\"Siddhraj Atodaria\",\"reputation\":23},\"usedCount\":2}],\"primaryContainerId\":93,\"containerIds\":[93,92],\"slug\":\"how-to-get-user-details-using-rest\",\"wiki\":false,\"score\":0,\"depth\":0,\"viewCount\":14,\"upVoteCount\":0,\"downVoteCount\":0,\"answers\":[13,14],\"answerCount\":2}';
        JSON2ApexQuestionDetails r = JSON2ApexQuestionDetails.parse(json);
        System.assert(r != null);

        json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
        JSON2ApexQuestionDetails.Topics objTopics = new JSON2ApexQuestionDetails.Topics(System.JSON.createParser(json));
        System.assert(objTopics != null);
        System.assert(objTopics.id == null);
        System.assert(objTopics.creationDate == null);
        System.assert(objTopics.creationDateFormatted == null);
        System.assert(objTopics.name == null);
        System.assert(objTopics.author == null);
        System.assert(objTopics.usedCount == null);

        json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
        JSON2ApexQuestionDetails objRoot = new JSON2ApexQuestionDetails(System.JSON.createParser(json));
        System.assert(objRoot != null);
        System.assert(objRoot.id == null);
        System.assert(objRoot.type_Z == null);
        System.assert(objRoot.creationDate == null);
        System.assert(objRoot.creationDateFormatted == null);
        System.assert(objRoot.title == null);
        System.assert(objRoot.body == null);
        System.assert(objRoot.bodyAsHTML == null);
        System.assert(objRoot.author == null);
        System.assert(objRoot.lastEditedAction == null);
        System.assert(objRoot.activeRevisionId == null);
        System.assert(objRoot.revisionIds == null);
        System.assert(objRoot.lastActiveUserId == null);
        System.assert(objRoot.lastActiveDate == null);
        System.assert(objRoot.attachments == null);
        System.assert(objRoot.childrenIds == null);
        System.assert(objRoot.commentIds == null);
        System.assert(objRoot.marked == null);
        System.assert(objRoot.topics == null);
        System.assert(objRoot.primaryContainerId == null);
        System.assert(objRoot.containerIds == null);
        System.assert(objRoot.slug == null);
        System.assert(objRoot.wiki == null);
        System.assert(objRoot.score == null);
        System.assert(objRoot.depth == null);
        System.assert(objRoot.viewCount == null);
        System.assert(objRoot.upVoteCount == null);
        System.assert(objRoot.downVoteCount == null);
        System.assert(objRoot.answers == null);
        System.assert(objRoot.answerCount == null);

        json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
        JSON2ApexQuestionDetails.Author objAuthor = new JSON2ApexQuestionDetails.Author(System.JSON.createParser(json));
        System.assert(objAuthor != null);
        System.assert(objAuthor.id == null);
        System.assert(objAuthor.username == null);
        System.assert(objAuthor.realname == null);
        System.assert(objAuthor.reputation == null);

        json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
        JSON2ApexQuestionDetails.Attachments objAttachments = new JSON2ApexQuestionDetails.Attachments(System.JSON.createParser(json));
        System.assert(objAttachments != null);
    }
}