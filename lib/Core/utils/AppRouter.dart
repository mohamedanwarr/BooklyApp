import 'package:bookyapp/Features/Splash/Presentation/Viewes/Splash_View.dart';
import 'package:bookyapp/Features/home/presentation/viewes/Book_details_view.dart';
import 'package:bookyapp/Features/home/presentation/viewes/Home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeView='/homeView';
  static const KbookDetails='/bookdetails';
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, GoRouterState state) {
          return const SplashView();
        }),
    GoRoute(
        path: KHomeView,
        builder: (context, GoRouterState state) {
          return const  HomeView();
        }),
    GoRoute(
        path: KbookDetails,
        builder: (context, GoRouterState state) {
          return const  BookDetailsView();
        }),
  ]);
}
