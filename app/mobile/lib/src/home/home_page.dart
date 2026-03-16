import 'package:core_designsystem/i18n.dart';
import 'package:flutter/material.dart';

/// App home page (Skeleton).
class HomePage extends StatelessWidget {
  /// Creates a new [HomePage] instance.
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coreDesignsystemT.appTitle)),
      body: Center(child: Text(coreDesignsystemT.homeWelcome)),
    );
  }
}
