import 'package:isar/isar.dart';

@Collection()
class Note{
  Id id = Isar.autoIncrement;
  late String text;
}