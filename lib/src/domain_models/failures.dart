import 'package:dart_mappable/dart_mappable.dart';

part 'generated/failures.mapper.dart';

@MappableClass()
sealed class Failure with FailureMappable {
  const Failure();
}

@MappableClass()
class UnknownFailure extends Failure with UnknownFailureMappable {
  const UnknownFailure({
    required this.underlyingException,
    this.underlyingStackTrace,
  });

  final Object underlyingException;
  final StackTrace? underlyingStackTrace;
}
