// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, UserEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firebaseUidMeta = const VerificationMeta(
    'firebaseUid',
  );
  @override
  late final GeneratedColumn<String> firebaseUid = GeneratedColumn<String>(
    'firebase_uid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _displayNameMeta = const VerificationMeta(
    'displayName',
  );
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
    'display_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _avatarUrlMeta = const VerificationMeta(
    'avatarUrl',
  );
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
    'avatar_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _preferencesMeta = const VerificationMeta(
    'preferences',
  );
  @override
  late final GeneratedColumn<String> preferences = GeneratedColumn<String>(
    'preferences',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    firebaseUid,
    displayName,
    avatarUrl,
    email,
    preferences,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('firebase_uid')) {
      context.handle(
        _firebaseUidMeta,
        firebaseUid.isAcceptableOrUnknown(
          data['firebase_uid']!,
          _firebaseUidMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_firebaseUidMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
        _displayNameMeta,
        displayName.isAcceptableOrUnknown(
          data['display_name']!,
          _displayNameMeta,
        ),
      );
    }
    if (data.containsKey('avatar_url')) {
      context.handle(
        _avatarUrlMeta,
        avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('preferences')) {
      context.handle(
        _preferencesMeta,
        preferences.isAcceptableOrUnknown(
          data['preferences']!,
          _preferencesMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      firebaseUid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}firebase_uid'],
      )!,
      displayName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}display_name'],
      ),
      avatarUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}avatar_url'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      preferences: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}preferences'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class UserEntry extends DataClass implements Insertable<UserEntry> {
  final String id;
  final String firebaseUid;
  final String? displayName;
  final String? avatarUrl;
  final String? email;
  final String? preferences;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  const UserEntry({
    required this.id,
    required this.firebaseUid,
    this.displayName,
    this.avatarUrl,
    this.email,
    this.preferences,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['firebase_uid'] = Variable<String>(firebaseUid);
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = Variable<String>(avatarUrl);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || preferences != null) {
      map['preferences'] = Variable<String>(preferences);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      firebaseUid: Value(firebaseUid),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      avatarUrl: avatarUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarUrl),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      preferences: preferences == null && nullToAbsent
          ? const Value.absent()
          : Value(preferences),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory UserEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserEntry(
      id: serializer.fromJson<String>(json['id']),
      firebaseUid: serializer.fromJson<String>(json['firebaseUid']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      avatarUrl: serializer.fromJson<String?>(json['avatarUrl']),
      email: serializer.fromJson<String?>(json['email']),
      preferences: serializer.fromJson<String?>(json['preferences']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'firebaseUid': serializer.toJson<String>(firebaseUid),
      'displayName': serializer.toJson<String?>(displayName),
      'avatarUrl': serializer.toJson<String?>(avatarUrl),
      'email': serializer.toJson<String?>(email),
      'preferences': serializer.toJson<String?>(preferences),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  UserEntry copyWith({
    String? id,
    String? firebaseUid,
    Value<String?> displayName = const Value.absent(),
    Value<String?> avatarUrl = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> preferences = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => UserEntry(
    id: id ?? this.id,
    firebaseUid: firebaseUid ?? this.firebaseUid,
    displayName: displayName.present ? displayName.value : this.displayName,
    avatarUrl: avatarUrl.present ? avatarUrl.value : this.avatarUrl,
    email: email.present ? email.value : this.email,
    preferences: preferences.present ? preferences.value : this.preferences,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  UserEntry copyWithCompanion(UsersCompanion data) {
    return UserEntry(
      id: data.id.present ? data.id.value : this.id,
      firebaseUid: data.firebaseUid.present
          ? data.firebaseUid.value
          : this.firebaseUid,
      displayName: data.displayName.present
          ? data.displayName.value
          : this.displayName,
      avatarUrl: data.avatarUrl.present ? data.avatarUrl.value : this.avatarUrl,
      email: data.email.present ? data.email.value : this.email,
      preferences: data.preferences.present
          ? data.preferences.value
          : this.preferences,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserEntry(')
          ..write('id: $id, ')
          ..write('firebaseUid: $firebaseUid, ')
          ..write('displayName: $displayName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('email: $email, ')
          ..write('preferences: $preferences, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    firebaseUid,
    displayName,
    avatarUrl,
    email,
    preferences,
    createdAt,
    updatedAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserEntry &&
          other.id == this.id &&
          other.firebaseUid == this.firebaseUid &&
          other.displayName == this.displayName &&
          other.avatarUrl == this.avatarUrl &&
          other.email == this.email &&
          other.preferences == this.preferences &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class UsersCompanion extends UpdateCompanion<UserEntry> {
  final Value<String> id;
  final Value<String> firebaseUid;
  final Value<String?> displayName;
  final Value<String?> avatarUrl;
  final Value<String?> email;
  final Value<String?> preferences;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.firebaseUid = const Value.absent(),
    this.displayName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.email = const Value.absent(),
    this.preferences = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String id,
    required String firebaseUid,
    this.displayName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.email = const Value.absent(),
    this.preferences = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       firebaseUid = Value(firebaseUid),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<UserEntry> custom({
    Expression<String>? id,
    Expression<String>? firebaseUid,
    Expression<String>? displayName,
    Expression<String>? avatarUrl,
    Expression<String>? email,
    Expression<String>? preferences,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firebaseUid != null) 'firebase_uid': firebaseUid,
      if (displayName != null) 'display_name': displayName,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (email != null) 'email': email,
      if (preferences != null) 'preferences': preferences,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith({
    Value<String>? id,
    Value<String>? firebaseUid,
    Value<String?>? displayName,
    Value<String?>? avatarUrl,
    Value<String?>? email,
    Value<String?>? preferences,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return UsersCompanion(
      id: id ?? this.id,
      firebaseUid: firebaseUid ?? this.firebaseUid,
      displayName: displayName ?? this.displayName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      email: email ?? this.email,
      preferences: preferences ?? this.preferences,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (firebaseUid.present) {
      map['firebase_uid'] = Variable<String>(firebaseUid.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (preferences.present) {
      map['preferences'] = Variable<String>(preferences.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('firebaseUid: $firebaseUid, ')
          ..write('displayName: $displayName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('email: $email, ')
          ..write('preferences: $preferences, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RoastersTable extends Roasters
    with TableInfo<$RoastersTable, RoasterEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoastersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameReadingMeta = const VerificationMeta(
    'nameReading',
  );
  @override
  late final GeneratedColumn<String> nameReading = GeneratedColumn<String>(
    'name_reading',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _locationMeta = const VerificationMeta(
    'location',
  );
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
    'location',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _websiteUrlMeta = const VerificationMeta(
    'websiteUrl',
  );
  @override
  late final GeneratedColumn<String> websiteUrl = GeneratedColumn<String>(
    'website_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    name,
    nameReading,
    location,
    websiteUrl,
    description,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'roasters';
  @override
  VerificationContext validateIntegrity(
    Insertable<RoasterEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('name_reading')) {
      context.handle(
        _nameReadingMeta,
        nameReading.isAcceptableOrUnknown(
          data['name_reading']!,
          _nameReadingMeta,
        ),
      );
    }
    if (data.containsKey('location')) {
      context.handle(
        _locationMeta,
        location.isAcceptableOrUnknown(data['location']!, _locationMeta),
      );
    }
    if (data.containsKey('website_url')) {
      context.handle(
        _websiteUrlMeta,
        websiteUrl.isAcceptableOrUnknown(data['website_url']!, _websiteUrlMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RoasterEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoasterEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      nameReading: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_reading'],
      ),
      location: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location'],
      ),
      websiteUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}website_url'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $RoastersTable createAlias(String alias) {
    return $RoastersTable(attachedDatabase, alias);
  }
}

class RoasterEntry extends DataClass implements Insertable<RoasterEntry> {
  final String id;
  final String userId;
  final String name;
  final String? nameReading;
  final String? location;
  final String? websiteUrl;
  final String? description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  const RoasterEntry({
    required this.id,
    required this.userId,
    required this.name,
    this.nameReading,
    this.location,
    this.websiteUrl,
    this.description,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nameReading != null) {
      map['name_reading'] = Variable<String>(nameReading);
    }
    if (!nullToAbsent || location != null) {
      map['location'] = Variable<String>(location);
    }
    if (!nullToAbsent || websiteUrl != null) {
      map['website_url'] = Variable<String>(websiteUrl);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  RoastersCompanion toCompanion(bool nullToAbsent) {
    return RoastersCompanion(
      id: Value(id),
      userId: Value(userId),
      name: Value(name),
      nameReading: nameReading == null && nullToAbsent
          ? const Value.absent()
          : Value(nameReading),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      websiteUrl: websiteUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(websiteUrl),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory RoasterEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoasterEntry(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      name: serializer.fromJson<String>(json['name']),
      nameReading: serializer.fromJson<String?>(json['nameReading']),
      location: serializer.fromJson<String?>(json['location']),
      websiteUrl: serializer.fromJson<String?>(json['websiteUrl']),
      description: serializer.fromJson<String?>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'name': serializer.toJson<String>(name),
      'nameReading': serializer.toJson<String?>(nameReading),
      'location': serializer.toJson<String?>(location),
      'websiteUrl': serializer.toJson<String?>(websiteUrl),
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  RoasterEntry copyWith({
    String? id,
    String? userId,
    String? name,
    Value<String?> nameReading = const Value.absent(),
    Value<String?> location = const Value.absent(),
    Value<String?> websiteUrl = const Value.absent(),
    Value<String?> description = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => RoasterEntry(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    name: name ?? this.name,
    nameReading: nameReading.present ? nameReading.value : this.nameReading,
    location: location.present ? location.value : this.location,
    websiteUrl: websiteUrl.present ? websiteUrl.value : this.websiteUrl,
    description: description.present ? description.value : this.description,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  RoasterEntry copyWithCompanion(RoastersCompanion data) {
    return RoasterEntry(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      name: data.name.present ? data.name.value : this.name,
      nameReading: data.nameReading.present
          ? data.nameReading.value
          : this.nameReading,
      location: data.location.present ? data.location.value : this.location,
      websiteUrl: data.websiteUrl.present
          ? data.websiteUrl.value
          : this.websiteUrl,
      description: data.description.present
          ? data.description.value
          : this.description,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RoasterEntry(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('nameReading: $nameReading, ')
          ..write('location: $location, ')
          ..write('websiteUrl: $websiteUrl, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    name,
    nameReading,
    location,
    websiteUrl,
    description,
    createdAt,
    updatedAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoasterEntry &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.name == this.name &&
          other.nameReading == this.nameReading &&
          other.location == this.location &&
          other.websiteUrl == this.websiteUrl &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class RoastersCompanion extends UpdateCompanion<RoasterEntry> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> name;
  final Value<String?> nameReading;
  final Value<String?> location;
  final Value<String?> websiteUrl;
  final Value<String?> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const RoastersCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.name = const Value.absent(),
    this.nameReading = const Value.absent(),
    this.location = const Value.absent(),
    this.websiteUrl = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RoastersCompanion.insert({
    required String id,
    required String userId,
    required String name,
    this.nameReading = const Value.absent(),
    this.location = const Value.absent(),
    this.websiteUrl = const Value.absent(),
    this.description = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       name = Value(name),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<RoasterEntry> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? name,
    Expression<String>? nameReading,
    Expression<String>? location,
    Expression<String>? websiteUrl,
    Expression<String>? description,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (name != null) 'name': name,
      if (nameReading != null) 'name_reading': nameReading,
      if (location != null) 'location': location,
      if (websiteUrl != null) 'website_url': websiteUrl,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RoastersCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? name,
    Value<String?>? nameReading,
    Value<String?>? location,
    Value<String?>? websiteUrl,
    Value<String?>? description,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return RoastersCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      nameReading: nameReading ?? this.nameReading,
      location: location ?? this.location,
      websiteUrl: websiteUrl ?? this.websiteUrl,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nameReading.present) {
      map['name_reading'] = Variable<String>(nameReading.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (websiteUrl.present) {
      map['website_url'] = Variable<String>(websiteUrl.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoastersCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('nameReading: $nameReading, ')
          ..write('location: $location, ')
          ..write('websiteUrl: $websiteUrl, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BeansTable extends Beans with TableInfo<$BeansTable, BeanEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BeansTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (id)',
    ),
  );
  static const VerificationMeta _roasterIdMeta = const VerificationMeta(
    'roasterId',
  );
  @override
  late final GeneratedColumn<String> roasterId = GeneratedColumn<String>(
    'roaster_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES roasters (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<RoastLevel?, String> roastLevel =
      GeneratedColumn<String>(
        'roast_level',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<RoastLevel?>($BeansTable.$converterroastLeveln);
  @override
  late final GeneratedColumnWithTypeConverter<BeanType?, String> beanType =
      GeneratedColumn<String>(
        'bean_type',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<BeanType?>($BeansTable.$converterbeanTypen);
  static const VerificationMeta _roastDateMeta = const VerificationMeta(
    'roastDate',
  );
  @override
  late final GeneratedColumn<String> roastDate = GeneratedColumn<String>(
    'roast_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _purchaseDateMeta = const VerificationMeta(
    'purchaseDate',
  );
  @override
  late final GeneratedColumn<String> purchaseDate = GeneratedColumn<String>(
    'purchase_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _purchasePriceMeta = const VerificationMeta(
    'purchasePrice',
  );
  @override
  late final GeneratedColumn<int> purchasePrice = GeneratedColumn<int>(
    'purchase_price',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weightGMeta = const VerificationMeta(
    'weightG',
  );
  @override
  late final GeneratedColumn<int> weightG = GeneratedColumn<int>(
    'weight_g',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isDecafMeta = const VerificationMeta(
    'isDecaf',
  );
  @override
  late final GeneratedColumn<bool> isDecaf = GeneratedColumn<bool>(
    'is_decaf',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_decaf" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sourceUrlMeta = const VerificationMeta(
    'sourceUrl',
  );
  @override
  late final GeneratedColumn<String> sourceUrl = GeneratedColumn<String>(
    'source_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    roasterId,
    name,
    roastLevel,
    beanType,
    roastDate,
    purchaseDate,
    purchasePrice,
    weightG,
    isDecaf,
    description,
    sourceUrl,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'beans';
  @override
  VerificationContext validateIntegrity(
    Insertable<BeanEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('roaster_id')) {
      context.handle(
        _roasterIdMeta,
        roasterId.isAcceptableOrUnknown(data['roaster_id']!, _roasterIdMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('roast_date')) {
      context.handle(
        _roastDateMeta,
        roastDate.isAcceptableOrUnknown(data['roast_date']!, _roastDateMeta),
      );
    }
    if (data.containsKey('purchase_date')) {
      context.handle(
        _purchaseDateMeta,
        purchaseDate.isAcceptableOrUnknown(
          data['purchase_date']!,
          _purchaseDateMeta,
        ),
      );
    }
    if (data.containsKey('purchase_price')) {
      context.handle(
        _purchasePriceMeta,
        purchasePrice.isAcceptableOrUnknown(
          data['purchase_price']!,
          _purchasePriceMeta,
        ),
      );
    }
    if (data.containsKey('weight_g')) {
      context.handle(
        _weightGMeta,
        weightG.isAcceptableOrUnknown(data['weight_g']!, _weightGMeta),
      );
    }
    if (data.containsKey('is_decaf')) {
      context.handle(
        _isDecafMeta,
        isDecaf.isAcceptableOrUnknown(data['is_decaf']!, _isDecafMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('source_url')) {
      context.handle(
        _sourceUrlMeta,
        sourceUrl.isAcceptableOrUnknown(data['source_url']!, _sourceUrlMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BeanEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BeanEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      roasterId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}roaster_id'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      roastLevel: $BeansTable.$converterroastLeveln.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}roast_level'],
        ),
      ),
      beanType: $BeansTable.$converterbeanTypen.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}bean_type'],
        ),
      ),
      roastDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}roast_date'],
      ),
      purchaseDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}purchase_date'],
      ),
      purchasePrice: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}purchase_price'],
      ),
      weightG: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weight_g'],
      ),
      isDecaf: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_decaf'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      sourceUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_url'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $BeansTable createAlias(String alias) {
    return $BeansTable(attachedDatabase, alias);
  }

  static TypeConverter<RoastLevel, String> $converterroastLevel =
      const RoastLevelConverter();
  static TypeConverter<RoastLevel?, String?> $converterroastLeveln =
      NullAwareTypeConverter.wrap($converterroastLevel);
  static TypeConverter<BeanType, String> $converterbeanType =
      const BeanTypeConverter();
  static TypeConverter<BeanType?, String?> $converterbeanTypen =
      NullAwareTypeConverter.wrap($converterbeanType);
}

class BeanEntry extends DataClass implements Insertable<BeanEntry> {
  final String id;
  final String userId;
  final String? roasterId;
  final String name;
  final RoastLevel? roastLevel;
  final BeanType? beanType;
  final String? roastDate;
  final String? purchaseDate;
  final int? purchasePrice;
  final int? weightG;
  final bool isDecaf;
  final String? description;
  final String? sourceUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  const BeanEntry({
    required this.id,
    required this.userId,
    this.roasterId,
    required this.name,
    this.roastLevel,
    this.beanType,
    this.roastDate,
    this.purchaseDate,
    this.purchasePrice,
    this.weightG,
    required this.isDecaf,
    this.description,
    this.sourceUrl,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    if (!nullToAbsent || roasterId != null) {
      map['roaster_id'] = Variable<String>(roasterId);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || roastLevel != null) {
      map['roast_level'] = Variable<String>(
        $BeansTable.$converterroastLeveln.toSql(roastLevel),
      );
    }
    if (!nullToAbsent || beanType != null) {
      map['bean_type'] = Variable<String>(
        $BeansTable.$converterbeanTypen.toSql(beanType),
      );
    }
    if (!nullToAbsent || roastDate != null) {
      map['roast_date'] = Variable<String>(roastDate);
    }
    if (!nullToAbsent || purchaseDate != null) {
      map['purchase_date'] = Variable<String>(purchaseDate);
    }
    if (!nullToAbsent || purchasePrice != null) {
      map['purchase_price'] = Variable<int>(purchasePrice);
    }
    if (!nullToAbsent || weightG != null) {
      map['weight_g'] = Variable<int>(weightG);
    }
    map['is_decaf'] = Variable<bool>(isDecaf);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || sourceUrl != null) {
      map['source_url'] = Variable<String>(sourceUrl);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  BeansCompanion toCompanion(bool nullToAbsent) {
    return BeansCompanion(
      id: Value(id),
      userId: Value(userId),
      roasterId: roasterId == null && nullToAbsent
          ? const Value.absent()
          : Value(roasterId),
      name: Value(name),
      roastLevel: roastLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(roastLevel),
      beanType: beanType == null && nullToAbsent
          ? const Value.absent()
          : Value(beanType),
      roastDate: roastDate == null && nullToAbsent
          ? const Value.absent()
          : Value(roastDate),
      purchaseDate: purchaseDate == null && nullToAbsent
          ? const Value.absent()
          : Value(purchaseDate),
      purchasePrice: purchasePrice == null && nullToAbsent
          ? const Value.absent()
          : Value(purchasePrice),
      weightG: weightG == null && nullToAbsent
          ? const Value.absent()
          : Value(weightG),
      isDecaf: Value(isDecaf),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      sourceUrl: sourceUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceUrl),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory BeanEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BeanEntry(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      roasterId: serializer.fromJson<String?>(json['roasterId']),
      name: serializer.fromJson<String>(json['name']),
      roastLevel: serializer.fromJson<RoastLevel?>(json['roastLevel']),
      beanType: serializer.fromJson<BeanType?>(json['beanType']),
      roastDate: serializer.fromJson<String?>(json['roastDate']),
      purchaseDate: serializer.fromJson<String?>(json['purchaseDate']),
      purchasePrice: serializer.fromJson<int?>(json['purchasePrice']),
      weightG: serializer.fromJson<int?>(json['weightG']),
      isDecaf: serializer.fromJson<bool>(json['isDecaf']),
      description: serializer.fromJson<String?>(json['description']),
      sourceUrl: serializer.fromJson<String?>(json['sourceUrl']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'roasterId': serializer.toJson<String?>(roasterId),
      'name': serializer.toJson<String>(name),
      'roastLevel': serializer.toJson<RoastLevel?>(roastLevel),
      'beanType': serializer.toJson<BeanType?>(beanType),
      'roastDate': serializer.toJson<String?>(roastDate),
      'purchaseDate': serializer.toJson<String?>(purchaseDate),
      'purchasePrice': serializer.toJson<int?>(purchasePrice),
      'weightG': serializer.toJson<int?>(weightG),
      'isDecaf': serializer.toJson<bool>(isDecaf),
      'description': serializer.toJson<String?>(description),
      'sourceUrl': serializer.toJson<String?>(sourceUrl),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  BeanEntry copyWith({
    String? id,
    String? userId,
    Value<String?> roasterId = const Value.absent(),
    String? name,
    Value<RoastLevel?> roastLevel = const Value.absent(),
    Value<BeanType?> beanType = const Value.absent(),
    Value<String?> roastDate = const Value.absent(),
    Value<String?> purchaseDate = const Value.absent(),
    Value<int?> purchasePrice = const Value.absent(),
    Value<int?> weightG = const Value.absent(),
    bool? isDecaf,
    Value<String?> description = const Value.absent(),
    Value<String?> sourceUrl = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => BeanEntry(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    roasterId: roasterId.present ? roasterId.value : this.roasterId,
    name: name ?? this.name,
    roastLevel: roastLevel.present ? roastLevel.value : this.roastLevel,
    beanType: beanType.present ? beanType.value : this.beanType,
    roastDate: roastDate.present ? roastDate.value : this.roastDate,
    purchaseDate: purchaseDate.present ? purchaseDate.value : this.purchaseDate,
    purchasePrice: purchasePrice.present
        ? purchasePrice.value
        : this.purchasePrice,
    weightG: weightG.present ? weightG.value : this.weightG,
    isDecaf: isDecaf ?? this.isDecaf,
    description: description.present ? description.value : this.description,
    sourceUrl: sourceUrl.present ? sourceUrl.value : this.sourceUrl,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  BeanEntry copyWithCompanion(BeansCompanion data) {
    return BeanEntry(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      roasterId: data.roasterId.present ? data.roasterId.value : this.roasterId,
      name: data.name.present ? data.name.value : this.name,
      roastLevel: data.roastLevel.present
          ? data.roastLevel.value
          : this.roastLevel,
      beanType: data.beanType.present ? data.beanType.value : this.beanType,
      roastDate: data.roastDate.present ? data.roastDate.value : this.roastDate,
      purchaseDate: data.purchaseDate.present
          ? data.purchaseDate.value
          : this.purchaseDate,
      purchasePrice: data.purchasePrice.present
          ? data.purchasePrice.value
          : this.purchasePrice,
      weightG: data.weightG.present ? data.weightG.value : this.weightG,
      isDecaf: data.isDecaf.present ? data.isDecaf.value : this.isDecaf,
      description: data.description.present
          ? data.description.value
          : this.description,
      sourceUrl: data.sourceUrl.present ? data.sourceUrl.value : this.sourceUrl,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BeanEntry(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('roasterId: $roasterId, ')
          ..write('name: $name, ')
          ..write('roastLevel: $roastLevel, ')
          ..write('beanType: $beanType, ')
          ..write('roastDate: $roastDate, ')
          ..write('purchaseDate: $purchaseDate, ')
          ..write('purchasePrice: $purchasePrice, ')
          ..write('weightG: $weightG, ')
          ..write('isDecaf: $isDecaf, ')
          ..write('description: $description, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    roasterId,
    name,
    roastLevel,
    beanType,
    roastDate,
    purchaseDate,
    purchasePrice,
    weightG,
    isDecaf,
    description,
    sourceUrl,
    createdAt,
    updatedAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BeanEntry &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.roasterId == this.roasterId &&
          other.name == this.name &&
          other.roastLevel == this.roastLevel &&
          other.beanType == this.beanType &&
          other.roastDate == this.roastDate &&
          other.purchaseDate == this.purchaseDate &&
          other.purchasePrice == this.purchasePrice &&
          other.weightG == this.weightG &&
          other.isDecaf == this.isDecaf &&
          other.description == this.description &&
          other.sourceUrl == this.sourceUrl &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class BeansCompanion extends UpdateCompanion<BeanEntry> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String?> roasterId;
  final Value<String> name;
  final Value<RoastLevel?> roastLevel;
  final Value<BeanType?> beanType;
  final Value<String?> roastDate;
  final Value<String?> purchaseDate;
  final Value<int?> purchasePrice;
  final Value<int?> weightG;
  final Value<bool> isDecaf;
  final Value<String?> description;
  final Value<String?> sourceUrl;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const BeansCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.roasterId = const Value.absent(),
    this.name = const Value.absent(),
    this.roastLevel = const Value.absent(),
    this.beanType = const Value.absent(),
    this.roastDate = const Value.absent(),
    this.purchaseDate = const Value.absent(),
    this.purchasePrice = const Value.absent(),
    this.weightG = const Value.absent(),
    this.isDecaf = const Value.absent(),
    this.description = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BeansCompanion.insert({
    required String id,
    required String userId,
    this.roasterId = const Value.absent(),
    required String name,
    this.roastLevel = const Value.absent(),
    this.beanType = const Value.absent(),
    this.roastDate = const Value.absent(),
    this.purchaseDate = const Value.absent(),
    this.purchasePrice = const Value.absent(),
    this.weightG = const Value.absent(),
    this.isDecaf = const Value.absent(),
    this.description = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       name = Value(name),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<BeanEntry> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? roasterId,
    Expression<String>? name,
    Expression<String>? roastLevel,
    Expression<String>? beanType,
    Expression<String>? roastDate,
    Expression<String>? purchaseDate,
    Expression<int>? purchasePrice,
    Expression<int>? weightG,
    Expression<bool>? isDecaf,
    Expression<String>? description,
    Expression<String>? sourceUrl,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (roasterId != null) 'roaster_id': roasterId,
      if (name != null) 'name': name,
      if (roastLevel != null) 'roast_level': roastLevel,
      if (beanType != null) 'bean_type': beanType,
      if (roastDate != null) 'roast_date': roastDate,
      if (purchaseDate != null) 'purchase_date': purchaseDate,
      if (purchasePrice != null) 'purchase_price': purchasePrice,
      if (weightG != null) 'weight_g': weightG,
      if (isDecaf != null) 'is_decaf': isDecaf,
      if (description != null) 'description': description,
      if (sourceUrl != null) 'source_url': sourceUrl,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BeansCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String?>? roasterId,
    Value<String>? name,
    Value<RoastLevel?>? roastLevel,
    Value<BeanType?>? beanType,
    Value<String?>? roastDate,
    Value<String?>? purchaseDate,
    Value<int?>? purchasePrice,
    Value<int?>? weightG,
    Value<bool>? isDecaf,
    Value<String?>? description,
    Value<String?>? sourceUrl,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return BeansCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      roasterId: roasterId ?? this.roasterId,
      name: name ?? this.name,
      roastLevel: roastLevel ?? this.roastLevel,
      beanType: beanType ?? this.beanType,
      roastDate: roastDate ?? this.roastDate,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      purchasePrice: purchasePrice ?? this.purchasePrice,
      weightG: weightG ?? this.weightG,
      isDecaf: isDecaf ?? this.isDecaf,
      description: description ?? this.description,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (roasterId.present) {
      map['roaster_id'] = Variable<String>(roasterId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (roastLevel.present) {
      map['roast_level'] = Variable<String>(
        $BeansTable.$converterroastLeveln.toSql(roastLevel.value),
      );
    }
    if (beanType.present) {
      map['bean_type'] = Variable<String>(
        $BeansTable.$converterbeanTypen.toSql(beanType.value),
      );
    }
    if (roastDate.present) {
      map['roast_date'] = Variable<String>(roastDate.value);
    }
    if (purchaseDate.present) {
      map['purchase_date'] = Variable<String>(purchaseDate.value);
    }
    if (purchasePrice.present) {
      map['purchase_price'] = Variable<int>(purchasePrice.value);
    }
    if (weightG.present) {
      map['weight_g'] = Variable<int>(weightG.value);
    }
    if (isDecaf.present) {
      map['is_decaf'] = Variable<bool>(isDecaf.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (sourceUrl.present) {
      map['source_url'] = Variable<String>(sourceUrl.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BeansCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('roasterId: $roasterId, ')
          ..write('name: $name, ')
          ..write('roastLevel: $roastLevel, ')
          ..write('beanType: $beanType, ')
          ..write('roastDate: $roastDate, ')
          ..write('purchaseDate: $purchaseDate, ')
          ..write('purchasePrice: $purchasePrice, ')
          ..write('weightG: $weightG, ')
          ..write('isDecaf: $isDecaf, ')
          ..write('description: $description, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CountriesTable extends Countries
    with TableInfo<$CountriesTable, CountryEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CountriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _nameEnMeta = const VerificationMeta('nameEn');
  @override
  late final GeneratedColumn<String> nameEn = GeneratedColumn<String>(
    'name_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isoAlpha2Meta = const VerificationMeta(
    'isoAlpha2',
  );
  @override
  late final GeneratedColumn<String> isoAlpha2 = GeneratedColumn<String>(
    'iso_alpha2',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _regionMeta = const VerificationMeta('region');
  @override
  late final GeneratedColumn<String> region = GeneratedColumn<String>(
    'region',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    nameEn,
    isoAlpha2,
    region,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'countries';
  @override
  VerificationContext validateIntegrity(
    Insertable<CountryEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('name_en')) {
      context.handle(
        _nameEnMeta,
        nameEn.isAcceptableOrUnknown(data['name_en']!, _nameEnMeta),
      );
    } else if (isInserting) {
      context.missing(_nameEnMeta);
    }
    if (data.containsKey('iso_alpha2')) {
      context.handle(
        _isoAlpha2Meta,
        isoAlpha2.isAcceptableOrUnknown(data['iso_alpha2']!, _isoAlpha2Meta),
      );
    } else if (isInserting) {
      context.missing(_isoAlpha2Meta);
    }
    if (data.containsKey('region')) {
      context.handle(
        _regionMeta,
        region.isAcceptableOrUnknown(data['region']!, _regionMeta),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CountryEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CountryEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      nameEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_en'],
      )!,
      isoAlpha2: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}iso_alpha2'],
      )!,
      region: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}region'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $CountriesTable createAlias(String alias) {
    return $CountriesTable(attachedDatabase, alias);
  }
}

class CountryEntry extends DataClass implements Insertable<CountryEntry> {
  final String id;
  final String name;
  final String nameEn;
  final String isoAlpha2;
  final String? region;
  final int sortOrder;
  const CountryEntry({
    required this.id,
    required this.name,
    required this.nameEn,
    required this.isoAlpha2,
    this.region,
    required this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['name_en'] = Variable<String>(nameEn);
    map['iso_alpha2'] = Variable<String>(isoAlpha2);
    if (!nullToAbsent || region != null) {
      map['region'] = Variable<String>(region);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  CountriesCompanion toCompanion(bool nullToAbsent) {
    return CountriesCompanion(
      id: Value(id),
      name: Value(name),
      nameEn: Value(nameEn),
      isoAlpha2: Value(isoAlpha2),
      region: region == null && nullToAbsent
          ? const Value.absent()
          : Value(region),
      sortOrder: Value(sortOrder),
    );
  }

  factory CountryEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CountryEntry(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      nameEn: serializer.fromJson<String>(json['nameEn']),
      isoAlpha2: serializer.fromJson<String>(json['isoAlpha2']),
      region: serializer.fromJson<String?>(json['region']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'nameEn': serializer.toJson<String>(nameEn),
      'isoAlpha2': serializer.toJson<String>(isoAlpha2),
      'region': serializer.toJson<String?>(region),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  CountryEntry copyWith({
    String? id,
    String? name,
    String? nameEn,
    String? isoAlpha2,
    Value<String?> region = const Value.absent(),
    int? sortOrder,
  }) => CountryEntry(
    id: id ?? this.id,
    name: name ?? this.name,
    nameEn: nameEn ?? this.nameEn,
    isoAlpha2: isoAlpha2 ?? this.isoAlpha2,
    region: region.present ? region.value : this.region,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  CountryEntry copyWithCompanion(CountriesCompanion data) {
    return CountryEntry(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      nameEn: data.nameEn.present ? data.nameEn.value : this.nameEn,
      isoAlpha2: data.isoAlpha2.present ? data.isoAlpha2.value : this.isoAlpha2,
      region: data.region.present ? data.region.value : this.region,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CountryEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameEn: $nameEn, ')
          ..write('isoAlpha2: $isoAlpha2, ')
          ..write('region: $region, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, nameEn, isoAlpha2, region, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CountryEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.nameEn == this.nameEn &&
          other.isoAlpha2 == this.isoAlpha2 &&
          other.region == this.region &&
          other.sortOrder == this.sortOrder);
}

class CountriesCompanion extends UpdateCompanion<CountryEntry> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> nameEn;
  final Value<String> isoAlpha2;
  final Value<String?> region;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const CountriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.nameEn = const Value.absent(),
    this.isoAlpha2 = const Value.absent(),
    this.region = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CountriesCompanion.insert({
    required String id,
    required String name,
    required String nameEn,
    required String isoAlpha2,
    this.region = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       nameEn = Value(nameEn),
       isoAlpha2 = Value(isoAlpha2);
  static Insertable<CountryEntry> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? nameEn,
    Expression<String>? isoAlpha2,
    Expression<String>? region,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (nameEn != null) 'name_en': nameEn,
      if (isoAlpha2 != null) 'iso_alpha2': isoAlpha2,
      if (region != null) 'region': region,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CountriesCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? nameEn,
    Value<String>? isoAlpha2,
    Value<String?>? region,
    Value<int>? sortOrder,
    Value<int>? rowid,
  }) {
    return CountriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      nameEn: nameEn ?? this.nameEn,
      isoAlpha2: isoAlpha2 ?? this.isoAlpha2,
      region: region ?? this.region,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nameEn.present) {
      map['name_en'] = Variable<String>(nameEn.value);
    }
    if (isoAlpha2.present) {
      map['iso_alpha2'] = Variable<String>(isoAlpha2.value);
    }
    if (region.present) {
      map['region'] = Variable<String>(region.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CountriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameEn: $nameEn, ')
          ..write('isoAlpha2: $isoAlpha2, ')
          ..write('region: $region, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $VarietiesTable extends Varieties
    with TableInfo<$VarietiesTable, VarietyEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VarietiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _nameJaMeta = const VerificationMeta('nameJa');
  @override
  late final GeneratedColumn<String> nameJa = GeneratedColumn<String>(
    'name_ja',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _speciesMeta = const VerificationMeta(
    'species',
  );
  @override
  late final GeneratedColumn<String> species = GeneratedColumn<String>(
    'species',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('arabica'),
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    nameJa,
    species,
    description,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'varieties';
  @override
  VerificationContext validateIntegrity(
    Insertable<VarietyEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('name_ja')) {
      context.handle(
        _nameJaMeta,
        nameJa.isAcceptableOrUnknown(data['name_ja']!, _nameJaMeta),
      );
    }
    if (data.containsKey('species')) {
      context.handle(
        _speciesMeta,
        species.isAcceptableOrUnknown(data['species']!, _speciesMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VarietyEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VarietyEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      nameJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_ja'],
      ),
      species: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}species'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $VarietiesTable createAlias(String alias) {
    return $VarietiesTable(attachedDatabase, alias);
  }
}

class VarietyEntry extends DataClass implements Insertable<VarietyEntry> {
  final String id;
  final String name;
  final String? nameJa;
  final String species;
  final String? description;
  final int sortOrder;
  const VarietyEntry({
    required this.id,
    required this.name,
    this.nameJa,
    required this.species,
    this.description,
    required this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nameJa != null) {
      map['name_ja'] = Variable<String>(nameJa);
    }
    map['species'] = Variable<String>(species);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  VarietiesCompanion toCompanion(bool nullToAbsent) {
    return VarietiesCompanion(
      id: Value(id),
      name: Value(name),
      nameJa: nameJa == null && nullToAbsent
          ? const Value.absent()
          : Value(nameJa),
      species: Value(species),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      sortOrder: Value(sortOrder),
    );
  }

  factory VarietyEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VarietyEntry(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      nameJa: serializer.fromJson<String?>(json['nameJa']),
      species: serializer.fromJson<String>(json['species']),
      description: serializer.fromJson<String?>(json['description']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'nameJa': serializer.toJson<String?>(nameJa),
      'species': serializer.toJson<String>(species),
      'description': serializer.toJson<String?>(description),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  VarietyEntry copyWith({
    String? id,
    String? name,
    Value<String?> nameJa = const Value.absent(),
    String? species,
    Value<String?> description = const Value.absent(),
    int? sortOrder,
  }) => VarietyEntry(
    id: id ?? this.id,
    name: name ?? this.name,
    nameJa: nameJa.present ? nameJa.value : this.nameJa,
    species: species ?? this.species,
    description: description.present ? description.value : this.description,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  VarietyEntry copyWithCompanion(VarietiesCompanion data) {
    return VarietyEntry(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      nameJa: data.nameJa.present ? data.nameJa.value : this.nameJa,
      species: data.species.present ? data.species.value : this.species,
      description: data.description.present
          ? data.description.value
          : this.description,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VarietyEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameJa: $nameJa, ')
          ..write('species: $species, ')
          ..write('description: $description, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, nameJa, species, description, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VarietyEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.nameJa == this.nameJa &&
          other.species == this.species &&
          other.description == this.description &&
          other.sortOrder == this.sortOrder);
}

class VarietiesCompanion extends UpdateCompanion<VarietyEntry> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> nameJa;
  final Value<String> species;
  final Value<String?> description;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const VarietiesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.nameJa = const Value.absent(),
    this.species = const Value.absent(),
    this.description = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  VarietiesCompanion.insert({
    required String id,
    required String name,
    this.nameJa = const Value.absent(),
    this.species = const Value.absent(),
    this.description = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<VarietyEntry> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? nameJa,
    Expression<String>? species,
    Expression<String>? description,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (nameJa != null) 'name_ja': nameJa,
      if (species != null) 'species': species,
      if (description != null) 'description': description,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  VarietiesCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? nameJa,
    Value<String>? species,
    Value<String?>? description,
    Value<int>? sortOrder,
    Value<int>? rowid,
  }) {
    return VarietiesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      nameJa: nameJa ?? this.nameJa,
      species: species ?? this.species,
      description: description ?? this.description,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nameJa.present) {
      map['name_ja'] = Variable<String>(nameJa.value);
    }
    if (species.present) {
      map['species'] = Variable<String>(species.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VarietiesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameJa: $nameJa, ')
          ..write('species: $species, ')
          ..write('description: $description, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProcessingMethodsTable extends ProcessingMethods
    with TableInfo<$ProcessingMethodsTable, ProcessingMethodEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProcessingMethodsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _nameJaMeta = const VerificationMeta('nameJa');
  @override
  late final GeneratedColumn<String> nameJa = GeneratedColumn<String>(
    'name_ja',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _aliasesMeta = const VerificationMeta(
    'aliases',
  );
  @override
  late final GeneratedColumn<String> aliases = GeneratedColumn<String>(
    'aliases',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    nameJa,
    aliases,
    description,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'processing_methods';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProcessingMethodEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('name_ja')) {
      context.handle(
        _nameJaMeta,
        nameJa.isAcceptableOrUnknown(data['name_ja']!, _nameJaMeta),
      );
    }
    if (data.containsKey('aliases')) {
      context.handle(
        _aliasesMeta,
        aliases.isAcceptableOrUnknown(data['aliases']!, _aliasesMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProcessingMethodEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProcessingMethodEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      nameJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_ja'],
      ),
      aliases: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}aliases'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $ProcessingMethodsTable createAlias(String alias) {
    return $ProcessingMethodsTable(attachedDatabase, alias);
  }
}

class ProcessingMethodEntry extends DataClass
    implements Insertable<ProcessingMethodEntry> {
  final String id;
  final String name;
  final String? nameJa;
  final String? aliases;
  final String? description;
  final int sortOrder;
  const ProcessingMethodEntry({
    required this.id,
    required this.name,
    this.nameJa,
    this.aliases,
    this.description,
    required this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nameJa != null) {
      map['name_ja'] = Variable<String>(nameJa);
    }
    if (!nullToAbsent || aliases != null) {
      map['aliases'] = Variable<String>(aliases);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  ProcessingMethodsCompanion toCompanion(bool nullToAbsent) {
    return ProcessingMethodsCompanion(
      id: Value(id),
      name: Value(name),
      nameJa: nameJa == null && nullToAbsent
          ? const Value.absent()
          : Value(nameJa),
      aliases: aliases == null && nullToAbsent
          ? const Value.absent()
          : Value(aliases),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      sortOrder: Value(sortOrder),
    );
  }

  factory ProcessingMethodEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProcessingMethodEntry(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      nameJa: serializer.fromJson<String?>(json['nameJa']),
      aliases: serializer.fromJson<String?>(json['aliases']),
      description: serializer.fromJson<String?>(json['description']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'nameJa': serializer.toJson<String?>(nameJa),
      'aliases': serializer.toJson<String?>(aliases),
      'description': serializer.toJson<String?>(description),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  ProcessingMethodEntry copyWith({
    String? id,
    String? name,
    Value<String?> nameJa = const Value.absent(),
    Value<String?> aliases = const Value.absent(),
    Value<String?> description = const Value.absent(),
    int? sortOrder,
  }) => ProcessingMethodEntry(
    id: id ?? this.id,
    name: name ?? this.name,
    nameJa: nameJa.present ? nameJa.value : this.nameJa,
    aliases: aliases.present ? aliases.value : this.aliases,
    description: description.present ? description.value : this.description,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  ProcessingMethodEntry copyWithCompanion(ProcessingMethodsCompanion data) {
    return ProcessingMethodEntry(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      nameJa: data.nameJa.present ? data.nameJa.value : this.nameJa,
      aliases: data.aliases.present ? data.aliases.value : this.aliases,
      description: data.description.present
          ? data.description.value
          : this.description,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProcessingMethodEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameJa: $nameJa, ')
          ..write('aliases: $aliases, ')
          ..write('description: $description, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, nameJa, aliases, description, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProcessingMethodEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.nameJa == this.nameJa &&
          other.aliases == this.aliases &&
          other.description == this.description &&
          other.sortOrder == this.sortOrder);
}

class ProcessingMethodsCompanion
    extends UpdateCompanion<ProcessingMethodEntry> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> nameJa;
  final Value<String?> aliases;
  final Value<String?> description;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const ProcessingMethodsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.nameJa = const Value.absent(),
    this.aliases = const Value.absent(),
    this.description = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProcessingMethodsCompanion.insert({
    required String id,
    required String name,
    this.nameJa = const Value.absent(),
    this.aliases = const Value.absent(),
    this.description = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<ProcessingMethodEntry> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? nameJa,
    Expression<String>? aliases,
    Expression<String>? description,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (nameJa != null) 'name_ja': nameJa,
      if (aliases != null) 'aliases': aliases,
      if (description != null) 'description': description,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProcessingMethodsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? nameJa,
    Value<String?>? aliases,
    Value<String?>? description,
    Value<int>? sortOrder,
    Value<int>? rowid,
  }) {
    return ProcessingMethodsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      nameJa: nameJa ?? this.nameJa,
      aliases: aliases ?? this.aliases,
      description: description ?? this.description,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nameJa.present) {
      map['name_ja'] = Variable<String>(nameJa.value);
    }
    if (aliases.present) {
      map['aliases'] = Variable<String>(aliases.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProcessingMethodsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameJa: $nameJa, ')
          ..write('aliases: $aliases, ')
          ..write('description: $description, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BeanOriginsTable extends BeanOrigins
    with TableInfo<$BeanOriginsTable, BeanOriginEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BeanOriginsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _beanIdMeta = const VerificationMeta('beanId');
  @override
  late final GeneratedColumn<String> beanId = GeneratedColumn<String>(
    'bean_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES beans (id)',
    ),
  );
  static const VerificationMeta _countryIdMeta = const VerificationMeta(
    'countryId',
  );
  @override
  late final GeneratedColumn<String> countryId = GeneratedColumn<String>(
    'country_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES countries (id)',
    ),
  );
  static const VerificationMeta _regionMeta = const VerificationMeta('region');
  @override
  late final GeneratedColumn<String> region = GeneratedColumn<String>(
    'region',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _farmMeta = const VerificationMeta('farm');
  @override
  late final GeneratedColumn<String> farm = GeneratedColumn<String>(
    'farm',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _farmerMeta = const VerificationMeta('farmer');
  @override
  late final GeneratedColumn<String> farmer = GeneratedColumn<String>(
    'farmer',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _varietyIdMeta = const VerificationMeta(
    'varietyId',
  );
  @override
  late final GeneratedColumn<String> varietyId = GeneratedColumn<String>(
    'variety_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES varieties (id)',
    ),
  );
  static const VerificationMeta _processingMethodIdMeta =
      const VerificationMeta('processingMethodId');
  @override
  late final GeneratedColumn<String> processingMethodId =
      GeneratedColumn<String>(
        'processing_method_id',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES processing_methods (id)',
        ),
      );
  static const VerificationMeta _elevationMeta = const VerificationMeta(
    'elevation',
  );
  @override
  late final GeneratedColumn<String> elevation = GeneratedColumn<String>(
    'elevation',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _harvestTimeMeta = const VerificationMeta(
    'harvestTime',
  );
  @override
  late final GeneratedColumn<String> harvestTime = GeneratedColumn<String>(
    'harvest_time',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _percentageMeta = const VerificationMeta(
    'percentage',
  );
  @override
  late final GeneratedColumn<int> percentage = GeneratedColumn<int>(
    'percentage',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    beanId,
    countryId,
    region,
    farm,
    farmer,
    varietyId,
    processingMethodId,
    elevation,
    harvestTime,
    percentage,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bean_origins';
  @override
  VerificationContext validateIntegrity(
    Insertable<BeanOriginEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('bean_id')) {
      context.handle(
        _beanIdMeta,
        beanId.isAcceptableOrUnknown(data['bean_id']!, _beanIdMeta),
      );
    } else if (isInserting) {
      context.missing(_beanIdMeta);
    }
    if (data.containsKey('country_id')) {
      context.handle(
        _countryIdMeta,
        countryId.isAcceptableOrUnknown(data['country_id']!, _countryIdMeta),
      );
    }
    if (data.containsKey('region')) {
      context.handle(
        _regionMeta,
        region.isAcceptableOrUnknown(data['region']!, _regionMeta),
      );
    }
    if (data.containsKey('farm')) {
      context.handle(
        _farmMeta,
        farm.isAcceptableOrUnknown(data['farm']!, _farmMeta),
      );
    }
    if (data.containsKey('farmer')) {
      context.handle(
        _farmerMeta,
        farmer.isAcceptableOrUnknown(data['farmer']!, _farmerMeta),
      );
    }
    if (data.containsKey('variety_id')) {
      context.handle(
        _varietyIdMeta,
        varietyId.isAcceptableOrUnknown(data['variety_id']!, _varietyIdMeta),
      );
    }
    if (data.containsKey('processing_method_id')) {
      context.handle(
        _processingMethodIdMeta,
        processingMethodId.isAcceptableOrUnknown(
          data['processing_method_id']!,
          _processingMethodIdMeta,
        ),
      );
    }
    if (data.containsKey('elevation')) {
      context.handle(
        _elevationMeta,
        elevation.isAcceptableOrUnknown(data['elevation']!, _elevationMeta),
      );
    }
    if (data.containsKey('harvest_time')) {
      context.handle(
        _harvestTimeMeta,
        harvestTime.isAcceptableOrUnknown(
          data['harvest_time']!,
          _harvestTimeMeta,
        ),
      );
    }
    if (data.containsKey('percentage')) {
      context.handle(
        _percentageMeta,
        percentage.isAcceptableOrUnknown(data['percentage']!, _percentageMeta),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BeanOriginEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BeanOriginEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      beanId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bean_id'],
      )!,
      countryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}country_id'],
      ),
      region: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}region'],
      ),
      farm: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}farm'],
      ),
      farmer: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}farmer'],
      ),
      varietyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}variety_id'],
      ),
      processingMethodId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}processing_method_id'],
      ),
      elevation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}elevation'],
      ),
      harvestTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}harvest_time'],
      ),
      percentage: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}percentage'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $BeanOriginsTable createAlias(String alias) {
    return $BeanOriginsTable(attachedDatabase, alias);
  }
}

class BeanOriginEntry extends DataClass implements Insertable<BeanOriginEntry> {
  final String id;
  final String beanId;
  final String? countryId;
  final String? region;
  final String? farm;
  final String? farmer;
  final String? varietyId;
  final String? processingMethodId;
  final String? elevation;
  final String? harvestTime;
  final int? percentage;
  final int sortOrder;
  const BeanOriginEntry({
    required this.id,
    required this.beanId,
    this.countryId,
    this.region,
    this.farm,
    this.farmer,
    this.varietyId,
    this.processingMethodId,
    this.elevation,
    this.harvestTime,
    this.percentage,
    required this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['bean_id'] = Variable<String>(beanId);
    if (!nullToAbsent || countryId != null) {
      map['country_id'] = Variable<String>(countryId);
    }
    if (!nullToAbsent || region != null) {
      map['region'] = Variable<String>(region);
    }
    if (!nullToAbsent || farm != null) {
      map['farm'] = Variable<String>(farm);
    }
    if (!nullToAbsent || farmer != null) {
      map['farmer'] = Variable<String>(farmer);
    }
    if (!nullToAbsent || varietyId != null) {
      map['variety_id'] = Variable<String>(varietyId);
    }
    if (!nullToAbsent || processingMethodId != null) {
      map['processing_method_id'] = Variable<String>(processingMethodId);
    }
    if (!nullToAbsent || elevation != null) {
      map['elevation'] = Variable<String>(elevation);
    }
    if (!nullToAbsent || harvestTime != null) {
      map['harvest_time'] = Variable<String>(harvestTime);
    }
    if (!nullToAbsent || percentage != null) {
      map['percentage'] = Variable<int>(percentage);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  BeanOriginsCompanion toCompanion(bool nullToAbsent) {
    return BeanOriginsCompanion(
      id: Value(id),
      beanId: Value(beanId),
      countryId: countryId == null && nullToAbsent
          ? const Value.absent()
          : Value(countryId),
      region: region == null && nullToAbsent
          ? const Value.absent()
          : Value(region),
      farm: farm == null && nullToAbsent ? const Value.absent() : Value(farm),
      farmer: farmer == null && nullToAbsent
          ? const Value.absent()
          : Value(farmer),
      varietyId: varietyId == null && nullToAbsent
          ? const Value.absent()
          : Value(varietyId),
      processingMethodId: processingMethodId == null && nullToAbsent
          ? const Value.absent()
          : Value(processingMethodId),
      elevation: elevation == null && nullToAbsent
          ? const Value.absent()
          : Value(elevation),
      harvestTime: harvestTime == null && nullToAbsent
          ? const Value.absent()
          : Value(harvestTime),
      percentage: percentage == null && nullToAbsent
          ? const Value.absent()
          : Value(percentage),
      sortOrder: Value(sortOrder),
    );
  }

  factory BeanOriginEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BeanOriginEntry(
      id: serializer.fromJson<String>(json['id']),
      beanId: serializer.fromJson<String>(json['beanId']),
      countryId: serializer.fromJson<String?>(json['countryId']),
      region: serializer.fromJson<String?>(json['region']),
      farm: serializer.fromJson<String?>(json['farm']),
      farmer: serializer.fromJson<String?>(json['farmer']),
      varietyId: serializer.fromJson<String?>(json['varietyId']),
      processingMethodId: serializer.fromJson<String?>(
        json['processingMethodId'],
      ),
      elevation: serializer.fromJson<String?>(json['elevation']),
      harvestTime: serializer.fromJson<String?>(json['harvestTime']),
      percentage: serializer.fromJson<int?>(json['percentage']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'beanId': serializer.toJson<String>(beanId),
      'countryId': serializer.toJson<String?>(countryId),
      'region': serializer.toJson<String?>(region),
      'farm': serializer.toJson<String?>(farm),
      'farmer': serializer.toJson<String?>(farmer),
      'varietyId': serializer.toJson<String?>(varietyId),
      'processingMethodId': serializer.toJson<String?>(processingMethodId),
      'elevation': serializer.toJson<String?>(elevation),
      'harvestTime': serializer.toJson<String?>(harvestTime),
      'percentage': serializer.toJson<int?>(percentage),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  BeanOriginEntry copyWith({
    String? id,
    String? beanId,
    Value<String?> countryId = const Value.absent(),
    Value<String?> region = const Value.absent(),
    Value<String?> farm = const Value.absent(),
    Value<String?> farmer = const Value.absent(),
    Value<String?> varietyId = const Value.absent(),
    Value<String?> processingMethodId = const Value.absent(),
    Value<String?> elevation = const Value.absent(),
    Value<String?> harvestTime = const Value.absent(),
    Value<int?> percentage = const Value.absent(),
    int? sortOrder,
  }) => BeanOriginEntry(
    id: id ?? this.id,
    beanId: beanId ?? this.beanId,
    countryId: countryId.present ? countryId.value : this.countryId,
    region: region.present ? region.value : this.region,
    farm: farm.present ? farm.value : this.farm,
    farmer: farmer.present ? farmer.value : this.farmer,
    varietyId: varietyId.present ? varietyId.value : this.varietyId,
    processingMethodId: processingMethodId.present
        ? processingMethodId.value
        : this.processingMethodId,
    elevation: elevation.present ? elevation.value : this.elevation,
    harvestTime: harvestTime.present ? harvestTime.value : this.harvestTime,
    percentage: percentage.present ? percentage.value : this.percentage,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  BeanOriginEntry copyWithCompanion(BeanOriginsCompanion data) {
    return BeanOriginEntry(
      id: data.id.present ? data.id.value : this.id,
      beanId: data.beanId.present ? data.beanId.value : this.beanId,
      countryId: data.countryId.present ? data.countryId.value : this.countryId,
      region: data.region.present ? data.region.value : this.region,
      farm: data.farm.present ? data.farm.value : this.farm,
      farmer: data.farmer.present ? data.farmer.value : this.farmer,
      varietyId: data.varietyId.present ? data.varietyId.value : this.varietyId,
      processingMethodId: data.processingMethodId.present
          ? data.processingMethodId.value
          : this.processingMethodId,
      elevation: data.elevation.present ? data.elevation.value : this.elevation,
      harvestTime: data.harvestTime.present
          ? data.harvestTime.value
          : this.harvestTime,
      percentage: data.percentage.present
          ? data.percentage.value
          : this.percentage,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BeanOriginEntry(')
          ..write('id: $id, ')
          ..write('beanId: $beanId, ')
          ..write('countryId: $countryId, ')
          ..write('region: $region, ')
          ..write('farm: $farm, ')
          ..write('farmer: $farmer, ')
          ..write('varietyId: $varietyId, ')
          ..write('processingMethodId: $processingMethodId, ')
          ..write('elevation: $elevation, ')
          ..write('harvestTime: $harvestTime, ')
          ..write('percentage: $percentage, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    beanId,
    countryId,
    region,
    farm,
    farmer,
    varietyId,
    processingMethodId,
    elevation,
    harvestTime,
    percentage,
    sortOrder,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BeanOriginEntry &&
          other.id == this.id &&
          other.beanId == this.beanId &&
          other.countryId == this.countryId &&
          other.region == this.region &&
          other.farm == this.farm &&
          other.farmer == this.farmer &&
          other.varietyId == this.varietyId &&
          other.processingMethodId == this.processingMethodId &&
          other.elevation == this.elevation &&
          other.harvestTime == this.harvestTime &&
          other.percentage == this.percentage &&
          other.sortOrder == this.sortOrder);
}

class BeanOriginsCompanion extends UpdateCompanion<BeanOriginEntry> {
  final Value<String> id;
  final Value<String> beanId;
  final Value<String?> countryId;
  final Value<String?> region;
  final Value<String?> farm;
  final Value<String?> farmer;
  final Value<String?> varietyId;
  final Value<String?> processingMethodId;
  final Value<String?> elevation;
  final Value<String?> harvestTime;
  final Value<int?> percentage;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const BeanOriginsCompanion({
    this.id = const Value.absent(),
    this.beanId = const Value.absent(),
    this.countryId = const Value.absent(),
    this.region = const Value.absent(),
    this.farm = const Value.absent(),
    this.farmer = const Value.absent(),
    this.varietyId = const Value.absent(),
    this.processingMethodId = const Value.absent(),
    this.elevation = const Value.absent(),
    this.harvestTime = const Value.absent(),
    this.percentage = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BeanOriginsCompanion.insert({
    required String id,
    required String beanId,
    this.countryId = const Value.absent(),
    this.region = const Value.absent(),
    this.farm = const Value.absent(),
    this.farmer = const Value.absent(),
    this.varietyId = const Value.absent(),
    this.processingMethodId = const Value.absent(),
    this.elevation = const Value.absent(),
    this.harvestTime = const Value.absent(),
    this.percentage = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       beanId = Value(beanId);
  static Insertable<BeanOriginEntry> custom({
    Expression<String>? id,
    Expression<String>? beanId,
    Expression<String>? countryId,
    Expression<String>? region,
    Expression<String>? farm,
    Expression<String>? farmer,
    Expression<String>? varietyId,
    Expression<String>? processingMethodId,
    Expression<String>? elevation,
    Expression<String>? harvestTime,
    Expression<int>? percentage,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (beanId != null) 'bean_id': beanId,
      if (countryId != null) 'country_id': countryId,
      if (region != null) 'region': region,
      if (farm != null) 'farm': farm,
      if (farmer != null) 'farmer': farmer,
      if (varietyId != null) 'variety_id': varietyId,
      if (processingMethodId != null)
        'processing_method_id': processingMethodId,
      if (elevation != null) 'elevation': elevation,
      if (harvestTime != null) 'harvest_time': harvestTime,
      if (percentage != null) 'percentage': percentage,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BeanOriginsCompanion copyWith({
    Value<String>? id,
    Value<String>? beanId,
    Value<String?>? countryId,
    Value<String?>? region,
    Value<String?>? farm,
    Value<String?>? farmer,
    Value<String?>? varietyId,
    Value<String?>? processingMethodId,
    Value<String?>? elevation,
    Value<String?>? harvestTime,
    Value<int?>? percentage,
    Value<int>? sortOrder,
    Value<int>? rowid,
  }) {
    return BeanOriginsCompanion(
      id: id ?? this.id,
      beanId: beanId ?? this.beanId,
      countryId: countryId ?? this.countryId,
      region: region ?? this.region,
      farm: farm ?? this.farm,
      farmer: farmer ?? this.farmer,
      varietyId: varietyId ?? this.varietyId,
      processingMethodId: processingMethodId ?? this.processingMethodId,
      elevation: elevation ?? this.elevation,
      harvestTime: harvestTime ?? this.harvestTime,
      percentage: percentage ?? this.percentage,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (beanId.present) {
      map['bean_id'] = Variable<String>(beanId.value);
    }
    if (countryId.present) {
      map['country_id'] = Variable<String>(countryId.value);
    }
    if (region.present) {
      map['region'] = Variable<String>(region.value);
    }
    if (farm.present) {
      map['farm'] = Variable<String>(farm.value);
    }
    if (farmer.present) {
      map['farmer'] = Variable<String>(farmer.value);
    }
    if (varietyId.present) {
      map['variety_id'] = Variable<String>(varietyId.value);
    }
    if (processingMethodId.present) {
      map['processing_method_id'] = Variable<String>(processingMethodId.value);
    }
    if (elevation.present) {
      map['elevation'] = Variable<String>(elevation.value);
    }
    if (harvestTime.present) {
      map['harvest_time'] = Variable<String>(harvestTime.value);
    }
    if (percentage.present) {
      map['percentage'] = Variable<int>(percentage.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BeanOriginsCompanion(')
          ..write('id: $id, ')
          ..write('beanId: $beanId, ')
          ..write('countryId: $countryId, ')
          ..write('region: $region, ')
          ..write('farm: $farm, ')
          ..write('farmer: $farmer, ')
          ..write('varietyId: $varietyId, ')
          ..write('processingMethodId: $processingMethodId, ')
          ..write('elevation: $elevation, ')
          ..write('harvestTime: $harvestTime, ')
          ..write('percentage: $percentage, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FlavorDescriptorsTable extends FlavorDescriptors
    with TableInfo<$FlavorDescriptorsTable, FlavorDescriptorEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FlavorDescriptorsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameJaMeta = const VerificationMeta('nameJa');
  @override
  late final GeneratedColumn<String> nameJa = GeneratedColumn<String>(
    'name_ja',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _parentIdMeta = const VerificationMeta(
    'parentId',
  );
  @override
  late final GeneratedColumn<String> parentId = GeneratedColumn<String>(
    'parent_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES flavor_descriptors (id)',
    ),
  );
  static const VerificationMeta _tierMeta = const VerificationMeta('tier');
  @override
  late final GeneratedColumn<int> tier = GeneratedColumn<int>(
    'tier',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scaReferenceMeta = const VerificationMeta(
    'scaReference',
  );
  @override
  late final GeneratedColumn<String> scaReference = GeneratedColumn<String>(
    'sca_reference',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    nameJa,
    parentId,
    tier,
    scaReference,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'flavor_descriptors';
  @override
  VerificationContext validateIntegrity(
    Insertable<FlavorDescriptorEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('name_ja')) {
      context.handle(
        _nameJaMeta,
        nameJa.isAcceptableOrUnknown(data['name_ja']!, _nameJaMeta),
      );
    }
    if (data.containsKey('parent_id')) {
      context.handle(
        _parentIdMeta,
        parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta),
      );
    }
    if (data.containsKey('tier')) {
      context.handle(
        _tierMeta,
        tier.isAcceptableOrUnknown(data['tier']!, _tierMeta),
      );
    } else if (isInserting) {
      context.missing(_tierMeta);
    }
    if (data.containsKey('sca_reference')) {
      context.handle(
        _scaReferenceMeta,
        scaReference.isAcceptableOrUnknown(
          data['sca_reference']!,
          _scaReferenceMeta,
        ),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FlavorDescriptorEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FlavorDescriptorEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      nameJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_ja'],
      ),
      parentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parent_id'],
      ),
      tier: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tier'],
      )!,
      scaReference: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sca_reference'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $FlavorDescriptorsTable createAlias(String alias) {
    return $FlavorDescriptorsTable(attachedDatabase, alias);
  }
}

class FlavorDescriptorEntry extends DataClass
    implements Insertable<FlavorDescriptorEntry> {
  final String id;
  final String name;
  final String? nameJa;
  final String? parentId;
  final int tier;
  final String? scaReference;
  final int sortOrder;
  const FlavorDescriptorEntry({
    required this.id,
    required this.name,
    this.nameJa,
    this.parentId,
    required this.tier,
    this.scaReference,
    required this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nameJa != null) {
      map['name_ja'] = Variable<String>(nameJa);
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<String>(parentId);
    }
    map['tier'] = Variable<int>(tier);
    if (!nullToAbsent || scaReference != null) {
      map['sca_reference'] = Variable<String>(scaReference);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  FlavorDescriptorsCompanion toCompanion(bool nullToAbsent) {
    return FlavorDescriptorsCompanion(
      id: Value(id),
      name: Value(name),
      nameJa: nameJa == null && nullToAbsent
          ? const Value.absent()
          : Value(nameJa),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
      tier: Value(tier),
      scaReference: scaReference == null && nullToAbsent
          ? const Value.absent()
          : Value(scaReference),
      sortOrder: Value(sortOrder),
    );
  }

  factory FlavorDescriptorEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FlavorDescriptorEntry(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      nameJa: serializer.fromJson<String?>(json['nameJa']),
      parentId: serializer.fromJson<String?>(json['parentId']),
      tier: serializer.fromJson<int>(json['tier']),
      scaReference: serializer.fromJson<String?>(json['scaReference']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'nameJa': serializer.toJson<String?>(nameJa),
      'parentId': serializer.toJson<String?>(parentId),
      'tier': serializer.toJson<int>(tier),
      'scaReference': serializer.toJson<String?>(scaReference),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  FlavorDescriptorEntry copyWith({
    String? id,
    String? name,
    Value<String?> nameJa = const Value.absent(),
    Value<String?> parentId = const Value.absent(),
    int? tier,
    Value<String?> scaReference = const Value.absent(),
    int? sortOrder,
  }) => FlavorDescriptorEntry(
    id: id ?? this.id,
    name: name ?? this.name,
    nameJa: nameJa.present ? nameJa.value : this.nameJa,
    parentId: parentId.present ? parentId.value : this.parentId,
    tier: tier ?? this.tier,
    scaReference: scaReference.present ? scaReference.value : this.scaReference,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  FlavorDescriptorEntry copyWithCompanion(FlavorDescriptorsCompanion data) {
    return FlavorDescriptorEntry(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      nameJa: data.nameJa.present ? data.nameJa.value : this.nameJa,
      parentId: data.parentId.present ? data.parentId.value : this.parentId,
      tier: data.tier.present ? data.tier.value : this.tier,
      scaReference: data.scaReference.present
          ? data.scaReference.value
          : this.scaReference,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FlavorDescriptorEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameJa: $nameJa, ')
          ..write('parentId: $parentId, ')
          ..write('tier: $tier, ')
          ..write('scaReference: $scaReference, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, nameJa, parentId, tier, scaReference, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FlavorDescriptorEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.nameJa == this.nameJa &&
          other.parentId == this.parentId &&
          other.tier == this.tier &&
          other.scaReference == this.scaReference &&
          other.sortOrder == this.sortOrder);
}

class FlavorDescriptorsCompanion
    extends UpdateCompanion<FlavorDescriptorEntry> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> nameJa;
  final Value<String?> parentId;
  final Value<int> tier;
  final Value<String?> scaReference;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const FlavorDescriptorsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.nameJa = const Value.absent(),
    this.parentId = const Value.absent(),
    this.tier = const Value.absent(),
    this.scaReference = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FlavorDescriptorsCompanion.insert({
    required String id,
    required String name,
    this.nameJa = const Value.absent(),
    this.parentId = const Value.absent(),
    required int tier,
    this.scaReference = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       tier = Value(tier);
  static Insertable<FlavorDescriptorEntry> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? nameJa,
    Expression<String>? parentId,
    Expression<int>? tier,
    Expression<String>? scaReference,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (nameJa != null) 'name_ja': nameJa,
      if (parentId != null) 'parent_id': parentId,
      if (tier != null) 'tier': tier,
      if (scaReference != null) 'sca_reference': scaReference,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FlavorDescriptorsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? nameJa,
    Value<String?>? parentId,
    Value<int>? tier,
    Value<String?>? scaReference,
    Value<int>? sortOrder,
    Value<int>? rowid,
  }) {
    return FlavorDescriptorsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      nameJa: nameJa ?? this.nameJa,
      parentId: parentId ?? this.parentId,
      tier: tier ?? this.tier,
      scaReference: scaReference ?? this.scaReference,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nameJa.present) {
      map['name_ja'] = Variable<String>(nameJa.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (tier.present) {
      map['tier'] = Variable<int>(tier.value);
    }
    if (scaReference.present) {
      map['sca_reference'] = Variable<String>(scaReference.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FlavorDescriptorsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameJa: $nameJa, ')
          ..write('parentId: $parentId, ')
          ..write('tier: $tier, ')
          ..write('scaReference: $scaReference, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BeanFlavorNotesTable extends BeanFlavorNotes
    with TableInfo<$BeanFlavorNotesTable, BeanFlavorNoteEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BeanFlavorNotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _beanIdMeta = const VerificationMeta('beanId');
  @override
  late final GeneratedColumn<String> beanId = GeneratedColumn<String>(
    'bean_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES beans (id)',
    ),
  );
  static const VerificationMeta _flavorDescriptorIdMeta =
      const VerificationMeta('flavorDescriptorId');
  @override
  late final GeneratedColumn<String> flavorDescriptorId =
      GeneratedColumn<String>(
        'flavor_descriptor_id',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES flavor_descriptors (id)',
        ),
      );
  @override
  List<GeneratedColumn> get $columns => [beanId, flavorDescriptorId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bean_flavor_notes';
  @override
  VerificationContext validateIntegrity(
    Insertable<BeanFlavorNoteEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('bean_id')) {
      context.handle(
        _beanIdMeta,
        beanId.isAcceptableOrUnknown(data['bean_id']!, _beanIdMeta),
      );
    } else if (isInserting) {
      context.missing(_beanIdMeta);
    }
    if (data.containsKey('flavor_descriptor_id')) {
      context.handle(
        _flavorDescriptorIdMeta,
        flavorDescriptorId.isAcceptableOrUnknown(
          data['flavor_descriptor_id']!,
          _flavorDescriptorIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_flavorDescriptorIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {beanId, flavorDescriptorId};
  @override
  BeanFlavorNoteEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BeanFlavorNoteEntry(
      beanId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bean_id'],
      )!,
      flavorDescriptorId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}flavor_descriptor_id'],
      )!,
    );
  }

  @override
  $BeanFlavorNotesTable createAlias(String alias) {
    return $BeanFlavorNotesTable(attachedDatabase, alias);
  }
}

class BeanFlavorNoteEntry extends DataClass
    implements Insertable<BeanFlavorNoteEntry> {
  final String beanId;
  final String flavorDescriptorId;
  const BeanFlavorNoteEntry({
    required this.beanId,
    required this.flavorDescriptorId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['bean_id'] = Variable<String>(beanId);
    map['flavor_descriptor_id'] = Variable<String>(flavorDescriptorId);
    return map;
  }

  BeanFlavorNotesCompanion toCompanion(bool nullToAbsent) {
    return BeanFlavorNotesCompanion(
      beanId: Value(beanId),
      flavorDescriptorId: Value(flavorDescriptorId),
    );
  }

  factory BeanFlavorNoteEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BeanFlavorNoteEntry(
      beanId: serializer.fromJson<String>(json['beanId']),
      flavorDescriptorId: serializer.fromJson<String>(
        json['flavorDescriptorId'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'beanId': serializer.toJson<String>(beanId),
      'flavorDescriptorId': serializer.toJson<String>(flavorDescriptorId),
    };
  }

  BeanFlavorNoteEntry copyWith({String? beanId, String? flavorDescriptorId}) =>
      BeanFlavorNoteEntry(
        beanId: beanId ?? this.beanId,
        flavorDescriptorId: flavorDescriptorId ?? this.flavorDescriptorId,
      );
  BeanFlavorNoteEntry copyWithCompanion(BeanFlavorNotesCompanion data) {
    return BeanFlavorNoteEntry(
      beanId: data.beanId.present ? data.beanId.value : this.beanId,
      flavorDescriptorId: data.flavorDescriptorId.present
          ? data.flavorDescriptorId.value
          : this.flavorDescriptorId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BeanFlavorNoteEntry(')
          ..write('beanId: $beanId, ')
          ..write('flavorDescriptorId: $flavorDescriptorId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(beanId, flavorDescriptorId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BeanFlavorNoteEntry &&
          other.beanId == this.beanId &&
          other.flavorDescriptorId == this.flavorDescriptorId);
}

class BeanFlavorNotesCompanion extends UpdateCompanion<BeanFlavorNoteEntry> {
  final Value<String> beanId;
  final Value<String> flavorDescriptorId;
  final Value<int> rowid;
  const BeanFlavorNotesCompanion({
    this.beanId = const Value.absent(),
    this.flavorDescriptorId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BeanFlavorNotesCompanion.insert({
    required String beanId,
    required String flavorDescriptorId,
    this.rowid = const Value.absent(),
  }) : beanId = Value(beanId),
       flavorDescriptorId = Value(flavorDescriptorId);
  static Insertable<BeanFlavorNoteEntry> custom({
    Expression<String>? beanId,
    Expression<String>? flavorDescriptorId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (beanId != null) 'bean_id': beanId,
      if (flavorDescriptorId != null)
        'flavor_descriptor_id': flavorDescriptorId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BeanFlavorNotesCompanion copyWith({
    Value<String>? beanId,
    Value<String>? flavorDescriptorId,
    Value<int>? rowid,
  }) {
    return BeanFlavorNotesCompanion(
      beanId: beanId ?? this.beanId,
      flavorDescriptorId: flavorDescriptorId ?? this.flavorDescriptorId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (beanId.present) {
      map['bean_id'] = Variable<String>(beanId.value);
    }
    if (flavorDescriptorId.present) {
      map['flavor_descriptor_id'] = Variable<String>(flavorDescriptorId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BeanFlavorNotesCompanion(')
          ..write('beanId: $beanId, ')
          ..write('flavorDescriptorId: $flavorDescriptorId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DrinkLogsTable extends DrinkLogs
    with TableInfo<$DrinkLogsTable, DrinkLogEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DrinkLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (id)',
    ),
  );
  static const VerificationMeta _beanIdMeta = const VerificationMeta('beanId');
  @override
  late final GeneratedColumn<String> beanId = GeneratedColumn<String>(
    'bean_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES beans (id)',
    ),
  );
  static const VerificationMeta _drunkAtMeta = const VerificationMeta(
    'drunkAt',
  );
  @override
  late final GeneratedColumn<DateTime> drunkAt = GeneratedColumn<DateTime>(
    'drunk_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
    'rating',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _memoMeta = const VerificationMeta('memo');
  @override
  late final GeneratedColumn<String> memo = GeneratedColumn<String>(
    'memo',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _acidityMeta = const VerificationMeta(
    'acidity',
  );
  @override
  late final GeneratedColumn<int> acidity = GeneratedColumn<int>(
    'acidity',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _aromaMeta = const VerificationMeta('aroma');
  @override
  late final GeneratedColumn<int> aroma = GeneratedColumn<int>(
    'aroma',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sweetnessMeta = const VerificationMeta(
    'sweetness',
  );
  @override
  late final GeneratedColumn<int> sweetness = GeneratedColumn<int>(
    'sweetness',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bitternessMeta = const VerificationMeta(
    'bitterness',
  );
  @override
  late final GeneratedColumn<int> bitterness = GeneratedColumn<int>(
    'bitterness',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<int> body = GeneratedColumn<int>(
    'body',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    beanId,
    drunkAt,
    rating,
    memo,
    acidity,
    aroma,
    sweetness,
    bitterness,
    body,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drink_logs';
  @override
  VerificationContext validateIntegrity(
    Insertable<DrinkLogEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('bean_id')) {
      context.handle(
        _beanIdMeta,
        beanId.isAcceptableOrUnknown(data['bean_id']!, _beanIdMeta),
      );
    } else if (isInserting) {
      context.missing(_beanIdMeta);
    }
    if (data.containsKey('drunk_at')) {
      context.handle(
        _drunkAtMeta,
        drunkAt.isAcceptableOrUnknown(data['drunk_at']!, _drunkAtMeta),
      );
    } else if (isInserting) {
      context.missing(_drunkAtMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(
        _ratingMeta,
        rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta),
      );
    }
    if (data.containsKey('memo')) {
      context.handle(
        _memoMeta,
        memo.isAcceptableOrUnknown(data['memo']!, _memoMeta),
      );
    }
    if (data.containsKey('acidity')) {
      context.handle(
        _acidityMeta,
        acidity.isAcceptableOrUnknown(data['acidity']!, _acidityMeta),
      );
    }
    if (data.containsKey('aroma')) {
      context.handle(
        _aromaMeta,
        aroma.isAcceptableOrUnknown(data['aroma']!, _aromaMeta),
      );
    }
    if (data.containsKey('sweetness')) {
      context.handle(
        _sweetnessMeta,
        sweetness.isAcceptableOrUnknown(data['sweetness']!, _sweetnessMeta),
      );
    }
    if (data.containsKey('bitterness')) {
      context.handle(
        _bitternessMeta,
        bitterness.isAcceptableOrUnknown(data['bitterness']!, _bitternessMeta),
      );
    }
    if (data.containsKey('body')) {
      context.handle(
        _bodyMeta,
        body.isAcceptableOrUnknown(data['body']!, _bodyMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DrinkLogEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DrinkLogEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      beanId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bean_id'],
      )!,
      drunkAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}drunk_at'],
      )!,
      rating: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rating'],
      ),
      memo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}memo'],
      ),
      acidity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}acidity'],
      ),
      aroma: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}aroma'],
      ),
      sweetness: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sweetness'],
      ),
      bitterness: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bitterness'],
      ),
      body: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}body'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $DrinkLogsTable createAlias(String alias) {
    return $DrinkLogsTable(attachedDatabase, alias);
  }
}

class DrinkLogEntry extends DataClass implements Insertable<DrinkLogEntry> {
  final String id;
  final String userId;
  final String beanId;
  final DateTime drunkAt;
  final int? rating;
  final String? memo;
  final int? acidity;
  final int? aroma;
  final int? sweetness;
  final int? bitterness;
  final int? body;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  const DrinkLogEntry({
    required this.id,
    required this.userId,
    required this.beanId,
    required this.drunkAt,
    this.rating,
    this.memo,
    this.acidity,
    this.aroma,
    this.sweetness,
    this.bitterness,
    this.body,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['bean_id'] = Variable<String>(beanId);
    map['drunk_at'] = Variable<DateTime>(drunkAt);
    if (!nullToAbsent || rating != null) {
      map['rating'] = Variable<int>(rating);
    }
    if (!nullToAbsent || memo != null) {
      map['memo'] = Variable<String>(memo);
    }
    if (!nullToAbsent || acidity != null) {
      map['acidity'] = Variable<int>(acidity);
    }
    if (!nullToAbsent || aroma != null) {
      map['aroma'] = Variable<int>(aroma);
    }
    if (!nullToAbsent || sweetness != null) {
      map['sweetness'] = Variable<int>(sweetness);
    }
    if (!nullToAbsent || bitterness != null) {
      map['bitterness'] = Variable<int>(bitterness);
    }
    if (!nullToAbsent || body != null) {
      map['body'] = Variable<int>(body);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  DrinkLogsCompanion toCompanion(bool nullToAbsent) {
    return DrinkLogsCompanion(
      id: Value(id),
      userId: Value(userId),
      beanId: Value(beanId),
      drunkAt: Value(drunkAt),
      rating: rating == null && nullToAbsent
          ? const Value.absent()
          : Value(rating),
      memo: memo == null && nullToAbsent ? const Value.absent() : Value(memo),
      acidity: acidity == null && nullToAbsent
          ? const Value.absent()
          : Value(acidity),
      aroma: aroma == null && nullToAbsent
          ? const Value.absent()
          : Value(aroma),
      sweetness: sweetness == null && nullToAbsent
          ? const Value.absent()
          : Value(sweetness),
      bitterness: bitterness == null && nullToAbsent
          ? const Value.absent()
          : Value(bitterness),
      body: body == null && nullToAbsent ? const Value.absent() : Value(body),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory DrinkLogEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DrinkLogEntry(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      beanId: serializer.fromJson<String>(json['beanId']),
      drunkAt: serializer.fromJson<DateTime>(json['drunkAt']),
      rating: serializer.fromJson<int?>(json['rating']),
      memo: serializer.fromJson<String?>(json['memo']),
      acidity: serializer.fromJson<int?>(json['acidity']),
      aroma: serializer.fromJson<int?>(json['aroma']),
      sweetness: serializer.fromJson<int?>(json['sweetness']),
      bitterness: serializer.fromJson<int?>(json['bitterness']),
      body: serializer.fromJson<int?>(json['body']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'beanId': serializer.toJson<String>(beanId),
      'drunkAt': serializer.toJson<DateTime>(drunkAt),
      'rating': serializer.toJson<int?>(rating),
      'memo': serializer.toJson<String?>(memo),
      'acidity': serializer.toJson<int?>(acidity),
      'aroma': serializer.toJson<int?>(aroma),
      'sweetness': serializer.toJson<int?>(sweetness),
      'bitterness': serializer.toJson<int?>(bitterness),
      'body': serializer.toJson<int?>(body),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  DrinkLogEntry copyWith({
    String? id,
    String? userId,
    String? beanId,
    DateTime? drunkAt,
    Value<int?> rating = const Value.absent(),
    Value<String?> memo = const Value.absent(),
    Value<int?> acidity = const Value.absent(),
    Value<int?> aroma = const Value.absent(),
    Value<int?> sweetness = const Value.absent(),
    Value<int?> bitterness = const Value.absent(),
    Value<int?> body = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => DrinkLogEntry(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    beanId: beanId ?? this.beanId,
    drunkAt: drunkAt ?? this.drunkAt,
    rating: rating.present ? rating.value : this.rating,
    memo: memo.present ? memo.value : this.memo,
    acidity: acidity.present ? acidity.value : this.acidity,
    aroma: aroma.present ? aroma.value : this.aroma,
    sweetness: sweetness.present ? sweetness.value : this.sweetness,
    bitterness: bitterness.present ? bitterness.value : this.bitterness,
    body: body.present ? body.value : this.body,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  DrinkLogEntry copyWithCompanion(DrinkLogsCompanion data) {
    return DrinkLogEntry(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      beanId: data.beanId.present ? data.beanId.value : this.beanId,
      drunkAt: data.drunkAt.present ? data.drunkAt.value : this.drunkAt,
      rating: data.rating.present ? data.rating.value : this.rating,
      memo: data.memo.present ? data.memo.value : this.memo,
      acidity: data.acidity.present ? data.acidity.value : this.acidity,
      aroma: data.aroma.present ? data.aroma.value : this.aroma,
      sweetness: data.sweetness.present ? data.sweetness.value : this.sweetness,
      bitterness: data.bitterness.present
          ? data.bitterness.value
          : this.bitterness,
      body: data.body.present ? data.body.value : this.body,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DrinkLogEntry(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('beanId: $beanId, ')
          ..write('drunkAt: $drunkAt, ')
          ..write('rating: $rating, ')
          ..write('memo: $memo, ')
          ..write('acidity: $acidity, ')
          ..write('aroma: $aroma, ')
          ..write('sweetness: $sweetness, ')
          ..write('bitterness: $bitterness, ')
          ..write('body: $body, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    beanId,
    drunkAt,
    rating,
    memo,
    acidity,
    aroma,
    sweetness,
    bitterness,
    body,
    createdAt,
    updatedAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DrinkLogEntry &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.beanId == this.beanId &&
          other.drunkAt == this.drunkAt &&
          other.rating == this.rating &&
          other.memo == this.memo &&
          other.acidity == this.acidity &&
          other.aroma == this.aroma &&
          other.sweetness == this.sweetness &&
          other.bitterness == this.bitterness &&
          other.body == this.body &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class DrinkLogsCompanion extends UpdateCompanion<DrinkLogEntry> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> beanId;
  final Value<DateTime> drunkAt;
  final Value<int?> rating;
  final Value<String?> memo;
  final Value<int?> acidity;
  final Value<int?> aroma;
  final Value<int?> sweetness;
  final Value<int?> bitterness;
  final Value<int?> body;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const DrinkLogsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.beanId = const Value.absent(),
    this.drunkAt = const Value.absent(),
    this.rating = const Value.absent(),
    this.memo = const Value.absent(),
    this.acidity = const Value.absent(),
    this.aroma = const Value.absent(),
    this.sweetness = const Value.absent(),
    this.bitterness = const Value.absent(),
    this.body = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DrinkLogsCompanion.insert({
    required String id,
    required String userId,
    required String beanId,
    required DateTime drunkAt,
    this.rating = const Value.absent(),
    this.memo = const Value.absent(),
    this.acidity = const Value.absent(),
    this.aroma = const Value.absent(),
    this.sweetness = const Value.absent(),
    this.bitterness = const Value.absent(),
    this.body = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       beanId = Value(beanId),
       drunkAt = Value(drunkAt),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<DrinkLogEntry> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? beanId,
    Expression<DateTime>? drunkAt,
    Expression<int>? rating,
    Expression<String>? memo,
    Expression<int>? acidity,
    Expression<int>? aroma,
    Expression<int>? sweetness,
    Expression<int>? bitterness,
    Expression<int>? body,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (beanId != null) 'bean_id': beanId,
      if (drunkAt != null) 'drunk_at': drunkAt,
      if (rating != null) 'rating': rating,
      if (memo != null) 'memo': memo,
      if (acidity != null) 'acidity': acidity,
      if (aroma != null) 'aroma': aroma,
      if (sweetness != null) 'sweetness': sweetness,
      if (bitterness != null) 'bitterness': bitterness,
      if (body != null) 'body': body,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DrinkLogsCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? beanId,
    Value<DateTime>? drunkAt,
    Value<int?>? rating,
    Value<String?>? memo,
    Value<int?>? acidity,
    Value<int?>? aroma,
    Value<int?>? sweetness,
    Value<int?>? bitterness,
    Value<int?>? body,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return DrinkLogsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      beanId: beanId ?? this.beanId,
      drunkAt: drunkAt ?? this.drunkAt,
      rating: rating ?? this.rating,
      memo: memo ?? this.memo,
      acidity: acidity ?? this.acidity,
      aroma: aroma ?? this.aroma,
      sweetness: sweetness ?? this.sweetness,
      bitterness: bitterness ?? this.bitterness,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (beanId.present) {
      map['bean_id'] = Variable<String>(beanId.value);
    }
    if (drunkAt.present) {
      map['drunk_at'] = Variable<DateTime>(drunkAt.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    if (memo.present) {
      map['memo'] = Variable<String>(memo.value);
    }
    if (acidity.present) {
      map['acidity'] = Variable<int>(acidity.value);
    }
    if (aroma.present) {
      map['aroma'] = Variable<int>(aroma.value);
    }
    if (sweetness.present) {
      map['sweetness'] = Variable<int>(sweetness.value);
    }
    if (bitterness.present) {
      map['bitterness'] = Variable<int>(bitterness.value);
    }
    if (body.present) {
      map['body'] = Variable<int>(body.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DrinkLogsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('beanId: $beanId, ')
          ..write('drunkAt: $drunkAt, ')
          ..write('rating: $rating, ')
          ..write('memo: $memo, ')
          ..write('acidity: $acidity, ')
          ..write('aroma: $aroma, ')
          ..write('sweetness: $sweetness, ')
          ..write('bitterness: $bitterness, ')
          ..write('body: $body, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TastingNotesTable extends TastingNotes
    with TableInfo<$TastingNotesTable, TastingNoteEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TastingNotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (id)',
    ),
  );
  static const VerificationMeta _beanIdMeta = const VerificationMeta('beanId');
  @override
  late final GeneratedColumn<String> beanId = GeneratedColumn<String>(
    'bean_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES beans (id)',
    ),
  );
  static const VerificationMeta _drinkLogIdMeta = const VerificationMeta(
    'drinkLogId',
  );
  @override
  late final GeneratedColumn<String> drinkLogId = GeneratedColumn<String>(
    'drink_log_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES drink_logs (id)',
    ),
  );
  static const VerificationMeta _protocolVersionMeta = const VerificationMeta(
    'protocolVersion',
  );
  @override
  late final GeneratedColumn<String> protocolVersion = GeneratedColumn<String>(
    'protocol_version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('classic'),
  );
  static const VerificationMeta _fragranceAromaMeta = const VerificationMeta(
    'fragranceAroma',
  );
  @override
  late final GeneratedColumn<double> fragranceAroma = GeneratedColumn<double>(
    'fragrance_aroma',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _flavorMeta = const VerificationMeta('flavor');
  @override
  late final GeneratedColumn<double> flavor = GeneratedColumn<double>(
    'flavor',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _aftertasteMeta = const VerificationMeta(
    'aftertaste',
  );
  @override
  late final GeneratedColumn<double> aftertaste = GeneratedColumn<double>(
    'aftertaste',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _acidityMeta = const VerificationMeta(
    'acidity',
  );
  @override
  late final GeneratedColumn<double> acidity = GeneratedColumn<double>(
    'acidity',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<double> body = GeneratedColumn<double>(
    'body',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _balanceMeta = const VerificationMeta(
    'balance',
  );
  @override
  late final GeneratedColumn<double> balance = GeneratedColumn<double>(
    'balance',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _uniformityMeta = const VerificationMeta(
    'uniformity',
  );
  @override
  late final GeneratedColumn<double> uniformity = GeneratedColumn<double>(
    'uniformity',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cleanCupMeta = const VerificationMeta(
    'cleanCup',
  );
  @override
  late final GeneratedColumn<double> cleanCup = GeneratedColumn<double>(
    'clean_cup',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sweetnessMeta = const VerificationMeta(
    'sweetness',
  );
  @override
  late final GeneratedColumn<double> sweetness = GeneratedColumn<double>(
    'sweetness',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _overallMeta = const VerificationMeta(
    'overall',
  );
  @override
  late final GeneratedColumn<double> overall = GeneratedColumn<double>(
    'overall',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _defectsMeta = const VerificationMeta(
    'defects',
  );
  @override
  late final GeneratedColumn<double> defects = GeneratedColumn<double>(
    'defects',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _totalScoreMeta = const VerificationMeta(
    'totalScore',
  );
  @override
  late final GeneratedColumn<double> totalScore = GeneratedColumn<double>(
    'total_score',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    beanId,
    drinkLogId,
    protocolVersion,
    fragranceAroma,
    flavor,
    aftertaste,
    acidity,
    body,
    balance,
    uniformity,
    cleanCup,
    sweetness,
    overall,
    defects,
    totalScore,
    notes,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasting_notes';
  @override
  VerificationContext validateIntegrity(
    Insertable<TastingNoteEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('bean_id')) {
      context.handle(
        _beanIdMeta,
        beanId.isAcceptableOrUnknown(data['bean_id']!, _beanIdMeta),
      );
    } else if (isInserting) {
      context.missing(_beanIdMeta);
    }
    if (data.containsKey('drink_log_id')) {
      context.handle(
        _drinkLogIdMeta,
        drinkLogId.isAcceptableOrUnknown(
          data['drink_log_id']!,
          _drinkLogIdMeta,
        ),
      );
    }
    if (data.containsKey('protocol_version')) {
      context.handle(
        _protocolVersionMeta,
        protocolVersion.isAcceptableOrUnknown(
          data['protocol_version']!,
          _protocolVersionMeta,
        ),
      );
    }
    if (data.containsKey('fragrance_aroma')) {
      context.handle(
        _fragranceAromaMeta,
        fragranceAroma.isAcceptableOrUnknown(
          data['fragrance_aroma']!,
          _fragranceAromaMeta,
        ),
      );
    }
    if (data.containsKey('flavor')) {
      context.handle(
        _flavorMeta,
        flavor.isAcceptableOrUnknown(data['flavor']!, _flavorMeta),
      );
    }
    if (data.containsKey('aftertaste')) {
      context.handle(
        _aftertasteMeta,
        aftertaste.isAcceptableOrUnknown(data['aftertaste']!, _aftertasteMeta),
      );
    }
    if (data.containsKey('acidity')) {
      context.handle(
        _acidityMeta,
        acidity.isAcceptableOrUnknown(data['acidity']!, _acidityMeta),
      );
    }
    if (data.containsKey('body')) {
      context.handle(
        _bodyMeta,
        body.isAcceptableOrUnknown(data['body']!, _bodyMeta),
      );
    }
    if (data.containsKey('balance')) {
      context.handle(
        _balanceMeta,
        balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta),
      );
    }
    if (data.containsKey('uniformity')) {
      context.handle(
        _uniformityMeta,
        uniformity.isAcceptableOrUnknown(data['uniformity']!, _uniformityMeta),
      );
    }
    if (data.containsKey('clean_cup')) {
      context.handle(
        _cleanCupMeta,
        cleanCup.isAcceptableOrUnknown(data['clean_cup']!, _cleanCupMeta),
      );
    }
    if (data.containsKey('sweetness')) {
      context.handle(
        _sweetnessMeta,
        sweetness.isAcceptableOrUnknown(data['sweetness']!, _sweetnessMeta),
      );
    }
    if (data.containsKey('overall')) {
      context.handle(
        _overallMeta,
        overall.isAcceptableOrUnknown(data['overall']!, _overallMeta),
      );
    }
    if (data.containsKey('defects')) {
      context.handle(
        _defectsMeta,
        defects.isAcceptableOrUnknown(data['defects']!, _defectsMeta),
      );
    }
    if (data.containsKey('total_score')) {
      context.handle(
        _totalScoreMeta,
        totalScore.isAcceptableOrUnknown(data['total_score']!, _totalScoreMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TastingNoteEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TastingNoteEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      beanId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bean_id'],
      )!,
      drinkLogId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}drink_log_id'],
      ),
      protocolVersion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}protocol_version'],
      )!,
      fragranceAroma: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fragrance_aroma'],
      ),
      flavor: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}flavor'],
      ),
      aftertaste: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}aftertaste'],
      ),
      acidity: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}acidity'],
      ),
      body: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}body'],
      ),
      balance: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}balance'],
      ),
      uniformity: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}uniformity'],
      ),
      cleanCup: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}clean_cup'],
      ),
      sweetness: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sweetness'],
      ),
      overall: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}overall'],
      ),
      defects: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}defects'],
      )!,
      totalScore: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_score'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $TastingNotesTable createAlias(String alias) {
    return $TastingNotesTable(attachedDatabase, alias);
  }
}

class TastingNoteEntry extends DataClass
    implements Insertable<TastingNoteEntry> {
  final String id;
  final String userId;
  final String beanId;
  final String? drinkLogId;
  final String protocolVersion;
  final double? fragranceAroma;
  final double? flavor;
  final double? aftertaste;
  final double? acidity;
  final double? body;
  final double? balance;
  final double? uniformity;
  final double? cleanCup;
  final double? sweetness;
  final double? overall;
  final double defects;
  final double? totalScore;
  final String? notes;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  const TastingNoteEntry({
    required this.id,
    required this.userId,
    required this.beanId,
    this.drinkLogId,
    required this.protocolVersion,
    this.fragranceAroma,
    this.flavor,
    this.aftertaste,
    this.acidity,
    this.body,
    this.balance,
    this.uniformity,
    this.cleanCup,
    this.sweetness,
    this.overall,
    required this.defects,
    this.totalScore,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['bean_id'] = Variable<String>(beanId);
    if (!nullToAbsent || drinkLogId != null) {
      map['drink_log_id'] = Variable<String>(drinkLogId);
    }
    map['protocol_version'] = Variable<String>(protocolVersion);
    if (!nullToAbsent || fragranceAroma != null) {
      map['fragrance_aroma'] = Variable<double>(fragranceAroma);
    }
    if (!nullToAbsent || flavor != null) {
      map['flavor'] = Variable<double>(flavor);
    }
    if (!nullToAbsent || aftertaste != null) {
      map['aftertaste'] = Variable<double>(aftertaste);
    }
    if (!nullToAbsent || acidity != null) {
      map['acidity'] = Variable<double>(acidity);
    }
    if (!nullToAbsent || body != null) {
      map['body'] = Variable<double>(body);
    }
    if (!nullToAbsent || balance != null) {
      map['balance'] = Variable<double>(balance);
    }
    if (!nullToAbsent || uniformity != null) {
      map['uniformity'] = Variable<double>(uniformity);
    }
    if (!nullToAbsent || cleanCup != null) {
      map['clean_cup'] = Variable<double>(cleanCup);
    }
    if (!nullToAbsent || sweetness != null) {
      map['sweetness'] = Variable<double>(sweetness);
    }
    if (!nullToAbsent || overall != null) {
      map['overall'] = Variable<double>(overall);
    }
    map['defects'] = Variable<double>(defects);
    if (!nullToAbsent || totalScore != null) {
      map['total_score'] = Variable<double>(totalScore);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  TastingNotesCompanion toCompanion(bool nullToAbsent) {
    return TastingNotesCompanion(
      id: Value(id),
      userId: Value(userId),
      beanId: Value(beanId),
      drinkLogId: drinkLogId == null && nullToAbsent
          ? const Value.absent()
          : Value(drinkLogId),
      protocolVersion: Value(protocolVersion),
      fragranceAroma: fragranceAroma == null && nullToAbsent
          ? const Value.absent()
          : Value(fragranceAroma),
      flavor: flavor == null && nullToAbsent
          ? const Value.absent()
          : Value(flavor),
      aftertaste: aftertaste == null && nullToAbsent
          ? const Value.absent()
          : Value(aftertaste),
      acidity: acidity == null && nullToAbsent
          ? const Value.absent()
          : Value(acidity),
      body: body == null && nullToAbsent ? const Value.absent() : Value(body),
      balance: balance == null && nullToAbsent
          ? const Value.absent()
          : Value(balance),
      uniformity: uniformity == null && nullToAbsent
          ? const Value.absent()
          : Value(uniformity),
      cleanCup: cleanCup == null && nullToAbsent
          ? const Value.absent()
          : Value(cleanCup),
      sweetness: sweetness == null && nullToAbsent
          ? const Value.absent()
          : Value(sweetness),
      overall: overall == null && nullToAbsent
          ? const Value.absent()
          : Value(overall),
      defects: Value(defects),
      totalScore: totalScore == null && nullToAbsent
          ? const Value.absent()
          : Value(totalScore),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory TastingNoteEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TastingNoteEntry(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      beanId: serializer.fromJson<String>(json['beanId']),
      drinkLogId: serializer.fromJson<String?>(json['drinkLogId']),
      protocolVersion: serializer.fromJson<String>(json['protocolVersion']),
      fragranceAroma: serializer.fromJson<double?>(json['fragranceAroma']),
      flavor: serializer.fromJson<double?>(json['flavor']),
      aftertaste: serializer.fromJson<double?>(json['aftertaste']),
      acidity: serializer.fromJson<double?>(json['acidity']),
      body: serializer.fromJson<double?>(json['body']),
      balance: serializer.fromJson<double?>(json['balance']),
      uniformity: serializer.fromJson<double?>(json['uniformity']),
      cleanCup: serializer.fromJson<double?>(json['cleanCup']),
      sweetness: serializer.fromJson<double?>(json['sweetness']),
      overall: serializer.fromJson<double?>(json['overall']),
      defects: serializer.fromJson<double>(json['defects']),
      totalScore: serializer.fromJson<double?>(json['totalScore']),
      notes: serializer.fromJson<String?>(json['notes']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'beanId': serializer.toJson<String>(beanId),
      'drinkLogId': serializer.toJson<String?>(drinkLogId),
      'protocolVersion': serializer.toJson<String>(protocolVersion),
      'fragranceAroma': serializer.toJson<double?>(fragranceAroma),
      'flavor': serializer.toJson<double?>(flavor),
      'aftertaste': serializer.toJson<double?>(aftertaste),
      'acidity': serializer.toJson<double?>(acidity),
      'body': serializer.toJson<double?>(body),
      'balance': serializer.toJson<double?>(balance),
      'uniformity': serializer.toJson<double?>(uniformity),
      'cleanCup': serializer.toJson<double?>(cleanCup),
      'sweetness': serializer.toJson<double?>(sweetness),
      'overall': serializer.toJson<double?>(overall),
      'defects': serializer.toJson<double>(defects),
      'totalScore': serializer.toJson<double?>(totalScore),
      'notes': serializer.toJson<String?>(notes),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  TastingNoteEntry copyWith({
    String? id,
    String? userId,
    String? beanId,
    Value<String?> drinkLogId = const Value.absent(),
    String? protocolVersion,
    Value<double?> fragranceAroma = const Value.absent(),
    Value<double?> flavor = const Value.absent(),
    Value<double?> aftertaste = const Value.absent(),
    Value<double?> acidity = const Value.absent(),
    Value<double?> body = const Value.absent(),
    Value<double?> balance = const Value.absent(),
    Value<double?> uniformity = const Value.absent(),
    Value<double?> cleanCup = const Value.absent(),
    Value<double?> sweetness = const Value.absent(),
    Value<double?> overall = const Value.absent(),
    double? defects,
    Value<double?> totalScore = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => TastingNoteEntry(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    beanId: beanId ?? this.beanId,
    drinkLogId: drinkLogId.present ? drinkLogId.value : this.drinkLogId,
    protocolVersion: protocolVersion ?? this.protocolVersion,
    fragranceAroma: fragranceAroma.present
        ? fragranceAroma.value
        : this.fragranceAroma,
    flavor: flavor.present ? flavor.value : this.flavor,
    aftertaste: aftertaste.present ? aftertaste.value : this.aftertaste,
    acidity: acidity.present ? acidity.value : this.acidity,
    body: body.present ? body.value : this.body,
    balance: balance.present ? balance.value : this.balance,
    uniformity: uniformity.present ? uniformity.value : this.uniformity,
    cleanCup: cleanCup.present ? cleanCup.value : this.cleanCup,
    sweetness: sweetness.present ? sweetness.value : this.sweetness,
    overall: overall.present ? overall.value : this.overall,
    defects: defects ?? this.defects,
    totalScore: totalScore.present ? totalScore.value : this.totalScore,
    notes: notes.present ? notes.value : this.notes,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  TastingNoteEntry copyWithCompanion(TastingNotesCompanion data) {
    return TastingNoteEntry(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      beanId: data.beanId.present ? data.beanId.value : this.beanId,
      drinkLogId: data.drinkLogId.present
          ? data.drinkLogId.value
          : this.drinkLogId,
      protocolVersion: data.protocolVersion.present
          ? data.protocolVersion.value
          : this.protocolVersion,
      fragranceAroma: data.fragranceAroma.present
          ? data.fragranceAroma.value
          : this.fragranceAroma,
      flavor: data.flavor.present ? data.flavor.value : this.flavor,
      aftertaste: data.aftertaste.present
          ? data.aftertaste.value
          : this.aftertaste,
      acidity: data.acidity.present ? data.acidity.value : this.acidity,
      body: data.body.present ? data.body.value : this.body,
      balance: data.balance.present ? data.balance.value : this.balance,
      uniformity: data.uniformity.present
          ? data.uniformity.value
          : this.uniformity,
      cleanCup: data.cleanCup.present ? data.cleanCup.value : this.cleanCup,
      sweetness: data.sweetness.present ? data.sweetness.value : this.sweetness,
      overall: data.overall.present ? data.overall.value : this.overall,
      defects: data.defects.present ? data.defects.value : this.defects,
      totalScore: data.totalScore.present
          ? data.totalScore.value
          : this.totalScore,
      notes: data.notes.present ? data.notes.value : this.notes,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TastingNoteEntry(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('beanId: $beanId, ')
          ..write('drinkLogId: $drinkLogId, ')
          ..write('protocolVersion: $protocolVersion, ')
          ..write('fragranceAroma: $fragranceAroma, ')
          ..write('flavor: $flavor, ')
          ..write('aftertaste: $aftertaste, ')
          ..write('acidity: $acidity, ')
          ..write('body: $body, ')
          ..write('balance: $balance, ')
          ..write('uniformity: $uniformity, ')
          ..write('cleanCup: $cleanCup, ')
          ..write('sweetness: $sweetness, ')
          ..write('overall: $overall, ')
          ..write('defects: $defects, ')
          ..write('totalScore: $totalScore, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    userId,
    beanId,
    drinkLogId,
    protocolVersion,
    fragranceAroma,
    flavor,
    aftertaste,
    acidity,
    body,
    balance,
    uniformity,
    cleanCup,
    sweetness,
    overall,
    defects,
    totalScore,
    notes,
    createdAt,
    updatedAt,
    deletedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TastingNoteEntry &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.beanId == this.beanId &&
          other.drinkLogId == this.drinkLogId &&
          other.protocolVersion == this.protocolVersion &&
          other.fragranceAroma == this.fragranceAroma &&
          other.flavor == this.flavor &&
          other.aftertaste == this.aftertaste &&
          other.acidity == this.acidity &&
          other.body == this.body &&
          other.balance == this.balance &&
          other.uniformity == this.uniformity &&
          other.cleanCup == this.cleanCup &&
          other.sweetness == this.sweetness &&
          other.overall == this.overall &&
          other.defects == this.defects &&
          other.totalScore == this.totalScore &&
          other.notes == this.notes &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class TastingNotesCompanion extends UpdateCompanion<TastingNoteEntry> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> beanId;
  final Value<String?> drinkLogId;
  final Value<String> protocolVersion;
  final Value<double?> fragranceAroma;
  final Value<double?> flavor;
  final Value<double?> aftertaste;
  final Value<double?> acidity;
  final Value<double?> body;
  final Value<double?> balance;
  final Value<double?> uniformity;
  final Value<double?> cleanCup;
  final Value<double?> sweetness;
  final Value<double?> overall;
  final Value<double> defects;
  final Value<double?> totalScore;
  final Value<String?> notes;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const TastingNotesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.beanId = const Value.absent(),
    this.drinkLogId = const Value.absent(),
    this.protocolVersion = const Value.absent(),
    this.fragranceAroma = const Value.absent(),
    this.flavor = const Value.absent(),
    this.aftertaste = const Value.absent(),
    this.acidity = const Value.absent(),
    this.body = const Value.absent(),
    this.balance = const Value.absent(),
    this.uniformity = const Value.absent(),
    this.cleanCup = const Value.absent(),
    this.sweetness = const Value.absent(),
    this.overall = const Value.absent(),
    this.defects = const Value.absent(),
    this.totalScore = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TastingNotesCompanion.insert({
    required String id,
    required String userId,
    required String beanId,
    this.drinkLogId = const Value.absent(),
    this.protocolVersion = const Value.absent(),
    this.fragranceAroma = const Value.absent(),
    this.flavor = const Value.absent(),
    this.aftertaste = const Value.absent(),
    this.acidity = const Value.absent(),
    this.body = const Value.absent(),
    this.balance = const Value.absent(),
    this.uniformity = const Value.absent(),
    this.cleanCup = const Value.absent(),
    this.sweetness = const Value.absent(),
    this.overall = const Value.absent(),
    this.defects = const Value.absent(),
    this.totalScore = const Value.absent(),
    this.notes = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       beanId = Value(beanId),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<TastingNoteEntry> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? beanId,
    Expression<String>? drinkLogId,
    Expression<String>? protocolVersion,
    Expression<double>? fragranceAroma,
    Expression<double>? flavor,
    Expression<double>? aftertaste,
    Expression<double>? acidity,
    Expression<double>? body,
    Expression<double>? balance,
    Expression<double>? uniformity,
    Expression<double>? cleanCup,
    Expression<double>? sweetness,
    Expression<double>? overall,
    Expression<double>? defects,
    Expression<double>? totalScore,
    Expression<String>? notes,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (beanId != null) 'bean_id': beanId,
      if (drinkLogId != null) 'drink_log_id': drinkLogId,
      if (protocolVersion != null) 'protocol_version': protocolVersion,
      if (fragranceAroma != null) 'fragrance_aroma': fragranceAroma,
      if (flavor != null) 'flavor': flavor,
      if (aftertaste != null) 'aftertaste': aftertaste,
      if (acidity != null) 'acidity': acidity,
      if (body != null) 'body': body,
      if (balance != null) 'balance': balance,
      if (uniformity != null) 'uniformity': uniformity,
      if (cleanCup != null) 'clean_cup': cleanCup,
      if (sweetness != null) 'sweetness': sweetness,
      if (overall != null) 'overall': overall,
      if (defects != null) 'defects': defects,
      if (totalScore != null) 'total_score': totalScore,
      if (notes != null) 'notes': notes,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TastingNotesCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? beanId,
    Value<String?>? drinkLogId,
    Value<String>? protocolVersion,
    Value<double?>? fragranceAroma,
    Value<double?>? flavor,
    Value<double?>? aftertaste,
    Value<double?>? acidity,
    Value<double?>? body,
    Value<double?>? balance,
    Value<double?>? uniformity,
    Value<double?>? cleanCup,
    Value<double?>? sweetness,
    Value<double?>? overall,
    Value<double>? defects,
    Value<double?>? totalScore,
    Value<String?>? notes,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return TastingNotesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      beanId: beanId ?? this.beanId,
      drinkLogId: drinkLogId ?? this.drinkLogId,
      protocolVersion: protocolVersion ?? this.protocolVersion,
      fragranceAroma: fragranceAroma ?? this.fragranceAroma,
      flavor: flavor ?? this.flavor,
      aftertaste: aftertaste ?? this.aftertaste,
      acidity: acidity ?? this.acidity,
      body: body ?? this.body,
      balance: balance ?? this.balance,
      uniformity: uniformity ?? this.uniformity,
      cleanCup: cleanCup ?? this.cleanCup,
      sweetness: sweetness ?? this.sweetness,
      overall: overall ?? this.overall,
      defects: defects ?? this.defects,
      totalScore: totalScore ?? this.totalScore,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (beanId.present) {
      map['bean_id'] = Variable<String>(beanId.value);
    }
    if (drinkLogId.present) {
      map['drink_log_id'] = Variable<String>(drinkLogId.value);
    }
    if (protocolVersion.present) {
      map['protocol_version'] = Variable<String>(protocolVersion.value);
    }
    if (fragranceAroma.present) {
      map['fragrance_aroma'] = Variable<double>(fragranceAroma.value);
    }
    if (flavor.present) {
      map['flavor'] = Variable<double>(flavor.value);
    }
    if (aftertaste.present) {
      map['aftertaste'] = Variable<double>(aftertaste.value);
    }
    if (acidity.present) {
      map['acidity'] = Variable<double>(acidity.value);
    }
    if (body.present) {
      map['body'] = Variable<double>(body.value);
    }
    if (balance.present) {
      map['balance'] = Variable<double>(balance.value);
    }
    if (uniformity.present) {
      map['uniformity'] = Variable<double>(uniformity.value);
    }
    if (cleanCup.present) {
      map['clean_cup'] = Variable<double>(cleanCup.value);
    }
    if (sweetness.present) {
      map['sweetness'] = Variable<double>(sweetness.value);
    }
    if (overall.present) {
      map['overall'] = Variable<double>(overall.value);
    }
    if (defects.present) {
      map['defects'] = Variable<double>(defects.value);
    }
    if (totalScore.present) {
      map['total_score'] = Variable<double>(totalScore.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TastingNotesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('beanId: $beanId, ')
          ..write('drinkLogId: $drinkLogId, ')
          ..write('protocolVersion: $protocolVersion, ')
          ..write('fragranceAroma: $fragranceAroma, ')
          ..write('flavor: $flavor, ')
          ..write('aftertaste: $aftertaste, ')
          ..write('acidity: $acidity, ')
          ..write('body: $body, ')
          ..write('balance: $balance, ')
          ..write('uniformity: $uniformity, ')
          ..write('cleanCup: $cleanCup, ')
          ..write('sweetness: $sweetness, ')
          ..write('overall: $overall, ')
          ..write('defects: $defects, ')
          ..write('totalScore: $totalScore, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PendingExtractionsTable extends PendingExtractions
    with TableInfo<$PendingExtractionsTable, PendingExtractionEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PendingExtractionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imagePathMeta = const VerificationMeta(
    'imagePath',
  );
  @override
  late final GeneratedColumn<String> imagePath = GeneratedColumn<String>(
    'image_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _retryCountMeta = const VerificationMeta(
    'retryCount',
  );
  @override
  late final GeneratedColumn<int> retryCount = GeneratedColumn<int>(
    'retry_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _errorMessageMeta = const VerificationMeta(
    'errorMessage',
  );
  @override
  late final GeneratedColumn<String> errorMessage = GeneratedColumn<String>(
    'error_message',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    imagePath,
    createdAt,
    status,
    retryCount,
    errorMessage,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pending_extractions';
  @override
  VerificationContext validateIntegrity(
    Insertable<PendingExtractionEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('image_path')) {
      context.handle(
        _imagePathMeta,
        imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta),
      );
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('retry_count')) {
      context.handle(
        _retryCountMeta,
        retryCount.isAcceptableOrUnknown(data['retry_count']!, _retryCountMeta),
      );
    }
    if (data.containsKey('error_message')) {
      context.handle(
        _errorMessageMeta,
        errorMessage.isAcceptableOrUnknown(
          data['error_message']!,
          _errorMessageMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PendingExtractionEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PendingExtractionEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      imagePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_path'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      retryCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}retry_count'],
      )!,
      errorMessage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}error_message'],
      ),
    );
  }

  @override
  $PendingExtractionsTable createAlias(String alias) {
    return $PendingExtractionsTable(attachedDatabase, alias);
  }
}

class PendingExtractionEntry extends DataClass
    implements Insertable<PendingExtractionEntry> {
  final String id;
  final String imagePath;
  final DateTime createdAt;
  final String status;
  final int retryCount;
  final String? errorMessage;
  const PendingExtractionEntry({
    required this.id,
    required this.imagePath,
    required this.createdAt,
    required this.status,
    required this.retryCount,
    this.errorMessage,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['image_path'] = Variable<String>(imagePath);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['status'] = Variable<String>(status);
    map['retry_count'] = Variable<int>(retryCount);
    if (!nullToAbsent || errorMessage != null) {
      map['error_message'] = Variable<String>(errorMessage);
    }
    return map;
  }

  PendingExtractionsCompanion toCompanion(bool nullToAbsent) {
    return PendingExtractionsCompanion(
      id: Value(id),
      imagePath: Value(imagePath),
      createdAt: Value(createdAt),
      status: Value(status),
      retryCount: Value(retryCount),
      errorMessage: errorMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(errorMessage),
    );
  }

  factory PendingExtractionEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PendingExtractionEntry(
      id: serializer.fromJson<String>(json['id']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      status: serializer.fromJson<String>(json['status']),
      retryCount: serializer.fromJson<int>(json['retryCount']),
      errorMessage: serializer.fromJson<String?>(json['errorMessage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'imagePath': serializer.toJson<String>(imagePath),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'status': serializer.toJson<String>(status),
      'retryCount': serializer.toJson<int>(retryCount),
      'errorMessage': serializer.toJson<String?>(errorMessage),
    };
  }

  PendingExtractionEntry copyWith({
    String? id,
    String? imagePath,
    DateTime? createdAt,
    String? status,
    int? retryCount,
    Value<String?> errorMessage = const Value.absent(),
  }) => PendingExtractionEntry(
    id: id ?? this.id,
    imagePath: imagePath ?? this.imagePath,
    createdAt: createdAt ?? this.createdAt,
    status: status ?? this.status,
    retryCount: retryCount ?? this.retryCount,
    errorMessage: errorMessage.present ? errorMessage.value : this.errorMessage,
  );
  PendingExtractionEntry copyWithCompanion(PendingExtractionsCompanion data) {
    return PendingExtractionEntry(
      id: data.id.present ? data.id.value : this.id,
      imagePath: data.imagePath.present ? data.imagePath.value : this.imagePath,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      status: data.status.present ? data.status.value : this.status,
      retryCount: data.retryCount.present
          ? data.retryCount.value
          : this.retryCount,
      errorMessage: data.errorMessage.present
          ? data.errorMessage.value
          : this.errorMessage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PendingExtractionEntry(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('createdAt: $createdAt, ')
          ..write('status: $status, ')
          ..write('retryCount: $retryCount, ')
          ..write('errorMessage: $errorMessage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, imagePath, createdAt, status, retryCount, errorMessage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PendingExtractionEntry &&
          other.id == this.id &&
          other.imagePath == this.imagePath &&
          other.createdAt == this.createdAt &&
          other.status == this.status &&
          other.retryCount == this.retryCount &&
          other.errorMessage == this.errorMessage);
}

class PendingExtractionsCompanion
    extends UpdateCompanion<PendingExtractionEntry> {
  final Value<String> id;
  final Value<String> imagePath;
  final Value<DateTime> createdAt;
  final Value<String> status;
  final Value<int> retryCount;
  final Value<String?> errorMessage;
  final Value<int> rowid;
  const PendingExtractionsCompanion({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.status = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PendingExtractionsCompanion.insert({
    required String id,
    required String imagePath,
    required DateTime createdAt,
    this.status = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       imagePath = Value(imagePath),
       createdAt = Value(createdAt);
  static Insertable<PendingExtractionEntry> custom({
    Expression<String>? id,
    Expression<String>? imagePath,
    Expression<DateTime>? createdAt,
    Expression<String>? status,
    Expression<int>? retryCount,
    Expression<String>? errorMessage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imagePath != null) 'image_path': imagePath,
      if (createdAt != null) 'created_at': createdAt,
      if (status != null) 'status': status,
      if (retryCount != null) 'retry_count': retryCount,
      if (errorMessage != null) 'error_message': errorMessage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PendingExtractionsCompanion copyWith({
    Value<String>? id,
    Value<String>? imagePath,
    Value<DateTime>? createdAt,
    Value<String>? status,
    Value<int>? retryCount,
    Value<String?>? errorMessage,
    Value<int>? rowid,
  }) {
    return PendingExtractionsCompanion(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
      retryCount: retryCount ?? this.retryCount,
      errorMessage: errorMessage ?? this.errorMessage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (retryCount.present) {
      map['retry_count'] = Variable<int>(retryCount.value);
    }
    if (errorMessage.present) {
      map['error_message'] = Variable<String>(errorMessage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PendingExtractionsCompanion(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('createdAt: $createdAt, ')
          ..write('status: $status, ')
          ..write('retryCount: $retryCount, ')
          ..write('errorMessage: $errorMessage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftAppDatabase extends GeneratedDatabase {
  _$DriftAppDatabase(QueryExecutor e) : super(e);
  $DriftAppDatabaseManager get managers => $DriftAppDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $RoastersTable roasters = $RoastersTable(this);
  late final $BeansTable beans = $BeansTable(this);
  late final $CountriesTable countries = $CountriesTable(this);
  late final $VarietiesTable varieties = $VarietiesTable(this);
  late final $ProcessingMethodsTable processingMethods =
      $ProcessingMethodsTable(this);
  late final $BeanOriginsTable beanOrigins = $BeanOriginsTable(this);
  late final $FlavorDescriptorsTable flavorDescriptors =
      $FlavorDescriptorsTable(this);
  late final $BeanFlavorNotesTable beanFlavorNotes = $BeanFlavorNotesTable(
    this,
  );
  late final $DrinkLogsTable drinkLogs = $DrinkLogsTable(this);
  late final $TastingNotesTable tastingNotes = $TastingNotesTable(this);
  late final $PendingExtractionsTable pendingExtractions =
      $PendingExtractionsTable(this);
  late final BeanDaoImpl beanDaoImpl = BeanDaoImpl(this as DriftAppDatabase);
  late final DrinkLogDaoImpl drinkLogDaoImpl = DrinkLogDaoImpl(
    this as DriftAppDatabase,
  );
  late final MasterDataDaoImpl masterDataDaoImpl = MasterDataDaoImpl(
    this as DriftAppDatabase,
  );
  late final PendingExtractionDaoImpl pendingExtractionDaoImpl =
      PendingExtractionDaoImpl(this as DriftAppDatabase);
  late final RoasterDaoImpl roasterDaoImpl = RoasterDaoImpl(
    this as DriftAppDatabase,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    users,
    roasters,
    beans,
    countries,
    varieties,
    processingMethods,
    beanOrigins,
    flavorDescriptors,
    beanFlavorNotes,
    drinkLogs,
    tastingNotes,
    pendingExtractions,
  ];
}

typedef $$UsersTableCreateCompanionBuilder =
    UsersCompanion Function({
      required String id,
      required String firebaseUid,
      Value<String?> displayName,
      Value<String?> avatarUrl,
      Value<String?> email,
      Value<String?> preferences,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$UsersTableUpdateCompanionBuilder =
    UsersCompanion Function({
      Value<String> id,
      Value<String> firebaseUid,
      Value<String?> displayName,
      Value<String?> avatarUrl,
      Value<String?> email,
      Value<String?> preferences,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

final class $$UsersTableReferences
    extends BaseReferences<_$DriftAppDatabase, $UsersTable, UserEntry> {
  $$UsersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RoastersTable, List<RoasterEntry>>
  _roastersRefsTable(_$DriftAppDatabase db) => MultiTypedResultKey.fromTable(
    db.roasters,
    aliasName: $_aliasNameGenerator(db.users.id, db.roasters.userId),
  );

  $$RoastersTableProcessedTableManager get roastersRefs {
    final manager = $$RoastersTableTableManager(
      $_db,
      $_db.roasters,
    ).filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_roastersRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$BeansTable, List<BeanEntry>> _beansRefsTable(
    _$DriftAppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.beans,
    aliasName: $_aliasNameGenerator(db.users.id, db.beans.userId),
  );

  $$BeansTableProcessedTableManager get beansRefs {
    final manager = $$BeansTableTableManager(
      $_db,
      $_db.beans,
    ).filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_beansRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$DrinkLogsTable, List<DrinkLogEntry>>
  _drinkLogsRefsTable(_$DriftAppDatabase db) => MultiTypedResultKey.fromTable(
    db.drinkLogs,
    aliasName: $_aliasNameGenerator(db.users.id, db.drinkLogs.userId),
  );

  $$DrinkLogsTableProcessedTableManager get drinkLogsRefs {
    final manager = $$DrinkLogsTableTableManager(
      $_db,
      $_db.drinkLogs,
    ).filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_drinkLogsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TastingNotesTable, List<TastingNoteEntry>>
  _tastingNotesRefsTable(_$DriftAppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.tastingNotes,
        aliasName: $_aliasNameGenerator(db.users.id, db.tastingNotes.userId),
      );

  $$TastingNotesTableProcessedTableManager get tastingNotesRefs {
    final manager = $$TastingNotesTableTableManager(
      $_db,
      $_db.tastingNotes,
    ).filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_tastingNotesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$UsersTableFilterComposer
    extends Composer<_$DriftAppDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firebaseUid => $composableBuilder(
    column: $table.firebaseUid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get preferences => $composableBuilder(
    column: $table.preferences,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> roastersRefs(
    Expression<bool> Function($$RoastersTableFilterComposer f) f,
  ) {
    final $$RoastersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.roasters,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoastersTableFilterComposer(
            $db: $db,
            $table: $db.roasters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> beansRefs(
    Expression<bool> Function($$BeansTableFilterComposer f) f,
  ) {
    final $$BeansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableFilterComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> drinkLogsRefs(
    Expression<bool> Function($$DrinkLogsTableFilterComposer f) f,
  ) {
    final $$DrinkLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.drinkLogs,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DrinkLogsTableFilterComposer(
            $db: $db,
            $table: $db.drinkLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> tastingNotesRefs(
    Expression<bool> Function($$TastingNotesTableFilterComposer f) f,
  ) {
    final $$TastingNotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tastingNotes,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TastingNotesTableFilterComposer(
            $db: $db,
            $table: $db.tastingNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$UsersTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firebaseUid => $composableBuilder(
    column: $table.firebaseUid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get preferences => $composableBuilder(
    column: $table.preferences,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UsersTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get firebaseUid => $composableBuilder(
    column: $table.firebaseUid,
    builder: (column) => column,
  );

  GeneratedColumn<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get avatarUrl =>
      $composableBuilder(column: $table.avatarUrl, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get preferences => $composableBuilder(
    column: $table.preferences,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  Expression<T> roastersRefs<T extends Object>(
    Expression<T> Function($$RoastersTableAnnotationComposer a) f,
  ) {
    final $$RoastersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.roasters,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoastersTableAnnotationComposer(
            $db: $db,
            $table: $db.roasters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> beansRefs<T extends Object>(
    Expression<T> Function($$BeansTableAnnotationComposer a) f,
  ) {
    final $$BeansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableAnnotationComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> drinkLogsRefs<T extends Object>(
    Expression<T> Function($$DrinkLogsTableAnnotationComposer a) f,
  ) {
    final $$DrinkLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.drinkLogs,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DrinkLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.drinkLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> tastingNotesRefs<T extends Object>(
    Expression<T> Function($$TastingNotesTableAnnotationComposer a) f,
  ) {
    final $$TastingNotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tastingNotes,
      getReferencedColumn: (t) => t.userId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TastingNotesTableAnnotationComposer(
            $db: $db,
            $table: $db.tastingNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$UsersTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $UsersTable,
          UserEntry,
          $$UsersTableFilterComposer,
          $$UsersTableOrderingComposer,
          $$UsersTableAnnotationComposer,
          $$UsersTableCreateCompanionBuilder,
          $$UsersTableUpdateCompanionBuilder,
          (UserEntry, $$UsersTableReferences),
          UserEntry,
          PrefetchHooks Function({
            bool roastersRefs,
            bool beansRefs,
            bool drinkLogsRefs,
            bool tastingNotesRefs,
          })
        > {
  $$UsersTableTableManager(_$DriftAppDatabase db, $UsersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> firebaseUid = const Value.absent(),
                Value<String?> displayName = const Value.absent(),
                Value<String?> avatarUrl = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> preferences = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UsersCompanion(
                id: id,
                firebaseUid: firebaseUid,
                displayName: displayName,
                avatarUrl: avatarUrl,
                email: email,
                preferences: preferences,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String firebaseUid,
                Value<String?> displayName = const Value.absent(),
                Value<String?> avatarUrl = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> preferences = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UsersCompanion.insert(
                id: id,
                firebaseUid: firebaseUid,
                displayName: displayName,
                avatarUrl: avatarUrl,
                email: email,
                preferences: preferences,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$UsersTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                roastersRefs = false,
                beansRefs = false,
                drinkLogsRefs = false,
                tastingNotesRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (roastersRefs) db.roasters,
                    if (beansRefs) db.beans,
                    if (drinkLogsRefs) db.drinkLogs,
                    if (tastingNotesRefs) db.tastingNotes,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (roastersRefs)
                        await $_getPrefetchedData<
                          UserEntry,
                          $UsersTable,
                          RoasterEntry
                        >(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._roastersRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(
                                db,
                                table,
                                p0,
                              ).roastersRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (beansRefs)
                        await $_getPrefetchedData<
                          UserEntry,
                          $UsersTable,
                          BeanEntry
                        >(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._beansRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(db, table, p0).beansRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (drinkLogsRefs)
                        await $_getPrefetchedData<
                          UserEntry,
                          $UsersTable,
                          DrinkLogEntry
                        >(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._drinkLogsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(
                                db,
                                table,
                                p0,
                              ).drinkLogsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (tastingNotesRefs)
                        await $_getPrefetchedData<
                          UserEntry,
                          $UsersTable,
                          TastingNoteEntry
                        >(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._tastingNotesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(
                                db,
                                table,
                                p0,
                              ).tastingNotesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$UsersTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $UsersTable,
      UserEntry,
      $$UsersTableFilterComposer,
      $$UsersTableOrderingComposer,
      $$UsersTableAnnotationComposer,
      $$UsersTableCreateCompanionBuilder,
      $$UsersTableUpdateCompanionBuilder,
      (UserEntry, $$UsersTableReferences),
      UserEntry,
      PrefetchHooks Function({
        bool roastersRefs,
        bool beansRefs,
        bool drinkLogsRefs,
        bool tastingNotesRefs,
      })
    >;
typedef $$RoastersTableCreateCompanionBuilder =
    RoastersCompanion Function({
      required String id,
      required String userId,
      required String name,
      Value<String?> nameReading,
      Value<String?> location,
      Value<String?> websiteUrl,
      Value<String?> description,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$RoastersTableUpdateCompanionBuilder =
    RoastersCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> name,
      Value<String?> nameReading,
      Value<String?> location,
      Value<String?> websiteUrl,
      Value<String?> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

final class $$RoastersTableReferences
    extends BaseReferences<_$DriftAppDatabase, $RoastersTable, RoasterEntry> {
  $$RoastersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userIdTable(_$DriftAppDatabase db) => db.users
      .createAlias($_aliasNameGenerator(db.roasters.userId, db.users.id));

  $$UsersTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$BeansTable, List<BeanEntry>> _beansRefsTable(
    _$DriftAppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.beans,
    aliasName: $_aliasNameGenerator(db.roasters.id, db.beans.roasterId),
  );

  $$BeansTableProcessedTableManager get beansRefs {
    final manager = $$BeansTableTableManager(
      $_db,
      $_db.beans,
    ).filter((f) => f.roasterId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_beansRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RoastersTableFilterComposer
    extends Composer<_$DriftAppDatabase, $RoastersTable> {
  $$RoastersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameReading => $composableBuilder(
    column: $table.nameReading,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get websiteUrl => $composableBuilder(
    column: $table.websiteUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userId {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> beansRefs(
    Expression<bool> Function($$BeansTableFilterComposer f) f,
  ) {
    final $$BeansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.roasterId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableFilterComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RoastersTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $RoastersTable> {
  $$RoastersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameReading => $composableBuilder(
    column: $table.nameReading,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get websiteUrl => $composableBuilder(
    column: $table.websiteUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userId {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RoastersTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $RoastersTable> {
  $$RoastersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get nameReading => $composableBuilder(
    column: $table.nameReading,
    builder: (column) => column,
  );

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<String> get websiteUrl => $composableBuilder(
    column: $table.websiteUrl,
    builder: (column) => column,
  );

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$UsersTableAnnotationComposer get userId {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> beansRefs<T extends Object>(
    Expression<T> Function($$BeansTableAnnotationComposer a) f,
  ) {
    final $$BeansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.roasterId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableAnnotationComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RoastersTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $RoastersTable,
          RoasterEntry,
          $$RoastersTableFilterComposer,
          $$RoastersTableOrderingComposer,
          $$RoastersTableAnnotationComposer,
          $$RoastersTableCreateCompanionBuilder,
          $$RoastersTableUpdateCompanionBuilder,
          (RoasterEntry, $$RoastersTableReferences),
          RoasterEntry,
          PrefetchHooks Function({bool userId, bool beansRefs})
        > {
  $$RoastersTableTableManager(_$DriftAppDatabase db, $RoastersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RoastersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RoastersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RoastersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> nameReading = const Value.absent(),
                Value<String?> location = const Value.absent(),
                Value<String?> websiteUrl = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RoastersCompanion(
                id: id,
                userId: userId,
                name: name,
                nameReading: nameReading,
                location: location,
                websiteUrl: websiteUrl,
                description: description,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String name,
                Value<String?> nameReading = const Value.absent(),
                Value<String?> location = const Value.absent(),
                Value<String?> websiteUrl = const Value.absent(),
                Value<String?> description = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RoastersCompanion.insert(
                id: id,
                userId: userId,
                name: name,
                nameReading: nameReading,
                location: location,
                websiteUrl: websiteUrl,
                description: description,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RoastersTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({userId = false, beansRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (beansRefs) db.beans],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (userId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.userId,
                                referencedTable: $$RoastersTableReferences
                                    ._userIdTable(db),
                                referencedColumn: $$RoastersTableReferences
                                    ._userIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (beansRefs)
                    await $_getPrefetchedData<
                      RoasterEntry,
                      $RoastersTable,
                      BeanEntry
                    >(
                      currentTable: table,
                      referencedTable: $$RoastersTableReferences
                          ._beansRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$RoastersTableReferences(db, table, p0).beansRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.roasterId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$RoastersTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $RoastersTable,
      RoasterEntry,
      $$RoastersTableFilterComposer,
      $$RoastersTableOrderingComposer,
      $$RoastersTableAnnotationComposer,
      $$RoastersTableCreateCompanionBuilder,
      $$RoastersTableUpdateCompanionBuilder,
      (RoasterEntry, $$RoastersTableReferences),
      RoasterEntry,
      PrefetchHooks Function({bool userId, bool beansRefs})
    >;
typedef $$BeansTableCreateCompanionBuilder =
    BeansCompanion Function({
      required String id,
      required String userId,
      Value<String?> roasterId,
      required String name,
      Value<RoastLevel?> roastLevel,
      Value<BeanType?> beanType,
      Value<String?> roastDate,
      Value<String?> purchaseDate,
      Value<int?> purchasePrice,
      Value<int?> weightG,
      Value<bool> isDecaf,
      Value<String?> description,
      Value<String?> sourceUrl,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$BeansTableUpdateCompanionBuilder =
    BeansCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String?> roasterId,
      Value<String> name,
      Value<RoastLevel?> roastLevel,
      Value<BeanType?> beanType,
      Value<String?> roastDate,
      Value<String?> purchaseDate,
      Value<int?> purchasePrice,
      Value<int?> weightG,
      Value<bool> isDecaf,
      Value<String?> description,
      Value<String?> sourceUrl,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

final class $$BeansTableReferences
    extends BaseReferences<_$DriftAppDatabase, $BeansTable, BeanEntry> {
  $$BeansTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userIdTable(_$DriftAppDatabase db) =>
      db.users.createAlias($_aliasNameGenerator(db.beans.userId, db.users.id));

  $$UsersTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $RoastersTable _roasterIdTable(_$DriftAppDatabase db) => db.roasters
      .createAlias($_aliasNameGenerator(db.beans.roasterId, db.roasters.id));

  $$RoastersTableProcessedTableManager? get roasterId {
    final $_column = $_itemColumn<String>('roaster_id');
    if ($_column == null) return null;
    final manager = $$RoastersTableTableManager(
      $_db,
      $_db.roasters,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_roasterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$BeanOriginsTable, List<BeanOriginEntry>>
  _beanOriginsRefsTable(_$DriftAppDatabase db) => MultiTypedResultKey.fromTable(
    db.beanOrigins,
    aliasName: $_aliasNameGenerator(db.beans.id, db.beanOrigins.beanId),
  );

  $$BeanOriginsTableProcessedTableManager get beanOriginsRefs {
    final manager = $$BeanOriginsTableTableManager(
      $_db,
      $_db.beanOrigins,
    ).filter((f) => f.beanId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_beanOriginsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$BeanFlavorNotesTable, List<BeanFlavorNoteEntry>>
  _beanFlavorNotesRefsTable(_$DriftAppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.beanFlavorNotes,
        aliasName: $_aliasNameGenerator(db.beans.id, db.beanFlavorNotes.beanId),
      );

  $$BeanFlavorNotesTableProcessedTableManager get beanFlavorNotesRefs {
    final manager = $$BeanFlavorNotesTableTableManager(
      $_db,
      $_db.beanFlavorNotes,
    ).filter((f) => f.beanId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _beanFlavorNotesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$DrinkLogsTable, List<DrinkLogEntry>>
  _drinkLogsRefsTable(_$DriftAppDatabase db) => MultiTypedResultKey.fromTable(
    db.drinkLogs,
    aliasName: $_aliasNameGenerator(db.beans.id, db.drinkLogs.beanId),
  );

  $$DrinkLogsTableProcessedTableManager get drinkLogsRefs {
    final manager = $$DrinkLogsTableTableManager(
      $_db,
      $_db.drinkLogs,
    ).filter((f) => f.beanId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_drinkLogsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TastingNotesTable, List<TastingNoteEntry>>
  _tastingNotesRefsTable(_$DriftAppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.tastingNotes,
        aliasName: $_aliasNameGenerator(db.beans.id, db.tastingNotes.beanId),
      );

  $$TastingNotesTableProcessedTableManager get tastingNotesRefs {
    final manager = $$TastingNotesTableTableManager(
      $_db,
      $_db.tastingNotes,
    ).filter((f) => f.beanId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_tastingNotesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$BeansTableFilterComposer
    extends Composer<_$DriftAppDatabase, $BeansTable> {
  $$BeansTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<RoastLevel?, RoastLevel, String>
  get roastLevel => $composableBuilder(
    column: $table.roastLevel,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<BeanType?, BeanType, String> get beanType =>
      $composableBuilder(
        column: $table.beanType,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<String> get roastDate => $composableBuilder(
    column: $table.roastDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get purchaseDate => $composableBuilder(
    column: $table.purchaseDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get purchasePrice => $composableBuilder(
    column: $table.purchasePrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weightG => $composableBuilder(
    column: $table.weightG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDecaf => $composableBuilder(
    column: $table.isDecaf,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceUrl => $composableBuilder(
    column: $table.sourceUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userId {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RoastersTableFilterComposer get roasterId {
    final $$RoastersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.roasterId,
      referencedTable: $db.roasters,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoastersTableFilterComposer(
            $db: $db,
            $table: $db.roasters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> beanOriginsRefs(
    Expression<bool> Function($$BeanOriginsTableFilterComposer f) f,
  ) {
    final $$BeanOriginsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanOrigins,
      getReferencedColumn: (t) => t.beanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanOriginsTableFilterComposer(
            $db: $db,
            $table: $db.beanOrigins,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> beanFlavorNotesRefs(
    Expression<bool> Function($$BeanFlavorNotesTableFilterComposer f) f,
  ) {
    final $$BeanFlavorNotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanFlavorNotes,
      getReferencedColumn: (t) => t.beanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanFlavorNotesTableFilterComposer(
            $db: $db,
            $table: $db.beanFlavorNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> drinkLogsRefs(
    Expression<bool> Function($$DrinkLogsTableFilterComposer f) f,
  ) {
    final $$DrinkLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.drinkLogs,
      getReferencedColumn: (t) => t.beanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DrinkLogsTableFilterComposer(
            $db: $db,
            $table: $db.drinkLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> tastingNotesRefs(
    Expression<bool> Function($$TastingNotesTableFilterComposer f) f,
  ) {
    final $$TastingNotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tastingNotes,
      getReferencedColumn: (t) => t.beanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TastingNotesTableFilterComposer(
            $db: $db,
            $table: $db.tastingNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$BeansTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $BeansTable> {
  $$BeansTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get roastLevel => $composableBuilder(
    column: $table.roastLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get beanType => $composableBuilder(
    column: $table.beanType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get roastDate => $composableBuilder(
    column: $table.roastDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get purchaseDate => $composableBuilder(
    column: $table.purchaseDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get purchasePrice => $composableBuilder(
    column: $table.purchasePrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weightG => $composableBuilder(
    column: $table.weightG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDecaf => $composableBuilder(
    column: $table.isDecaf,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceUrl => $composableBuilder(
    column: $table.sourceUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userId {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RoastersTableOrderingComposer get roasterId {
    final $$RoastersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.roasterId,
      referencedTable: $db.roasters,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoastersTableOrderingComposer(
            $db: $db,
            $table: $db.roasters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BeansTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $BeansTable> {
  $$BeansTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumnWithTypeConverter<RoastLevel?, String> get roastLevel =>
      $composableBuilder(
        column: $table.roastLevel,
        builder: (column) => column,
      );

  GeneratedColumnWithTypeConverter<BeanType?, String> get beanType =>
      $composableBuilder(column: $table.beanType, builder: (column) => column);

  GeneratedColumn<String> get roastDate =>
      $composableBuilder(column: $table.roastDate, builder: (column) => column);

  GeneratedColumn<String> get purchaseDate => $composableBuilder(
    column: $table.purchaseDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get purchasePrice => $composableBuilder(
    column: $table.purchasePrice,
    builder: (column) => column,
  );

  GeneratedColumn<int> get weightG =>
      $composableBuilder(column: $table.weightG, builder: (column) => column);

  GeneratedColumn<bool> get isDecaf =>
      $composableBuilder(column: $table.isDecaf, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get sourceUrl =>
      $composableBuilder(column: $table.sourceUrl, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$UsersTableAnnotationComposer get userId {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RoastersTableAnnotationComposer get roasterId {
    final $$RoastersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.roasterId,
      referencedTable: $db.roasters,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoastersTableAnnotationComposer(
            $db: $db,
            $table: $db.roasters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> beanOriginsRefs<T extends Object>(
    Expression<T> Function($$BeanOriginsTableAnnotationComposer a) f,
  ) {
    final $$BeanOriginsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanOrigins,
      getReferencedColumn: (t) => t.beanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanOriginsTableAnnotationComposer(
            $db: $db,
            $table: $db.beanOrigins,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> beanFlavorNotesRefs<T extends Object>(
    Expression<T> Function($$BeanFlavorNotesTableAnnotationComposer a) f,
  ) {
    final $$BeanFlavorNotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanFlavorNotes,
      getReferencedColumn: (t) => t.beanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanFlavorNotesTableAnnotationComposer(
            $db: $db,
            $table: $db.beanFlavorNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> drinkLogsRefs<T extends Object>(
    Expression<T> Function($$DrinkLogsTableAnnotationComposer a) f,
  ) {
    final $$DrinkLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.drinkLogs,
      getReferencedColumn: (t) => t.beanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DrinkLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.drinkLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> tastingNotesRefs<T extends Object>(
    Expression<T> Function($$TastingNotesTableAnnotationComposer a) f,
  ) {
    final $$TastingNotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tastingNotes,
      getReferencedColumn: (t) => t.beanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TastingNotesTableAnnotationComposer(
            $db: $db,
            $table: $db.tastingNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$BeansTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $BeansTable,
          BeanEntry,
          $$BeansTableFilterComposer,
          $$BeansTableOrderingComposer,
          $$BeansTableAnnotationComposer,
          $$BeansTableCreateCompanionBuilder,
          $$BeansTableUpdateCompanionBuilder,
          (BeanEntry, $$BeansTableReferences),
          BeanEntry,
          PrefetchHooks Function({
            bool userId,
            bool roasterId,
            bool beanOriginsRefs,
            bool beanFlavorNotesRefs,
            bool drinkLogsRefs,
            bool tastingNotesRefs,
          })
        > {
  $$BeansTableTableManager(_$DriftAppDatabase db, $BeansTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BeansTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BeansTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BeansTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String?> roasterId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<RoastLevel?> roastLevel = const Value.absent(),
                Value<BeanType?> beanType = const Value.absent(),
                Value<String?> roastDate = const Value.absent(),
                Value<String?> purchaseDate = const Value.absent(),
                Value<int?> purchasePrice = const Value.absent(),
                Value<int?> weightG = const Value.absent(),
                Value<bool> isDecaf = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> sourceUrl = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BeansCompanion(
                id: id,
                userId: userId,
                roasterId: roasterId,
                name: name,
                roastLevel: roastLevel,
                beanType: beanType,
                roastDate: roastDate,
                purchaseDate: purchaseDate,
                purchasePrice: purchasePrice,
                weightG: weightG,
                isDecaf: isDecaf,
                description: description,
                sourceUrl: sourceUrl,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                Value<String?> roasterId = const Value.absent(),
                required String name,
                Value<RoastLevel?> roastLevel = const Value.absent(),
                Value<BeanType?> beanType = const Value.absent(),
                Value<String?> roastDate = const Value.absent(),
                Value<String?> purchaseDate = const Value.absent(),
                Value<int?> purchasePrice = const Value.absent(),
                Value<int?> weightG = const Value.absent(),
                Value<bool> isDecaf = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> sourceUrl = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BeansCompanion.insert(
                id: id,
                userId: userId,
                roasterId: roasterId,
                name: name,
                roastLevel: roastLevel,
                beanType: beanType,
                roastDate: roastDate,
                purchaseDate: purchaseDate,
                purchasePrice: purchasePrice,
                weightG: weightG,
                isDecaf: isDecaf,
                description: description,
                sourceUrl: sourceUrl,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$BeansTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                userId = false,
                roasterId = false,
                beanOriginsRefs = false,
                beanFlavorNotesRefs = false,
                drinkLogsRefs = false,
                tastingNotesRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (beanOriginsRefs) db.beanOrigins,
                    if (beanFlavorNotesRefs) db.beanFlavorNotes,
                    if (drinkLogsRefs) db.drinkLogs,
                    if (tastingNotesRefs) db.tastingNotes,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (userId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.userId,
                                    referencedTable: $$BeansTableReferences
                                        ._userIdTable(db),
                                    referencedColumn: $$BeansTableReferences
                                        ._userIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }
                        if (roasterId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.roasterId,
                                    referencedTable: $$BeansTableReferences
                                        ._roasterIdTable(db),
                                    referencedColumn: $$BeansTableReferences
                                        ._roasterIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (beanOriginsRefs)
                        await $_getPrefetchedData<
                          BeanEntry,
                          $BeansTable,
                          BeanOriginEntry
                        >(
                          currentTable: table,
                          referencedTable: $$BeansTableReferences
                              ._beanOriginsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$BeansTableReferences(
                                db,
                                table,
                                p0,
                              ).beanOriginsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.beanId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (beanFlavorNotesRefs)
                        await $_getPrefetchedData<
                          BeanEntry,
                          $BeansTable,
                          BeanFlavorNoteEntry
                        >(
                          currentTable: table,
                          referencedTable: $$BeansTableReferences
                              ._beanFlavorNotesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$BeansTableReferences(
                                db,
                                table,
                                p0,
                              ).beanFlavorNotesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.beanId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (drinkLogsRefs)
                        await $_getPrefetchedData<
                          BeanEntry,
                          $BeansTable,
                          DrinkLogEntry
                        >(
                          currentTable: table,
                          referencedTable: $$BeansTableReferences
                              ._drinkLogsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$BeansTableReferences(
                                db,
                                table,
                                p0,
                              ).drinkLogsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.beanId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (tastingNotesRefs)
                        await $_getPrefetchedData<
                          BeanEntry,
                          $BeansTable,
                          TastingNoteEntry
                        >(
                          currentTable: table,
                          referencedTable: $$BeansTableReferences
                              ._tastingNotesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$BeansTableReferences(
                                db,
                                table,
                                p0,
                              ).tastingNotesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.beanId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$BeansTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $BeansTable,
      BeanEntry,
      $$BeansTableFilterComposer,
      $$BeansTableOrderingComposer,
      $$BeansTableAnnotationComposer,
      $$BeansTableCreateCompanionBuilder,
      $$BeansTableUpdateCompanionBuilder,
      (BeanEntry, $$BeansTableReferences),
      BeanEntry,
      PrefetchHooks Function({
        bool userId,
        bool roasterId,
        bool beanOriginsRefs,
        bool beanFlavorNotesRefs,
        bool drinkLogsRefs,
        bool tastingNotesRefs,
      })
    >;
typedef $$CountriesTableCreateCompanionBuilder =
    CountriesCompanion Function({
      required String id,
      required String name,
      required String nameEn,
      required String isoAlpha2,
      Value<String?> region,
      Value<int> sortOrder,
      Value<int> rowid,
    });
typedef $$CountriesTableUpdateCompanionBuilder =
    CountriesCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String> nameEn,
      Value<String> isoAlpha2,
      Value<String?> region,
      Value<int> sortOrder,
      Value<int> rowid,
    });

final class $$CountriesTableReferences
    extends BaseReferences<_$DriftAppDatabase, $CountriesTable, CountryEntry> {
  $$CountriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$BeanOriginsTable, List<BeanOriginEntry>>
  _beanOriginsRefsTable(_$DriftAppDatabase db) => MultiTypedResultKey.fromTable(
    db.beanOrigins,
    aliasName: $_aliasNameGenerator(db.countries.id, db.beanOrigins.countryId),
  );

  $$BeanOriginsTableProcessedTableManager get beanOriginsRefs {
    final manager = $$BeanOriginsTableTableManager(
      $_db,
      $_db.beanOrigins,
    ).filter((f) => f.countryId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_beanOriginsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CountriesTableFilterComposer
    extends Composer<_$DriftAppDatabase, $CountriesTable> {
  $$CountriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameEn => $composableBuilder(
    column: $table.nameEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get isoAlpha2 => $composableBuilder(
    column: $table.isoAlpha2,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get region => $composableBuilder(
    column: $table.region,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> beanOriginsRefs(
    Expression<bool> Function($$BeanOriginsTableFilterComposer f) f,
  ) {
    final $$BeanOriginsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanOrigins,
      getReferencedColumn: (t) => t.countryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanOriginsTableFilterComposer(
            $db: $db,
            $table: $db.beanOrigins,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CountriesTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $CountriesTable> {
  $$CountriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameEn => $composableBuilder(
    column: $table.nameEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get isoAlpha2 => $composableBuilder(
    column: $table.isoAlpha2,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get region => $composableBuilder(
    column: $table.region,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CountriesTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $CountriesTable> {
  $$CountriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get nameEn =>
      $composableBuilder(column: $table.nameEn, builder: (column) => column);

  GeneratedColumn<String> get isoAlpha2 =>
      $composableBuilder(column: $table.isoAlpha2, builder: (column) => column);

  GeneratedColumn<String> get region =>
      $composableBuilder(column: $table.region, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  Expression<T> beanOriginsRefs<T extends Object>(
    Expression<T> Function($$BeanOriginsTableAnnotationComposer a) f,
  ) {
    final $$BeanOriginsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanOrigins,
      getReferencedColumn: (t) => t.countryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanOriginsTableAnnotationComposer(
            $db: $db,
            $table: $db.beanOrigins,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CountriesTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $CountriesTable,
          CountryEntry,
          $$CountriesTableFilterComposer,
          $$CountriesTableOrderingComposer,
          $$CountriesTableAnnotationComposer,
          $$CountriesTableCreateCompanionBuilder,
          $$CountriesTableUpdateCompanionBuilder,
          (CountryEntry, $$CountriesTableReferences),
          CountryEntry,
          PrefetchHooks Function({bool beanOriginsRefs})
        > {
  $$CountriesTableTableManager(_$DriftAppDatabase db, $CountriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CountriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CountriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CountriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> nameEn = const Value.absent(),
                Value<String> isoAlpha2 = const Value.absent(),
                Value<String?> region = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CountriesCompanion(
                id: id,
                name: name,
                nameEn: nameEn,
                isoAlpha2: isoAlpha2,
                region: region,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String nameEn,
                required String isoAlpha2,
                Value<String?> region = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CountriesCompanion.insert(
                id: id,
                name: name,
                nameEn: nameEn,
                isoAlpha2: isoAlpha2,
                region: region,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CountriesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({beanOriginsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (beanOriginsRefs) db.beanOrigins],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (beanOriginsRefs)
                    await $_getPrefetchedData<
                      CountryEntry,
                      $CountriesTable,
                      BeanOriginEntry
                    >(
                      currentTable: table,
                      referencedTable: $$CountriesTableReferences
                          ._beanOriginsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$CountriesTableReferences(
                            db,
                            table,
                            p0,
                          ).beanOriginsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.countryId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CountriesTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $CountriesTable,
      CountryEntry,
      $$CountriesTableFilterComposer,
      $$CountriesTableOrderingComposer,
      $$CountriesTableAnnotationComposer,
      $$CountriesTableCreateCompanionBuilder,
      $$CountriesTableUpdateCompanionBuilder,
      (CountryEntry, $$CountriesTableReferences),
      CountryEntry,
      PrefetchHooks Function({bool beanOriginsRefs})
    >;
typedef $$VarietiesTableCreateCompanionBuilder =
    VarietiesCompanion Function({
      required String id,
      required String name,
      Value<String?> nameJa,
      Value<String> species,
      Value<String?> description,
      Value<int> sortOrder,
      Value<int> rowid,
    });
typedef $$VarietiesTableUpdateCompanionBuilder =
    VarietiesCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> nameJa,
      Value<String> species,
      Value<String?> description,
      Value<int> sortOrder,
      Value<int> rowid,
    });

final class $$VarietiesTableReferences
    extends BaseReferences<_$DriftAppDatabase, $VarietiesTable, VarietyEntry> {
  $$VarietiesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$BeanOriginsTable, List<BeanOriginEntry>>
  _beanOriginsRefsTable(_$DriftAppDatabase db) => MultiTypedResultKey.fromTable(
    db.beanOrigins,
    aliasName: $_aliasNameGenerator(db.varieties.id, db.beanOrigins.varietyId),
  );

  $$BeanOriginsTableProcessedTableManager get beanOriginsRefs {
    final manager = $$BeanOriginsTableTableManager(
      $_db,
      $_db.beanOrigins,
    ).filter((f) => f.varietyId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_beanOriginsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$VarietiesTableFilterComposer
    extends Composer<_$DriftAppDatabase, $VarietiesTable> {
  $$VarietiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameJa => $composableBuilder(
    column: $table.nameJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get species => $composableBuilder(
    column: $table.species,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> beanOriginsRefs(
    Expression<bool> Function($$BeanOriginsTableFilterComposer f) f,
  ) {
    final $$BeanOriginsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanOrigins,
      getReferencedColumn: (t) => t.varietyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanOriginsTableFilterComposer(
            $db: $db,
            $table: $db.beanOrigins,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$VarietiesTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $VarietiesTable> {
  $$VarietiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameJa => $composableBuilder(
    column: $table.nameJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get species => $composableBuilder(
    column: $table.species,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$VarietiesTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $VarietiesTable> {
  $$VarietiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get nameJa =>
      $composableBuilder(column: $table.nameJa, builder: (column) => column);

  GeneratedColumn<String> get species =>
      $composableBuilder(column: $table.species, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  Expression<T> beanOriginsRefs<T extends Object>(
    Expression<T> Function($$BeanOriginsTableAnnotationComposer a) f,
  ) {
    final $$BeanOriginsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanOrigins,
      getReferencedColumn: (t) => t.varietyId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanOriginsTableAnnotationComposer(
            $db: $db,
            $table: $db.beanOrigins,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$VarietiesTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $VarietiesTable,
          VarietyEntry,
          $$VarietiesTableFilterComposer,
          $$VarietiesTableOrderingComposer,
          $$VarietiesTableAnnotationComposer,
          $$VarietiesTableCreateCompanionBuilder,
          $$VarietiesTableUpdateCompanionBuilder,
          (VarietyEntry, $$VarietiesTableReferences),
          VarietyEntry,
          PrefetchHooks Function({bool beanOriginsRefs})
        > {
  $$VarietiesTableTableManager(_$DriftAppDatabase db, $VarietiesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VarietiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VarietiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VarietiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> nameJa = const Value.absent(),
                Value<String> species = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => VarietiesCompanion(
                id: id,
                name: name,
                nameJa: nameJa,
                species: species,
                description: description,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> nameJa = const Value.absent(),
                Value<String> species = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => VarietiesCompanion.insert(
                id: id,
                name: name,
                nameJa: nameJa,
                species: species,
                description: description,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$VarietiesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({beanOriginsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (beanOriginsRefs) db.beanOrigins],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (beanOriginsRefs)
                    await $_getPrefetchedData<
                      VarietyEntry,
                      $VarietiesTable,
                      BeanOriginEntry
                    >(
                      currentTable: table,
                      referencedTable: $$VarietiesTableReferences
                          ._beanOriginsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$VarietiesTableReferences(
                            db,
                            table,
                            p0,
                          ).beanOriginsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.varietyId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$VarietiesTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $VarietiesTable,
      VarietyEntry,
      $$VarietiesTableFilterComposer,
      $$VarietiesTableOrderingComposer,
      $$VarietiesTableAnnotationComposer,
      $$VarietiesTableCreateCompanionBuilder,
      $$VarietiesTableUpdateCompanionBuilder,
      (VarietyEntry, $$VarietiesTableReferences),
      VarietyEntry,
      PrefetchHooks Function({bool beanOriginsRefs})
    >;
typedef $$ProcessingMethodsTableCreateCompanionBuilder =
    ProcessingMethodsCompanion Function({
      required String id,
      required String name,
      Value<String?> nameJa,
      Value<String?> aliases,
      Value<String?> description,
      Value<int> sortOrder,
      Value<int> rowid,
    });
typedef $$ProcessingMethodsTableUpdateCompanionBuilder =
    ProcessingMethodsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> nameJa,
      Value<String?> aliases,
      Value<String?> description,
      Value<int> sortOrder,
      Value<int> rowid,
    });

final class $$ProcessingMethodsTableReferences
    extends
        BaseReferences<
          _$DriftAppDatabase,
          $ProcessingMethodsTable,
          ProcessingMethodEntry
        > {
  $$ProcessingMethodsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$BeanOriginsTable, List<BeanOriginEntry>>
  _beanOriginsRefsTable(_$DriftAppDatabase db) => MultiTypedResultKey.fromTable(
    db.beanOrigins,
    aliasName: $_aliasNameGenerator(
      db.processingMethods.id,
      db.beanOrigins.processingMethodId,
    ),
  );

  $$BeanOriginsTableProcessedTableManager get beanOriginsRefs {
    final manager = $$BeanOriginsTableTableManager($_db, $_db.beanOrigins)
        .filter(
          (f) => f.processingMethodId.id.sqlEquals($_itemColumn<String>('id')!),
        );

    final cache = $_typedResult.readTableOrNull(_beanOriginsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProcessingMethodsTableFilterComposer
    extends Composer<_$DriftAppDatabase, $ProcessingMethodsTable> {
  $$ProcessingMethodsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameJa => $composableBuilder(
    column: $table.nameJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get aliases => $composableBuilder(
    column: $table.aliases,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> beanOriginsRefs(
    Expression<bool> Function($$BeanOriginsTableFilterComposer f) f,
  ) {
    final $$BeanOriginsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanOrigins,
      getReferencedColumn: (t) => t.processingMethodId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanOriginsTableFilterComposer(
            $db: $db,
            $table: $db.beanOrigins,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProcessingMethodsTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $ProcessingMethodsTable> {
  $$ProcessingMethodsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameJa => $composableBuilder(
    column: $table.nameJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get aliases => $composableBuilder(
    column: $table.aliases,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProcessingMethodsTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $ProcessingMethodsTable> {
  $$ProcessingMethodsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get nameJa =>
      $composableBuilder(column: $table.nameJa, builder: (column) => column);

  GeneratedColumn<String> get aliases =>
      $composableBuilder(column: $table.aliases, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  Expression<T> beanOriginsRefs<T extends Object>(
    Expression<T> Function($$BeanOriginsTableAnnotationComposer a) f,
  ) {
    final $$BeanOriginsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanOrigins,
      getReferencedColumn: (t) => t.processingMethodId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanOriginsTableAnnotationComposer(
            $db: $db,
            $table: $db.beanOrigins,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProcessingMethodsTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $ProcessingMethodsTable,
          ProcessingMethodEntry,
          $$ProcessingMethodsTableFilterComposer,
          $$ProcessingMethodsTableOrderingComposer,
          $$ProcessingMethodsTableAnnotationComposer,
          $$ProcessingMethodsTableCreateCompanionBuilder,
          $$ProcessingMethodsTableUpdateCompanionBuilder,
          (ProcessingMethodEntry, $$ProcessingMethodsTableReferences),
          ProcessingMethodEntry,
          PrefetchHooks Function({bool beanOriginsRefs})
        > {
  $$ProcessingMethodsTableTableManager(
    _$DriftAppDatabase db,
    $ProcessingMethodsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProcessingMethodsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProcessingMethodsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProcessingMethodsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> nameJa = const Value.absent(),
                Value<String?> aliases = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProcessingMethodsCompanion(
                id: id,
                name: name,
                nameJa: nameJa,
                aliases: aliases,
                description: description,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> nameJa = const Value.absent(),
                Value<String?> aliases = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProcessingMethodsCompanion.insert(
                id: id,
                name: name,
                nameJa: nameJa,
                aliases: aliases,
                description: description,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ProcessingMethodsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({beanOriginsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (beanOriginsRefs) db.beanOrigins],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (beanOriginsRefs)
                    await $_getPrefetchedData<
                      ProcessingMethodEntry,
                      $ProcessingMethodsTable,
                      BeanOriginEntry
                    >(
                      currentTable: table,
                      referencedTable: $$ProcessingMethodsTableReferences
                          ._beanOriginsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ProcessingMethodsTableReferences(
                            db,
                            table,
                            p0,
                          ).beanOriginsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.processingMethodId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ProcessingMethodsTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $ProcessingMethodsTable,
      ProcessingMethodEntry,
      $$ProcessingMethodsTableFilterComposer,
      $$ProcessingMethodsTableOrderingComposer,
      $$ProcessingMethodsTableAnnotationComposer,
      $$ProcessingMethodsTableCreateCompanionBuilder,
      $$ProcessingMethodsTableUpdateCompanionBuilder,
      (ProcessingMethodEntry, $$ProcessingMethodsTableReferences),
      ProcessingMethodEntry,
      PrefetchHooks Function({bool beanOriginsRefs})
    >;
typedef $$BeanOriginsTableCreateCompanionBuilder =
    BeanOriginsCompanion Function({
      required String id,
      required String beanId,
      Value<String?> countryId,
      Value<String?> region,
      Value<String?> farm,
      Value<String?> farmer,
      Value<String?> varietyId,
      Value<String?> processingMethodId,
      Value<String?> elevation,
      Value<String?> harvestTime,
      Value<int?> percentage,
      Value<int> sortOrder,
      Value<int> rowid,
    });
typedef $$BeanOriginsTableUpdateCompanionBuilder =
    BeanOriginsCompanion Function({
      Value<String> id,
      Value<String> beanId,
      Value<String?> countryId,
      Value<String?> region,
      Value<String?> farm,
      Value<String?> farmer,
      Value<String?> varietyId,
      Value<String?> processingMethodId,
      Value<String?> elevation,
      Value<String?> harvestTime,
      Value<int?> percentage,
      Value<int> sortOrder,
      Value<int> rowid,
    });

final class $$BeanOriginsTableReferences
    extends
        BaseReferences<_$DriftAppDatabase, $BeanOriginsTable, BeanOriginEntry> {
  $$BeanOriginsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $BeansTable _beanIdTable(_$DriftAppDatabase db) => db.beans
      .createAlias($_aliasNameGenerator(db.beanOrigins.beanId, db.beans.id));

  $$BeansTableProcessedTableManager get beanId {
    final $_column = $_itemColumn<String>('bean_id')!;

    final manager = $$BeansTableTableManager(
      $_db,
      $_db.beans,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_beanIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $CountriesTable _countryIdTable(_$DriftAppDatabase db) =>
      db.countries.createAlias(
        $_aliasNameGenerator(db.beanOrigins.countryId, db.countries.id),
      );

  $$CountriesTableProcessedTableManager? get countryId {
    final $_column = $_itemColumn<String>('country_id');
    if ($_column == null) return null;
    final manager = $$CountriesTableTableManager(
      $_db,
      $_db.countries,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_countryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $VarietiesTable _varietyIdTable(_$DriftAppDatabase db) =>
      db.varieties.createAlias(
        $_aliasNameGenerator(db.beanOrigins.varietyId, db.varieties.id),
      );

  $$VarietiesTableProcessedTableManager? get varietyId {
    final $_column = $_itemColumn<String>('variety_id');
    if ($_column == null) return null;
    final manager = $$VarietiesTableTableManager(
      $_db,
      $_db.varieties,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_varietyIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ProcessingMethodsTable _processingMethodIdTable(
    _$DriftAppDatabase db,
  ) => db.processingMethods.createAlias(
    $_aliasNameGenerator(
      db.beanOrigins.processingMethodId,
      db.processingMethods.id,
    ),
  );

  $$ProcessingMethodsTableProcessedTableManager? get processingMethodId {
    final $_column = $_itemColumn<String>('processing_method_id');
    if ($_column == null) return null;
    final manager = $$ProcessingMethodsTableTableManager(
      $_db,
      $_db.processingMethods,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_processingMethodIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$BeanOriginsTableFilterComposer
    extends Composer<_$DriftAppDatabase, $BeanOriginsTable> {
  $$BeanOriginsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get region => $composableBuilder(
    column: $table.region,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get farm => $composableBuilder(
    column: $table.farm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get farmer => $composableBuilder(
    column: $table.farmer,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get elevation => $composableBuilder(
    column: $table.elevation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get harvestTime => $composableBuilder(
    column: $table.harvestTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get percentage => $composableBuilder(
    column: $table.percentage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  $$BeansTableFilterComposer get beanId {
    final $$BeansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableFilterComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CountriesTableFilterComposer get countryId {
    final $$CountriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.countryId,
      referencedTable: $db.countries,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CountriesTableFilterComposer(
            $db: $db,
            $table: $db.countries,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$VarietiesTableFilterComposer get varietyId {
    final $$VarietiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.varietyId,
      referencedTable: $db.varieties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VarietiesTableFilterComposer(
            $db: $db,
            $table: $db.varieties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProcessingMethodsTableFilterComposer get processingMethodId {
    final $$ProcessingMethodsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.processingMethodId,
      referencedTable: $db.processingMethods,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProcessingMethodsTableFilterComposer(
            $db: $db,
            $table: $db.processingMethods,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BeanOriginsTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $BeanOriginsTable> {
  $$BeanOriginsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get region => $composableBuilder(
    column: $table.region,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get farm => $composableBuilder(
    column: $table.farm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get farmer => $composableBuilder(
    column: $table.farmer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get elevation => $composableBuilder(
    column: $table.elevation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get harvestTime => $composableBuilder(
    column: $table.harvestTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get percentage => $composableBuilder(
    column: $table.percentage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  $$BeansTableOrderingComposer get beanId {
    final $$BeansTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableOrderingComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CountriesTableOrderingComposer get countryId {
    final $$CountriesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.countryId,
      referencedTable: $db.countries,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CountriesTableOrderingComposer(
            $db: $db,
            $table: $db.countries,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$VarietiesTableOrderingComposer get varietyId {
    final $$VarietiesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.varietyId,
      referencedTable: $db.varieties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VarietiesTableOrderingComposer(
            $db: $db,
            $table: $db.varieties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProcessingMethodsTableOrderingComposer get processingMethodId {
    final $$ProcessingMethodsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.processingMethodId,
      referencedTable: $db.processingMethods,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProcessingMethodsTableOrderingComposer(
            $db: $db,
            $table: $db.processingMethods,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BeanOriginsTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $BeanOriginsTable> {
  $$BeanOriginsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get region =>
      $composableBuilder(column: $table.region, builder: (column) => column);

  GeneratedColumn<String> get farm =>
      $composableBuilder(column: $table.farm, builder: (column) => column);

  GeneratedColumn<String> get farmer =>
      $composableBuilder(column: $table.farmer, builder: (column) => column);

  GeneratedColumn<String> get elevation =>
      $composableBuilder(column: $table.elevation, builder: (column) => column);

  GeneratedColumn<String> get harvestTime => $composableBuilder(
    column: $table.harvestTime,
    builder: (column) => column,
  );

  GeneratedColumn<int> get percentage => $composableBuilder(
    column: $table.percentage,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  $$BeansTableAnnotationComposer get beanId {
    final $$BeansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableAnnotationComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CountriesTableAnnotationComposer get countryId {
    final $$CountriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.countryId,
      referencedTable: $db.countries,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CountriesTableAnnotationComposer(
            $db: $db,
            $table: $db.countries,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$VarietiesTableAnnotationComposer get varietyId {
    final $$VarietiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.varietyId,
      referencedTable: $db.varieties,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VarietiesTableAnnotationComposer(
            $db: $db,
            $table: $db.varieties,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProcessingMethodsTableAnnotationComposer get processingMethodId {
    final $$ProcessingMethodsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.processingMethodId,
          referencedTable: $db.processingMethods,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProcessingMethodsTableAnnotationComposer(
                $db: $db,
                $table: $db.processingMethods,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$BeanOriginsTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $BeanOriginsTable,
          BeanOriginEntry,
          $$BeanOriginsTableFilterComposer,
          $$BeanOriginsTableOrderingComposer,
          $$BeanOriginsTableAnnotationComposer,
          $$BeanOriginsTableCreateCompanionBuilder,
          $$BeanOriginsTableUpdateCompanionBuilder,
          (BeanOriginEntry, $$BeanOriginsTableReferences),
          BeanOriginEntry,
          PrefetchHooks Function({
            bool beanId,
            bool countryId,
            bool varietyId,
            bool processingMethodId,
          })
        > {
  $$BeanOriginsTableTableManager(_$DriftAppDatabase db, $BeanOriginsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BeanOriginsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BeanOriginsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BeanOriginsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> beanId = const Value.absent(),
                Value<String?> countryId = const Value.absent(),
                Value<String?> region = const Value.absent(),
                Value<String?> farm = const Value.absent(),
                Value<String?> farmer = const Value.absent(),
                Value<String?> varietyId = const Value.absent(),
                Value<String?> processingMethodId = const Value.absent(),
                Value<String?> elevation = const Value.absent(),
                Value<String?> harvestTime = const Value.absent(),
                Value<int?> percentage = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BeanOriginsCompanion(
                id: id,
                beanId: beanId,
                countryId: countryId,
                region: region,
                farm: farm,
                farmer: farmer,
                varietyId: varietyId,
                processingMethodId: processingMethodId,
                elevation: elevation,
                harvestTime: harvestTime,
                percentage: percentage,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String beanId,
                Value<String?> countryId = const Value.absent(),
                Value<String?> region = const Value.absent(),
                Value<String?> farm = const Value.absent(),
                Value<String?> farmer = const Value.absent(),
                Value<String?> varietyId = const Value.absent(),
                Value<String?> processingMethodId = const Value.absent(),
                Value<String?> elevation = const Value.absent(),
                Value<String?> harvestTime = const Value.absent(),
                Value<int?> percentage = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BeanOriginsCompanion.insert(
                id: id,
                beanId: beanId,
                countryId: countryId,
                region: region,
                farm: farm,
                farmer: farmer,
                varietyId: varietyId,
                processingMethodId: processingMethodId,
                elevation: elevation,
                harvestTime: harvestTime,
                percentage: percentage,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$BeanOriginsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                beanId = false,
                countryId = false,
                varietyId = false,
                processingMethodId = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (beanId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.beanId,
                                    referencedTable:
                                        $$BeanOriginsTableReferences
                                            ._beanIdTable(db),
                                    referencedColumn:
                                        $$BeanOriginsTableReferences
                                            ._beanIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (countryId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.countryId,
                                    referencedTable:
                                        $$BeanOriginsTableReferences
                                            ._countryIdTable(db),
                                    referencedColumn:
                                        $$BeanOriginsTableReferences
                                            ._countryIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (varietyId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.varietyId,
                                    referencedTable:
                                        $$BeanOriginsTableReferences
                                            ._varietyIdTable(db),
                                    referencedColumn:
                                        $$BeanOriginsTableReferences
                                            ._varietyIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (processingMethodId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.processingMethodId,
                                    referencedTable:
                                        $$BeanOriginsTableReferences
                                            ._processingMethodIdTable(db),
                                    referencedColumn:
                                        $$BeanOriginsTableReferences
                                            ._processingMethodIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$BeanOriginsTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $BeanOriginsTable,
      BeanOriginEntry,
      $$BeanOriginsTableFilterComposer,
      $$BeanOriginsTableOrderingComposer,
      $$BeanOriginsTableAnnotationComposer,
      $$BeanOriginsTableCreateCompanionBuilder,
      $$BeanOriginsTableUpdateCompanionBuilder,
      (BeanOriginEntry, $$BeanOriginsTableReferences),
      BeanOriginEntry,
      PrefetchHooks Function({
        bool beanId,
        bool countryId,
        bool varietyId,
        bool processingMethodId,
      })
    >;
typedef $$FlavorDescriptorsTableCreateCompanionBuilder =
    FlavorDescriptorsCompanion Function({
      required String id,
      required String name,
      Value<String?> nameJa,
      Value<String?> parentId,
      required int tier,
      Value<String?> scaReference,
      Value<int> sortOrder,
      Value<int> rowid,
    });
typedef $$FlavorDescriptorsTableUpdateCompanionBuilder =
    FlavorDescriptorsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> nameJa,
      Value<String?> parentId,
      Value<int> tier,
      Value<String?> scaReference,
      Value<int> sortOrder,
      Value<int> rowid,
    });

final class $$FlavorDescriptorsTableReferences
    extends
        BaseReferences<
          _$DriftAppDatabase,
          $FlavorDescriptorsTable,
          FlavorDescriptorEntry
        > {
  $$FlavorDescriptorsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $FlavorDescriptorsTable _parentIdTable(_$DriftAppDatabase db) =>
      db.flavorDescriptors.createAlias(
        $_aliasNameGenerator(
          db.flavorDescriptors.parentId,
          db.flavorDescriptors.id,
        ),
      );

  $$FlavorDescriptorsTableProcessedTableManager? get parentId {
    final $_column = $_itemColumn<String>('parent_id');
    if ($_column == null) return null;
    final manager = $$FlavorDescriptorsTableTableManager(
      $_db,
      $_db.flavorDescriptors,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_parentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$BeanFlavorNotesTable, List<BeanFlavorNoteEntry>>
  _beanFlavorNotesRefsTable(_$DriftAppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.beanFlavorNotes,
        aliasName: $_aliasNameGenerator(
          db.flavorDescriptors.id,
          db.beanFlavorNotes.flavorDescriptorId,
        ),
      );

  $$BeanFlavorNotesTableProcessedTableManager get beanFlavorNotesRefs {
    final manager =
        $$BeanFlavorNotesTableTableManager($_db, $_db.beanFlavorNotes).filter(
          (f) => f.flavorDescriptorId.id.sqlEquals($_itemColumn<String>('id')!),
        );

    final cache = $_typedResult.readTableOrNull(
      _beanFlavorNotesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$FlavorDescriptorsTableFilterComposer
    extends Composer<_$DriftAppDatabase, $FlavorDescriptorsTable> {
  $$FlavorDescriptorsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameJa => $composableBuilder(
    column: $table.nameJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tier => $composableBuilder(
    column: $table.tier,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get scaReference => $composableBuilder(
    column: $table.scaReference,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  $$FlavorDescriptorsTableFilterComposer get parentId {
    final $$FlavorDescriptorsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parentId,
      referencedTable: $db.flavorDescriptors,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FlavorDescriptorsTableFilterComposer(
            $db: $db,
            $table: $db.flavorDescriptors,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> beanFlavorNotesRefs(
    Expression<bool> Function($$BeanFlavorNotesTableFilterComposer f) f,
  ) {
    final $$BeanFlavorNotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanFlavorNotes,
      getReferencedColumn: (t) => t.flavorDescriptorId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanFlavorNotesTableFilterComposer(
            $db: $db,
            $table: $db.beanFlavorNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FlavorDescriptorsTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $FlavorDescriptorsTable> {
  $$FlavorDescriptorsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameJa => $composableBuilder(
    column: $table.nameJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tier => $composableBuilder(
    column: $table.tier,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get scaReference => $composableBuilder(
    column: $table.scaReference,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  $$FlavorDescriptorsTableOrderingComposer get parentId {
    final $$FlavorDescriptorsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parentId,
      referencedTable: $db.flavorDescriptors,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FlavorDescriptorsTableOrderingComposer(
            $db: $db,
            $table: $db.flavorDescriptors,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FlavorDescriptorsTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $FlavorDescriptorsTable> {
  $$FlavorDescriptorsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get nameJa =>
      $composableBuilder(column: $table.nameJa, builder: (column) => column);

  GeneratedColumn<int> get tier =>
      $composableBuilder(column: $table.tier, builder: (column) => column);

  GeneratedColumn<String> get scaReference => $composableBuilder(
    column: $table.scaReference,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  $$FlavorDescriptorsTableAnnotationComposer get parentId {
    final $$FlavorDescriptorsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.parentId,
          referencedTable: $db.flavorDescriptors,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$FlavorDescriptorsTableAnnotationComposer(
                $db: $db,
                $table: $db.flavorDescriptors,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  Expression<T> beanFlavorNotesRefs<T extends Object>(
    Expression<T> Function($$BeanFlavorNotesTableAnnotationComposer a) f,
  ) {
    final $$BeanFlavorNotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.beanFlavorNotes,
      getReferencedColumn: (t) => t.flavorDescriptorId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeanFlavorNotesTableAnnotationComposer(
            $db: $db,
            $table: $db.beanFlavorNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FlavorDescriptorsTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $FlavorDescriptorsTable,
          FlavorDescriptorEntry,
          $$FlavorDescriptorsTableFilterComposer,
          $$FlavorDescriptorsTableOrderingComposer,
          $$FlavorDescriptorsTableAnnotationComposer,
          $$FlavorDescriptorsTableCreateCompanionBuilder,
          $$FlavorDescriptorsTableUpdateCompanionBuilder,
          (FlavorDescriptorEntry, $$FlavorDescriptorsTableReferences),
          FlavorDescriptorEntry,
          PrefetchHooks Function({bool parentId, bool beanFlavorNotesRefs})
        > {
  $$FlavorDescriptorsTableTableManager(
    _$DriftAppDatabase db,
    $FlavorDescriptorsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FlavorDescriptorsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FlavorDescriptorsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FlavorDescriptorsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> nameJa = const Value.absent(),
                Value<String?> parentId = const Value.absent(),
                Value<int> tier = const Value.absent(),
                Value<String?> scaReference = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FlavorDescriptorsCompanion(
                id: id,
                name: name,
                nameJa: nameJa,
                parentId: parentId,
                tier: tier,
                scaReference: scaReference,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> nameJa = const Value.absent(),
                Value<String?> parentId = const Value.absent(),
                required int tier,
                Value<String?> scaReference = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FlavorDescriptorsCompanion.insert(
                id: id,
                name: name,
                nameJa: nameJa,
                parentId: parentId,
                tier: tier,
                scaReference: scaReference,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FlavorDescriptorsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({parentId = false, beanFlavorNotesRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (beanFlavorNotesRefs) db.beanFlavorNotes,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (parentId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.parentId,
                                    referencedTable:
                                        $$FlavorDescriptorsTableReferences
                                            ._parentIdTable(db),
                                    referencedColumn:
                                        $$FlavorDescriptorsTableReferences
                                            ._parentIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (beanFlavorNotesRefs)
                        await $_getPrefetchedData<
                          FlavorDescriptorEntry,
                          $FlavorDescriptorsTable,
                          BeanFlavorNoteEntry
                        >(
                          currentTable: table,
                          referencedTable: $$FlavorDescriptorsTableReferences
                              ._beanFlavorNotesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$FlavorDescriptorsTableReferences(
                                db,
                                table,
                                p0,
                              ).beanFlavorNotesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.flavorDescriptorId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$FlavorDescriptorsTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $FlavorDescriptorsTable,
      FlavorDescriptorEntry,
      $$FlavorDescriptorsTableFilterComposer,
      $$FlavorDescriptorsTableOrderingComposer,
      $$FlavorDescriptorsTableAnnotationComposer,
      $$FlavorDescriptorsTableCreateCompanionBuilder,
      $$FlavorDescriptorsTableUpdateCompanionBuilder,
      (FlavorDescriptorEntry, $$FlavorDescriptorsTableReferences),
      FlavorDescriptorEntry,
      PrefetchHooks Function({bool parentId, bool beanFlavorNotesRefs})
    >;
typedef $$BeanFlavorNotesTableCreateCompanionBuilder =
    BeanFlavorNotesCompanion Function({
      required String beanId,
      required String flavorDescriptorId,
      Value<int> rowid,
    });
typedef $$BeanFlavorNotesTableUpdateCompanionBuilder =
    BeanFlavorNotesCompanion Function({
      Value<String> beanId,
      Value<String> flavorDescriptorId,
      Value<int> rowid,
    });

final class $$BeanFlavorNotesTableReferences
    extends
        BaseReferences<
          _$DriftAppDatabase,
          $BeanFlavorNotesTable,
          BeanFlavorNoteEntry
        > {
  $$BeanFlavorNotesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $BeansTable _beanIdTable(_$DriftAppDatabase db) =>
      db.beans.createAlias(
        $_aliasNameGenerator(db.beanFlavorNotes.beanId, db.beans.id),
      );

  $$BeansTableProcessedTableManager get beanId {
    final $_column = $_itemColumn<String>('bean_id')!;

    final manager = $$BeansTableTableManager(
      $_db,
      $_db.beans,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_beanIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $FlavorDescriptorsTable _flavorDescriptorIdTable(
    _$DriftAppDatabase db,
  ) => db.flavorDescriptors.createAlias(
    $_aliasNameGenerator(
      db.beanFlavorNotes.flavorDescriptorId,
      db.flavorDescriptors.id,
    ),
  );

  $$FlavorDescriptorsTableProcessedTableManager get flavorDescriptorId {
    final $_column = $_itemColumn<String>('flavor_descriptor_id')!;

    final manager = $$FlavorDescriptorsTableTableManager(
      $_db,
      $_db.flavorDescriptors,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_flavorDescriptorIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$BeanFlavorNotesTableFilterComposer
    extends Composer<_$DriftAppDatabase, $BeanFlavorNotesTable> {
  $$BeanFlavorNotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$BeansTableFilterComposer get beanId {
    final $$BeansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableFilterComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$FlavorDescriptorsTableFilterComposer get flavorDescriptorId {
    final $$FlavorDescriptorsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.flavorDescriptorId,
      referencedTable: $db.flavorDescriptors,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FlavorDescriptorsTableFilterComposer(
            $db: $db,
            $table: $db.flavorDescriptors,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BeanFlavorNotesTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $BeanFlavorNotesTable> {
  $$BeanFlavorNotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$BeansTableOrderingComposer get beanId {
    final $$BeansTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableOrderingComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$FlavorDescriptorsTableOrderingComposer get flavorDescriptorId {
    final $$FlavorDescriptorsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.flavorDescriptorId,
      referencedTable: $db.flavorDescriptors,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FlavorDescriptorsTableOrderingComposer(
            $db: $db,
            $table: $db.flavorDescriptors,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BeanFlavorNotesTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $BeanFlavorNotesTable> {
  $$BeanFlavorNotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$BeansTableAnnotationComposer get beanId {
    final $$BeansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableAnnotationComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$FlavorDescriptorsTableAnnotationComposer get flavorDescriptorId {
    final $$FlavorDescriptorsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.flavorDescriptorId,
          referencedTable: $db.flavorDescriptors,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$FlavorDescriptorsTableAnnotationComposer(
                $db: $db,
                $table: $db.flavorDescriptors,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$BeanFlavorNotesTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $BeanFlavorNotesTable,
          BeanFlavorNoteEntry,
          $$BeanFlavorNotesTableFilterComposer,
          $$BeanFlavorNotesTableOrderingComposer,
          $$BeanFlavorNotesTableAnnotationComposer,
          $$BeanFlavorNotesTableCreateCompanionBuilder,
          $$BeanFlavorNotesTableUpdateCompanionBuilder,
          (BeanFlavorNoteEntry, $$BeanFlavorNotesTableReferences),
          BeanFlavorNoteEntry,
          PrefetchHooks Function({bool beanId, bool flavorDescriptorId})
        > {
  $$BeanFlavorNotesTableTableManager(
    _$DriftAppDatabase db,
    $BeanFlavorNotesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BeanFlavorNotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BeanFlavorNotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BeanFlavorNotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> beanId = const Value.absent(),
                Value<String> flavorDescriptorId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BeanFlavorNotesCompanion(
                beanId: beanId,
                flavorDescriptorId: flavorDescriptorId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String beanId,
                required String flavorDescriptorId,
                Value<int> rowid = const Value.absent(),
              }) => BeanFlavorNotesCompanion.insert(
                beanId: beanId,
                flavorDescriptorId: flavorDescriptorId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$BeanFlavorNotesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({beanId = false, flavorDescriptorId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (beanId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.beanId,
                                    referencedTable:
                                        $$BeanFlavorNotesTableReferences
                                            ._beanIdTable(db),
                                    referencedColumn:
                                        $$BeanFlavorNotesTableReferences
                                            ._beanIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (flavorDescriptorId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.flavorDescriptorId,
                                    referencedTable:
                                        $$BeanFlavorNotesTableReferences
                                            ._flavorDescriptorIdTable(db),
                                    referencedColumn:
                                        $$BeanFlavorNotesTableReferences
                                            ._flavorDescriptorIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$BeanFlavorNotesTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $BeanFlavorNotesTable,
      BeanFlavorNoteEntry,
      $$BeanFlavorNotesTableFilterComposer,
      $$BeanFlavorNotesTableOrderingComposer,
      $$BeanFlavorNotesTableAnnotationComposer,
      $$BeanFlavorNotesTableCreateCompanionBuilder,
      $$BeanFlavorNotesTableUpdateCompanionBuilder,
      (BeanFlavorNoteEntry, $$BeanFlavorNotesTableReferences),
      BeanFlavorNoteEntry,
      PrefetchHooks Function({bool beanId, bool flavorDescriptorId})
    >;
typedef $$DrinkLogsTableCreateCompanionBuilder =
    DrinkLogsCompanion Function({
      required String id,
      required String userId,
      required String beanId,
      required DateTime drunkAt,
      Value<int?> rating,
      Value<String?> memo,
      Value<int?> acidity,
      Value<int?> aroma,
      Value<int?> sweetness,
      Value<int?> bitterness,
      Value<int?> body,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$DrinkLogsTableUpdateCompanionBuilder =
    DrinkLogsCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> beanId,
      Value<DateTime> drunkAt,
      Value<int?> rating,
      Value<String?> memo,
      Value<int?> acidity,
      Value<int?> aroma,
      Value<int?> sweetness,
      Value<int?> bitterness,
      Value<int?> body,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

final class $$DrinkLogsTableReferences
    extends BaseReferences<_$DriftAppDatabase, $DrinkLogsTable, DrinkLogEntry> {
  $$DrinkLogsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userIdTable(_$DriftAppDatabase db) => db.users
      .createAlias($_aliasNameGenerator(db.drinkLogs.userId, db.users.id));

  $$UsersTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $BeansTable _beanIdTable(_$DriftAppDatabase db) => db.beans
      .createAlias($_aliasNameGenerator(db.drinkLogs.beanId, db.beans.id));

  $$BeansTableProcessedTableManager get beanId {
    final $_column = $_itemColumn<String>('bean_id')!;

    final manager = $$BeansTableTableManager(
      $_db,
      $_db.beans,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_beanIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$TastingNotesTable, List<TastingNoteEntry>>
  _tastingNotesRefsTable(_$DriftAppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.tastingNotes,
        aliasName: $_aliasNameGenerator(
          db.drinkLogs.id,
          db.tastingNotes.drinkLogId,
        ),
      );

  $$TastingNotesTableProcessedTableManager get tastingNotesRefs {
    final manager = $$TastingNotesTableTableManager(
      $_db,
      $_db.tastingNotes,
    ).filter((f) => f.drinkLogId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_tastingNotesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$DrinkLogsTableFilterComposer
    extends Composer<_$DriftAppDatabase, $DrinkLogsTable> {
  $$DrinkLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get drunkAt => $composableBuilder(
    column: $table.drunkAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get memo => $composableBuilder(
    column: $table.memo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get acidity => $composableBuilder(
    column: $table.acidity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get aroma => $composableBuilder(
    column: $table.aroma,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sweetness => $composableBuilder(
    column: $table.sweetness,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bitterness => $composableBuilder(
    column: $table.bitterness,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userId {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$BeansTableFilterComposer get beanId {
    final $$BeansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableFilterComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> tastingNotesRefs(
    Expression<bool> Function($$TastingNotesTableFilterComposer f) f,
  ) {
    final $$TastingNotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tastingNotes,
      getReferencedColumn: (t) => t.drinkLogId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TastingNotesTableFilterComposer(
            $db: $db,
            $table: $db.tastingNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$DrinkLogsTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $DrinkLogsTable> {
  $$DrinkLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get drunkAt => $composableBuilder(
    column: $table.drunkAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get memo => $composableBuilder(
    column: $table.memo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get acidity => $composableBuilder(
    column: $table.acidity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get aroma => $composableBuilder(
    column: $table.aroma,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sweetness => $composableBuilder(
    column: $table.sweetness,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bitterness => $composableBuilder(
    column: $table.bitterness,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userId {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$BeansTableOrderingComposer get beanId {
    final $$BeansTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableOrderingComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DrinkLogsTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $DrinkLogsTable> {
  $$DrinkLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get drunkAt =>
      $composableBuilder(column: $table.drunkAt, builder: (column) => column);

  GeneratedColumn<int> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<String> get memo =>
      $composableBuilder(column: $table.memo, builder: (column) => column);

  GeneratedColumn<int> get acidity =>
      $composableBuilder(column: $table.acidity, builder: (column) => column);

  GeneratedColumn<int> get aroma =>
      $composableBuilder(column: $table.aroma, builder: (column) => column);

  GeneratedColumn<int> get sweetness =>
      $composableBuilder(column: $table.sweetness, builder: (column) => column);

  GeneratedColumn<int> get bitterness => $composableBuilder(
    column: $table.bitterness,
    builder: (column) => column,
  );

  GeneratedColumn<int> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$UsersTableAnnotationComposer get userId {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$BeansTableAnnotationComposer get beanId {
    final $$BeansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableAnnotationComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> tastingNotesRefs<T extends Object>(
    Expression<T> Function($$TastingNotesTableAnnotationComposer a) f,
  ) {
    final $$TastingNotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tastingNotes,
      getReferencedColumn: (t) => t.drinkLogId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TastingNotesTableAnnotationComposer(
            $db: $db,
            $table: $db.tastingNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$DrinkLogsTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $DrinkLogsTable,
          DrinkLogEntry,
          $$DrinkLogsTableFilterComposer,
          $$DrinkLogsTableOrderingComposer,
          $$DrinkLogsTableAnnotationComposer,
          $$DrinkLogsTableCreateCompanionBuilder,
          $$DrinkLogsTableUpdateCompanionBuilder,
          (DrinkLogEntry, $$DrinkLogsTableReferences),
          DrinkLogEntry,
          PrefetchHooks Function({
            bool userId,
            bool beanId,
            bool tastingNotesRefs,
          })
        > {
  $$DrinkLogsTableTableManager(_$DriftAppDatabase db, $DrinkLogsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DrinkLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DrinkLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DrinkLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> beanId = const Value.absent(),
                Value<DateTime> drunkAt = const Value.absent(),
                Value<int?> rating = const Value.absent(),
                Value<String?> memo = const Value.absent(),
                Value<int?> acidity = const Value.absent(),
                Value<int?> aroma = const Value.absent(),
                Value<int?> sweetness = const Value.absent(),
                Value<int?> bitterness = const Value.absent(),
                Value<int?> body = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DrinkLogsCompanion(
                id: id,
                userId: userId,
                beanId: beanId,
                drunkAt: drunkAt,
                rating: rating,
                memo: memo,
                acidity: acidity,
                aroma: aroma,
                sweetness: sweetness,
                bitterness: bitterness,
                body: body,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String beanId,
                required DateTime drunkAt,
                Value<int?> rating = const Value.absent(),
                Value<String?> memo = const Value.absent(),
                Value<int?> acidity = const Value.absent(),
                Value<int?> aroma = const Value.absent(),
                Value<int?> sweetness = const Value.absent(),
                Value<int?> bitterness = const Value.absent(),
                Value<int?> body = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DrinkLogsCompanion.insert(
                id: id,
                userId: userId,
                beanId: beanId,
                drunkAt: drunkAt,
                rating: rating,
                memo: memo,
                acidity: acidity,
                aroma: aroma,
                sweetness: sweetness,
                bitterness: bitterness,
                body: body,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DrinkLogsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({userId = false, beanId = false, tastingNotesRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (tastingNotesRefs) db.tastingNotes,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (userId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.userId,
                                    referencedTable: $$DrinkLogsTableReferences
                                        ._userIdTable(db),
                                    referencedColumn: $$DrinkLogsTableReferences
                                        ._userIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }
                        if (beanId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.beanId,
                                    referencedTable: $$DrinkLogsTableReferences
                                        ._beanIdTable(db),
                                    referencedColumn: $$DrinkLogsTableReferences
                                        ._beanIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (tastingNotesRefs)
                        await $_getPrefetchedData<
                          DrinkLogEntry,
                          $DrinkLogsTable,
                          TastingNoteEntry
                        >(
                          currentTable: table,
                          referencedTable: $$DrinkLogsTableReferences
                              ._tastingNotesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$DrinkLogsTableReferences(
                                db,
                                table,
                                p0,
                              ).tastingNotesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.drinkLogId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$DrinkLogsTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $DrinkLogsTable,
      DrinkLogEntry,
      $$DrinkLogsTableFilterComposer,
      $$DrinkLogsTableOrderingComposer,
      $$DrinkLogsTableAnnotationComposer,
      $$DrinkLogsTableCreateCompanionBuilder,
      $$DrinkLogsTableUpdateCompanionBuilder,
      (DrinkLogEntry, $$DrinkLogsTableReferences),
      DrinkLogEntry,
      PrefetchHooks Function({bool userId, bool beanId, bool tastingNotesRefs})
    >;
typedef $$TastingNotesTableCreateCompanionBuilder =
    TastingNotesCompanion Function({
      required String id,
      required String userId,
      required String beanId,
      Value<String?> drinkLogId,
      Value<String> protocolVersion,
      Value<double?> fragranceAroma,
      Value<double?> flavor,
      Value<double?> aftertaste,
      Value<double?> acidity,
      Value<double?> body,
      Value<double?> balance,
      Value<double?> uniformity,
      Value<double?> cleanCup,
      Value<double?> sweetness,
      Value<double?> overall,
      Value<double> defects,
      Value<double?> totalScore,
      Value<String?> notes,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$TastingNotesTableUpdateCompanionBuilder =
    TastingNotesCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> beanId,
      Value<String?> drinkLogId,
      Value<String> protocolVersion,
      Value<double?> fragranceAroma,
      Value<double?> flavor,
      Value<double?> aftertaste,
      Value<double?> acidity,
      Value<double?> body,
      Value<double?> balance,
      Value<double?> uniformity,
      Value<double?> cleanCup,
      Value<double?> sweetness,
      Value<double?> overall,
      Value<double> defects,
      Value<double?> totalScore,
      Value<String?> notes,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

final class $$TastingNotesTableReferences
    extends
        BaseReferences<
          _$DriftAppDatabase,
          $TastingNotesTable,
          TastingNoteEntry
        > {
  $$TastingNotesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userIdTable(_$DriftAppDatabase db) => db.users
      .createAlias($_aliasNameGenerator(db.tastingNotes.userId, db.users.id));

  $$UsersTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $BeansTable _beanIdTable(_$DriftAppDatabase db) => db.beans
      .createAlias($_aliasNameGenerator(db.tastingNotes.beanId, db.beans.id));

  $$BeansTableProcessedTableManager get beanId {
    final $_column = $_itemColumn<String>('bean_id')!;

    final manager = $$BeansTableTableManager(
      $_db,
      $_db.beans,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_beanIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $DrinkLogsTable _drinkLogIdTable(_$DriftAppDatabase db) =>
      db.drinkLogs.createAlias(
        $_aliasNameGenerator(db.tastingNotes.drinkLogId, db.drinkLogs.id),
      );

  $$DrinkLogsTableProcessedTableManager? get drinkLogId {
    final $_column = $_itemColumn<String>('drink_log_id');
    if ($_column == null) return null;
    final manager = $$DrinkLogsTableTableManager(
      $_db,
      $_db.drinkLogs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_drinkLogIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TastingNotesTableFilterComposer
    extends Composer<_$DriftAppDatabase, $TastingNotesTable> {
  $$TastingNotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get protocolVersion => $composableBuilder(
    column: $table.protocolVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fragranceAroma => $composableBuilder(
    column: $table.fragranceAroma,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get flavor => $composableBuilder(
    column: $table.flavor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get aftertaste => $composableBuilder(
    column: $table.aftertaste,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get acidity => $composableBuilder(
    column: $table.acidity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get balance => $composableBuilder(
    column: $table.balance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get uniformity => $composableBuilder(
    column: $table.uniformity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get cleanCup => $composableBuilder(
    column: $table.cleanCup,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sweetness => $composableBuilder(
    column: $table.sweetness,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get overall => $composableBuilder(
    column: $table.overall,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get defects => $composableBuilder(
    column: $table.defects,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalScore => $composableBuilder(
    column: $table.totalScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userId {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$BeansTableFilterComposer get beanId {
    final $$BeansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableFilterComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$DrinkLogsTableFilterComposer get drinkLogId {
    final $$DrinkLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.drinkLogId,
      referencedTable: $db.drinkLogs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DrinkLogsTableFilterComposer(
            $db: $db,
            $table: $db.drinkLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TastingNotesTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $TastingNotesTable> {
  $$TastingNotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get protocolVersion => $composableBuilder(
    column: $table.protocolVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fragranceAroma => $composableBuilder(
    column: $table.fragranceAroma,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get flavor => $composableBuilder(
    column: $table.flavor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get aftertaste => $composableBuilder(
    column: $table.aftertaste,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get acidity => $composableBuilder(
    column: $table.acidity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get balance => $composableBuilder(
    column: $table.balance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get uniformity => $composableBuilder(
    column: $table.uniformity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get cleanCup => $composableBuilder(
    column: $table.cleanCup,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sweetness => $composableBuilder(
    column: $table.sweetness,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get overall => $composableBuilder(
    column: $table.overall,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get defects => $composableBuilder(
    column: $table.defects,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalScore => $composableBuilder(
    column: $table.totalScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userId {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$BeansTableOrderingComposer get beanId {
    final $$BeansTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableOrderingComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$DrinkLogsTableOrderingComposer get drinkLogId {
    final $$DrinkLogsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.drinkLogId,
      referencedTable: $db.drinkLogs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DrinkLogsTableOrderingComposer(
            $db: $db,
            $table: $db.drinkLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TastingNotesTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $TastingNotesTable> {
  $$TastingNotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get protocolVersion => $composableBuilder(
    column: $table.protocolVersion,
    builder: (column) => column,
  );

  GeneratedColumn<double> get fragranceAroma => $composableBuilder(
    column: $table.fragranceAroma,
    builder: (column) => column,
  );

  GeneratedColumn<double> get flavor =>
      $composableBuilder(column: $table.flavor, builder: (column) => column);

  GeneratedColumn<double> get aftertaste => $composableBuilder(
    column: $table.aftertaste,
    builder: (column) => column,
  );

  GeneratedColumn<double> get acidity =>
      $composableBuilder(column: $table.acidity, builder: (column) => column);

  GeneratedColumn<double> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<double> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);

  GeneratedColumn<double> get uniformity => $composableBuilder(
    column: $table.uniformity,
    builder: (column) => column,
  );

  GeneratedColumn<double> get cleanCup =>
      $composableBuilder(column: $table.cleanCup, builder: (column) => column);

  GeneratedColumn<double> get sweetness =>
      $composableBuilder(column: $table.sweetness, builder: (column) => column);

  GeneratedColumn<double> get overall =>
      $composableBuilder(column: $table.overall, builder: (column) => column);

  GeneratedColumn<double> get defects =>
      $composableBuilder(column: $table.defects, builder: (column) => column);

  GeneratedColumn<double> get totalScore => $composableBuilder(
    column: $table.totalScore,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$UsersTableAnnotationComposer get userId {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userId,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$BeansTableAnnotationComposer get beanId {
    final $$BeansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.beanId,
      referencedTable: $db.beans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BeansTableAnnotationComposer(
            $db: $db,
            $table: $db.beans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$DrinkLogsTableAnnotationComposer get drinkLogId {
    final $$DrinkLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.drinkLogId,
      referencedTable: $db.drinkLogs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DrinkLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.drinkLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TastingNotesTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $TastingNotesTable,
          TastingNoteEntry,
          $$TastingNotesTableFilterComposer,
          $$TastingNotesTableOrderingComposer,
          $$TastingNotesTableAnnotationComposer,
          $$TastingNotesTableCreateCompanionBuilder,
          $$TastingNotesTableUpdateCompanionBuilder,
          (TastingNoteEntry, $$TastingNotesTableReferences),
          TastingNoteEntry,
          PrefetchHooks Function({bool userId, bool beanId, bool drinkLogId})
        > {
  $$TastingNotesTableTableManager(
    _$DriftAppDatabase db,
    $TastingNotesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TastingNotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TastingNotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TastingNotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> beanId = const Value.absent(),
                Value<String?> drinkLogId = const Value.absent(),
                Value<String> protocolVersion = const Value.absent(),
                Value<double?> fragranceAroma = const Value.absent(),
                Value<double?> flavor = const Value.absent(),
                Value<double?> aftertaste = const Value.absent(),
                Value<double?> acidity = const Value.absent(),
                Value<double?> body = const Value.absent(),
                Value<double?> balance = const Value.absent(),
                Value<double?> uniformity = const Value.absent(),
                Value<double?> cleanCup = const Value.absent(),
                Value<double?> sweetness = const Value.absent(),
                Value<double?> overall = const Value.absent(),
                Value<double> defects = const Value.absent(),
                Value<double?> totalScore = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TastingNotesCompanion(
                id: id,
                userId: userId,
                beanId: beanId,
                drinkLogId: drinkLogId,
                protocolVersion: protocolVersion,
                fragranceAroma: fragranceAroma,
                flavor: flavor,
                aftertaste: aftertaste,
                acidity: acidity,
                body: body,
                balance: balance,
                uniformity: uniformity,
                cleanCup: cleanCup,
                sweetness: sweetness,
                overall: overall,
                defects: defects,
                totalScore: totalScore,
                notes: notes,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String beanId,
                Value<String?> drinkLogId = const Value.absent(),
                Value<String> protocolVersion = const Value.absent(),
                Value<double?> fragranceAroma = const Value.absent(),
                Value<double?> flavor = const Value.absent(),
                Value<double?> aftertaste = const Value.absent(),
                Value<double?> acidity = const Value.absent(),
                Value<double?> body = const Value.absent(),
                Value<double?> balance = const Value.absent(),
                Value<double?> uniformity = const Value.absent(),
                Value<double?> cleanCup = const Value.absent(),
                Value<double?> sweetness = const Value.absent(),
                Value<double?> overall = const Value.absent(),
                Value<double> defects = const Value.absent(),
                Value<double?> totalScore = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TastingNotesCompanion.insert(
                id: id,
                userId: userId,
                beanId: beanId,
                drinkLogId: drinkLogId,
                protocolVersion: protocolVersion,
                fragranceAroma: fragranceAroma,
                flavor: flavor,
                aftertaste: aftertaste,
                acidity: acidity,
                body: body,
                balance: balance,
                uniformity: uniformity,
                cleanCup: cleanCup,
                sweetness: sweetness,
                overall: overall,
                defects: defects,
                totalScore: totalScore,
                notes: notes,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TastingNotesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({userId = false, beanId = false, drinkLogId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (userId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.userId,
                                    referencedTable:
                                        $$TastingNotesTableReferences
                                            ._userIdTable(db),
                                    referencedColumn:
                                        $$TastingNotesTableReferences
                                            ._userIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (beanId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.beanId,
                                    referencedTable:
                                        $$TastingNotesTableReferences
                                            ._beanIdTable(db),
                                    referencedColumn:
                                        $$TastingNotesTableReferences
                                            ._beanIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (drinkLogId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.drinkLogId,
                                    referencedTable:
                                        $$TastingNotesTableReferences
                                            ._drinkLogIdTable(db),
                                    referencedColumn:
                                        $$TastingNotesTableReferences
                                            ._drinkLogIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$TastingNotesTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $TastingNotesTable,
      TastingNoteEntry,
      $$TastingNotesTableFilterComposer,
      $$TastingNotesTableOrderingComposer,
      $$TastingNotesTableAnnotationComposer,
      $$TastingNotesTableCreateCompanionBuilder,
      $$TastingNotesTableUpdateCompanionBuilder,
      (TastingNoteEntry, $$TastingNotesTableReferences),
      TastingNoteEntry,
      PrefetchHooks Function({bool userId, bool beanId, bool drinkLogId})
    >;
typedef $$PendingExtractionsTableCreateCompanionBuilder =
    PendingExtractionsCompanion Function({
      required String id,
      required String imagePath,
      required DateTime createdAt,
      Value<String> status,
      Value<int> retryCount,
      Value<String?> errorMessage,
      Value<int> rowid,
    });
typedef $$PendingExtractionsTableUpdateCompanionBuilder =
    PendingExtractionsCompanion Function({
      Value<String> id,
      Value<String> imagePath,
      Value<DateTime> createdAt,
      Value<String> status,
      Value<int> retryCount,
      Value<String?> errorMessage,
      Value<int> rowid,
    });

class $$PendingExtractionsTableFilterComposer
    extends Composer<_$DriftAppDatabase, $PendingExtractionsTable> {
  $$PendingExtractionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imagePath => $composableBuilder(
    column: $table.imagePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get errorMessage => $composableBuilder(
    column: $table.errorMessage,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PendingExtractionsTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $PendingExtractionsTable> {
  $$PendingExtractionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imagePath => $composableBuilder(
    column: $table.imagePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get errorMessage => $composableBuilder(
    column: $table.errorMessage,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PendingExtractionsTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $PendingExtractionsTable> {
  $$PendingExtractionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get imagePath =>
      $composableBuilder(column: $table.imagePath, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get errorMessage => $composableBuilder(
    column: $table.errorMessage,
    builder: (column) => column,
  );
}

class $$PendingExtractionsTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $PendingExtractionsTable,
          PendingExtractionEntry,
          $$PendingExtractionsTableFilterComposer,
          $$PendingExtractionsTableOrderingComposer,
          $$PendingExtractionsTableAnnotationComposer,
          $$PendingExtractionsTableCreateCompanionBuilder,
          $$PendingExtractionsTableUpdateCompanionBuilder,
          (
            PendingExtractionEntry,
            BaseReferences<
              _$DriftAppDatabase,
              $PendingExtractionsTable,
              PendingExtractionEntry
            >,
          ),
          PendingExtractionEntry,
          PrefetchHooks Function()
        > {
  $$PendingExtractionsTableTableManager(
    _$DriftAppDatabase db,
    $PendingExtractionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PendingExtractionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PendingExtractionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PendingExtractionsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> imagePath = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> retryCount = const Value.absent(),
                Value<String?> errorMessage = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PendingExtractionsCompanion(
                id: id,
                imagePath: imagePath,
                createdAt: createdAt,
                status: status,
                retryCount: retryCount,
                errorMessage: errorMessage,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String imagePath,
                required DateTime createdAt,
                Value<String> status = const Value.absent(),
                Value<int> retryCount = const Value.absent(),
                Value<String?> errorMessage = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PendingExtractionsCompanion.insert(
                id: id,
                imagePath: imagePath,
                createdAt: createdAt,
                status: status,
                retryCount: retryCount,
                errorMessage: errorMessage,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PendingExtractionsTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $PendingExtractionsTable,
      PendingExtractionEntry,
      $$PendingExtractionsTableFilterComposer,
      $$PendingExtractionsTableOrderingComposer,
      $$PendingExtractionsTableAnnotationComposer,
      $$PendingExtractionsTableCreateCompanionBuilder,
      $$PendingExtractionsTableUpdateCompanionBuilder,
      (
        PendingExtractionEntry,
        BaseReferences<
          _$DriftAppDatabase,
          $PendingExtractionsTable,
          PendingExtractionEntry
        >,
      ),
      PendingExtractionEntry,
      PrefetchHooks Function()
    >;

class $DriftAppDatabaseManager {
  final _$DriftAppDatabase _db;
  $DriftAppDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$RoastersTableTableManager get roasters =>
      $$RoastersTableTableManager(_db, _db.roasters);
  $$BeansTableTableManager get beans =>
      $$BeansTableTableManager(_db, _db.beans);
  $$CountriesTableTableManager get countries =>
      $$CountriesTableTableManager(_db, _db.countries);
  $$VarietiesTableTableManager get varieties =>
      $$VarietiesTableTableManager(_db, _db.varieties);
  $$ProcessingMethodsTableTableManager get processingMethods =>
      $$ProcessingMethodsTableTableManager(_db, _db.processingMethods);
  $$BeanOriginsTableTableManager get beanOrigins =>
      $$BeanOriginsTableTableManager(_db, _db.beanOrigins);
  $$FlavorDescriptorsTableTableManager get flavorDescriptors =>
      $$FlavorDescriptorsTableTableManager(_db, _db.flavorDescriptors);
  $$BeanFlavorNotesTableTableManager get beanFlavorNotes =>
      $$BeanFlavorNotesTableTableManager(_db, _db.beanFlavorNotes);
  $$DrinkLogsTableTableManager get drinkLogs =>
      $$DrinkLogsTableTableManager(_db, _db.drinkLogs);
  $$TastingNotesTableTableManager get tastingNotes =>
      $$TastingNotesTableTableManager(_db, _db.tastingNotes);
  $$PendingExtractionsTableTableManager get pendingExtractions =>
      $$PendingExtractionsTableTableManager(_db, _db.pendingExtractions);
}
