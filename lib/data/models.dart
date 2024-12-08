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

class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const TOKEN = "token";

  String? id, userName, email, token;
  String? name, phoneNumber, profilePicture;

  UserModel(
      {this.id,
      this.email,
      this.name,
      this.phoneNumber,
      this.userName,
      this.profilePicture});

  UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapShot) {
    name = snapShot.data()?["NAME"] ?? "";
    email = snapShot.data()?["EMAIL"] ?? '';
    token = snapShot.data()?["TOKEN"] ?? '';
  }
  // String get fullName => '$firstName $lastName';
  // String get formatedPhoneNumber => CustomFormatters.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(fullName) => fullName.toString().split(" ");

  static String generateUsername(fullName) {
    List<String> nameParts = fullName.toString().split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String userName = '$firstName $lastName';
    return userName;
  }

  static UserModel empty() => UserModel(
      id: '',
      email: '',
      name: '',
      phoneNumber: '',
      userName: '',
      profilePicture: '');

  Map<String, dynamic> toJson() => {
        "id": id,
        "Email": email,
        "Name": name,
        "PhoneNumber": phoneNumber,
        "Username": userName,
        "ProfilePicture": profilePicture,
      };
}
