import 'package:core_ui/i18n.dart';
import 'package:flutter/material.dart';

/// A badge that displays a confidence score with color-coding.
class ConfidenceBadge extends StatelessWidget {
  const ConfidenceBadge({
    required this.score,
    super.key,
  });

  final double score;

  @override
  Widget build(BuildContext context) {
    final (color, label) = _getColorAndLabel();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.verified_user, size: 12, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(width: 2),
          Text(
            '(${(score * 100).toInt()}%)',
            style: TextStyle(
              fontSize: 9,
              color: color.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }

  (Color, String) _getColorAndLabel() {
    if (score >= 0.8) {
      return (Colors.green, coreUiT.badgeHigh);
    } else if (score >= 0.5) {
      return (Colors.orange, coreUiT.badgeMid);
    } else {
      return (Colors.red, coreUiT.badgeLow);
    }
  }
}
