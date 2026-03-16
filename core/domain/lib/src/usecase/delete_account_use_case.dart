import 'package:core_authenticator/authenticator.dart';
import 'package:core_common/result.dart';
import 'package:core_domain/repository.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

@injectable
class DeleteAccountUseCase {
  DeleteAccountUseCase(
    this._authenticator,
    this._pendingExtractionRepository,
  );

  final Authenticator _authenticator;
  final PendingExtractionRepository _pendingExtractionRepository;
  static final _log = Logger('DeleteAccountUseCase');

  Future<Result<void>> execute() async {
    // Clean up pending extractions (including image files)
    try {
      await _pendingExtractionRepository.cleanupOlderThan(Duration.zero);
    } on Object catch (e) {
      _log.warning('Pending extraction cleanup failed: $e');
    }

    // Delete Firebase account
    return _authenticator.deleteAccount();
  }
}
