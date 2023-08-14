import 'package:book_app/core/bloc_observer.dart';
import 'package:book_app/core/home_repo_impl.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/services_locator.dart';
import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:book_app/core/utils/theme/light_theme.dart';
import 'package:book_app/features/home/presentation/manager/feature_books_cubit/feature_book_cubit.dart';
import 'package:book_app/features/home/presentation/manager/newest_books_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  MyBlocObserver();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBookCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        themeMode: ThemeMode.dark,
        darkTheme: darkTheme,
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
