import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideoRequestsRecord extends FirestoreRecord {
  VideoRequestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "occassion" field.
  String? _occassion;
  String get occassion => _occassion ?? '';
  bool hasOccassion() => _occassion != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "delivery_type" field.
  String? _deliveryType;
  String get deliveryType => _deliveryType ?? '';
  bool hasDeliveryType() => _deliveryType != null;

  // "booking_fee" field.
  String? _bookingFee;
  String get bookingFee => _bookingFee ?? '';
  bool hasBookingFee() => _bookingFee != null;

  // "paid" field.
  bool? _paid;
  bool get paid => _paid ?? false;
  bool hasPaid() => _paid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "requesterName" field.
  String? _requesterName;
  String get requesterName => _requesterName ?? '';
  bool hasRequesterName() => _requesterName != null;

  // "celebrityName" field.
  String? _celebrityName;
  String get celebrityName => _celebrityName ?? '';
  bool hasCelebrityName() => _celebrityName != null;

  // "celebrityImage" field.
  String? _celebrityImage;
  String get celebrityImage => _celebrityImage ?? '';
  bool hasCelebrityImage() => _celebrityImage != null;

  // "isStandardPriceChecked" field.
  bool? _isStandardPriceChecked;
  bool get isStandardPriceChecked => _isStandardPriceChecked ?? false;
  bool hasIsStandardPriceChecked() => _isStandardPriceChecked != null;

  // "is24hrsPriceChecked" field.
  bool? _is24hrsPriceChecked;
  bool get is24hrsPriceChecked => _is24hrsPriceChecked ?? false;
  bool hasIs24hrsPriceChecked() => _is24hrsPriceChecked != null;

  // "isToBeHidden" field.
  bool? _isToBeHidden;
  bool get isToBeHidden => _isToBeHidden ?? false;
  bool hasIsToBeHidden() => _isToBeHidden != null;

  // "StandardPrice" field.
  double? _standardPrice;
  double get standardPrice => _standardPrice ?? 0.0;
  bool hasStandardPrice() => _standardPrice != null;

  // "delivery24hrsrice" field.
  double? _delivery24hrsrice;
  double get delivery24hrsrice => _delivery24hrsrice ?? 0.0;
  bool hasDelivery24hrsrice() => _delivery24hrsrice != null;

  // "totalVideoCosts" field.
  double? _totalVideoCosts;
  double get totalVideoCosts => _totalVideoCosts ?? 0.0;
  bool hasTotalVideoCosts() => _totalVideoCosts != null;

  // "isAccepted" field.
  bool? _isAccepted;
  bool get isAccepted => _isAccepted ?? false;
  bool hasIsAccepted() => _isAccepted != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as DocumentReference?;
    _occassion = snapshotData['occassion'] as String?;
    _message = snapshotData['message'] as String?;
    _deliveryType = snapshotData['delivery_type'] as String?;
    _bookingFee = snapshotData['booking_fee'] as String?;
    _paid = snapshotData['paid'] as bool?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _requesterName = snapshotData['requesterName'] as String?;
    _celebrityName = snapshotData['celebrityName'] as String?;
    _celebrityImage = snapshotData['celebrityImage'] as String?;
    _isStandardPriceChecked = snapshotData['isStandardPriceChecked'] as bool?;
    _is24hrsPriceChecked = snapshotData['is24hrsPriceChecked'] as bool?;
    _isToBeHidden = snapshotData['isToBeHidden'] as bool?;
    _standardPrice = castToType<double>(snapshotData['StandardPrice']);
    _delivery24hrsrice = castToType<double>(snapshotData['delivery24hrsrice']);
    _totalVideoCosts = castToType<double>(snapshotData['totalVideoCosts']);
    _isAccepted = snapshotData['isAccepted'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videoRequests');

  static Stream<VideoRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideoRequestsRecord.fromSnapshot(s));

  static Future<VideoRequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideoRequestsRecord.fromSnapshot(s));

  static VideoRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VideoRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideoRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideoRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideoRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideoRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideoRequestsRecordData({
  DocumentReference? userId,
  String? occassion,
  String? message,
  String? deliveryType,
  String? bookingFee,
  bool? paid,
  DateTime? createdTime,
  String? requesterName,
  String? celebrityName,
  String? celebrityImage,
  bool? isStandardPriceChecked,
  bool? is24hrsPriceChecked,
  bool? isToBeHidden,
  double? standardPrice,
  double? delivery24hrsrice,
  double? totalVideoCosts,
  bool? isAccepted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'occassion': occassion,
      'message': message,
      'delivery_type': deliveryType,
      'booking_fee': bookingFee,
      'paid': paid,
      'created_time': createdTime,
      'requesterName': requesterName,
      'celebrityName': celebrityName,
      'celebrityImage': celebrityImage,
      'isStandardPriceChecked': isStandardPriceChecked,
      'is24hrsPriceChecked': is24hrsPriceChecked,
      'isToBeHidden': isToBeHidden,
      'StandardPrice': standardPrice,
      'delivery24hrsrice': delivery24hrsrice,
      'totalVideoCosts': totalVideoCosts,
      'isAccepted': isAccepted,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideoRequestsRecordDocumentEquality
    implements Equality<VideoRequestsRecord> {
  const VideoRequestsRecordDocumentEquality();

  @override
  bool equals(VideoRequestsRecord? e1, VideoRequestsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.occassion == e2?.occassion &&
        e1?.message == e2?.message &&
        e1?.deliveryType == e2?.deliveryType &&
        e1?.bookingFee == e2?.bookingFee &&
        e1?.paid == e2?.paid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.requesterName == e2?.requesterName &&
        e1?.celebrityName == e2?.celebrityName &&
        e1?.celebrityImage == e2?.celebrityImage &&
        e1?.isStandardPriceChecked == e2?.isStandardPriceChecked &&
        e1?.is24hrsPriceChecked == e2?.is24hrsPriceChecked &&
        e1?.isToBeHidden == e2?.isToBeHidden &&
        e1?.standardPrice == e2?.standardPrice &&
        e1?.delivery24hrsrice == e2?.delivery24hrsrice &&
        e1?.totalVideoCosts == e2?.totalVideoCosts &&
        e1?.isAccepted == e2?.isAccepted;
  }

  @override
  int hash(VideoRequestsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.occassion,
        e?.message,
        e?.deliveryType,
        e?.bookingFee,
        e?.paid,
        e?.createdTime,
        e?.requesterName,
        e?.celebrityName,
        e?.celebrityImage,
        e?.isStandardPriceChecked,
        e?.is24hrsPriceChecked,
        e?.isToBeHidden,
        e?.standardPrice,
        e?.delivery24hrsrice,
        e?.totalVideoCosts,
        e?.isAccepted
      ]);

  @override
  bool isValidKey(Object? o) => o is VideoRequestsRecord;
}
