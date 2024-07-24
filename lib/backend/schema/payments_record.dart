import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentsRecord extends FirestoreRecord {
  PaymentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "paymentId" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  bool hasPaymentId() => _paymentId != null;

  // "requestId_video" field.
  DocumentReference? _requestIdVideo;
  DocumentReference? get requestIdVideo => _requestIdVideo;
  bool hasRequestIdVideo() => _requestIdVideo != null;

  // "requestId_dm" field.
  DocumentReference? _requestIdDm;
  DocumentReference? get requestIdDm => _requestIdDm;
  bool hasRequestIdDm() => _requestIdDm != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "celebrityId" field.
  DocumentReference? _celebrityId;
  DocumentReference? get celebrityId => _celebrityId;
  bool hasCelebrityId() => _celebrityId != null;

  // "paid_amount" field.
  String? _paidAmount;
  String get paidAmount => _paidAmount ?? '';
  bool hasPaidAmount() => _paidAmount != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _paymentId = snapshotData['paymentId'] as String?;
    _requestIdVideo = snapshotData['requestId_video'] as DocumentReference?;
    _requestIdDm = snapshotData['requestId_dm'] as DocumentReference?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _celebrityId = snapshotData['celebrityId'] as DocumentReference?;
    _paidAmount = snapshotData['paid_amount'] as String?;
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payments');

  static Stream<PaymentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentsRecord.fromSnapshot(s));

  static Future<PaymentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentsRecord.fromSnapshot(s));

  static PaymentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentsRecordData({
  String? paymentId,
  DocumentReference? requestIdVideo,
  DocumentReference? requestIdDm,
  DocumentReference? userId,
  DocumentReference? celebrityId,
  String? paidAmount,
  String? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'paymentId': paymentId,
      'requestId_video': requestIdVideo,
      'requestId_dm': requestIdDm,
      'userId': userId,
      'celebrityId': celebrityId,
      'paid_amount': paidAmount,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentsRecordDocumentEquality implements Equality<PaymentsRecord> {
  const PaymentsRecordDocumentEquality();

  @override
  bool equals(PaymentsRecord? e1, PaymentsRecord? e2) {
    return e1?.paymentId == e2?.paymentId &&
        e1?.requestIdVideo == e2?.requestIdVideo &&
        e1?.requestIdDm == e2?.requestIdDm &&
        e1?.userId == e2?.userId &&
        e1?.celebrityId == e2?.celebrityId &&
        e1?.paidAmount == e2?.paidAmount &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(PaymentsRecord? e) => const ListEquality().hash([
        e?.paymentId,
        e?.requestIdVideo,
        e?.requestIdDm,
        e?.userId,
        e?.celebrityId,
        e?.paidAmount,
        e?.status,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentsRecord;
}
