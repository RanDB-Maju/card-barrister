import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardBarristerRulebookRecord extends FirestoreRecord {
  CardBarristerRulebookRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "chapter" field.
  String? _chapter;
  String get chapter => _chapter ?? '';
  bool hasChapter() => _chapter != null;

  // "relatedCards" field.
  List<DocumentReference>? _relatedCards;
  List<DocumentReference> get relatedCards => _relatedCards ?? const [];
  bool hasRelatedCards() => _relatedCards != null;

  // "rulesText" field.
  String? _rulesText;
  String get rulesText => _rulesText ?? '';
  bool hasRulesText() => _rulesText != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _chapter = snapshotData['chapter'] as String?;
    _relatedCards = getDataList(snapshotData['relatedCards']);
    _rulesText = snapshotData['rulesText'] as String?;
    _tags = getDataList(snapshotData['tags']);
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('card-barrister-rulebook');

  static Stream<CardBarristerRulebookRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => CardBarristerRulebookRecord.fromSnapshot(s));

  static Future<CardBarristerRulebookRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CardBarristerRulebookRecord.fromSnapshot(s));

  static CardBarristerRulebookRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CardBarristerRulebookRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardBarristerRulebookRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardBarristerRulebookRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardBarristerRulebookRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardBarristerRulebookRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardBarristerRulebookRecordData({
  String? chapter,
  String? rulesText,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chapter': chapter,
      'rulesText': rulesText,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardBarristerRulebookRecordDocumentEquality
    implements Equality<CardBarristerRulebookRecord> {
  const CardBarristerRulebookRecordDocumentEquality();

  @override
  bool equals(
      CardBarristerRulebookRecord? e1, CardBarristerRulebookRecord? e2) {
    const listEquality = ListEquality();
    return e1?.chapter == e2?.chapter &&
        listEquality.equals(e1?.relatedCards, e2?.relatedCards) &&
        e1?.rulesText == e2?.rulesText &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.title == e2?.title;
  }

  @override
  int hash(CardBarristerRulebookRecord? e) => const ListEquality()
      .hash([e?.chapter, e?.relatedCards, e?.rulesText, e?.tags, e?.title]);

  @override
  bool isValidKey(Object? o) => o is CardBarristerRulebookRecord;
}
