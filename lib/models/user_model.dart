class UserModel {
  int id;
  String name;
  String email;
  String username;
  String photoUrl;
  String token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.photoUrl,
    this.username,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    photoUrl = json['profile_photo_url'];
    token = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profile_photo_url': photoUrl,
      'username': username,
      'access_token': token,
    };
  }
}
