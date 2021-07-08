class UserModel {
  String id;
  String name;
  String pass;

  UserModel({this.id, this.name, this.pass});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    pass = json['pass'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['pass'] = this.pass;
    return data;
  }
}
