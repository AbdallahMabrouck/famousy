import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideosRecord extends FirestoreRecord {
  VideosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  // "videoId" field.
  String? _videoId;
  String get videoId => _videoId ?? '';
  bool hasVideoId() => _videoId != null;

  // "requestId" field.
  DocumentReference? _requestId;
  DocumentReference? get requestId => _requestId;
  bool hasRequestId() => _requestId != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "requesterName" field.
  String? _requesterName;
  String get requesterName => _requesterName ?? '';
  bool hasRequesterName() => _requesterName != null;

  // "celebrityName" field.
  String? _celebrityName;
  String get celebrityName => _celebrityName ?? '';
  bool hasCelebrityName() => _celebrityName != null;

  // "isPrivate" field.
  bool? _isPrivate;
  bool get isPrivate => _isPrivate ?? false;
  bool hasIsPrivate() => _isPrivate != null;

  void _initializeFields() {
    _videoUrl = snapshotData['video_url'] as String?;
    _videoId = snapshotData['videoId'] as String?;
    _requestId = snapshotData['requestId'] as DocumentReference?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _likes = castToType<int>(snapshotData['likes']);
    _requesterName = snapshotData['requesterName'] as String?;
    _celebrityName = snapshotData['celebrityName'] as String?;
    _isPrivate = snapshotData['isPrivate'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideosRecord.fromSnapshot(s));

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideosRecord.fromSnapshot(s));

  static VideosRecord fromSnapshot(DocumentSnapshot snapshot) => VideosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideosRecordData({
  String? videoUrl,
  String? videoId,
  DocumentReference? requestId,
  DocumentReference? userId,
  DateTime? createdAt,
  int? likes,
  String? requesterName,
  String? celebrityName,
  bool? isPrivate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'video_url': videoUrl,
      'videoId': videoId,
      'requestId': requestId,
      'userId': userId,
      'created_at': createdAt,
      'likes': likes,
      'requesterName': requesterName,
      'celebrityName': celebrityName,
      'isPrivate': isPrivate,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideosRecordDocumentEquality implements Equality<VideosRecord> {
  const VideosRecordDocumentEquality();

  @override
  bool equals(VideosRecord? e1, VideosRecord? e2) {
    return e1?.videoUrl == e2?.videoUrl &&
        e1?.videoId == e2?.videoId &&
        e1?.requestId == e2?.requestId &&
        e1?.userId == e2?.userId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.likes == e2?.likes &&
        e1?.requesterName == e2?.requesterName &&
        e1?.celebrityName == e2?.celebrityName &&
        e1?.isPrivate == e2?.isPrivate;
  }

  @override
  int hash(VideosRecord? e) => const ListEquality().hash([
        e?.videoUrl,
        e?.videoId,
        e?.requestId,
        e?.userId,
        e?.createdAt,
        e?.likes,
        e?.requesterName,
        e?.celebrityName,
        e?.isPrivate
      ]);

  @override
  bool isValidKey(Object? o) => o is VideosRecord;
}
