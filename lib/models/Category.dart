/// data : [{"id":1,"status":"published","created_on":"2022-06-25T12:19:05+00:00","name":"development","icon":{"id":734}},{"id":2,"status":"published","created_on":"2022-06-25T12:19:21+00:00","name":"business","icon":{"id":735}},{"id":3,"status":"published","created_on":"2022-06-25T12:19:35+00:00","name":"design","icon":{"id":736}},{"id":4,"status":"published","created_on":"2022-06-25T12:19:57+00:00","name":"marketing","icon":{"id":737}},{"id":5,"status":"published","created_on":"2022-06-25T14:08:55+00:00","name":"finance & accounting","icon":{"id":738}},{"id":6,"status":"published","created_on":"2022-06-25T14:09:11+00:00","name":"it & software","icon":{"id":739}},{"id":7,"status":"published","created_on":"2022-06-25T14:09:35+00:00","name":"office productivity","icon":{"id":740}},{"id":8,"status":"published","created_on":"2022-06-25T14:09:58+00:00","name":"personal development","icon":{"id":741}},{"id":9,"status":"published","created_on":"2022-06-25T14:10:38+00:00","name":"lifestyle","icon":{"id":742}},{"id":10,"status":"published","created_on":"2022-06-25T14:10:54+00:00","name":"photography & video","icon":{"id":743}},{"id":11,"status":"published","created_on":"2022-06-25T14:11:42+00:00","name":"health & fitness","icon":{"id":745}},{"id":12,"status":"published","created_on":"2022-06-25T14:13:03+00:00","name":"music","icon":{"id":746}},{"id":13,"status":"published","created_on":"2022-06-25T14:13:21+00:00","name":"teaching & academics","icon":{"id":747}},{"id":14,"status":"published","created_on":"2022-06-26T01:39:41+00:00","name":"null","icon":{"id":748}}]
/// messages : [{"type":"warning","message":"Can't read `directus_files`: read access to `directus_files` collection denied","code":18,"fields":["icon"]}]
/// public : true

class Category {
  Category({
      List<Data>? data, 
      List<Messages>? messages, 
      bool? public,}){
    _data = data;
    _messages = messages;
    _public = public;
}

  Category.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    if (json['messages'] != null) {
      _messages = [];
      json['messages'].forEach((v) {
        _messages?.add(Messages.fromJson(v));
      });
    }
    _public = json['public'];
  }
  List<Data>? _data;
  List<Messages>? _messages;
  bool? _public;

  List<Data>? get data => _data;
  List<Messages>? get messages => _messages;
  bool? get public => _public;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    if (_messages != null) {
      map['messages'] = _messages?.map((v) => v.toJson()).toList();
    }
    map['public'] = _public;
    return map;
  }

}

/// type : "warning"
/// message : "Can't read `directus_files`: read access to `directus_files` collection denied"
/// code : 18
/// fields : ["icon"]

class Messages {
  Messages({
      String? type, 
      String? message, 
      int? code, 
      List<String>? fields,}){
    _type = type;
    _message = message;
    _code = code;
    _fields = fields;
}

  Messages.fromJson(dynamic json) {
    _type = json['type'];
    _message = json['message'];
    _code = json['code'];
    _fields = json['fields'] != null ? json['fields'].cast<String>() : [];
  }
  String? _type;
  String? _message;
  int? _code;
  List<String>? _fields;

  String? get type => _type;
  String? get message => _message;
  int? get code => _code;
  List<String>? get fields => _fields;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['message'] = _message;
    map['code'] = _code;
    map['fields'] = _fields;
    return map;
  }

}

/// id : 1
/// status : "published"
/// created_on : "2022-06-25T12:19:05+00:00"
/// name : "development"
/// icon : {"id":734}

class Data {
  Data({
      int? id, 
      String? status, 
      String? createdOn, 
      String? name, 
      Icon? icon,}){
    _id = id;
    _status = status;
    _createdOn = createdOn;
    _name = name;
    _icon = icon;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _status = json['status'];
    _createdOn = json['created_on'];
    _name = json['name'];
    _icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
  }
  int? _id;
  String? _status;
  String? _createdOn;
  String? _name;
  Icon? _icon;

  int? get id => _id;
  String? get status => _status;
  String? get createdOn => _createdOn;
  String? get name => _name;
  Icon? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['status'] = _status;
    map['created_on'] = _createdOn;
    map['name'] = _name;
    if (_icon != null) {
      map['icon'] = _icon?.toJson();
    }
    return map;
  }

}

/// id : 734

class Icon {
  Icon({
      int? id,}){
    _id = id;
}

  Icon.fromJson(dynamic json) {
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