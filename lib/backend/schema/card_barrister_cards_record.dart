import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardBarristerCardsRecord extends FirestoreRecord {
  CardBarristerCardsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "colors" field.
  List<String>? _colors;
  List<String> get colors => _colors ?? const [];
  bool hasColors() => _colors != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "lastFetched" field.
  DateTime? _lastFetched;
  DateTime? get lastFetched => _lastFetched;
  bool hasLastFetched() => _lastFetched != null;

  // "manaCost" field.
  String? _manaCost;
  String get manaCost => _manaCost ?? '';
  bool hasManaCost() => _manaCost != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "cmc" field.
  String? _cmc;
  String get cmc => _cmc ?? '';
  bool hasCmc() => _cmc != null;

  // "flavor" field.
  String? _flavor;
  String get flavor => _flavor ?? '';
  bool hasFlavor() => _flavor != null;

  void _initializeFields() {
    _colors = getDataList(snapshotData['colors']);
    _imageUrl = snapshotData['imageUrl'] as String?;
    _lastFetched = snapshotData['lastFetched'] as DateTime?;
    _manaCost = snapshotData['manaCost'] as String?;
    _text = snapshotData['text'] as String?;
    _type = snapshotData['type'] as String?;
    _name = snapshotData['name'] as String?;
    _cmc = snapshotData['cmc'] as String?;
    _flavor = snapshotData['flavor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('card-barrister-cards');

  static Stream<CardBarristerCardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardBarristerCardsRecord.fromSnapshot(s));

  static Future<CardBarristerCardsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CardBarristerCardsRecord.fromSnapshot(s));

  static CardBarristerCardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CardBarristerCardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardBarristerCardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardBarristerCardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardBarristerCardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardBarristerCardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardBarristerCardsRecordData({
  String? imageUrl,
  DateTime? lastFetched,
  String? manaCost,
  String? text,
  String? type,
  String? name,
  String? cmc,
  String? flavor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imageUrl': imageUrl,
      'lastFetched': lastFetched,
      'manaCost': manaCost,
      'text': text,
      'type': type,
      'name': name,
      'cmc': cmc,
      'flavor': flavor,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardBarristerCardsRecordDocumentEquality
    implements Equality<CardBarristerCardsRecord> {
  const CardBarristerCardsRecordDocumentEquality();

  @override
  bool equals(CardBarristerCardsRecord? e1, CardBarristerCardsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.colors, e2?.colors) &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.lastFetched == e2?.lastFetched &&
        e1?.manaCost == e2?.manaCost &&
        e1?.text == e2?.text &&
        e1?.type == e2?.type &&
        e1?.name == e2?.name &&
        e1?.cmc == e2?.cmc &&
        e1?.flavor == e2?.flavor;
  }

  @override
  int hash(CardBarristerCardsRecord? e) => const ListEquality().hash([
        e?.colors,
        e?.imageUrl,
        e?.lastFetched,
        e?.manaCost,
        e?.text,
        e?.type,
        e?.name,
        e?.cmc,
        e?.flavor
      ]);

  @override
  bool isValidKey(Object? o) => o is CardBarristerCardsRecord;
}
