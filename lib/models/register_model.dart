/// data : {"code":"created","message":"Congratulations <strong>Test</strong> you are registered successfully!"}

class RegisterModel {
  RegisterModel({
    Data? data,
  }) {
    _data = data;
  }

  RegisterModel.fromJson(dynamic json) {
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

/// code : "created"
/// message : "Congratulations <strong>Test</strong> you are registered successfully!"

class Data {
  Data({
    String? code,
    String? message,
  }) {
    _code = code;
    _message = message;
  }

  Data.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
  }

  String? _code;
  String? _message;

  String? get code => _code;

  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    return map;
  }
}
