import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestsRecord extends FirestoreRecord {
  QuestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "perks" field.
  List<String>? _perks;
  List<String> get perks => _perks ?? const [];
  bool hasPerks() => _perks != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _points = castToType<int>(snapshotData['points']);
    _perks = getDataList(snapshotData['perks']);
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quests');

  static Stream<QuestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestsRecord.fromSnapshot(s));

  static Future<QuestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestsRecord.fromSnapshot(s));

  static QuestsRecord fromSnapshot(DocumentSnapshot snapshot) => QuestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestsRecordData({
  String? name,
  String? description,
  int? points,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'points': points,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestsRecordDocumentEquality implements Equality<QuestsRecord> {
  const QuestsRecordDocumentEquality();

  @override
  bool equals(QuestsRecord? e1, QuestsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.points == e2?.points &&
        listEquality.equals(e1?.perks, e2?.perks) &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(QuestsRecord? e) => const ListEquality()
      .hash([e?.name, e?.description, e?.points, e?.perks, e?.photoUrl]);

  @override
  bool isValidKey(Object? o) => o is QuestsRecord;
}
