import 'package:json_annotation/json_annotation.dart';

enum ExtractionInputType {
  @JsonValue('PHOTO')
  photo,
  @JsonValue('QR_CODE')
  qrCode,
  @JsonValue('URL')
  url
  ;

  static ExtractionInputType fromValue(String value) => switch (value) {
    'PHOTO' => ExtractionInputType.photo,
    'QR_CODE' => ExtractionInputType.qrCode,
    'URL' => ExtractionInputType.url,
    _ => throw ArgumentError('Unknown ExtractionInputType: $value'),
  };

  String toValue() => switch (this) {
    ExtractionInputType.photo => 'PHOTO',
    ExtractionInputType.qrCode => 'QR_CODE',
    ExtractionInputType.url => 'URL',
  };
}
