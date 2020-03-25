import 'package:test_bloc_app/environment.dart';
import 'package:test_bloc_app/main_common.dart';

Future<void>  main() async {
  await mainCommon(Environment.prod);
}