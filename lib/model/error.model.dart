typedef LogicalExceptionMapper<S, T> = T Function(S);

class LogicalException<T> implements Exception {
  final T cause;
  final bool isUnknown;

  LogicalException({this.cause, this.isUnknown});

  factory LogicalException.just(T cause) =>
      LogicalException(cause: cause, isUnknown: false);

  factory LogicalException.unknown() => LogicalException(isUnknown: true);

  static LogicalException<S> _handleException<S>(dynamic error) {
    if (error is LogicalException) {
      return error;
    } else {
      return LogicalException<S>.unknown();
    }
  }

  static LogicalException<S> from<S>(dynamic error) {
    return _handleException<S>(error);
  }

  LogicalException<S> map<S>(LogicalExceptionMapper<T, S> mapper) => isUnknown
      ? LogicalException<S>.unknown()
      : LogicalException<S>.just(mapper(cause));

  T unwrap(T initialValue) => isUnknown ? initialValue : cause;

  @override
  String toString() {
    return 'LogicalException{cause: $cause}';
  }
}
