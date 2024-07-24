import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DmRequestsRecord extends FirestoreRecord {
  DmRequestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "requestId" field.
  String? _requestId;
  String get requestId => _requestId ?? '';
  bool hasRequestId() => _requestId != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "celebrityId" field.
  DocumentReference? _celebrityId;
  DocumentReference? get celebrityId => _celebrityId;
  bool hasCelebrityId() => _celebrityId != null;

  // "booking_fee" field.
  String? _bookingFee;
  String get bookingFee => _bookingFee ?? '';
  bool hasBookingFee() => _bookingFee != null;

  // "paid" field.
  bool? _paid;
  bool get paid => _paid ?? false;
  bool hasPaid() => _paid != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "requesterName" field.
  String? _requesterName;
  String get requesterName => _requesterName ?? '';
  bool hasRequesterName() => _requesterName != null;

  // "celebrityName" field.
  String? _celebrityName;
  String get celebrityName => _celebrityName ?? '';
  bool hasCelebrityName() => _celebrityName != null;

  void _initializeFields() {
    _requestId = snapshotData['requestId'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _celebrityId = snapshotData['celebrityId'] as DocumentReference?;
    _bookingFee = snapshotData['booking_fee'] as String?;
    _paid = snapshotData['paid'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _requesterName = snapshotData['requesterName'] as String?;
    _celebrityName = snapshotData['celebrityName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dmRequests');

  static Stream<DmRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DmRequestsRecord.fromSnapshot(s));

  static Future<DmRequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DmRequestsRecord.fromSnapshot(s));

  static DmRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DmRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DmRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DmRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DmRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DmRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDmRequestsRecordData({
  String? requestId,
  DocumentReference? userId,
  DocumentReference? celebrityId,
  String? bookingFee,
  bool? paid,
  DateTime? createdAt,
  String? requesterName,
  String? celebrityName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'requestId': requestId,
      'userId': userId,
      'celebrityId': celebrityId,
      'booking_fee': bookingFee,
      'paid': paid,
      'created_at': createdAt,
      'requesterName': requesterName,
      'celebrityName': celebrityName,
    }.withoutNulls,
  );

  return firestoreData;
}

class DmRequestsRecordDocumentEquality implements Equality<DmRequestsRecord> {
  const DmRequestsRecordDocumentEquality();

  @override
  bool equals(DmRequestsRecord? e1, DmRequestsRecord? e2) {
    return e1?.requestId == e2?.requestId &&
        e1?.userId == e2?.userId &&
        e1?.celebrityId == e2?.celebrityId &&
        e1?.bookingFee == e2?.bookingFee &&
        e1?.paid == e2?.paid &&
        e1?.createdAt == e2?.createdAt &&
        e1?.requesterName == e2?.requesterName &&
        e1?.celebrityName == e2?.celebrityName;
  }

  @override
  int hash(DmRequestsRecord? e) => const ListEquality().hash([
        e?.requestId,
        e?.userId,
        e?.celebrityId,
        e?.bookingFee,
        e?.paid,
        e?.createdAt,
        e?.requesterName,
        e?.celebrityName
      ]);

  @override
  bool isValidKey(Object? o) => o is DmRequestsRecord;
}
