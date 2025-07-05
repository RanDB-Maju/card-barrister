// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardsStruct extends FFFirebaseStruct {
  CardsStruct({
    String? name,
    String? id,
    List<String>? cards,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _id = id,
        _cards = cards,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "cards" field.
  List<String>? _cards;
  List<String> get cards => _cards ?? const [];
  set cards(List<String>? val) => _cards = val;

  void updateCards(Function(List<String>) updateFn) {
    updateFn(_cards ??= []);
  }

  bool hasCards() => _cards != null;

  static CardsStruct fromMap(Map<String, dynamic> data) => CardsStruct(
        name: data['name'] as String?,
        id: data['id'] as String?,
        cards: getDataList(data['cards']),
      );

  static CardsStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'id': _id,
        'cards': _cards,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'cards': serializeParam(
          _cards,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static CardsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        cards: deserializeParam<String>(
          data['cards'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'CardsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CardsStruct &&
        name == other.name &&
        id == other.id &&
        listEquality.equals(cards, other.cards);
  }

  @override
  int get hashCode => const ListEquality().hash([name, id, cards]);
}

CardsStruct createCardsStruct({
  String? name,
  String? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CardsStruct(
      name: name,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CardsStruct? updateCardsStruct(
  CardsStruct? cardsStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cardsStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCardsStructData(
  Map<String, dynamic> firestoreData,
  CardsStruct? cardsStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cardsStruct == null) {
    return;
  }
  if (cardsStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cardsStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cardsStructData = getCardsFirestoreData(cardsStruct, forFieldValue);
  final nestedData =
      cardsStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cardsStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCardsFirestoreData(
  CardsStruct? cardsStruct, [
  bool forFieldValue = false,
]) {
  if (cardsStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cardsStruct.toMap());

  // Add any Firestore field values
  cardsStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCardsListFirestoreData(
  List<CardsStruct>? cardsStructs,
) =>
    cardsStructs?.map((e) => getCardsFirestoreData(e, true)).toList() ?? [];
