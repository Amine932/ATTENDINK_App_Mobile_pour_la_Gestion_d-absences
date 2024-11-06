class Administrator {
  String? name;
  String? email;
  String? password;
  String? filiere;
  String? uid;

  Administrator({
    this.name,
    this.email,
    this.password,
    this.filiere,
    this.uid,
  });

  factory Administrator.fromJson(Map<String, dynamic> json) => Administrator(
        name: json['name'] as String?,
        email: json['email'] as String?,
        password: json['password'] as String?,
        filiere: json['filiere'] as String?,
        uid: json['uid'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
        'filiere': filiere,
        'uid': uid,
      };
}
