import 'package:cloud_firestore/cloud_firestore.dart';

extension TimestampExtension on int {
  DateTime toDate() => DateTime.fromMillisecondsSinceEpoch(this);
}

extension DateTimeTimestamp on DateTime {
  Timestamp toTimestamp() => Timestamp.fromDate(this);
}

extension StringDateTime on String {
  DateTime toDateTime() => DateTime.parse(this);
}
