import 'package:core_model/bean.dart';
import 'package:meta/meta.dart';

@immutable
sealed class CaptureEvent {
  const CaptureEvent();
}

class CaptureStarted extends CaptureEvent {
  const CaptureStarted();
}

class ImageCaptured extends CaptureEvent {
  const ImageCaptured({required this.imagePath});
  final String imagePath;
}

class UrlDetected extends CaptureEvent {
  const UrlDetected({required this.url, required this.inputType});
  final String url;
  final String inputType;
}

class ManualInputRequested extends CaptureEvent {
  const ManualInputRequested();
}

class ExtractionRequested extends CaptureEvent {
  const ExtractionRequested();
}

class ExtractionRetried extends CaptureEvent {
  const ExtractionRetried();
}

class BeanUpdated extends CaptureEvent {
  const BeanUpdated({required this.bean});
  final Bean bean;
}

class SaveRequested extends CaptureEvent {
  const SaveRequested();
}
