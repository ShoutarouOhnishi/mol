//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DisclosedUser {
  /// Returns a new [DisclosedUser] instance.
  DisclosedUser({
    required this.id,
    required this.name,
    required this.accessedAt,
    required this.createdAt,
  });

  /// ID
  int id;

  /// 名前
  String name;

  /// 最終アクセス日時
  DateTime accessedAt;

  /// 作成日時
  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DisclosedUser &&
     other.id == id &&
     other.name == name &&
     other.accessedAt == accessedAt &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (accessedAt.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'DisclosedUser[id=$id, name=$name, accessedAt=$accessedAt, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'accessed_at'] = this.accessedAt.toUtc().toIso8601String();
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DisclosedUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DisclosedUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DisclosedUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DisclosedUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DisclosedUser(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        accessedAt: mapDateTime(json, r'accessed_at', '')!,
        createdAt: mapDateTime(json, r'created_at', '')!,
      );
    }
    return null;
  }

  static List<DisclosedUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DisclosedUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisclosedUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DisclosedUser> mapFromJson(dynamic json) {
    final map = <String, DisclosedUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DisclosedUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DisclosedUser-objects as value to a dart map
  static Map<String, List<DisclosedUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DisclosedUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DisclosedUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'accessed_at',
    'created_at',
  };
}

