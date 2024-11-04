import 'package:brillo_sportz/core/Routes/goRouter.dart';
import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; 
import 'package:device_preview/device_preview.dart';
 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    DevicePreview(
      // isToolbarVisible: false,

      enabled: false,
      // enabled: true,
      builder: (BuildContext context) => ProviderScope(child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.73, 781),
      builder: (context, child) => MaterialApp.router(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: (context, widget) =>
            DevicePreview.appBuilder(context, widget),  
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        title: 'Serverpod Demo',
        theme: lightAppTheme,
        darkTheme: darkAppTheme,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
