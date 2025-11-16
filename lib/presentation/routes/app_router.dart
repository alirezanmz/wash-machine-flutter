import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wash_app/presentation/pages/device_details_page.dart';
import 'package:wash_app/presentation/pages/file_upload_page.dart';
import 'package:wash_app/presentation/pages/login_page.dart';
import 'package:wash_app/presentation/pages/qr_scan_page.dart';
import 'package:wash_app/presentation/pages/session_live_page.dart';
import 'package:wash_app/presentation/pages/session_summary_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/scan',
        builder: (context, state) => const QRScanPage(),
      ),
      GoRoute(
        path: '/device/:deviceCode',
        builder: (context, state) {
          final deviceCode = state.pathParameters['deviceCode']!;
          return DeviceDetailsPage(deviceCode: deviceCode);
        },
      ),
      GoRoute(
        path: '/session/live/:deviceCode',
        builder: (context, state) {
          final deviceCode = state.pathParameters['deviceCode']!;
          return SessionLivePage(deviceCode: deviceCode);
        },
      ),
      GoRoute(
        path: '/session/summary/:sessionId',
        builder: (context, state) {
          final sessionId = state.pathParameters['sessionId']!;
          return SessionSummaryPage(sessionId: sessionId);
        },
      ),
      GoRoute(
        path: '/upload',
        builder: (context, state) => const FileUploadPage(),
      ),
    ],
  );
});
