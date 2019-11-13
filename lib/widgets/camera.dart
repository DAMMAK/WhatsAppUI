import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  final CameraController cameraController;

  Camera({this.cameraController});
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  Future<void> _initCamera;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // widget.cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.cameraController.value.isInitialized) {
      return AspectRatio(
          aspectRatio: widget.cameraController.value.aspectRatio,
          child: CameraPreview(widget.cameraController));
    }
    return Container();
  }
}
