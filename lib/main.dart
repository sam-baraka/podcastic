import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/config/config.dart';
import 'package:podcastic/routes/routes.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(PodcastApp());
}

class PodcastApp extends StatelessWidget {
  final _appRouter = AppRouter();

  PodcastApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      title: 'Podcastic',
      theme: CupertinoThemeData(
          primaryColor: Palette.appLightGreenColor,
          textTheme:
              CupertinoTextThemeData(textStyle: GoogleFonts.redHatDisplay())),
    );
  }
}
