class AppException implements Exception {
  final String message;

  const AppException(this.message);

  @override
  String toString() => 'AppException: $message';
}


class FetchException extends AppException {
  FetchException([String? message]) :super('error During Connection');
}
  class BadRequest extends AppException {
    BadRequest([String? message]):super( 'Bad');
  }

class UnAuthoriseException extends AppException {
  UnAuthoriseException([String? message]):super( 'UnAuthoriseException');
}