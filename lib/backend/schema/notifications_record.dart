import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  // "person" field.
  DocumentReference? _person;
  DocumentReference? get person => _person;
  bool hasPerson() => _person != null;

  // "post" field.
  DocumentReference? _post;
  DocumentReference? get post => _post;
  bool hasPost() => _post != null;

  // "comment" field.
  DocumentReference? _comment;
  DocumentReference? get comment => _comment;
  bool hasComment() => _comment != null;

  // "createdOn" field.
  DateTime? _createdOn;
  DateTime? get createdOn => _createdOn;
  bool hasCreatedOn() => _createdOn != null;

  // "video" field.
  DocumentReference? _video;
  DocumentReference? get video => _video;
  bool hasVideo() => _video != null;

  // "DM" field.
  DocumentReference? _dm;
  DocumentReference? get dm => _dm;
  bool hasDm() => _dm != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _seen = snapshotData['seen'] as bool?;
    _person = snapshotData['person'] as DocumentReference?;
    _post = snapshotData['post'] as DocumentReference?;
    _comment = snapshotData['comment'] as DocumentReference?;
    _createdOn = snapshotData['createdOn'] as DateTime?;
    _video = snapshotData['video'] as DocumentReference?;
    _dm = snapshotData['DM'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('notifications')
          : FirebaseFirestore.instance.collectionGroup('notifications');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('notifications').doc(id);

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? type,
  bool? seen,
  DocumentReference? person,
  DocumentReference? post,
  DocumentReference? comment,
  DateTime? createdOn,
  DocumentReference? video,
  DocumentReference? dm,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'seen': seen,
      'person': person,
      'post': post,
      'comment': comment,
      'createdOn': createdOn,
      'video': video,
      'DM': dm,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.seen == e2?.seen &&
        e1?.person == e2?.person &&
        e1?.post == e2?.post &&
        e1?.comment == e2?.comment &&
        e1?.createdOn == e2?.createdOn &&
        e1?.video == e2?.video &&
        e1?.dm == e2?.dm;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.type,
        e?.seen,
        e?.person,
        e?.post,
        e?.comment,
        e?.createdOn,
        e?.video,
        e?.dm
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
