import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "commentUser" field.
  DocumentReference? _commentUser;
  DocumentReference? get commentUser => _commentUser;
  bool hasCommentUser() => _commentUser != null;

  // "commentText" field.
  String? _commentText;
  String get commentText => _commentText ?? '';
  bool hasCommentText() => _commentText != null;

  // "creaatedOn" field.
  DateTime? _creaatedOn;
  DateTime? get creaatedOn => _creaatedOn;
  bool hasCreaatedOn() => _creaatedOn != null;

  // "commentUserName" field.
  String? _commentUserName;
  String get commentUserName => _commentUserName ?? '';
  bool hasCommentUserName() => _commentUserName != null;

  // "commentUserImage" field.
  String? _commentUserImage;
  String get commentUserImage => _commentUserImage ?? '';
  bool hasCommentUserImage() => _commentUserImage != null;

  // "commentLikes" field.
  List<DocumentReference>? _commentLikes;
  List<DocumentReference> get commentLikes => _commentLikes ?? const [];
  bool hasCommentLikes() => _commentLikes != null;

  // "replies" field.
  List<DocumentReference>? _replies;
  List<DocumentReference> get replies => _replies ?? const [];
  bool hasReplies() => _replies != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _commentUser = snapshotData['commentUser'] as DocumentReference?;
    _commentText = snapshotData['commentText'] as String?;
    _creaatedOn = snapshotData['creaatedOn'] as DateTime?;
    _commentUserName = snapshotData['commentUserName'] as String?;
    _commentUserImage = snapshotData['commentUserImage'] as String?;
    _commentLikes = getDataList(snapshotData['commentLikes']);
    _replies = getDataList(snapshotData['replies']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('comments')
          : FirebaseFirestore.instance.collectionGroup('comments');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('comments').doc(id);

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  DocumentReference? commentUser,
  String? commentText,
  DateTime? creaatedOn,
  String? commentUserName,
  String? commentUserImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commentUser': commentUser,
      'commentText': commentText,
      'creaatedOn': creaatedOn,
      'commentUserName': commentUserName,
      'commentUserImage': commentUserImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.commentUser == e2?.commentUser &&
        e1?.commentText == e2?.commentText &&
        e1?.creaatedOn == e2?.creaatedOn &&
        e1?.commentUserName == e2?.commentUserName &&
        e1?.commentUserImage == e2?.commentUserImage &&
        listEquality.equals(e1?.commentLikes, e2?.commentLikes) &&
        listEquality.equals(e1?.replies, e2?.replies);
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.commentUser,
        e?.commentText,
        e?.creaatedOn,
        e?.commentUserName,
        e?.commentUserImage,
        e?.commentLikes,
        e?.replies
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
