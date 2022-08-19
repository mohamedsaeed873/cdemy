/// data : {"id":6,"status":"published","owner":2,"created_on":"2022-07-04T19:39:48+00:00","modified_on":"2022-07-04T19:39:48+00:00"}

class UserFavCategoryModel {
  UserFavCategoryModel({
      Data? data,}){
    _data = data;
}

  UserFavCategoryModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data? _data;

  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : 6
/// status : "published"
/// owner : 2
/// created_on : "2022-07-04T19:39:48+00:00"
/// modified_on : "2022-07-04T19:39:48+00:00"

class Data {
  Data({
      int? id, 
      String? status, 
      int? owner, 
      String? createdOn, 
      String? modifiedOn,}){
    _id = id;
    _status = status;
    _owner = owner;
    _createdOn = createdOn;
    _modifiedOn = modifiedOn;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _status = json['status'];
    _owner = json['owner'];
    _createdOn = json['created_on'];
    _modifiedOn = json['modified_on'];
  }
  int? _id;
  String? _status;
  int? _owner;
  String? _createdOn;
  String? _modifiedOn;

  int? get id => _id;
  String? get status => _status;
  int? get owner => _owner;
  String? get createdOn => _createdOn;
  String? get modifiedOn => _modifiedOn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['status'] = _status;
    map['owner'] = _owner;
    map['created_on'] = _createdOn;
    map['modified_on'] = _modifiedOn;
    return map;
  }

}