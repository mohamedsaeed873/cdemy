/// data : {"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MiwiZXhwIjoxNjU2NzM3ODM2LCJ0dGwiOjIwMDAsInR5cGUiOiJhdXRoIiwia2V5IjoiZjUwYmYyYmQtMjhjYy00OTAxLWEzMDItZjM5OTc5MGMwM2NmIiwicHJvamVjdCI6ImNkZW15In0.NRfV2tI58l2aO9lj_DpVn3c8bwjhX3-koF_EM2eT-TY","user":{"id":"2","status":"active","role":"3","first_name":"Test","last_name":"Name","email":"test@example.com","timezone":"UTC","locale":null,"locale_options":null,"avatar":null,"company":null,"title":null,"external_id":"e46e5106-bc87-458a-9e32-eb795b039213","theme":"auto","2fa_secret":null,"password_reset_token":null}}
/// public : true

class LoginModel {
  LoginModel({
      Data? data, 
      bool? public,}){
    _data = data;
    _public = public;
}

  LoginModel.fromJson(dynamic json) {
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

/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MiwiZXhwIjoxNjU2NzM3ODM2LCJ0dGwiOjIwMDAsInR5cGUiOiJhdXRoIiwia2V5IjoiZjUwYmYyYmQtMjhjYy00OTAxLWEzMDItZjM5OTc5MGMwM2NmIiwicHJvamVjdCI6ImNkZW15In0.NRfV2tI58l2aO9lj_DpVn3c8bwjhX3-koF_EM2eT-TY"
/// user : {"id":"2","status":"active","role":"3","first_name":"Test","last_name":"Name","email":"test@example.com","timezone":"UTC","locale":null,"locale_options":null,"avatar":null,"company":null,"title":null,"external_id":"e46e5106-bc87-458a-9e32-eb795b039213","theme":"auto","2fa_secret":null,"password_reset_token":null}

class Data {
  Data({
      String? token, 
      User? user,}){
    _token = token;
    _user = user;
}

  Data.fromJson(dynamic json) {
    _token = json['token'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? _token;
  User? _user;

  String? get token => _token;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// id : "2"
/// status : "active"
/// role : "3"
/// first_name : "Test"
/// last_name : "Name"
/// email : "test@example.com"
/// timezone : "UTC"
/// locale : null
/// locale_options : null
/// avatar : null
/// company : null
/// title : null
/// external_id : "e46e5106-bc87-458a-9e32-eb795b039213"
/// theme : "auto"
/// 2fa_secret : null
/// password_reset_token : null

class User {
  User({
      String? id, 
      String? status, 
      String? role, 
      String? firstName, 
      String? lastName, 
      String? email, 
      String? timezone, 
      dynamic locale, 
      dynamic localeOptions, 
      dynamic avatar, 
      dynamic company, 
      dynamic title, 
      String? externalId, 
      String? theme, 
      dynamic faSecret, 
      dynamic passwordResetToken,}){
    _id = id;
    _status = status;
    _role = role;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _timezone = timezone;
    _locale = locale;
    _localeOptions = localeOptions;
    _avatar = avatar;
    _company = company;
    _title = title;
    _externalId = externalId;
    _theme = theme;
    _faSecret = faSecret;
    _passwordResetToken = passwordResetToken;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _status = json['status'];
    _role = json['role'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _timezone = json['timezone'];
    _locale = json['locale'];
    _localeOptions = json['locale_options'];
    _avatar = json['avatar'];
    _company = json['company'];
    _title = json['title'];
    _externalId = json['external_id'];
    _theme = json['theme'];
    _faSecret = json['2fa_secret'];
    _passwordResetToken = json['password_reset_token'];
  }
  String? _id;
  String? _status;
  String? _role;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _timezone;
  dynamic _locale;
  dynamic _localeOptions;
  dynamic _avatar;
  dynamic _company;
  dynamic _title;
  String? _externalId;
  String? _theme;
  dynamic _faSecret;
  dynamic _passwordResetToken;

  String? get id => _id;
  String? get status => _status;
  String? get role => _role;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get timezone => _timezone;
  dynamic get locale => _locale;
  dynamic get localeOptions => _localeOptions;
  dynamic get avatar => _avatar;
  dynamic get company => _company;
  dynamic get title => _title;
  String? get externalId => _externalId;
  String? get theme => _theme;
  dynamic get faSecret => _faSecret;
  dynamic get passwordResetToken => _passwordResetToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['status'] = _status;
    map['role'] = _role;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['timezone'] = _timezone;
    map['locale'] = _locale;
    map['locale_options'] = _localeOptions;
    map['avatar'] = _avatar;
    map['company'] = _company;
    map['title'] = _title;
    map['external_id'] = _externalId;
    map['theme'] = _theme;
    map['2fa_secret'] = _faSecret;
    map['password_reset_token'] = _passwordResetToken;
    return map;
  }

}