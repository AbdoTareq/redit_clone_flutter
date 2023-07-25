import 'package:flutter/foundation.dart';

class UserModel {
  final String? name;
  final String? profilePic;
  final String? banner;
  final String? uid;
  final bool? isAuthenticated;
  final int? karma;
  final List<String>? awards;

  UserModel({
    this.name,
    this.profilePic,
    this.banner,
    this.uid,
    this.isAuthenticated,
    this.karma,
    this.awards,
  });

  UserModel copyWith({
    String? name,
    String? profilePic,
    String? banner,
    String? uid,
    bool? isAuthenticated,
    int? karma,
    List<String>? awards,
  }) {
    return UserModel(
      name: name ?? this.name,
      profilePic: profilePic ?? this.profilePic,
      banner: banner ?? this.banner,
      uid: uid ?? this.uid,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      karma: karma ?? this.karma,
      awards: awards ?? this.awards,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profilePic': profilePic,
      'banner': banner,
      'uid': uid,
      'isAuthenticated': isAuthenticated,
      'karma': karma,
      'awards': awards,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] != null ? map['name'] as String : null,
      profilePic:
          map['profilePic'] != null ? map['profilePic'] as String : null,
      banner: map['banner'] != null ? map['banner'] as String : null,
      uid: map['uid'] != null ? map['uid'] as String : null,
      isAuthenticated: map['isAuthenticated'] != null
          ? map['isAuthenticated'] as bool
          : null,
      karma: map['karma'] != null ? map['karma'] as int : null,
      // awards: map['awards'] != null ? List<String>.from((map['awards'] as List<String>)) : null,

      awards: map["awards"] != null ? List<String>.from(map['awards']) : [],
    );
  }

  @override
  String toString() {
    return 'UserModel(name: $name, profilePic: $profilePic, banner: $banner, uid: $uid, isAuthenticated: $isAuthenticated, karma: $karma, awards: $awards)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.profilePic == profilePic &&
        other.banner == banner &&
        other.uid == uid &&
        other.isAuthenticated == isAuthenticated &&
        other.karma == karma &&
        listEquals(other.awards, awards);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        profilePic.hashCode ^
        banner.hashCode ^
        uid.hashCode ^
        isAuthenticated.hashCode ^
        karma.hashCode ^
        awards.hashCode;
  }
}
