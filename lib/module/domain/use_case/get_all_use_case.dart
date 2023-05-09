import '../../external/libraries/dartz.dart';
import '../entity/address_entity.dart';
import '../entity/failure.dart';
import '../repositories/app_repository.dart';
import 'use_case.dart';

class GetAllUseCase implements UseCase<List<AddressEntity>, NoParams> {
  final AppRepository repository;

  GetAllUseCase({required this.repository});

  @override
  Future<Either<Failure, List<AddressEntity>>> call(NoParams params) {
    return repository.getAddress();
  }
}
