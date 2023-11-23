//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateUserResponse {
  /// Returns a new [CreateUserResponse] instance.
  CreateUserResponse({
    required this.token,
    required this.user,
  });

  /// APIトークン
  @JsonKey(name: 'token')
  String token;

  @JsonKey(name: 'user')
  DisclosedUser user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateUserResponse &&
    other.token == token &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token.hashCode) +
    (user.hashCode);

  @override
  String toString() => 'CreateUserResponse[token=$token, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = this.token;
      json[r'user'] = this.user;
    return json;
  }

  /// Returns a new [CreateUserResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateUserResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateUserResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateUserResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateUserResponse(
        token: mapValueOfType<String>(json, r'token')!,
        user: DisclosedUser.fromJson(json[r'user'])!,
      );
    }
    return null;
  }

  static List<CreateUserResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUserResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUserResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateUserResponse> mapFromJson(dynamic json) {
    final map = <String, CreateUserResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateUserResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateUserResponse-objects as value to a dart map
  static Map<String, List<CreateUserResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateUserResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateUserResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
    'user',
  };
}

