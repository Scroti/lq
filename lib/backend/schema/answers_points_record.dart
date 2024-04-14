import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnswersPointsRecord extends FirestoreRecord {
  AnswersPointsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  bool hasAnswer() => _answer != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _answer = snapshotData['answer'] as String?;
    _points = castToType<int>(snapshotData['points']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('answers_points')
          : FirebaseFirestore.instance.collectionGroup('answers_points');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('answers_points').doc(id);

  static Stream<AnswersPointsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnswersPointsRecord.fromSnapshot(s));

  static Future<AnswersPointsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnswersPointsRecord.fromSnapshot(s));

  static AnswersPointsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnswersPointsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnswersPointsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnswersPointsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnswersPointsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnswersPointsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnswersPointsRecordData({
  String? answer,
  int? points,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'answer': answer,
      'points': points,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnswersPointsRecordDocumentEquality
    implements Equality<AnswersPointsRecord> {
  const AnswersPointsRecordDocumentEquality();

  @override
  bool equals(AnswersPointsRecord? e1, AnswersPointsRecord? e2) {
    return e1?.answer == e2?.answer && e1?.points == e2?.points;
  }

  @override
  int hash(AnswersPointsRecord? e) =>
      const ListEquality().hash([e?.answer, e?.points]);

  @override
  bool isValidKey(Object? o) => o is AnswersPointsRecord;
}
