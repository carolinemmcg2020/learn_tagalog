
class EmailUserModel{
  String email;
  String uid;
  String username;

  EmailUserModel({this.email, this.uid, this.username});

  Map toMap(EmailUserModel emailUser) {

    var data = Map<String, dynamic>();

    data["uid"] = emailUser.uid;
    data["email"] = emailUser.email;
    data["username"] = emailUser.username;

    return data;
  }

  EmailUserModel.fromMap(Map<String, dynamic> mapData){
    this.uid = mapData["uid"];
    this.username = mapData["username"];
    this.email = mapData["email"];
  }
}