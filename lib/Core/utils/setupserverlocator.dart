import 'package:bookyapp/Core/utils/ApiServices.dart';
import 'package:bookyapp/Features/home/data/DataSources/Local_Data_Source.dart';
import 'package:bookyapp/Features/home/data/DataSources/Remote_Data_Sources.dart';
import 'package:bookyapp/Features/home/data/Repo/HomeRepoimpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void SetupServerLocator() {
  getit.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getit.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSourcces: HomeLocalDataSourcceImpl(),
      homeRemoteDataSourcces:
          HomeRemoteDataSourcceImpl(getit.get<ApiServices>()),
    ),
  );
}
