import 'package:device_preview/src/frame/info/device_type.dart';
import 'package:device_preview/src/frame/info/identifier.dart';
import 'package:device_preview/src/frame/info/info.dart';
import 'package:flutter/material.dart';

part 'frame.g.dart';
part 'screen.g.dart';

final info = DeviceInfo(
  identifier: const DeviceIdentifier(
    TargetPlatform.iOS,
    DeviceType.phone,
    'iphone-13-mini',
  ),
  name: 'iPhone 13 Mini',
  pixelRatio: 2.0,
  frameSize: const Size(871.0, 1768.0),
  screenSize: const Size(375.0, 812.0),
  safeAreas: const EdgeInsets.only(
    left: 0.0,
    top: 47.0,
    right: 0.0,
    bottom: 34.0,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    left: 47.0,
    top: 0.0,
    right: 44.0,
    bottom: 21.0,
  ),
  framePainter: const _FramePainter(),
  screenPath: _screenPath,
);
