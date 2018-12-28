///
//  Generated code. Do not modify.
//  source: api/frappe.api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'frappe.api.pb.dart';
export 'frappe.api.pb.dart';

class PingClient extends Client {
  static final _$sayHello = new ClientMethod<PingMessage, PingMessage>(
      '/frappe_api.Ping/SayHello',
      (PingMessage value) => value.writeToBuffer(),
      (List<int> value) => new PingMessage.fromBuffer(value));

  PingClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<PingMessage> sayHello(PingMessage request,
      {CallOptions options}) {
    final call = $createCall(
        _$sayHello, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class PingServiceBase extends Service {
  String get $name => 'frappe_api.Ping';

  PingServiceBase() {
    $addMethod(new ServiceMethod<PingMessage, PingMessage>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        (List<int> value) => new PingMessage.fromBuffer(value),
        (PingMessage value) => value.writeToBuffer()));
  }

  $async.Future<PingMessage> sayHello_Pre(
      ServiceCall call, $async.Future request) async {
    return sayHello(call, await request);
  }

  $async.Future<PingMessage> sayHello(ServiceCall call, PingMessage request);
}
