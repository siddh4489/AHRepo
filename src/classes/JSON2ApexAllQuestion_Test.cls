//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//

@IsTest
public class JSON2ApexAllQuestion_Test {
    
    // This test method should give 100% coverage
    static testMethod void testParse() {
        String json = '{\"name\":\"\",\"sort\":\"active\",\"page\":1,\"pageSize\":15,\"pageCount\":1,\"listCount\":3,\"totalCount\":3,\"sorts\":[\"active\",\"newest\",\"hottest\",\"votes\",\"viewCount\",\"usedCount\",\"answerCount\",\"answerCountAsc\",\"commentCount\",\"favoriteCount\",\"followers\",\"reportCount\"],\"list\":[{\"id\":4,\"type\":\"question\",\"creationDate\":1445702685000,\"creationDateFormatted\":\"10/24/2015 04:04 PM\",\"title\":\"What if I have a question about AnswerHub?\",\"body\":\"<p>Where should I ask questions about AnswerHub functionality, REST API, etc?</p>\\n\",\"bodyAsHTML\":\"<p></p><p>Where should I ask questions about AnswerHub functionality, REST API, etc?</p>\\n\\n\",\"author\":{\"id\":7,\"username\":\"dzone\",\"realname\":\"Dmitri Droujkov\",\"reputation\":16},\"lastEditedAction\":8,\"activeRevisionId\":6,\"revisionIds\":[6],\"lastActiveUserId\":8,\"lastActiveDate\":1446792643000,\"attachments\":[],\"childrenIds\":[5,21,22],\"commentIds\":[],\"marked\":false,\"topics\":[{\"id\":3,\"creationDate\":1445702685000,\"creationDateFormatted\":\"10/24/2015 04:04 PM\",\"name\":\"help\",\"author\":{\"id\":7,\"username\":\"dzone\",\"realname\":\"Dmitri Droujkov\",\"reputation\":16},\"usedCount\":1}],\"primaryContainerId\":93,\"containerIds\":[93,92],\"slug\":\"what-if-i-have-a-question-about-answerhub\",\"wiki\":false,\"score\":1,\"depth\":0,\"viewCount\":11,\"upVoteCount\":1,\"downVoteCount\":0,\"answers\":[5,21,22],\"answerCount\":2},{\"id\":16,\"type\":\"question\",\"creationDate\":1446450500000,\"creationDateFormatted\":\"11/02/2015 07:48 AM\",\"title\":\"This question for testing ?\",\"body\":\"\",\"bodyAsHTML\":\"\",\"author\":{\"id\":8,\"username\":\"sid\",\"realname\":\"Siddhraj Atodaria\",\"reputation\":23},\"lastEditedAction\":48,\"activeRevisionId\":17,\"revisionIds\":[17],\"lastActiveUserId\":8,\"lastActiveDate\":1446450500000,\"attachments\":[],\"childrenIds\":[],\"commentIds\":[],\"marked\":false,\"topics\":[{\"id\":11,\"creationDate\":1446446586000,\"creationDateFormatted\":\"11/02/2015 06:43 AM\",\"name\":\"ah rest api\",\"author\":{\"id\":8,\"username\":\"sid\",\"realname\":\"Siddhraj Atodaria\",\"reputation\":23},\"usedCount\":2}],\"primaryContainerId\":93,\"containerIds\":[93,92],\"slug\":\"this-question-for-testing\",\"wiki\":false,\"score\":0,\"depth\":0,\"viewCount\":7,\"upVoteCount\":0,\"downVoteCount\":0,\"answers\":[],\"answerCount\":0},{\"id\":12,\"type\":\"question\",\"creationDate\":1446446586000,\"creationDateFormatted\":\"11/02/2015 06:43 AM\",\"title\":\"How to get User Details using Rest?\",\"body\":\"\",\"bodyAsHTML\":\"\",\"author\":{\"id\":8,\"username\":\"sid\",\"realname\":\"Siddhraj Atodaria\",\"reputation\":23},\"lastEditedAction\":43,\"activeRevisionId\":13,\"revisionIds\":[13],\"lastActiveUserId\":8,\"lastActiveDate\":1446449964000,\"attachments\":[],\"childrenIds\":[13,14],\"commentIds\":[],\"marked\":true,\"topics\":[{\"id\":11,\"creationDate\":1446446586000,\"creationDateFormatted\":\"11/02/2015 06:43 AM\",\"name\":\"ah rest api\",\"author\":{\"id\":8,\"username\":\"sid\",\"realname\":\"Siddhraj Atodaria\",\"reputation\":23},\"usedCount\":2}],\"primaryContainerId\":93,\"containerIds\":[93,92],\"slug\":\"how-to-get-user-details-using-rest\",\"wiki\":false,\"score\":0,\"depth\":0,\"viewCount\":14,\"upVoteCount\":0,\"downVoteCount\":0,\"answers\":[13,14],\"answerCount\":2}]}';
        JSON2ApexAllQuestion r = JSON2ApexAllQuestion.parse(json);
        System.assert(r != null);

        json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
        JSON2ApexAllQuestion.Topics objTopics = new JSON2ApexAllQuestion.Topics(System.JSON.createParser(json));
        System.assert(objTopics != null);
        System.assert(objTopics.id == null);
        System.assert(objTopics.creationDate == null);
        System.assert(objTopics.creationDateFormatted == null);
        System.assert(objTopics.name == null);
        System.assert(objTopics.author == null);
        System.assert(objTopics.usedCount == null);

        json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
        JSON2ApexAllQuestion.List_Z objList_Z = new JSON2ApexAllQuestion.List_Z(System.JSON.createParser(json));
        System.assert(objList_Z != null);
        System.assert(objList_Z.id == null);
        System.assert(objList_Z.type_Z == null);
        System.assert(objList_Z.creationDate == null);
        System.assert(objList_Z.creationDateFormatted == null);
        System.assert(objList_Z.title == null);
        System.assert(objList_Z.body == null);
        System.assert(objList_Z.bodyAsHTML == null);
        System.assert(objList_Z.author == null);
        System.assert(objList_Z.lastEditedAction == null);
        System.assert(objList_Z.activeRevisionId == null);
        System.assert(objList_Z.revisionIds == null);
        System.assert(objList_Z.lastActiveUserId == null);
        System.assert(objList_Z.lastActiveDate == null);
        System.assert(objList_Z.attachments == null);
        System.assert(objList_Z.childrenIds == null);
        System.assert(objList_Z.commentIds == null);
        System.assert(objList_Z.marked == null);
        System.assert(objList_Z.topics == null);
        System.assert(objList_Z.primaryContainerId == null);
        System.assert(objList_Z.containerIds == null);
        System.assert(objList_Z.slug == null);
        System.assert(objList_Z.wiki == null);
        System.assert(objList_Z.score == null);
        System.assert(objList_Z.depth == null);
        System.assert(objList_Z.viewCount == null);
        System.assert(objList_Z.upVoteCount == null);
        System.assert(objList_Z.downVoteCount == null);
        System.assert(objList_Z.answers == null);
        System.assert(objList_Z.answerCount == null);

        json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
        JSON2ApexAllQuestion objRoot = new JSON2ApexAllQuestion(System.JSON.createParser(json));
        System.assert(objRoot != null);
        System.assert(objRoot.name == null);
        System.assert(objRoot.sort_Z == null);
        System.assert(objRoot.page == null);
        System.assert(objRoot.pageSize == null);
        System.assert(objRoot.pageCount == null);
        System.assert(objRoot.listCount == null);
        System.assert(objRoot.totalCount == null);
        System.assert(objRoot.sorts == null);
        System.assert(objRoot.list_Z == null);

        json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
        JSON2ApexAllQuestion.Author objAuthor = new JSON2ApexAllQuestion.Author(System.JSON.createParser(json));
        System.assert(objAuthor != null);
        System.assert(objAuthor.id == null);
        System.assert(objAuthor.username == null);
        System.assert(objAuthor.realname == null);
        System.assert(objAuthor.reputation == null);

        json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
        JSON2ApexAllQuestion.Attachments objAttachments = new JSON2ApexAllQuestion.Attachments(System.JSON.createParser(json));
        System.assert(objAttachments != null);
    }
}