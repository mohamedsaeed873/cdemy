/// data : [{"id":1,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T12:19:05+00:00","modified_on":"2022-06-29T15:49:28+00:00","name":"development","icon":null,"handle":null},{"id":2,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T12:19:21+00:00","modified_on":"2022-06-25T12:23:57+00:00","name":"business","icon":null,"handle":null},{"id":3,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T12:19:35+00:00","modified_on":"2022-06-25T12:23:57+00:00","name":"design","icon":null,"handle":null},{"id":4,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T12:19:57+00:00","modified_on":"2022-06-25T12:24:37+00:00","name":"marketing","icon":null,"handle":null},{"id":5,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T14:08:55+00:00","modified_on":"2022-06-26T01:04:04+00:00","name":"finance & accounting","icon":null,"handle":null},{"id":6,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T14:09:11+00:00","modified_on":"2022-06-26T01:03:58+00:00","name":"it & software","icon":null,"handle":null},{"id":7,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T14:09:35+00:00","modified_on":"2022-06-26T01:04:10+00:00","name":"office productivity","icon":null,"handle":null},{"id":8,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T14:09:58+00:00","modified_on":"2022-06-26T01:04:27+00:00","name":"personal development","icon":null,"handle":null},{"id":9,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T14:10:38+00:00","modified_on":"2022-06-25T14:10:38+00:00","name":"lifestyle","icon":null,"handle":null},{"id":10,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T14:10:54+00:00","modified_on":"2022-06-26T01:04:40+00:00","name":"photography & video","icon":null,"handle":null},{"id":11,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T14:11:42+00:00","modified_on":"2022-06-26T01:04:49+00:00","name":"health & fitness","icon":null,"handle":null},{"id":12,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T14:13:03+00:00","modified_on":"2022-06-25T14:13:03+00:00","name":"music","icon":null,"handle":null},{"id":13,"status":"published","sort":null,"owner":1,"created_on":"2022-06-25T14:13:21+00:00","modified_on":"2022-06-26T01:04:57+00:00","name":"teaching & academics","icon":null,"handle":null},{"id":14,"status":"published","sort":null,"owner":1,"created_on":"2022-06-26T01:39:41+00:00","modified_on":"2022-06-26T01:39:41+00:00","name":"null","icon":null,"handle":null}]
/// public : true

class CategoriesWithCoursesModel {
  CategoriesWithCoursesModel({
      List<Data>? data, 
      bool? public,}){
    _data = data;
    _public = public;
}

  CategoriesWithCoursesModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _public = json['public'];
  }
  List<Data>? _data;
  bool? _public;

  List<Data>? get data => _data;
  bool? get public => _public;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['public'] = _public;
    return map;
  }

}

/// id : 1
/// status : "published"
/// sort : null
/// owner : 1
/// created_on : "2022-06-25T12:19:05+00:00"
/// modified_on : "2022-06-29T15:49:28+00:00"
/// name : "development"
/// icon : null
/// handle : null

class Data {
  Data({
      int? id, 
      String? status, 
      dynamic sort, 
      int? owner, 
      String? createdOn, 
      String? modifiedOn, 
      String? name, 
      dynamic icon, 
      dynamic handle,}){
    _id = id;
    _status = status;
    _sort = sort;
    _owner = owner;
    _createdOn = createdOn;
    _modifiedOn = modifiedOn;
    _name = name;
    _icon = icon;
    _handle = handle;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _status = json['status'];
    _sort = json['sort'];
    _owner = json['owner'];
    _createdOn = json['created_on'];
    _modifiedOn = json['modified_on'];
    _name = json['name'];
    _icon = json['icon'];
    _handle = json['handle'];
  }
  int? _id;
  String? _status;
  dynamic _sort;
  int? _owner;
  String? _createdOn;
  String? _modifiedOn;
  String? _name;
  dynamic _icon;
  dynamic _handle;

  int? get id => _id;
  String? get status => _status;
  dynamic get sort => _sort;
  int? get owner => _owner;
  String? get createdOn => _createdOn;
  String? get modifiedOn => _modifiedOn;
  String? get name => _name;
  dynamic get icon => _icon;
  dynamic get handle => _handle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['status'] = _status;
    map['sort'] = _sort;
    map['owner'] = _owner;
    map['created_on'] = _createdOn;
    map['modified_on'] = _modifiedOn;
    map['name'] = _name;
    map['icon'] = _icon;
    map['handle'] = _handle;
    return map;
  }

}