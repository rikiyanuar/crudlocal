import '../../external/libraries/dartz.dart';
import '../entity/address_entity.dart';
import '../entity/failure.dart';
import '../repositories/app_repository.dart';
import 'delete_use_case.dart';
import 'get_all_use_case.dart';
import 'upsert_use_case.dart';
import 'use_case.dart';

abstract class AppUseCase {
  Future<Either<Failure, List<AddressEntity>>> getAddress();

  Future<Either<Failure, bool>> upsertAddress(AddressEntity params);

  Future<Either<Failure, bool>> deleteAddress(AddressEntity params);
}

class AppUseCaseImpl extends AppUseCase {
  final AppRepository repository;

  AppUseCaseImpl({required this.repository});

  @override
  Future<Either<Failure, List<AddressEntity>>> getAddress() {
    final response = GetAllUseCase(repository: repository);

    return response(NoParams());
  }

  @override
  Future<Either<Failure, bool>> upsertAddress(AddressEntity params) {
    final response = UpsertUseCase(repository: repository);

    return response(params);
  }

  @override
  Future<Either<Failure, bool>> deleteAddress(AddressEntity params) {
    final response = DeleteUseCase(repository: repository);

    return response(params);
  }
}
