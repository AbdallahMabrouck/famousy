import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "reviewId" field.
  String? _reviewId;
  String get reviewId => _reviewId ?? '';
  bool hasReviewId() => _reviewId != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "celebrityId" field.
  DocumentReference? _celebrityId;
  DocumentReference? get celebrityId => _celebrityId;
  bool hasCelebrityId() => _celebrityId != null;

  // "requestId" field.
  DocumentReference? _requestId;
  DocumentReference? get requestId => _requestId;
  bool hasRequestId() => _requestId != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "reviewerName" field.
  String? _reviewerName;
  String get reviewerName => _reviewerName ?? '';
  bool hasReviewerName() => _reviewerName != null;

  void _initializeFields() {
    _reviewId = snapshotData['reviewId'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _celebrityId = snapshotData['celebrityId'] as DocumentReference?;
    _requestId = snapshotData['requestId'] as DocumentReference?;
    _rating = castToType<int>(snapshotData['rating']);
    _comment = snapshotData['comment'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _reviewerName = snapshotData['reviewerName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  String? reviewId,
  DocumentReference? userId,
  DocumentReference? celebrityId,
  DocumentReference? requestId,
  int? rating,
  String? comment,
  DateTime? createdAt,
  String? reviewerName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reviewId': reviewId,
      'userId': userId,
      'celebrityId': celebrityId,
      'requestId': requestId,
      'rating': rating,
      'comment': comment,
      'created_at': createdAt,
      'reviewerName': reviewerName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    return e1?.reviewId == e2?.reviewId &&
        e1?.userId == e2?.userId &&
        e1?.celebrityId == e2?.celebrityId &&
        e1?.requestId == e2?.requestId &&
        e1?.rating == e2?.rating &&
        e1?.comment == e2?.comment &&
        e1?.createdAt == e2?.createdAt &&
        e1?.reviewerName == e2?.reviewerName;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.reviewId,
        e?.userId,
        e?.celebrityId,
        e?.requestId,
        e?.rating,
        e?.comment,
        e?.createdAt,
        e?.reviewerName
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
