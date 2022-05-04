import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:together_refacotry/src/models/schedule.dart';

class CalendarController extends GetxController {
  RxList<Schedule> fixSchedule = [
    Schedule(title: "Meeting with team.. ", standDate: DateTime(2022, 5, 3)),
    Schedule(
        title: "Conference aject .",
        standDate: DateTime(2022, 5, 3),
        startTime: const TimeOfDay(hour: 14, minute: 30),
        endTime: const TimeOfDay(hour: 17, minute: 0)),
    Schedule(
        title: "Interface Home Page",
        standDate: DateTime(2022, 5, 3),
        startTime: const TimeOfDay(hour: 10, minute: 30),
        endTime: const TimeOfDay(hour: 13, minute: 0)),
  ].obs;
}
