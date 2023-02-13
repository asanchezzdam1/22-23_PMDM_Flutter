import 'dart:convert';

UserModel scanModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String scanModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel(
      {this.id,
      required this.nombre,
      required this.apellidos,
      required this.email,
      required this.contrasena,
      required this.tipo});

  int? id;
  String nombre;
  String apellidos;
  String email;
  String contrasena;
  String tipo;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        nombre: json["nombre"],
        apellidos: json["apellidos"],
        email: json["email"],
        contrasena: json["contrasena"],
        tipo: json["tipo"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "apellidos": apellidos,
        "email": email,
        "contrasena": contrasena,
        "tipo": tipo
      };

  @override
  String toString() {
    String toString =
        'id: $id\nnombre: $nombre\napellidos: $apellidos\ncorreo: $email\ncontrasena: $contrasena\ntipo: $tipo';
    return toString;
  }
}
