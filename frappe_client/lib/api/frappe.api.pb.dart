///
//  Generated code. Do not modify.
//  source: frappe.api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'frappe.api.pbenum.dart';

export 'frappe.api.pbenum.dart';

class CoffeeOrder extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CoffeeOrder', package: const $pb.PackageName('frappe_api'))
    ..e<CoffeeType>(1, 'type', $pb.PbFieldType.OE, CoffeeType.BLACK, CoffeeType.valueOf, CoffeeType.values)
    ..hasRequiredFields = false
  ;

  CoffeeOrder() : super();
  CoffeeOrder.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CoffeeOrder.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CoffeeOrder clone() => new CoffeeOrder()..mergeFromMessage(this);
  CoffeeOrder copyWith(void Function(CoffeeOrder) updates) => super.copyWith((message) => updates(message as CoffeeOrder));
  $pb.BuilderInfo get info_ => _i;
  static CoffeeOrder create() => new CoffeeOrder();
  static $pb.PbList<CoffeeOrder> createRepeated() => new $pb.PbList<CoffeeOrder>();
  static CoffeeOrder getDefault() => _defaultInstance ??= create()..freeze();
  static CoffeeOrder _defaultInstance;
  static void $checkItem(CoffeeOrder v) {
    if (v is! CoffeeOrder) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  CoffeeType get type => $_getN(0);
  set type(CoffeeType v) { setField(1, v); }
  bool hasType() => $_has(0);
  void clearType() => clearField(1);
}

class Coffee extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Coffee', package: const $pb.PackageName('frappe_api'))
    ..e<CoffeeType>(1, 'type', $pb.PbFieldType.OE, CoffeeType.BLACK, CoffeeType.valueOf, CoffeeType.values)
    ..aOB(2, 'sugar')
    ..a<int>(3, 'strength', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Coffee() : super();
  Coffee.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Coffee.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Coffee clone() => new Coffee()..mergeFromMessage(this);
  Coffee copyWith(void Function(Coffee) updates) => super.copyWith((message) => updates(message as Coffee));
  $pb.BuilderInfo get info_ => _i;
  static Coffee create() => new Coffee();
  static $pb.PbList<Coffee> createRepeated() => new $pb.PbList<Coffee>();
  static Coffee getDefault() => _defaultInstance ??= create()..freeze();
  static Coffee _defaultInstance;
  static void $checkItem(Coffee v) {
    if (v is! Coffee) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  CoffeeType get type => $_getN(0);
  set type(CoffeeType v) { setField(1, v); }
  bool hasType() => $_has(0);
  void clearType() => clearField(1);

  bool get sugar => $_get(1, false);
  set sugar(bool v) { $_setBool(1, v); }
  bool hasSugar() => $_has(1);
  void clearSugar() => clearField(2);

  int get strength => $_get(2, 0);
  set strength(int v) { $_setSignedInt32(2, v); }
  bool hasStrength() => $_has(2);
  void clearStrength() => clearField(3);
}

