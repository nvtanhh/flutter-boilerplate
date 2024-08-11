import 'package:flutter/widgets.dart';

import '../../../../core/exceptions/all.dart';

abstract interface class BaseReadableExceptionMapper<T extends AppException> {
  String? title(BuildContext context, T exception);
  String message(BuildContext context, T exception);
}
