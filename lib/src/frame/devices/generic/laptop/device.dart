import 'package:device_preview/src/frame/devices/generic/base/draw_extensions.dart';
import 'package:device_preview/src/frame/info/device_type.dart';
import 'package:device_preview/src/frame/info/identifier.dart';
import 'package:device_preview/src/frame/info/info.dart';
import 'package:flutter/material.dart';

part 'frame.dart';

/// Creates a generic laptop device definition.
DeviceInfo buildGenericLaptopDevice({
  required TargetPlatform platform,
  required String id,
  required String name,
  required Size screenSize,
  required Rect windowPosition,
  EdgeInsets safeAreas = EdgeInsets.zero,
  double pixelRatio = 2.0,
  EdgeInsets? rotatedSafeAreas,
  GenericLaptopFramePainter? framePainter,
}) {
  final effectivePainter =
      framePainter ??
      GenericLaptopFramePainter(
        platform: platform,
        windowPosition: windowPosition,
      );
  return DeviceInfo(
    identifier: DeviceIdentifier(platform, DeviceType.laptop, id),
    name: name,
    pixelRatio: pixelRatio,
    frameSize: effectivePainter.calculateFrameSize(screenSize),
    screenSize: effectivePainter.effectiveWindowSize,
    safeAreas: safeAreas,
    rotatedSafeAreas: rotatedSafeAreas,
    framePainter: effectivePainter,
    screenPath: effectivePainter.createScreenPath(screenSize),
  );
}
