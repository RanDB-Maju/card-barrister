import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardBarristerChatHistoryRecord extends FirestoreRecord {
  CardBarristerChatHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bookmarked" field.
  bool? _bookmarked;
  bool get bookmarked => _bookmarked ?? false;
  bool hasBookmarked() => _bookmarked != null;

  // "contextUsed" field.
  String? _contextUsed;
  String get contextUsed => _contextUsed ?? '';
  bool hasContextUsed() => _contextUsed != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "response" field.
  String? _response;
  String get response => _response ?? '';
  bool hasResponse() => _response != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _bookmarked = snapshotData['bookmarked'] as bool?;
    _contextUsed = snapshotData['contextUsed'] as String?;
    _question = snapshotData['question'] as String?;
    _response = snapshotData['response'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userId = snapshotData['userId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('card-barrister-chat-history');

  static Stream<CardBarristerChatHistoryRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => CardBarristerChatHistoryRecord.fromSnapshot(s));

  static Future<CardBarristerChatHistoryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CardBarristerChatHistoryRecord.fromSnapshot(s));

  static CardBarristerChatHistoryRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      CardBarristerChatHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardBarristerChatHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardBarristerChatHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardBarristerChatHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardBarristerChatHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardBarristerChatHistoryRecordData({
  bool? bookmarked,
  String? contextUsed,
  String? question,
  String? response,
  DateTime? timestamp,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bookmarked': bookmarked,
      'contextUsed': contextUsed,
      'question': question,
      'response': response,
      'timestamp': timestamp,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardBarristerChatHistoryRecordDocumentEquality
    implements Equality<CardBarristerChatHistoryRecord> {
  const CardBarristerChatHistoryRecordDocumentEquality();

  @override
  bool equals(
      CardBarristerChatHistoryRecord? e1, CardBarristerChatHistoryRecord? e2) {
    return e1?.bookmarked == e2?.bookmarked &&
        e1?.contextUsed == e2?.contextUsed &&
        e1?.question == e2?.question &&
        e1?.response == e2?.response &&
        e1?.timestamp == e2?.timestamp &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(CardBarristerChatHistoryRecord? e) => const ListEquality().hash([
        e?.bookmarked,
        e?.contextUsed,
        e?.question,
        e?.response,
        e?.timestamp,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is CardBarristerChatHistoryRecord;
}
