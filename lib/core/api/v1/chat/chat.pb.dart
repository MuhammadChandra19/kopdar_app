///
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ContentMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContentMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomKey')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..hasRequiredFields = false
  ;

  ContentMessage._() : super();
  factory ContentMessage({
    $core.String roomKey,
    $core.String sender,
    $core.String email,
    $core.String content,
    $core.String type,
  }) {
    final _result = create();
    if (roomKey != null) {
      _result.roomKey = roomKey;
    }
    if (sender != null) {
      _result.sender = sender;
    }
    if (email != null) {
      _result.email = email;
    }
    if (content != null) {
      _result.content = content;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory ContentMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContentMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContentMessage clone() => ContentMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContentMessage copyWith(void Function(ContentMessage) updates) => super.copyWith((message) => updates(message as ContentMessage)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContentMessage create() => ContentMessage._();
  ContentMessage createEmptyInstance() => create();
  static $pb.PbList<ContentMessage> createRepeated() => $pb.PbList<ContentMessage>();
  @$core.pragma('dart2js:noInline')
  static ContentMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContentMessage>(create);
  static ContentMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roomKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set roomKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sender => $_getSZ(1);
  @$pb.TagNumber(2)
  set sender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);
}

class StreamConnect extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamConnect', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomKey')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'active')
    ..hasRequiredFields = false
  ;

  StreamConnect._() : super();
  factory StreamConnect({
    $core.String name,
    $core.String roomKey,
    $core.bool active,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (roomKey != null) {
      _result.roomKey = roomKey;
    }
    if (active != null) {
      _result.active = active;
    }
    return _result;
  }
  factory StreamConnect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamConnect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamConnect clone() => StreamConnect()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamConnect copyWith(void Function(StreamConnect) updates) => super.copyWith((message) => updates(message as StreamConnect)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamConnect create() => StreamConnect._();
  StreamConnect createEmptyInstance() => create();
  static $pb.PbList<StreamConnect> createRepeated() => $pb.PbList<StreamConnect>();
  @$core.pragma('dart2js:noInline')
  static StreamConnect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamConnect>(create);
  static StreamConnect _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get active => $_getBF(2);
  @$pb.TagNumber(3)
  set active($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasActive() => $_has(2);
  @$pb.TagNumber(3)
  void clearActive() => clearField(3);
}

class Room extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Room', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomKey')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdBy')
    ..hasRequiredFields = false
  ;

  Room._() : super();
  factory Room({
    $core.String roomKey,
    $core.String type,
    $core.String createdBy,
  }) {
    final _result = create();
    if (roomKey != null) {
      _result.roomKey = roomKey;
    }
    if (type != null) {
      _result.type = type;
    }
    if (createdBy != null) {
      _result.createdBy = createdBy;
    }
    return _result;
  }
  factory Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Room clone() => Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Room copyWith(void Function(Room) updates) => super.copyWith((message) => updates(message as Room)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Room create() => Room._();
  Room createEmptyInstance() => create();
  static $pb.PbList<Room> createRepeated() => $pb.PbList<Room>();
  @$core.pragma('dart2js:noInline')
  static Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Room>(create);
  static Room _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roomKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set roomKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get createdBy => $_getSZ(2);
  @$pb.TagNumber(3)
  set createdBy($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedBy() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedBy() => clearField(3);
}

class UserRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserRoom', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UUID', protoName: 'UUID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomKey')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userEmail')
    ..hasRequiredFields = false
  ;

  UserRoom._() : super();
  factory UserRoom({
    $core.String uUID,
    $core.String roomKey,
    $core.String userEmail,
  }) {
    final _result = create();
    if (uUID != null) {
      _result.uUID = uUID;
    }
    if (roomKey != null) {
      _result.roomKey = roomKey;
    }
    if (userEmail != null) {
      _result.userEmail = userEmail;
    }
    return _result;
  }
  factory UserRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRoom clone() => UserRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRoom copyWith(void Function(UserRoom) updates) => super.copyWith((message) => updates(message as UserRoom)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRoom create() => UserRoom._();
  UserRoom createEmptyInstance() => create();
  static $pb.PbList<UserRoom> createRepeated() => $pb.PbList<UserRoom>();
  @$core.pragma('dart2js:noInline')
  static UserRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRoom>(create);
  static UserRoom _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uUID => $_getSZ(0);
  @$pb.TagNumber(1)
  set uUID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUUID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUUID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userEmail => $_getSZ(2);
  @$pb.TagNumber(3)
  set userEmail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserEmail() => clearField(3);
}

class Point extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Point', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomKey')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Point._() : super();
  factory Point({
    $core.String roomKey,
    $core.int latitude,
    $core.int longitude,
  }) {
    final _result = create();
    if (roomKey != null) {
      _result.roomKey = roomKey;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    return _result;
  }
  factory Point.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Point.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Point clone() => Point()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Point copyWith(void Function(Point) updates) => super.copyWith((message) => updates(message as Point)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  Point createEmptyInstance() => create();
  static $pb.PbList<Point> createRepeated() => $pb.PbList<Point>();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roomKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set roomKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get latitude => $_getIZ(1);
  @$pb.TagNumber(2)
  set latitude($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLatitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get longitude => $_getIZ(2);
  @$pb.TagNumber(3)
  set longitude($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLongitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongitude() => clearField(3);
}

class StreamResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isMessage')
    ..aOM<ContentMessage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: ContentMessage.create)
    ..aOM<Point>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'point', subBuilder: Point.create)
    ..hasRequiredFields = false
  ;

  StreamResponse._() : super();
  factory StreamResponse({
    $core.bool isMessage,
    ContentMessage message,
    Point point,
  }) {
    final _result = create();
    if (isMessage != null) {
      _result.isMessage = isMessage;
    }
    if (message != null) {
      _result.message = message;
    }
    if (point != null) {
      _result.point = point;
    }
    return _result;
  }
  factory StreamResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamResponse clone() => StreamResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamResponse copyWith(void Function(StreamResponse) updates) => super.copyWith((message) => updates(message as StreamResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamResponse create() => StreamResponse._();
  StreamResponse createEmptyInstance() => create();
  static $pb.PbList<StreamResponse> createRepeated() => $pb.PbList<StreamResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamResponse>(create);
  static StreamResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isMessage => $_getBF(0);
  @$pb.TagNumber(1)
  set isMessage($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsMessage() => clearField(1);

  @$pb.TagNumber(2)
  ContentMessage get message => $_getN(1);
  @$pb.TagNumber(2)
  set message(ContentMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  ContentMessage ensureMessage() => $_ensure(1);

  @$pb.TagNumber(3)
  Point get point => $_getN(2);
  @$pb.TagNumber(3)
  set point(Point v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearPoint() => clearField(3);
  @$pb.TagNumber(3)
  Point ensurePoint() => $_ensure(2);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty _defaultInstance;
}

