import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubscriptionsRecord extends FirestoreRecord {
  SubscriptionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "subscriptionId" field.
  String? _subscriptionId;
  String get subscriptionId => _subscriptionId ?? '';
  bool hasSubscriptionId() => _subscriptionId != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "tier" field.
  String? _tier;
  String get tier => _tier ?? '';
  bool hasTier() => _tier != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "EndDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "OneMonthPrice" field.
  double? _oneMonthPrice;
  double get oneMonthPrice => _oneMonthPrice ?? 0.0;
  bool hasOneMonthPrice() => _oneMonthPrice != null;

  // "ThreeMonthsPrice" field.
  double? _threeMonthsPrice;
  double get threeMonthsPrice => _threeMonthsPrice ?? 0.0;
  bool hasThreeMonthsPrice() => _threeMonthsPrice != null;

  // "SixMonthsPrice" field.
  double? _sixMonthsPrice;
  double get sixMonthsPrice => _sixMonthsPrice ?? 0.0;
  bool hasSixMonthsPrice() => _sixMonthsPrice != null;

  // "TwelveMonthsPrice" field.
  double? _twelveMonthsPrice;
  double get twelveMonthsPrice => _twelveMonthsPrice ?? 0.0;
  bool hasTwelveMonthsPrice() => _twelveMonthsPrice != null;

  void _initializeFields() {
    _subscriptionId = snapshotData['subscriptionId'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _tier = snapshotData['tier'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['EndDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _oneMonthPrice = castToType<double>(snapshotData['OneMonthPrice']);
    _threeMonthsPrice = castToType<double>(snapshotData['ThreeMonthsPrice']);
    _sixMonthsPrice = castToType<double>(snapshotData['SixMonthsPrice']);
    _twelveMonthsPrice = castToType<double>(snapshotData['TwelveMonthsPrice']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subscriptions');

  static Stream<SubscriptionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubscriptionsRecord.fromSnapshot(s));

  static Future<SubscriptionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubscriptionsRecord.fromSnapshot(s));

  static SubscriptionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubscriptionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubscriptionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubscriptionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubscriptionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubscriptionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubscriptionsRecordData({
  String? subscriptionId,
  DocumentReference? userId,
  String? tier,
  DateTime? startDate,
  DateTime? endDate,
  String? status,
  double? oneMonthPrice,
  double? threeMonthsPrice,
  double? sixMonthsPrice,
  double? twelveMonthsPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subscriptionId': subscriptionId,
      'userId': userId,
      'tier': tier,
      'startDate': startDate,
      'EndDate': endDate,
      'status': status,
      'OneMonthPrice': oneMonthPrice,
      'ThreeMonthsPrice': threeMonthsPrice,
      'SixMonthsPrice': sixMonthsPrice,
      'TwelveMonthsPrice': twelveMonthsPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubscriptionsRecordDocumentEquality
    implements Equality<SubscriptionsRecord> {
  const SubscriptionsRecordDocumentEquality();

  @override
  bool equals(SubscriptionsRecord? e1, SubscriptionsRecord? e2) {
    return e1?.subscriptionId == e2?.subscriptionId &&
        e1?.userId == e2?.userId &&
        e1?.tier == e2?.tier &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.status == e2?.status &&
        e1?.oneMonthPrice == e2?.oneMonthPrice &&
        e1?.threeMonthsPrice == e2?.threeMonthsPrice &&
        e1?.sixMonthsPrice == e2?.sixMonthsPrice &&
        e1?.twelveMonthsPrice == e2?.twelveMonthsPrice;
  }

  @override
  int hash(SubscriptionsRecord? e) => const ListEquality().hash([
        e?.subscriptionId,
        e?.userId,
        e?.tier,
        e?.startDate,
        e?.endDate,
        e?.status,
        e?.oneMonthPrice,
        e?.threeMonthsPrice,
        e?.sixMonthsPrice,
        e?.twelveMonthsPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is SubscriptionsRecord;
}
