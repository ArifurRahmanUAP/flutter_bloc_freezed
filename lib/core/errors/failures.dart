
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class Failures with _$Failures{
  factory Failures.server({required String message}) = ServerFailure;
}