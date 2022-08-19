/// data : {"id":13,"name":"teaching & academics","courses":[{"id":245,"title":"Academic Writing Essentials: Solving Assignments","thumbnail":{"id":713},"topics":[{"topic_id":{"id":202,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:29+00:00","modified_on":"2022-06-26T01:53:42+00:00","name":"Academic Writing","category":13,"slug":null}},{"topic_id":{"id":1168,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:41:30+00:00","modified_on":"2022-06-25T13:41:30+00:00","name":"Humanities","category":null,"slug":null}}]}]}
/// public : true

class CoursesModel {
  CoursesModel({
      Data? data, 
      bool? public,}){
    _data = data;
    _public = public;
}

  CoursesModel.fromJson(dynamic json) {
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

/// id : 13
/// name : "teaching & academics"
/// courses : [{"id":245,"title":"Academic Writing Essentials: Solving Assignments","thumbnail":{"id":713},"topics":[{"topic_id":{"id":202,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:29+00:00","modified_on":"2022-06-26T01:53:42+00:00","name":"Academic Writing","category":13,"slug":null}},{"topic_id":{"id":1168,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:41:30+00:00","modified_on":"2022-06-25T13:41:30+00:00","name":"Humanities","category":null,"slug":null}}]}]

class Data {
  Data({
      int? id, 
      String? name, 
      List<Courses>? courses,}){
    _id = id;
    _name = name;
    _courses = courses;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    if (json['courses'] != null) {
      _courses = [];
      json['courses'].forEach((v) {
        _courses?.add(Courses.fromJson(v));
      });
    }
  }
  int? _id;
  String? _name;
  List<Courses>? _courses;

  int? get id => _id;
  String? get name => _name;
  List<Courses>? get courses => _courses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    if (_courses != null) {
      map['courses'] = _courses?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 245
/// title : "Academic Writing Essentials: Solving Assignments"
/// thumbnail : {"id":713}
/// topics : [{"topic_id":{"id":202,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:29+00:00","modified_on":"2022-06-26T01:53:42+00:00","name":"Academic Writing","category":13,"slug":null}},{"topic_id":{"id":1168,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:41:30+00:00","modified_on":"2022-06-25T13:41:30+00:00","name":"Humanities","category":null,"slug":null}}]

class Courses {
  Courses({
      int? id, 
      String? title, 
      Thumbnail? thumbnail, 
      List<Topics>? topics,}){
    _id = id;
    _title = title;
    _thumbnail = thumbnail;
    _topics = topics;
}

  Courses.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _thumbnail = json['thumbnail'] != null ? Thumbnail.fromJson(json['thumbnail']) : null;
    if (json['topics'] != null) {
      _topics = [];
      json['topics'].forEach((v) {
        _topics?.add(Topics.fromJson(v));
      });
    }
  }
  int? _id;
  String? _title;
  Thumbnail? _thumbnail;
  List<Topics>? _topics;

  int? get id => _id;
  String? get title => _title;
  Thumbnail? get thumbnail => _thumbnail;
  List<Topics>? get topics => _topics;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    if (_thumbnail != null) {
      map['thumbnail'] = _thumbnail?.toJson();
    }
    if (_topics != null) {
      map['topics'] = _topics?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// topic_id : {"id":202,"status":"published","sort":null,"owner":0,"created_on":"2022-06-25T13:35:29+00:00","modified_on":"2022-06-26T01:53:42+00:00","name":"Academic Writing","category":13,"slug":null}

class Topics {
  Topics({
      TopicId? topicId,}){
    _topicId = topicId;
}

  Topics.fromJson(dynamic json) {
    _topicId = json['topic_id'] != null ? TopicId.fromJson(json['topic_id']) : null;
  }
  TopicId? _topicId;

  TopicId? get topicId => _topicId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_topicId != null) {
      map['topic_id'] = _topicId?.toJson();
    }
    return map;
  }

}

/// id : 202
/// status : "published"
/// sort : null
/// owner : 0
/// created_on : "2022-06-25T13:35:29+00:00"
/// modified_on : "2022-06-26T01:53:42+00:00"
/// name : "Academic Writing"
/// category : 13
/// slug : null

class TopicId {
  TopicId({
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

  TopicId.fromJson(dynamic json) {
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

/// id : 713

class Thumbnail {
  Thumbnail({
      int? id,}){
    _id = id;
}

  Thumbnail.fromJson(dynamic json) {
    _id = json['id'];
  }
  int? _id;

  int? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }

}