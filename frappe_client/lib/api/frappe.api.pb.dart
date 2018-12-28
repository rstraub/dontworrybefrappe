///
//  Generated code. Do not modify.
//  source: api/frappe.api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class PingMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PingMessage', package: const $pb.PackageName('frappe_api'))
    ..aOS(1, 'greeting')
    ..hasRequiredFields = false
  ;

  PingMessage() : super();
  PingMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PingMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PingMessage clone() => new PingMessage()..mergeFromMessage(this);
  PingMessage copyWith(void Function(PingMessage) updates) => super.copyWith((message) => updates(message as PingMessage));
  $pb.BuilderInfo get info_ => _i;
  static PingMessage create() => new PingMessage();
  static $pb.PbList<PingMessage> createRepeated() => new $pb.PbList<PingMessage>();
  static PingMessage getDefault() => _defaultInstance ??= create()..freeze();
  static PingMessage _defaultInstance;
  static void $checkItem(PingMessage v) {
    if (v is! PingMessage) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get greeting => $_getS(0, '');
  set greeting(String v) { $_setString(0, v); }
  bool hasGreeting() => $_has(0);
  void clearGreeting() => clearField(1);
}

