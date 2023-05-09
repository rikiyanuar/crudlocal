import '../../external/libraries/dartz.dart';
import '../entity/address_entity.dart';
import '../entity/failure.dart';
import '../repositories/app_repository.dart';
import 'use_case.dart';

class DeleteUseCase implements UseCase<bool, AddressEntity> {
  final AppRepository repository;

  DeleteUseCase({required this.repository});

  @override
  Future<Either<Failure, bool>> call(AddressEntity params) {
    return repository.deleteAddress(params);
  }
}
