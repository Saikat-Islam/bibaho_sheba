import 'package:cloud_firestore/cloud_firestore.dart';

class LoginRequestEntity {
  String? id;
  String? name;
  String? email;
  String? avatar;
  int? online;
  int? type;

  LoginRequestEntity(
      {this.id, this.name, this.email, this.avatar, this.online, this.type});

  Map<String, dynamic> toJson() => {
        "id": id,
        "online": online,
        "email": email,
        "name": name,
        "avatar": avatar,
        "type" : type
      };
}

