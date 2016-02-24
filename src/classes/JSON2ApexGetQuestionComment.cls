//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//
// The supplied json has fields with names that are reserved words in apex
// and so can only be parsed with explicitly generated code, this option
// was auto selected for you.

public class JSON2ApexGetQuestionComment {
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

    public class List_Z {
        public Integer id {get;set;} 
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
        public Integer originalParentId {get;set;} 
        public List<Attachments> attachments {get;set;} 
        public List<Attachments> childrenIds {get;set;} 
        public List<Attachments> commentIds {get;set;} 
        public Boolean marked {get;set;} 
        public List<Attachments> topics {get;set;} 
        public List<Attachments> containerIds {get;set;} 
        public Boolean wiki {get;set;} 
        public Integer score {get;set;} 
        public Integer depth {get;set;} 
        public Integer viewCount {get;set;} 
        public Integer upVoteCount {get;set;} 
        public Integer downVoteCount {get;set;} 

        public List_Z(JSONParser parser) {
            while (parser.nextToken() != JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != JSONToken.VALUE_NULL) {
                        if (text == 'id') {
                            id = parser.getIntegerValue();
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
                            activeRevisionId = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'revisionIds') {
                            revisionIds = new List<Integer>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                revisionIds.add(Integer.valueOf(parser.getIntegerValue()));
                            }
                        } else if (text == 'lastActiveUserId') {
                            lastActiveUserId = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'lastActiveDate') {
                            lastActiveDate = parser.getLongValue();
                        } else if (text == 'originalParentId') {
                            originalParentId = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'attachments') {
                            attachments = new List<Attachments>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                attachments.add(new Attachments(parser));
                            }
                        } else if (text == 'childrenIds') {
                            childrenIds = new List<Attachments>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                childrenIds.add(new Attachments(parser));
                            }
                        } else if (text == 'commentIds') {
                            commentIds = new List<Attachments>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                commentIds.add(new Attachments(parser));
                            }
                        } else if (text == 'marked') {
                            marked = parser.getBooleanValue();
                        } else if (text == 'topics') {
                            topics = new List<Attachments>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                topics.add(new Attachments(parser));
                            }
                        } else if (text == 'containerIds') {
                            containerIds = new List<Attachments>();
                            while (parser.nextToken() != JSONToken.END_ARRAY) {
                                containerIds.add(new Attachments(parser));
                            }
                        } else if (text == 'wiki') {
                            wiki = parser.getBooleanValue();
                        } else if (text == 'score') {
                            score = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'depth') {
                            depth = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'viewCount') {
                            viewCount = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'upVoteCount') {
                            upVoteCount = Integer.valueOf(parser.getIntegerValue());
                        } else if (text == 'downVoteCount') {
                            downVoteCount = Integer.valueOf(parser.getIntegerValue());
                        } else {
                            System.debug(LoggingLevel.WARN, 'List_Z consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public String name {get;set;} 
    public String sort_Z {get;set;} // in json: sort
    public Integer page {get;set;} 
    public Integer pageSize {get;set;} 
    public Integer pageCount {get;set;} 
    public Integer listCount {get;set;} 
    public Integer totalCount {get;set;} 
    public List<String> sorts {get;set;} 
    public List<List_Z> list_Z {get;set;} // in json: list

    public JSON2ApexGetQuestionComment(JSONParser parser) {
        while (parser.nextToken() != JSONToken.END_OBJECT) {
            if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
                String text = parser.getText();
                if (parser.nextToken() != JSONToken.VALUE_NULL) {
                    if (text == 'name') {
                        name = parser.getText();
                    } else if (text == 'sort') {
                        sort_Z = parser.getText();
                    } else if (text == 'page') {
                        page = Integer.valueOf(parser.getIntegerValue());
                    } else if (text == 'pageSize') {
                        pageSize = Integer.valueOf(parser.getIntegerValue());
                    } else if (text == 'pageCount') {
                        pageCount = Integer.valueOf(parser.getIntegerValue());
                    } else if (text == 'listCount') {
                        listCount = Integer.valueOf(parser.getIntegerValue());
                    } else if (text == 'totalCount') {
                        totalCount = Integer.valueOf(parser.getIntegerValue());
                    } else if (text == 'sorts') {
                        sorts = new List<String>();
                        while (parser.nextToken() != JSONToken.END_ARRAY) {
                            sorts.add(String.valueOf(parser));
                        }
                    } else if (text == 'list') {
                        list_Z = new List<List_Z>();
                        while (parser.nextToken() != JSONToken.END_ARRAY) {
                            list_Z.add(new List_Z(parser));
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
    
    public class Attachments {

        public Attachments(JSONParser parser) {
            while (parser.nextToken() != JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != JSONToken.VALUE_NULL) {
                        {
                            System.debug(LoggingLevel.WARN, 'Attachments consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    
    public static JSON2ApexGetQuestionComment parse(String json) {
        return new JSON2ApexGetQuestionComment(System.JSON.createParser(json));
    }
}