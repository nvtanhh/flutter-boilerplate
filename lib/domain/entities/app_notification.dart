import 'package:equatable/equatable.dart';

class AppNotification extends Equatable {
  final String title;
  final String body;
  final String payload;

  const AppNotification({
    required this.title,
    required this.body,
    required this.payload,
  });

  @override
  List<Object?> get props => [title, body, payload];
}
