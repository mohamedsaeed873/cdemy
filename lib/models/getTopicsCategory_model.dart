/// data : {"id":2,"name":"business","topics":[{"id":208,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:31+00:00","modified_on":"2022-06-26T01:54:54+00:00","name":"Accout Management","category":2,"slug":null},{"id":240,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:43+00:00","modified_on":"2022-06-26T01:59:37+00:00","name":"Agile","category":2,"slug":null},{"id":250,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:47+00:00","modified_on":"2022-06-26T01:59:57+00:00","name":"Alibaba","category":2,"slug":null},{"id":253,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:49+00:00","modified_on":"2022-06-26T02:00:03+00:00","name":"Alteryx","category":2,"slug":null},{"id":262,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:53+00:00","modified_on":"2022-06-26T02:00:22+00:00","name":"Amazon Kindle","category":2,"slug":null},{"id":303,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:36:09+00:00","modified_on":"2022-06-26T02:01:46+00:00","name":"APICS CPIM","category":2,"slug":null},{"id":391,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:36:42+00:00","modified_on":"2022-06-26T02:04:53+00:00","name":"B2B Sales","category":2,"slug":null},{"id":396,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:36:44+00:00","modified_on":"2022-06-26T02:05:03+00:00","name":"Balance Scorecard","category":2,"slug":null},{"id":456,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:06+00:00","modified_on":"2022-06-26T02:07:09+00:00","name":"Business Case","category":2,"slug":null},{"id":458,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:07+00:00","modified_on":"2022-06-26T02:07:13+00:00","name":"Business communication","category":2,"slug":null},{"id":462,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:08+00:00","modified_on":"2022-06-26T02:07:20+00:00","name":"Business Etiquette","category":2,"slug":null},{"id":470,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:11+00:00","modified_on":"2022-06-26T02:07:34+00:00","name":"Business Plan","category":2,"slug":null},{"id":484,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:17+00:00","modified_on":"2022-06-26T02:07:59+00:00","name":"Call Center","category":2,"slug":null},{"id":526,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:31+00:00","modified_on":"2022-06-26T02:09:24+00:00","name":"Certified Supply Chain Professional (CSCP)","category":2,"slug":null},{"id":614,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:03+00:00","modified_on":"2022-06-26T02:12:38+00:00","name":"compliance","category":2,"slug":null},{"id":640,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:13+00:00","modified_on":"2022-06-26T02:13:37+00:00","name":"Confluence","category":2,"slug":null},{"id":645,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:14+00:00","modified_on":"2022-06-26T02:13:46+00:00","name":"Construction Management","category":2,"slug":null},{"id":651,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:17+00:00","modified_on":"2022-06-26T02:13:58+00:00","name":"contract management","category":2,"slug":null},{"id":652,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:17+00:00","modified_on":"2022-06-26T02:14:00+00:00","name":"Contract Negotiation","category":2,"slug":null},{"id":684,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:29+00:00","modified_on":"2022-06-26T02:14:59+00:00","name":"Crisis management","category":2,"slug":null},{"id":748,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:52+00:00","modified_on":"2022-06-26T14:42:09+00:00","name":"Decision Making","category":2,"slug":null},{"id":753,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:54+00:00","modified_on":"2022-06-26T14:42:21+00:00","name":"Delegation","category":2,"slug":null}]}
/// public : true

class GetTopicsCategoryModel {
  GetTopicsCategoryModel({
      Data? data, 
      bool? public,}){
    _data = data;
    _public = public;
}

  GetTopicsCategoryModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _public = json['public'];
  }
  Data? _data;
  bool? _public;

  Data? get data => _data;
  bool? get public => _public;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['public'] = _public;
    return map;
  }

}

/// id : 2
/// name : "business"
/// topics : [{"id":208,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:31+00:00","modified_on":"2022-06-26T01:54:54+00:00","name":"Accout Management","category":2,"slug":null},{"id":240,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:43+00:00","modified_on":"2022-06-26T01:59:37+00:00","name":"Agile","category":2,"slug":null},{"id":250,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:47+00:00","modified_on":"2022-06-26T01:59:57+00:00","name":"Alibaba","category":2,"slug":null},{"id":253,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:49+00:00","modified_on":"2022-06-26T02:00:03+00:00","name":"Alteryx","category":2,"slug":null},{"id":262,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:53+00:00","modified_on":"2022-06-26T02:00:22+00:00","name":"Amazon Kindle","category":2,"slug":null},{"id":303,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:36:09+00:00","modified_on":"2022-06-26T02:01:46+00:00","name":"APICS CPIM","category":2,"slug":null},{"id":391,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:36:42+00:00","modified_on":"2022-06-26T02:04:53+00:00","name":"B2B Sales","category":2,"slug":null},{"id":396,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:36:44+00:00","modified_on":"2022-06-26T02:05:03+00:00","name":"Balance Scorecard","category":2,"slug":null},{"id":456,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:06+00:00","modified_on":"2022-06-26T02:07:09+00:00","name":"Business Case","category":2,"slug":null},{"id":458,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:07+00:00","modified_on":"2022-06-26T02:07:13+00:00","name":"Business communication","category":2,"slug":null},{"id":462,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:08+00:00","modified_on":"2022-06-26T02:07:20+00:00","name":"Business Etiquette","category":2,"slug":null},{"id":470,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:11+00:00","modified_on":"2022-06-26T02:07:34+00:00","name":"Business Plan","category":2,"slug":null},{"id":484,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:17+00:00","modified_on":"2022-06-26T02:07:59+00:00","name":"Call Center","category":2,"slug":null},{"id":526,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:37:31+00:00","modified_on":"2022-06-26T02:09:24+00:00","name":"Certified Supply Chain Professional (CSCP)","category":2,"slug":null},{"id":614,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:03+00:00","modified_on":"2022-06-26T02:12:38+00:00","name":"compliance","category":2,"slug":null},{"id":640,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:13+00:00","modified_on":"2022-06-26T02:13:37+00:00","name":"Confluence","category":2,"slug":null},{"id":645,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:14+00:00","modified_on":"2022-06-26T02:13:46+00:00","name":"Construction Management","category":2,"slug":null},{"id":651,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:17+00:00","modified_on":"2022-06-26T02:13:58+00:00","name":"contract management","category":2,"slug":null},{"id":652,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:17+00:00","modified_on":"2022-06-26T02:14:00+00:00","name":"Contract Negotiation","category":2,"slug":null},{"id":684,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:29+00:00","modified_on":"2022-06-26T02:14:59+00:00","name":"Crisis management","category":2,"slug":null},{"id":748,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:52+00:00","modified_on":"2022-06-26T14:42:09+00:00","name":"Decision Making","category":2,"slug":null},{"id":753,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:38:54+00:00","modified_on":"2022-06-26T14:42:21+00:00","name":"Delegation","category":2,"slug":null}]

class Data {
  Data({
      int? id, 
      String? name, 
      List<Topics>? topics,}){
    _id = id;
    _name = name;
    _topics = topics;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    if (json['topics'] != null) {
      _topics = [];
      json['topics'].forEach((v) {
        _topics?.add(Topics.fromJson(v));
      });
    }
  }
  int? _id;
  String? _name;
  List<Topics>? _topics;

  int? get id => _id;
  String? get name => _name;
  List<Topics>? get topics => _topics;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    if (_topics != null) {
      map['topics'] = _topics?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 208
/// status : "published"
/// sort : null
/// owner : 0
/// created_on : "2022-06-25T13:35:31+00:00"
/// modified_on : "2022-06-26T01:54:54+00:00"
/// name : "Accout Management"
/// category : 2
/// slug : null

class Topics {
  Topics({
      int? id, 
      String? status, 
      dynamic sort, 
      int? owner, 
      String? createdOn, 
      String? modifiedOn, 
      String? name, 
      int? category, 
      dynamic slug,}){
    _id = id;
    _status = status;
    _sort = sort;
    _owner = owner;
    _createdOn = createdOn;
    _modifiedOn = modifiedOn;
    _name = name;
    _category = category;
    _slug = slug;
}

  Topics.fromJson(dynamic json) {
    _id = json['id'];
    _status = json['status'];
    _sort = json['sort'];
    _owner = json['owner'];
    _createdOn = json['created_on'];
    _modifiedOn = json['modified_on'];
    _name = json['name'];
    _category = json['category'];
    _slug = json['slug'];
  }
  int? _id;
  String? _status;
  dynamic _sort;
  int? _owner;
  String? _createdOn;
  String? _modifiedOn;
  String? _name;
  int? _category;
  dynamic _slug;

  int? get id => _id;
  String? get status => _status;
  dynamic get sort => _sort;
  int? get owner => _owner;
  String? get createdOn => _createdOn;
  String? get modifiedOn => _modifiedOn;
  String? get name => _name;
  int? get category => _category;
  dynamic get slug => _slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['status'] = _status;
    map['sort'] = _sort;
    map['owner'] = _owner;
    map['created_on'] = _createdOn;
    map['modified_on'] = _modifiedOn;
    map['name'] = _name;
    map['category'] = _category;
    map['slug'] = _slug;
    return map;
  }

}