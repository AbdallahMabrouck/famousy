import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommissionsRecord extends FirestoreRecord {
  CommissionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "commissionId" field.
  String? _commissionId;
  String get commissionId => _commissionId ?? '';
  bool hasCommissionId() => _commissionId != null;

  // "requestId_dm" field.
  DocumentReference? _requestIdDm;
  DocumentReference? get requestIdDm => _requestIdDm;
  bool hasRequestIdDm() => _requestIdDm != null;

  // "requestId_video" field.
  DocumentReference? _requestIdVideo;
  DocumentReference? get requestIdVideo => _requestIdVideo;
  bool hasRequestIdVideo() => _requestIdVideo != null;

  // "celebrityId" field.
  DocumentReference? _celebrityId;
  DocumentReference? get celebrityId => _celebrityId;
  bool hasCelebrityId() => _celebrityId != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "transaction_amount" field.
  String? _transactionAmount;
  String get transactionAmount => _transactionAmount ?? '';
  bool hasTransactionAmount() => _transactionAmount != null;

  // "commission_amount" field.
  String? _commissionAmount;
  String get commissionAmount => _commissionAmount ?? '';
  bool hasCommissionAmount() => _commissionAmount != null;

  // "celebrity_amount" field.
  String? _celebrityAmount;
  String get celebrityAmount => _celebrityAmount ?? '';
  bool hasCelebrityAmount() => _celebrityAmount != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _commissionId = snapshotData['commissionId'] as String?;
    _requestIdDm = snapshotData['requestId_dm'] as DocumentReference?;
    _requestIdVideo = snapshotData['requestId_video'] as DocumentReference?;
    _celebrityId = snapshotData['celebrityId'] as DocumentReference?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _transactionAmount = snapshotData['transaction_amount'] as String?;
    _commissionAmount = snapshotData['commission_amount'] as String?;
    _celebrityAmount = snapshotData['celebrity_amount'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('commissions');

  static Stream<CommissionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommissionsRecord.fromSnapshot(s));

  static Future<CommissionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommissionsRecord.fromSnapshot(s));

  static CommissionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommissionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommissionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommissionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommissionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommissionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommissionsRecordData({
  String? commissionId,
  DocumentReference? requestIdDm,
  DocumentReference? requestIdVideo,
  DocumentReference? celebrityId,
  DocumentReference? userId,
  String? transactionAmount,
  String? commissionAmount,
  String? celebrityAmount,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commissionId': commissionId,
      'requestId_dm': requestIdDm,
      'requestId_video': requestIdVideo,
      'celebrityId': celebrityId,
      'userId': userId,
      'transaction_amount': transactionAmount,
      'commission_amount': commissionAmount,
      'celebrity_amount': celebrityAmount,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommissionsRecordDocumentEquality implements Equality<CommissionsRecord> {
  const CommissionsRecordDocumentEquality();

  @override
  bool equals(CommissionsRecord? e1, CommissionsRecord? e2) {
    return e1?.commissionId == e2?.commissionId &&
        e1?.requestIdDm == e2?.requestIdDm &&
        e1?.requestIdVideo == e2?.requestIdVideo &&
        e1?.celebrityId == e2?.celebrityId &&
        e1?.userId == e2?.userId &&
        e1?.transactionAmount == e2?.transactionAmount &&
        e1?.commissionAmount == e2?.commissionAmount &&
        e1?.celebrityAmount == e2?.celebrityAmount &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CommissionsRecord? e) => const ListEquality().hash([
        e?.commissionId,
        e?.requestIdDm,
        e?.requestIdVideo,
        e?.celebrityId,
        e?.userId,
        e?.transactionAmount,
        e?.commissionAmount,
        e?.celebrityAmount,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is CommissionsRecord;
}
