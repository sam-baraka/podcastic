import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/colors/app_colors.dart';
import 'package:podcastic/routes/routes.gr.dart';
import 'package:podcastic/routes/routes.gr.dart' as r;

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(PodcastApp());
}

class PodcastApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: 'Podcastic',
        theme: CupertinoThemeData(
            primaryColor: AppColors.appLightGreenColor,
            textTheme:
                CupertinoTextThemeData(textStyle: GoogleFonts.redHatDisplay())),
        builder: ExtendedNavigator.builder<r.Router>(
            router: r.Router(), initialRoute: Routes.homePage));
  }
}
