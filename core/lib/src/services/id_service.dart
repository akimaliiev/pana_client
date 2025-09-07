import 'package:fcuuid_kit/fcuuid_kit.dart';

abstract final class IdService {
  static Future<String> get deviceId async => Fcuuid.instance.uuidForDevice();
}
