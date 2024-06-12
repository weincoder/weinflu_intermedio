///Entidad que define los datos
// asociados al usuario que accederá a la aplicación.
class User {
  /// nombre del usuario Ej: julano
  String name;
  /// titulo asignado al usuario E): Mr, Ms.
  String title;
  /// País de origen del usuario E): España
  String country;
  /// Correo del usuario Ej: user@example.com
  String email;
  /// Número de Telefono
  String phone;
  /// Número del celular
  String cell;
  /// Imagen de perfil
  String profilePicture;
  User({
    required this.name,
    required this.title,
    required this.country,
    required this.email,
    required this.phone,
    required this.cell,
    required this.profilePicture,
  });
}