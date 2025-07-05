import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardBarristerDecksRecord extends FirestoreRecord {
  CardBarristerDecksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cards" field.
  List<DocumentReference>? _cards;
  List<DocumentReference> get cards => _cards ?? const [];
  bool hasCards() => _cards != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "deckName" field.
  String? _deckName;
  String get deckName => _deckName ?? '';
  bool hasDeckName() => _deckName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _cards = getDataList(snapshotData['cards']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _deckName = snapshotData['deckName'] as String?;
    _description = snapshotData['description'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('card-barrister-decks');

  static Stream<CardBarristerDecksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardBarristerDecksRecord.fromSnapshot(s));

  static Future<CardBarristerDecksRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CardBarristerDecksRecord.fromSnapshot(s));

  static CardBarristerDecksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CardBarristerDecksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardBarristerDecksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardBarristerDecksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardBarristerDecksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardBarristerDecksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardBarristerDecksRecordData({
  DateTime? createdTime,
  String? deckName,
  String? description,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'deckName': deckName,
      'description': description,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardBarristerDecksRecordDocumentEquality
    implements Equality<CardBarristerDecksRecord> {
  const CardBarristerDecksRecordDocumentEquality();

  @override
  bool equals(CardBarristerDecksRecord? e1, CardBarristerDecksRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.cards, e2?.cards) &&
        e1?.createdTime == e2?.createdTime &&
        e1?.deckName == e2?.deckName &&
        e1?.description == e2?.description &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(CardBarristerDecksRecord? e) => const ListEquality()
      .hash([e?.cards, e?.createdTime, e?.deckName, e?.description, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is CardBarristerDecksRecord;
}
