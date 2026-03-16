/// Thrown when a security-sensitive operation requires recent authentication.
class ReAuthRequiredException implements Exception {
  const ReAuthRequiredException();

  @override
  String toString() => 'ReAuthRequiredException: Recent login required';
}
