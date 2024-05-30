import 'package:five_seconds/features/apps_tracked/domain/entities/app_session.dart';
import 'package:isar/isar.dart';

part 'apps_tracked.g.dart';

@collection
class AppTracked {
  Id isarId = Isar.autoIncrement;
  String packagename;
  String name;
  List<int> icon;
  int totalLounches;
  List<AppSession> appSesion;

  AppTracked({
    required this.packagename,
    required this.name,
    required this.icon,
    required this.totalLounches,
    this.appSesion = const [],
  });
}
