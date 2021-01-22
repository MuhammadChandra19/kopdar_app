///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
export 'user.pb.dart';

class UserProtoClient extends $grpc.Client {
  static final _$registerUser = $grpc.ClientMethod<$0.User, $0.TokenResponse>(
      '/v1.UserProto/RegisterUser',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TokenResponse.fromBuffer(value));
  static final _$searchUser =
      $grpc.ClientMethod<$0.SearchParams, $0.SearchResponse>(
          '/v1.UserProto/SearchUser',
          ($0.SearchParams value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SearchResponse.fromBuffer(value));
  static final _$signIn =
      $grpc.ClientMethod<$0.SignInRequest, $0.TokenResponse>(
          '/v1.UserProto/SignIn',
          ($0.SignInRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.TokenResponse.fromBuffer(value));

  UserProtoClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TokenResponse> registerUser($0.User request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$registerUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchResponse> searchUser($0.SearchParams request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$searchUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.TokenResponse> signIn($0.SignInRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }
}

abstract class UserProtoServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.UserProto';

  UserProtoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.User, $0.TokenResponse>(
        'RegisterUser',
        registerUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.TokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchParams, $0.SearchResponse>(
        'SearchUser',
        searchUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchParams.fromBuffer(value),
        ($0.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignInRequest, $0.TokenResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignInRequest.fromBuffer(value),
        ($0.TokenResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.TokenResponse> registerUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return registerUser(call, await request);
  }

  $async.Future<$0.SearchResponse> searchUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SearchParams> request) async {
    return searchUser(call, await request);
  }

  $async.Future<$0.TokenResponse> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignInRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$0.TokenResponse> registerUser(
      $grpc.ServiceCall call, $0.User request);
  $async.Future<$0.SearchResponse> searchUser(
      $grpc.ServiceCall call, $0.SearchParams request);
  $async.Future<$0.TokenResponse> signIn(
      $grpc.ServiceCall call, $0.SignInRequest request);
}
