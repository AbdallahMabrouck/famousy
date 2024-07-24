import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "postImage" field.
  String? _postImage;
  String get postImage => _postImage ?? '';
  bool hasPostImage() => _postImage != null;

  // "postVideo" field.
  String? _postVideo;
  String get postVideo => _postVideo ?? '';
  bool hasPostVideo() => _postVideo != null;

  // "postUser" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "userShares" field.
  int? _userShares;
  int get userShares => _userShares ?? 0;
  bool hasUserShares() => _userShares != null;

  // "postText" field.
  String? _postText;
  String get postText => _postText ?? '';
  bool hasPostText() => _postText != null;

  // "postUserName" field.
  String? _postUserName;
  String get postUserName => _postUserName ?? '';
  bool hasPostUserName() => _postUserName != null;

  // "postUserImage" field.
  String? _postUserImage;
  String get postUserImage => _postUserImage ?? '';
  bool hasPostUserImage() => _postUserImage != null;

  // "userLikes" field.
  List<DocumentReference>? _userLikes;
  List<DocumentReference> get userLikes => _userLikes ?? const [];
  bool hasUserLikes() => _userLikes != null;

  // "userBookmarks" field.
  List<DocumentReference>? _userBookmarks;
  List<DocumentReference> get userBookmarks => _userBookmarks ?? const [];
  bool hasUserBookmarks() => _userBookmarks != null;

  // "createdOn" field.
  DateTime? _createdOn;
  DateTime? get createdOn => _createdOn;
  bool hasCreatedOn() => _createdOn != null;

  // "comments" field.
  int? _comments;
  int get comments => _comments ?? 0;
  bool hasComments() => _comments != null;

  // "posterName" field.
  String? _posterName;
  String get posterName => _posterName ?? '';
  bool hasPosterName() => _posterName != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _postImage = snapshotData['postImage'] as String?;
    _postVideo = snapshotData['postVideo'] as String?;
    _postUser = snapshotData['postUser'] as DocumentReference?;
    _userShares = castToType<int>(snapshotData['userShares']);
    _postText = snapshotData['postText'] as String?;
    _postUserName = snapshotData['postUserName'] as String?;
    _postUserImage = snapshotData['postUserImage'] as String?;
    _userLikes = getDataList(snapshotData['userLikes']);
    _userBookmarks = getDataList(snapshotData['userBookmarks']);
    _createdOn = snapshotData['createdOn'] as DateTime?;
    _comments = castToType<int>(snapshotData['comments']);
    _posterName = snapshotData['posterName'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? postImage,
  String? postVideo,
  DocumentReference? postUser,
  int? userShares,
  String? postText,
  String? postUserName,
  String? postUserImage,
  DateTime? createdOn,
  int? comments,
  String? posterName,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postImage': postImage,
      'postVideo': postVideo,
      'postUser': postUser,
      'userShares': userShares,
      'postText': postText,
      'postUserName': postUserName,
      'postUserImage': postUserImage,
      'createdOn': createdOn,
      'comments': comments,
      'posterName': posterName,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postImage == e2?.postImage &&
        e1?.postVideo == e2?.postVideo &&
        e1?.postUser == e2?.postUser &&
        e1?.userShares == e2?.userShares &&
        e1?.postText == e2?.postText &&
        e1?.postUserName == e2?.postUserName &&
        e1?.postUserImage == e2?.postUserImage &&
        listEquality.equals(e1?.userLikes, e2?.userLikes) &&
        listEquality.equals(e1?.userBookmarks, e2?.userBookmarks) &&
        e1?.createdOn == e2?.createdOn &&
        e1?.comments == e2?.comments &&
        e1?.posterName == e2?.posterName &&
        e1?.type == e2?.type;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.postImage,
        e?.postVideo,
        e?.postUser,
        e?.userShares,
        e?.postText,
        e?.postUserName,
        e?.postUserImage,
        e?.userLikes,
        e?.userBookmarks,
        e?.createdOn,
        e?.comments,
        e?.posterName,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
