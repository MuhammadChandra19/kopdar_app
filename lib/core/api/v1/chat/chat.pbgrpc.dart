///
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'chat.pb.dart' as $0;
export 'chat.pb.dart';

class ChatProtoClient extends $grpc.Client {
  static final _$createStream =
      $grpc.ClientMethod<$0.StreamConnect, $0.ResponseStream>(
          '/v1.ChatProto/CreateStream',
          ($0.StreamConnect value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ResponseStream.fromBuffer(value));
  static final _$sendMessage = $grpc.ClientMethod<$0.ContentMessage, $0.Empty>(
      '/v1.ChatProto/SendMessage',
      ($0.ContentMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$createRoom = $grpc.ClientMethod<$0.Room, $0.Empty>(
      '/v1.ChatProto/CreateRoom',
      ($0.Room value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$addUserToRoom = $grpc.ClientMethod<$0.UserRoom, $0.Empty>(
      '/v1.ChatProto/AddUserToRoom',
      ($0.UserRoom value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$sharePoint = $grpc.ClientMethod<$0.Point, $0.Empty>(
      '/v1.ChatProto/SharePoint',
      ($0.Point value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  ChatProtoClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.ResponseStream> createStream($0.StreamConnect request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$createStream, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> sendMessage($0.ContentMessage request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> createRoom($0.Room request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> addUserToRoom($0.UserRoom request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addUserToRoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> sharePoint($0.Point request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$sharePoint, request, options: options);
  }
}

abstract class ChatProtoServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.ChatProto';

  ChatProtoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StreamConnect, $0.ResponseStream>(
        'CreateStream',
        createStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StreamConnect.fromBuffer(value),
        ($0.ResponseStream value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ContentMessage, $0.Empty>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ContentMessage.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Room, $0.Empty>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Room.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserRoom, $0.Empty>(
        'AddUserToRoom',
        addUserToRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRoom.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Point, $0.Empty>(
        'SharePoint',
        sharePoint_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Point.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ResponseStream> createStream_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StreamConnect> request) async* {
    yield* createStream(call, await request);
  }

  $async.Future<$0.Empty> sendMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ContentMessage> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$0.Empty> createRoom_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Room> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$0.Empty> addUserToRoom_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserRoom> request) async {
    return addUserToRoom(call, await request);
  }

  $async.Future<$0.Empty> sharePoint_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Point> request) async {
    return sharePoint(call, await request);
  }

  $async.Stream<$0.ResponseStream> createStream(
      $grpc.ServiceCall call, $0.StreamConnect request);
  $async.Future<$0.Empty> sendMessage(
      $grpc.ServiceCall call, $0.ContentMessage request);
  $async.Future<$0.Empty> createRoom($grpc.ServiceCall call, $0.Room request);
  $async.Future<$0.Empty> addUserToRoom(
      $grpc.ServiceCall call, $0.UserRoom request);
  $async.Future<$0.Empty> sharePoint($grpc.ServiceCall call, $0.Point request);
}
