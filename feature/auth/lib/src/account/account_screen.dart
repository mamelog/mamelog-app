import 'dart:async';

import 'package:core_designsystem/i18n.dart';
import 'package:core_designsystem/spacing.dart';
import 'package:core_model/user.dart';
import 'package:core_ui/core_ui.dart';
import 'package:feature_auth/i18n.dart';
import 'package:feature_auth/src/account/account_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountCubit, AccountState>(
      listener: (context, state) {
        state.maybeWhen(
          deleteError: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
          requiresReAuth: () {
            unawaited(_showReAuthDialog(context));
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(featureAuthT.accountAppBarTitle),
        ),
        body: BlocBuilder<AccountCubit, AccountState>(
          builder: (context, state) {
            return state.when(
              initial: () => const AppLoadingIndicator(),
              loading: () => const AppLoadingIndicator(),
              deleting: () => const AppLoadingIndicator(),
              unauthenticated: () => Center(child: Text(featureAuthT.accountNotSignedIn)),
              deleteError: (_) => const AppLoadingIndicator(),
              requiresReAuth: () => const AppLoadingIndicator(),
              success: (user) => _AccountBody(user: user),
            );
          },
        ),
      ),
    );
  }

  Future<void> _showReAuthDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(featureAuthT.accountDialogReauthTitle),
        content: Text(
          featureAuthT.accountDialogReauthMessage,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(coreDesignsystemT.commonButtonOk),
          ),
        ],
      ),
    );
  }
}

class _AccountBody extends StatelessWidget {
  const _AccountBody({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: user.avatarUrl != null ? NetworkImage(user.avatarUrl!) : null,
            child: user.avatarUrl == null ? const Icon(Icons.person, size: 40) : null,
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            user.displayName ?? featureAuthT.accountNoName,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            user.email ?? featureAuthT.accountNoEmail,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: AppSpacing.xl),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: Text(
              featureAuthT.accountButtonLogout,
              style: const TextStyle(color: Colors.red),
            ),
            onTap: () => unawaited(_showLogoutDialog(context)),
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(
              Icons.delete_forever,
              color: Colors.red,
            ),
            title: Text(
              featureAuthT.accountButtonDeleteAccount,
              style: const TextStyle(color: Colors.red),
            ),
            onTap: () => unawaited(
              _showDeleteConfirmDialog(context),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
        ],
      ),
    );
  }

  Future<void> _showLogoutDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(featureAuthT.accountDialogLogoutTitle),
        content: Text(featureAuthT.accountDialogLogoutMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(coreDesignsystemT.commonButtonCancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(dialogContext);
              await context.read<AccountCubit>().signOut();
            },
            child: Text(
              featureAuthT.accountButtonLogout,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showDeleteConfirmDialog(BuildContext context) async {
    // Stage 1: Initial confirmation
    final firstConfirm = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(featureAuthT.accountDialogDeleteTitle),
        content: Text(
          featureAuthT.accountDialogDeleteMessage,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: Text(coreDesignsystemT.commonButtonCancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: Text(
              featureAuthT.accountDialogDeleteConfirm,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
    if (firstConfirm != true || !context.mounted) return;

    // Stage 2: Final confirmation
    final secondConfirm = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(featureAuthT.accountDialogFinalTitle),
        content: Text(
          featureAuthT.accountDialogFinalMessage,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: Text(coreDesignsystemT.commonButtonCancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: Text(
              featureAuthT.accountDialogFinalConfirm,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
    if (secondConfirm != true || !context.mounted) return;

    await context.read<AccountCubit>().deleteAccount();
  }
}
