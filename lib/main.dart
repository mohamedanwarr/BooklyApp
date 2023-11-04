import 'package:bookyapp/Core/utils/AppRouter.dart';
import 'package:bookyapp/Core/utils/setupserverlocator.dart';
import 'package:bookyapp/Core/utils/simple_bloc_observer.dart';
import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/Domain/UsesCases/FetchFeaturedBooks_UseCases.dart';
import 'package:bookyapp/Features/home/Domain/UsesCases/FetchNewBooksUseCases.dart';
import 'package:bookyapp/Features/home/data/Repo/HomeRepoimpl.dart';
import 'package:bookyapp/constant.dart';
import 'package:bookyapp/presentaion/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookyapp/presentaion/newest_bokks_cubit/newestfeaturedbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  SetupServerLocator();
  await Hive.openBox<BookEntity>(KfeaturedBox);
  await Hive.openBox<BookEntity>(KNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) {
          return FeaturedBooksCubit(
            FetchFeaturedBooksUseCases(getit.get<HomeRepoImpl>()),
          );
        }),
        BlocProvider(
            create: (context) {
          return NewestfeaturedbooksCubit(
            FetchNewBooksUseCases(getit.get<HomeRepoImpl>()),
          );
        })
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
        // home: const SplashView(),
      ),
    );
  }
}

