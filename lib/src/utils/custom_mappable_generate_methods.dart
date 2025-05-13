import 'package:dart_mappable/dart_mappable.dart';

class CustomMappableGenerateMethods {
  static const all = GenerateMethods.all;
  static const encode = GenerateMethods.encode;
  static const decode = GenerateMethods.decode;
  static const equals = GenerateMethods.equals;
  static const stringify = GenerateMethods.stringify;
  static const copy = GenerateMethods.copy;
  static const excludeEncode = GenerateMethods.all & ~GenerateMethods.encode;
  static const excludeDecode = GenerateMethods.all & ~GenerateMethods.decode;
  static const excludeSerialize =
      GenerateMethods.all & ~GenerateMethods.encode & ~GenerateMethods.decode;
  static const excludeDecodeAndCopy =
      GenerateMethods.all & ~GenerateMethods.decode & ~GenerateMethods.copy;
}
