// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Notes extends _Notes with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Notes(
    int index,
    String title,
    String body, {
    bool? isRtl = false,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Notes>({
        'isRtl': false,
      });
    }
    RealmObjectBase.set(this, 'index', index);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'body', body);
    RealmObjectBase.set(this, 'isRtl', isRtl);
  }

  Notes._();

  @override
  int get index => RealmObjectBase.get<int>(this, 'index') as int;
  @override
  set index(int value) => RealmObjectBase.set(this, 'index', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get body => RealmObjectBase.get<String>(this, 'body') as String;
  @override
  set body(String value) => RealmObjectBase.set(this, 'body', value);

  @override
  bool? get isRtl => RealmObjectBase.get<bool>(this, 'isRtl') as bool?;
  @override
  set isRtl(bool? value) => RealmObjectBase.set(this, 'isRtl', value);

  @override
  Stream<RealmObjectChanges<Notes>> get changes =>
      RealmObjectBase.getChanges<Notes>(this);

  @override
  Stream<RealmObjectChanges<Notes>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Notes>(this, keyPaths);

  @override
  Notes freeze() => RealmObjectBase.freezeObject<Notes>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'index': index.toEJson(),
      'title': title.toEJson(),
      'body': body.toEJson(),
      'isRtl': isRtl.toEJson(),
    };
  }

  static EJsonValue _toEJson(Notes value) => value.toEJson();
  static Notes _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'index': EJsonValue index,
        'title': EJsonValue title,
        'body': EJsonValue body,
      } =>
        Notes(
          fromEJson(index),
          fromEJson(title),
          fromEJson(body),
          isRtl: fromEJson(ejson['isRtl'], defaultValue: false),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Notes._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Notes, 'Notes', [
      SchemaProperty('index', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('body', RealmPropertyType.string),
      SchemaProperty('isRtl', RealmPropertyType.bool, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
