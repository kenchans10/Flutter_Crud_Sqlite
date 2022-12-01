// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MemoModel {
  final int id;
  final String title;
  final String content;

  MemoModel({
    required this.id,
    required this.title,
    required this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'content': content,
    };
  }

  MemoModel copyWith({
    int? id,
    String? title,
    String? content,
  }) {
    return MemoModel(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
    );
  }

  factory MemoModel.fromMap(Map<String, dynamic> map) {
    return MemoModel(
      id: map['id'] as int,
      title: map['title'] as String,
      content: map['content'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MemoModel.fromJson(String source) =>
      MemoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MemoModel(id: $id, title: $title, content: $content)';

  @override
  bool operator ==(covariant MemoModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.title == title && other.content == content;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ content.hashCode;
}
