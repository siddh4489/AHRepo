//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//
// The supplied json has fields with names that are reserved words in apex
// and so can only be parsed with explicitly generated code, this option
// was auto selected for you.

public class JSON2ApexQuestionsAnswer {
    public static void consumeObject(JSONParser parser) {
        Integer depth = 0;
        do {
            JSONToken curr = parser.getCurrentToken();
            if (curr == JSONToken.START_OBJECT || 
                curr == JSONToken.START_ARRAY) {
                depth++;
            } else if (curr == JSONToken.END_OBJECT ||
                curr == JSONToken.END_ARRAY) {
                depth--;
            }
        } while (depth > 0 && parser.nextToken() != null);
    }

    public class ParentAuthor {
        public String username {get;set;} 
        public String realname {get;set;} 

        public ParentAuthor(JSONParser parser) {
            while (parser.nextToken() != JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != JSONToken.VALUE_NULL) {
                        if (text == 'username') {
                            username = parser.getText();
                        } else if (text == 'realname') {
                            realname = parser.getText();
                        } else {
                            System.debug(LoggingLevel.WARN, 'ParentAuthor consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public class Topics {

        public Topics(JSONParser parser) {
            while (parser.nextToken() != JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != JSONToken.VALUE_NULL) {
                        {
                            System.debug(LoggingLevel.WARN, 'Topics consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public List<Result> result {get;set;} 

    public JSON2ApexQuestionsAnswer(JSONParser parser) {
        while (parser.nextToken() != JSONToken.END_OBJECT) {
            if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
                String text = parser.getText();
                if (parser.nextToken() != JSONToken.VALUE_NULL) {
                    if (text == 'result') {
                        result = new List<Result>();
                        while (parser.nextToken() != JSONToken.END_ARRAY) {
                            result.add(new Result(parser));
                        }
                    } else {
                        System.debug(LoggingLevel.WARN, 'Root consuming unrecognized property: '+text);
                        consumeObject(parser);
                    }
                }
            }
        }
    }
    
    public class Author {
        public Integer id {get;set;} 
        public String username {get;set;} 
        public String realname {get;set;} 
        public String emailHash {get;set;} 
        public String avatar {get;set;} 
        public Integer reputation {get;set;} 

        public Author(JSONParser parser) {
            while (parser.nextToken() != JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != JSONToken.VALUE_NULL) {
                        if (text == 'id') {
                            id = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'username') {
                            username = parser.getText();
                        } else if (text == 'realname') {
                            realname = parser.getText();
                        } else if (text == 'emailHash') {
                            emailHash = parser.getText();
                        } else if (text == 'avatar') {
                            avatar = parser.getText();
                        } else if (text == 'reputation') {
                            reputation = Integer.valueOf(parser.getIntegerValue());
                        } else {
                            System.debug(LoggingLevel.WARN, 'Author consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public class Result {
        public String id {get;set;} 
        public String type_Z {get;set;} // in json: type
        public Long creationDate {get;set;} 
        public String creationDateFormatted {get;set;} 
        public String body {get;set;} 
        public String bodyAsHTML {get;set;} 
        public Author author {get;set;} 
        public Integer lastEditedAction {get;set;} 
        public Integer activeRevisionId {get;set;} 
        public List<Integer> revisionIds {get;set;} 
        public Integer lastActiveUserId {get;set;} 
        public Long lastActiveDate {get;set;} 
        public Integer parentId {get;set;} 
        public ParentAuthor parentAuthor {get;set;} 
        public Integer originalParentId {get;set;} 
        public List<Integer> childrenIds {get;set;} 
        public List<Integer> commentIds {get;set;} 
        public Boolean marked {get;set;} 
        public List<Topics> topics {get;set;} 
        public List<Topics> containerIds {get;set;} 
        public Object plug {get;set;} 
        public Boolean wiki {get;set;} 
        public Integer score {get;set;} 
        public Integer depth {get;set;} 
        public Integer reportCount {get;set;} 

        public Result(JSONParser parser) {
            while (parser.nextToken() != JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != JSONToken.VALUE_NULL) {
                        if (text == 'id') {
                            id = parser.getText();
                        } else if (text == 'type') {
                            type_Z = parser.getText();
                        } else if (text == 'creationDate') {
                            creationDate = parser.getLongValue();
                        } else if (text == 'creationDateFormatted') {
                            creationDateFormatted = parser.getText();
                        } else if (text == 'body') {
                            body = parser.getText();
                        } else if (text == 'bodyAsHTML') {
                            bodyAsHTML = parser.getText();
                        } else if (text == 'author') {
                            author = new Author(parser);
                        } else if (text == 'lastEditedAction') {
                            lastEditedAction = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'activeRevisionId') {
                            activeRevisionId = parser.getIntegerValue();
                        } else if (text == 'revisionIds') {
                            revisionIds = new List<Integer>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                revisionIds.add(Integer.valueOf(parser.getIntegerValue()));
                            }
                        } else if (text == 'lastActiveUserId') {
                            lastActiveUserId = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'lastActiveDate') {
                            lastActiveDate = parser.getLongValue();
                        } else if (text == 'parentId') {
                            parentId = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'parentAuthor') {
                            parentAuthor = new ParentAuthor(parser);
                        } else if (text == 'originalParentId') {
                            originalParentId = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'childrenIds') {
                            childrenIds = new List<Integer>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                childrenIds.add(Integer.valueOf(parser.getIntegerValue()));
                            }
                        } else if (text == 'commentIds') {
                            commentIds = new List<Integer>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                commentIds.add(Integer.valueOf(parser.getIntegerValue()));
                            }
                        } else if (text == 'marked') {
                            marked = parser.getBooleanValue();
                        } else if (text == 'topics') {
                            topics = new List<Topics>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                topics.add(new Topics(parser));
                            }
                        } else if (text == 'containerIds') {
                            containerIds = new List<Topics>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                containerIds.add(new Topics(parser));
                            }
                        } else if (text == 'plug') {
                            plug = parser.getText();
                        } else if (text == 'wiki') {
                            wiki = parser.getBooleanValue();
                        } else if (text == 'score') {
                            score = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'depth') {
                            depth = parser.getIntegerValue();
                        } else if (text == 'reportCount') {
                            reportCount = Integer.valueOf(parser.getIntegerValue());
                        } else {
                            System.debug(LoggingLevel.WARN, 'Result consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    
    public static JSON2ApexQuestionsAnswer parse(String json) {
        return new JSON2ApexQuestionsAnswer(System.JSON.createParser(json));
    }
}