import '../../external/libraries/dartz.dart';
import '../entity/address_entity.dart';
import '../entity/failure.dart';

abstract class AppRepository {
  Future<Either<Failure, List<AddressEntity>>> getAddress();

  Future<Either<Failure, bool>> upsertAddress(AddressEntity params);

  Future<Either<Failure, bool>> deleteAddress(AddressEntity params);
}
