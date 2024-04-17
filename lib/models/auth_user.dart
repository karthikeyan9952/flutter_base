import 'dart:convert';

class AuthUser {
  /// Unique id
  int? id;

  /// User's name
  String? name;

  /// User's email address
  String? email;

  /// User's mobile number
  String? mobile;

  /// The verification [DateTime] of user's email address
  DateTime? emailVerifiedAt;

  /// The current user's deleted [DateTime]
  DateTime? deletedAt;

  /// The current user's created [DateTime]
  DateTime? createdAt;

  /// The current user's last updated [DateTime]
  DateTime? updatedAt;

  /// AuthUser is a user data
  AuthUser({
    this.id,
    this.name,
    this.email,
    this.mobile,
    this.emailVerifiedAt,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  /// Creates a [AuthUser] by given `json encoded` value or `String`
  factory AuthUser.fromRawJson(String str) =>
      AuthUser.fromJson(json.decode(str));

  /// Converts or encodes a [AuthUser] to `String`
  String toRawJson() => json.encode(toJson());

  /// Creates a [AuthUser] by given `Map`
  factory AuthUser.fromJson(Map<String, dynamic> json) => AuthUser(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        emailVerifiedAt: json["email_verified_at"] == null
            ? null
            : DateTime.parse(json["email_verified_at"]),
        deletedAt: json["deleted_at"] == null
            ? null
            : DateTime.parse(json["deleted_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  /// Converts a [AuthUser] to `Map`
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "mobile": mobile,
        "email_verified_at": emailVerifiedAt?.toIso8601String(),
        "deleted_at": deletedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
