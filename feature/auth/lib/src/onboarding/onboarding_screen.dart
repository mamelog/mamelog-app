import 'dart:io';

import 'package:core_designsystem/spacing.dart';
import 'package:core_ui/core_ui.dart';
import 'package:feature_auth/i18n.dart';
import 'package:feature_auth/src/onboarding/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          state.maybeMap(
            error: (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(e.message)),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => const AppLoadingIndicator(),
            orElse: () => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Icon(Icons.coffee, size: 100, color: Color(0xFF6D4C41)),
                    const SizedBox(height: AppSpacing.md),
                    Text(
                      featureAuthT.onboardingTitle,
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF6D4C41),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      featureAuthT.onboardingSubtitle,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const Spacer(),
                    _GoogleSignInButton(
                      onPressed: () => context.read<OnboardingCubit>().signInWithGoogle(),
                    ),
                    if (Platform.isIOS) ...[
                      const SizedBox(height: AppSpacing.md),
                      _AppleSignInButton(
                        onPressed: () => context.read<OnboardingCubit>().signInWithApple(),
                      ),
                    ],
                    const SizedBox(height: AppSpacing.xl),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _GoogleSignInButton extends StatelessWidget {
  const _GoogleSignInButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.login),
      label: Text(featureAuthT.onboardingButtonGoogle),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

class _AppleSignInButton extends StatelessWidget {
  const _AppleSignInButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.apple),
      label: Text(featureAuthT.onboardingButtonApple),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
