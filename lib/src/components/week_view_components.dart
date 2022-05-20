// Copyright (c) 2021 Simform Solutions. All rights reserved.
// Use of this source code is governed by a MIT-style license
// that can be found in the LICENSE file.

import 'package:flutter/foundation.dart';

import 'common_components.dart';

class WeekPageHeader extends CalendarPageHeader {
  /// A header widget to display on week view.
  const WeekPageHeader({
    Key? key,
    VoidCallback? onNextDay,
    AsyncCallback? onTitleTapped,
    VoidCallback? onPreviousDay,
    required DateTime startDate,
    required DateTime endDate,
  }) : super(
          key: key,
          date: startDate,
          secondaryDate: endDate,
          onNextDay: onNextDay,
          onPreviousDay: onPreviousDay,
          onTitleTapped: onTitleTapped,
          dateStringBuilder: WeekPageHeader._weekStringBuilder,
        );
  static String _weekStringBuilder(DateTime date, {DateTime? secondaryDate}) =>
      // 기존 코드 ... 주간 view 상단 ( 일 / 월 / 연도 ) 표시
      // "${date.day} / ${date.month} / ${date.year} to "
      // "${secondaryDate != null ? "${secondaryDate.day} / "
      //     "${secondaryDate.month} / ${secondaryDate.year}" : ""}";

      "${date.year} / ${date.month} / ${date.day} to "
      "${secondaryDate != null ? "${secondaryDate.year} / "
      "${secondaryDate.month} / ${secondaryDate.day}" : ""}";
}
