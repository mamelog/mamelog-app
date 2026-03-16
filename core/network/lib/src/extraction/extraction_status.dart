import 'package:json_annotation/json_annotation.dart';

enum ExtractionStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('PROCESSING')
  processing,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('FAILED')
  failed
  ;

  static ExtractionStatus fromValue(String value) => switch (value) {
    'PENDING' => ExtractionStatus.pending,
    'PROCESSING' => ExtractionStatus.processing,
    'COMPLETED' => ExtractionStatus.completed,
    'FAILED' => ExtractionStatus.failed,
    _ => throw ArgumentError('Unknown ExtractionStatus: $value'),
  };

  String toValue() => switch (this) {
    ExtractionStatus.pending => 'PENDING',
    ExtractionStatus.processing => 'PROCESSING',
    ExtractionStatus.completed => 'COMPLETED',
    ExtractionStatus.failed => 'FAILED',
  };
}
