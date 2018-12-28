///
//  Generated code. Do not modify.
//  source: frappe.api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'frappe.api.pb.dart';
export 'frappe.api.pb.dart';

class CoffeeServiceClient extends Client {
  static final _$brew = new ClientMethod<CoffeeOrder, Coffee>(
      '/frappe_api.CoffeeService/Brew',
      (CoffeeOrder value) => value.writeToBuffer(),
      (List<int> value) => new Coffee.fromBuffer(value));

  CoffeeServiceClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<Coffee> brew(CoffeeOrder request, {CallOptions options}) {
    final call = $createCall(_$brew, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class CoffeeServiceBase extends Service {
  String get $name => 'frappe_api.CoffeeService';

  CoffeeServiceBase() {
    $addMethod(new ServiceMethod<CoffeeOrder, Coffee>(
        'Brew',
        brew_Pre,
        false,
        false,
        (List<int> value) => new CoffeeOrder.fromBuffer(value),
        (Coffee value) => value.writeToBuffer()));
  }

  $async.Future<Coffee> brew_Pre(
      ServiceCall call, $async.Future request) async {
    return brew(call, await request);
  }

  $async.Future<Coffee> brew(ServiceCall call, CoffeeOrder request);
}
