import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "hasPaid" field.
  bool? _hasPaid;
  bool get hasPaid => _hasPaid ?? false;
  bool hasHasPaid() => _hasPaid != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "social_media" field.
  String? _socialMedia;
  String get socialMedia => _socialMedia ?? '';
  bool hasSocialMedia() => _socialMedia != null;

  // "social_media_handle" field.
  String? _socialMediaHandle;
  String get socialMediaHandle => _socialMediaHandle ?? '';
  bool hasSocialMediaHandle() => _socialMediaHandle != null;

  // "inviteCode" field.
  int? _inviteCode;
  int get inviteCode => _inviteCode ?? 0;
  bool hasInviteCode() => _inviteCode != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "video_intro" field.
  String? _videoIntro;
  String get videoIntro => _videoIntro ?? '';
  bool hasVideoIntro() => _videoIntro != null;

  // "specialization" field.
  String? _specialization;
  String get specialization => _specialization ?? '';
  bool hasSpecialization() => _specialization != null;

  // "standard_price" field.
  double? _standardPrice;
  double get standardPrice => _standardPrice ?? 0.0;
  bool hasStandardPrice() => _standardPrice != null;

  // "delivery_24hrs_price" field.
  double? _delivery24hrsPrice;
  double get delivery24hrsPrice => _delivery24hrsPrice ?? 0.0;
  bool hasDelivery24hrsPrice() => _delivery24hrsPrice != null;

  // "dm_price" field.
  double? _dmPrice;
  double get dmPrice => _dmPrice ?? 0.0;
  bool hasDmPrice() => _dmPrice != null;

  // "followers" field.
  String? _followers;
  String get followers => _followers ?? '';
  bool hasFollowers() => _followers != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "userFollowers" field.
  List<DocumentReference>? _userFollowers;
  List<DocumentReference> get userFollowers => _userFollowers ?? const [];
  bool hasUserFollowers() => _userFollowers != null;

  // "userFollowing" field.
  List<DocumentReference>? _userFollowing;
  List<DocumentReference> get userFollowing => _userFollowing ?? const [];
  bool hasUserFollowing() => _userFollowing != null;

  // "blockedUsers" field.
  List<DocumentReference>? _blockedUsers;
  List<DocumentReference> get blockedUsers => _blockedUsers ?? const [];
  bool hasBlockedUsers() => _blockedUsers != null;

  // "isSubscribed" field.
  bool? _isSubscribed;
  bool get isSubscribed => _isSubscribed ?? false;
  bool hasIsSubscribed() => _isSubscribed != null;

  // "isFeatured" field.
  bool? _isFeatured;
  bool get isFeatured => _isFeatured ?? false;
  bool hasIsFeatured() => _isFeatured != null;

  // "isTrending" field.
  bool? _isTrending;
  bool get isTrending => _isTrending ?? false;
  bool hasIsTrending() => _isTrending != null;

  // "is24hrsDelivery" field.
  bool? _is24hrsDelivery;
  bool get is24hrsDelivery => _is24hrsDelivery ?? false;
  bool hasIs24hrsDelivery() => _is24hrsDelivery != null;

  // "isUnder50K" field.
  bool? _isUnder50K;
  bool get isUnder50K => _isUnder50K ?? false;
  bool hasIsUnder50K() => _isUnder50K != null;

  // "isUnder200K" field.
  bool? _isUnder200K;
  bool get isUnder200K => _isUnder200K ?? false;
  bool hasIsUnder200K() => _isUnder200K != null;

  // "isUnder500K" field.
  bool? _isUnder500K;
  bool get isUnder500K => _isUnder500K ?? false;
  bool hasIsUnder500K() => _isUnder500K != null;

  // "userSubscribers" field.
  List<DocumentReference>? _userSubscribers;
  List<DocumentReference> get userSubscribers => _userSubscribers ?? const [];
  bool hasUserSubscribers() => _userSubscribers != null;

  // "userSubscriptions" field.
  List<DocumentReference>? _userSubscriptions;
  List<DocumentReference> get userSubscriptions =>
      _userSubscriptions ?? const [];
  bool hasUserSubscriptions() => _userSubscriptions != null;

  // "bankName" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  bool hasBankName() => _bankName != null;

  // "accountNumber" field.
  int? _accountNumber;
  int get accountNumber => _accountNumber ?? 0;
  bool hasAccountNumber() => _accountNumber != null;

  // "accountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  bool hasAccountName() => _accountName != null;

  // "mobileMoneyNumber1" field.
  int? _mobileMoneyNumber1;
  int get mobileMoneyNumber1 => _mobileMoneyNumber1 ?? 0;
  bool hasMobileMoneyNumber1() => _mobileMoneyNumber1 != null;

  // "mobileMoneyNumber2" field.
  int? _mobileMoneyNumber2;
  int get mobileMoneyNumber2 => _mobileMoneyNumber2 ?? 0;
  bool hasMobileMoneyNumber2() => _mobileMoneyNumber2 != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _hasPaid = snapshotData['hasPaid'] as bool?;
    _country = snapshotData['country'] as String?;
    _socialMedia = snapshotData['social_media'] as String?;
    _socialMediaHandle = snapshotData['social_media_handle'] as String?;
    _inviteCode = castToType<int>(snapshotData['inviteCode']);
    _role = snapshotData['role'] as String?;
    _approved = snapshotData['approved'] as bool?;
    _videoIntro = snapshotData['video_intro'] as String?;
    _specialization = snapshotData['specialization'] as String?;
    _standardPrice = castToType<double>(snapshotData['standard_price']);
    _delivery24hrsPrice =
        castToType<double>(snapshotData['delivery_24hrs_price']);
    _dmPrice = castToType<double>(snapshotData['dm_price']);
    _followers = snapshotData['followers'] as String?;
    _username = snapshotData['username'] as String?;
    _userFollowers = getDataList(snapshotData['userFollowers']);
    _userFollowing = getDataList(snapshotData['userFollowing']);
    _blockedUsers = getDataList(snapshotData['blockedUsers']);
    _isSubscribed = snapshotData['isSubscribed'] as bool?;
    _isFeatured = snapshotData['isFeatured'] as bool?;
    _isTrending = snapshotData['isTrending'] as bool?;
    _is24hrsDelivery = snapshotData['is24hrsDelivery'] as bool?;
    _isUnder50K = snapshotData['isUnder50K'] as bool?;
    _isUnder200K = snapshotData['isUnder200K'] as bool?;
    _isUnder500K = snapshotData['isUnder500K'] as bool?;
    _userSubscribers = getDataList(snapshotData['userSubscribers']);
    _userSubscriptions = getDataList(snapshotData['userSubscriptions']);
    _bankName = snapshotData['bankName'] as String?;
    _accountNumber = castToType<int>(snapshotData['accountNumber']);
    _accountName = snapshotData['accountName'] as String?;
    _mobileMoneyNumber1 = castToType<int>(snapshotData['mobileMoneyNumber1']);
    _mobileMoneyNumber2 = castToType<int>(snapshotData['mobileMoneyNumber2']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? shortDescription,
  DateTime? lastActiveTime,
  bool? hasPaid,
  String? country,
  String? socialMedia,
  String? socialMediaHandle,
  int? inviteCode,
  String? role,
  bool? approved,
  String? videoIntro,
  String? specialization,
  double? standardPrice,
  double? delivery24hrsPrice,
  double? dmPrice,
  String? followers,
  String? username,
  bool? isSubscribed,
  bool? isFeatured,
  bool? isTrending,
  bool? is24hrsDelivery,
  bool? isUnder50K,
  bool? isUnder200K,
  bool? isUnder500K,
  String? bankName,
  int? accountNumber,
  String? accountName,
  int? mobileMoneyNumber1,
  int? mobileMoneyNumber2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'hasPaid': hasPaid,
      'country': country,
      'social_media': socialMedia,
      'social_media_handle': socialMediaHandle,
      'inviteCode': inviteCode,
      'role': role,
      'approved': approved,
      'video_intro': videoIntro,
      'specialization': specialization,
      'standard_price': standardPrice,
      'delivery_24hrs_price': delivery24hrsPrice,
      'dm_price': dmPrice,
      'followers': followers,
      'username': username,
      'isSubscribed': isSubscribed,
      'isFeatured': isFeatured,
      'isTrending': isTrending,
      'is24hrsDelivery': is24hrsDelivery,
      'isUnder50K': isUnder50K,
      'isUnder200K': isUnder200K,
      'isUnder500K': isUnder500K,
      'bankName': bankName,
      'accountNumber': accountNumber,
      'accountName': accountName,
      'mobileMoneyNumber1': mobileMoneyNumber1,
      'mobileMoneyNumber2': mobileMoneyNumber2,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.hasPaid == e2?.hasPaid &&
        e1?.country == e2?.country &&
        e1?.socialMedia == e2?.socialMedia &&
        e1?.socialMediaHandle == e2?.socialMediaHandle &&
        e1?.inviteCode == e2?.inviteCode &&
        e1?.role == e2?.role &&
        e1?.approved == e2?.approved &&
        e1?.videoIntro == e2?.videoIntro &&
        e1?.specialization == e2?.specialization &&
        e1?.standardPrice == e2?.standardPrice &&
        e1?.delivery24hrsPrice == e2?.delivery24hrsPrice &&
        e1?.dmPrice == e2?.dmPrice &&
        e1?.followers == e2?.followers &&
        e1?.username == e2?.username &&
        listEquality.equals(e1?.userFollowers, e2?.userFollowers) &&
        listEquality.equals(e1?.userFollowing, e2?.userFollowing) &&
        listEquality.equals(e1?.blockedUsers, e2?.blockedUsers) &&
        e1?.isSubscribed == e2?.isSubscribed &&
        e1?.isFeatured == e2?.isFeatured &&
        e1?.isTrending == e2?.isTrending &&
        e1?.is24hrsDelivery == e2?.is24hrsDelivery &&
        e1?.isUnder50K == e2?.isUnder50K &&
        e1?.isUnder200K == e2?.isUnder200K &&
        e1?.isUnder500K == e2?.isUnder500K &&
        listEquality.equals(e1?.userSubscribers, e2?.userSubscribers) &&
        listEquality.equals(e1?.userSubscriptions, e2?.userSubscriptions) &&
        e1?.bankName == e2?.bankName &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.accountName == e2?.accountName &&
        e1?.mobileMoneyNumber1 == e2?.mobileMoneyNumber1 &&
        e1?.mobileMoneyNumber2 == e2?.mobileMoneyNumber2;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.hasPaid,
        e?.country,
        e?.socialMedia,
        e?.socialMediaHandle,
        e?.inviteCode,
        e?.role,
        e?.approved,
        e?.videoIntro,
        e?.specialization,
        e?.standardPrice,
        e?.delivery24hrsPrice,
        e?.dmPrice,
        e?.followers,
        e?.username,
        e?.userFollowers,
        e?.userFollowing,
        e?.blockedUsers,
        e?.isSubscribed,
        e?.isFeatured,
        e?.isTrending,
        e?.is24hrsDelivery,
        e?.isUnder50K,
        e?.isUnder200K,
        e?.isUnder500K,
        e?.userSubscribers,
        e?.userSubscriptions,
        e?.bankName,
        e?.accountNumber,
        e?.accountName,
        e?.mobileMoneyNumber1,
        e?.mobileMoneyNumber2
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
