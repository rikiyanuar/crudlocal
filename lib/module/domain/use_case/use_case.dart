import '../../external/libraries/dartz.dart';
import '../../external/libraries/libraries.dart';
import '../entity/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
