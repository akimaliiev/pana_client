import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  static Future<bool> getCameraPermission() async {
    final bool isCameraAvailable = await Permission.camera.isGranted;

    if (isCameraAvailable) return true;

    final PermissionStatus permissionStatus = await Permission.camera.request();

    if (permissionStatus.isPermanentlyDenied) {
      await openAppSettings();
    }

    return permissionStatus.isGranted;
  }

  static Future<bool> getStoragePermission() async {
    if (Platform.isAndroid) {
      final bool isStorageAvailable = await Permission.storage.isGranted;
      final bool isPhotosAvailable = await Permission.photos.isGranted;

      if (isStorageAvailable || isPhotosAvailable) return true;

      final PermissionStatus storagePermissionStatus = await Permission.storage.request();
      final PermissionStatus photosPermissionStatus = await Permission.photos.request();

      if (storagePermissionStatus.isPermanentlyDenied ||
          photosPermissionStatus.isPermanentlyDenied) {
        await openAppSettings();
      }

      return storagePermissionStatus.isGranted ||
          storagePermissionStatus.isLimited ||
          photosPermissionStatus.isGranted ||
          photosPermissionStatus.isLimited;
    } else if (Platform.isIOS) {
      final bool isPhotosAvailable = await Permission.storage.isGranted;

      if (isPhotosAvailable) return true;

      final PermissionStatus photosPermissionStatus = await Permission.storage.request();

      if (photosPermissionStatus.isPermanentlyDenied) {
        await openAppSettings();
      }

      return photosPermissionStatus.isGranted || photosPermissionStatus.isLimited;
    } else {
      return false;
    }
  }
}
