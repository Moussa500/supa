import 'package:get_it/get_it.dart';
import 'package:supa/features/menu/data/datasources/service.dart';
import 'package:supa/features/menu/data/repositories/repository.dart';
import 'package:supa/features/menu/domain/repositories/repository.dart';
import 'package:supa/features/menu/domain/usecases/usecase.dart';

final sl = GetIt.instance;
void initializeDependencies() {
  sl.registerLazySingleton<CardService>(() => CardServiceImpl());
  sl.registerLazySingleton<ProductService>(() => ProductServiceImpl());
  sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl());
  sl.registerLazySingleton<CartRepository>(() => CartRepositoryImpl());
  sl.registerLazySingleton<GetProductUseCase>(() => GetProductUseCase());
  sl.registerLazySingleton<AddToCardUseCase>(() => AddToCardUseCase());
  sl.registerLazySingleton<GetCardItemsUseCase>(() => GetCardItemsUseCase());
}
