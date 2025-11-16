import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:wash_app/domain/repositories/auth_repository.dart';
import 'package:wash_app/domain/repositories/device_repository.dart';
import 'package:wash_app/domain/repositories/file_repository.dart';
import 'package:wash_app/domain/repositories/session_repository.dart';
import 'package:wash_app/domain/repositories/telemetry_repository.dart';
import 'package:wash_app/domain/usecases/get_live_telemetry.dart';
import 'package:wash_app/domain/usecases/login_user.dart';
import 'package:wash_app/domain/usecases/scan_device.dart';
import 'package:wash_app/domain/usecases/start_session.dart';
import 'package:wash_app/domain/usecases/stop_session.dart';
import 'package:wash_app/domain/usecases/upload_file.dart';
import 'package:wash_app/infrastructure/http/api_service.dart';
import 'package:wash_app/infrastructure/repository_impl/auth_repository_impl.dart';
import 'package:wash_app/infrastructure/repository_impl/device_repository_impl.dart';
import 'package:wash_app/infrastructure/repository_impl/file_repository_impl.dart';
import 'package:wash_app/infrastructure/repository_impl/session_repository_impl.dart';
import 'package:wash_app/infrastructure/repository_impl/telemetry_repository_impl.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // API Service
  sl.registerSingleton<ApiService>(ApiService(sl()));

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl()));
  sl.registerSingleton<DeviceRepository>(DeviceRepositoryImpl(sl()));
  sl.registerSingleton<SessionRepository>(SessionRepositoryImpl(sl()));
  sl.registerSingleton<TelemetryRepository>(TelemetryRepositoryImpl(sl()));
  sl.registerSingleton<FileRepository>(FileRepositoryImpl(sl()));

  // Use Cases
  sl.registerSingleton<LoginUser>(LoginUser(sl()));
  sl.registerSingleton<ScanDevice>(ScanDevice(sl()));
  sl.registerSingleton<StartSession>(StartSession(sl()));
  sl.registerSingleton<StopSession>(StopSession(sl()));
  sl.registerSingleton<GetLiveTelemetry>(GetLiveTelemetry(sl()));
  sl.registerSingleton<UploadFile>(UploadFile(sl()));
}
