import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodio/recipe/bloc/recipe_bloc.dart';
import 'package:foodio/recipe/bloc/recipe_event.dart';
import 'package:foodio/routes/app_routes.dart';
import 'core/constants/dependancy_injection.dart' as di;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(_)=>di.sl<RecipesBloc>()..add(GetAllRecipesEvent()))
      ],
      child: ScreenUtilInit(
        designSize: const Size( 411.42857142857144,797.7142857142857),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child){
      return MaterialApp(
        theme: ThemeData(
          visualDensity: VisualDensity.standard,
        ),
        title: 'foodio',
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.splashScreen,
        routes: AppRoutes.routes,
      );
    })
    );


  }
}
