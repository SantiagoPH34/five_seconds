import 'package:isar/isar.dart';

part 'app_session.g.dart';

@Embedded()
class AppSession {
  DateTime? start;
  DateTime? end;

  AppSession({
     this.start,
    this.end,
  });
  @Ignore()
  Duration get duration => end != null && start != null ? end!.difference(start!) : Duration.zero;
}
