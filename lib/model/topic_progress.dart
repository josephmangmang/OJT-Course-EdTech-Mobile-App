import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_progress.freezed.dart';
part 'topic_progress.g.dart';

@Freezed()
class TopicProgress with _$TopicProgress {
  const factory TopicProgress({
    required String id,
    required int totalProgress,
    required int currentProgress,
  }) = _TopicProgress;
  factory TopicProgress.fromJson(Map<String, dynamic> json) => _$TopicProgressFromJson(json);
}