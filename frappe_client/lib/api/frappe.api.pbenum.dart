///
//  Generated code. Do not modify.
//  source: frappe.api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class CoffeeType extends $pb.ProtobufEnum {
  static const CoffeeType BLACK = const CoffeeType._(0, 'BLACK');
  static const CoffeeType CAPPUCCINO = const CoffeeType._(1, 'CAPPUCCINO');
  static const CoffeeType ESPRESSO = const CoffeeType._(2, 'ESPRESSO');

  static const List<CoffeeType> values = const <CoffeeType> [
    BLACK,
    CAPPUCCINO,
    ESPRESSO,
  ];

  static final Map<int, CoffeeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CoffeeType valueOf(int value) => _byValue[value];
  static void $checkItem(CoffeeType v) {
    if (v is! CoffeeType) $pb.checkItemFailed(v, 'CoffeeType');
  }

  const CoffeeType._(int v, String n) : super(v, n);
}

