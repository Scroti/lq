// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnswersPointsStruct extends FFFirebaseStruct {
  AnswersPointsStruct({
    String? answer,
    int? points,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _answer = answer,
        _points = points,
        super(firestoreUtilData);

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  set answer(String? val) => _answer = val;
  bool hasAnswer() => _answer != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  set points(int? val) => _points = val;
  void incrementPoints(int amount) => _points = points + amount;
  bool hasPoints() => _points != null;

  static AnswersPointsStruct fromMap(Map<String, dynamic> data) =>
      AnswersPointsStruct(
        answer: data['answer'] as String?,
        points: castToType<int>(data['points']),
      );

  static AnswersPointsStruct? maybeFromMap(dynamic data) => data is Map
      ? AnswersPointsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'answer': _answer,
        'points': _points,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'answer': serializeParam(
          _answer,
          ParamType.String,
        ),
        'points': serializeParam(
          _points,
          ParamType.int,
        ),
      }.withoutNulls;

  static AnswersPointsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AnswersPointsStruct(
        answer: deserializeParam(
          data['answer'],
          ParamType.String,
          false,
        ),
        points: deserializeParam(
          data['points'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AnswersPointsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnswersPointsStruct &&
        answer == other.answer &&
        points == other.points;
  }

  @override
  int get hashCode => const ListEquality().hash([answer, points]);
}

AnswersPointsStruct createAnswersPointsStruct({
  String? answer,
  int? points,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AnswersPointsStruct(
      answer: answer,
      points: points,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AnswersPointsStruct? updateAnswersPointsStruct(
  AnswersPointsStruct? answersPoints, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    answersPoints
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAnswersPointsStructData(
  Map<String, dynamic> firestoreData,
  AnswersPointsStruct? answersPoints,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (answersPoints == null) {
    return;
  }
  if (answersPoints.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && answersPoints.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final answersPointsData =
      getAnswersPointsFirestoreData(answersPoints, forFieldValue);
  final nestedData =
      answersPointsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = answersPoints.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAnswersPointsFirestoreData(
  AnswersPointsStruct? answersPoints, [
  bool forFieldValue = false,
]) {
  if (answersPoints == null) {
    return {};
  }
  final firestoreData = mapToFirestore(answersPoints.toMap());

  // Add any Firestore field values
  answersPoints.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAnswersPointsListFirestoreData(
  List<AnswersPointsStruct>? answersPointss,
) =>
    answersPointss
        ?.map((e) => getAnswersPointsFirestoreData(e, true))
        .toList() ??
    [];
