import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bottom_navigation_component_celebrity_widget.dart';
import '/components/comment_on_post_component_widget.dart';
import '/components/send_a_tip_from_post_widget.dart';
import '/components/subscription_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'feed_model.dart';
export 'feed_model.dart';

class FeedWidget extends StatefulWidget {
  const FeedWidget({super.key});

  @override
  State<FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  late FeedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondary,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Text(
                                  valueOrDefault(
                                      currentUserDocument?.username, ''),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 12.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context
                                          .pushNamed('notifications-celebrity');
                                    },
                                    child: FaIcon(
                                      FontAwesomeIcons.bell,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: FutureBuilder<int>(
                                      future: queryNotificationsRecordCount(
                                        parent: currentUserReference,
                                        queryBuilder: (notificationsRecord) =>
                                            notificationsRecord.where(
                                          'seen',
                                          isEqualTo: false,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        int textCount = snapshot.data!;

                                        return Text(
                                          valueOrDefault<String>(
                                            textCount.toString(),
                                            '0',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFFE51010),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Color(0xA157636C),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Stack(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        children: [
                          AuthUserStreamWidget(
                            builder: (context) =>
                                StreamBuilder<List<PostsRecord>>(
                              stream: queryPostsRecord(
                                queryBuilder: (postsRecord) => postsRecord
                                    .whereIn(
                                        'postUser',
                                        (currentUserDocument?.userFollowing
                                                .toList() ??
                                            []))
                                    .orderBy('createdOn'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<PostsRecord> listViewPostsRecordList =
                                    snapshot.data!;

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewPostsRecordList.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 12.0),
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewPostsRecord =
                                        listViewPostsRecordList[listViewIndex];
                                    return Visibility(
                                      visible: (currentUserDocument
                                                      ?.userFollowing
                                                      .toList() ??
                                                  []).isNotEmpty,
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        child: Visibility(
                                          visible: (listViewPostsRecord
                                                      .postUser ==
                                                  currentUserReference) ||
                                              (currentUserDocument
                                                          ?.userFollowing
                                                          .toList() ??
                                                      [])
                                                  .contains(listViewPostsRecord
                                                      .postUser),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'postPage',
                                                queryParameters: {
                                                  'postID': serializeParam(
                                                    listViewPostsRecord
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 12.0,
                                                          12.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          if (listViewPostsRecord
                                                                  .postUser ==
                                                              currentUserReference) {
                                                            context.pushNamed(
                                                                'authenticatedUserProfile-celebrity');
                                                          } else {
                                                            context.pushNamed(
                                                              'otherUserProfile-celebrity',
                                                              queryParameters: {
                                                                'userID':
                                                                    serializeParam(
                                                                  listViewPostsRecord
                                                                      .postUser,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          }
                                                        },
                                                        child: Container(
                                                          width: 44.0,
                                                          height: 44.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    2.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listViewPostsRecord
                                                                      .postUserImage,
                                                                  'https://photo-cdn2.icons8.com/k6zfijEH6S1gleoNo7XIER1Kr0clBHrnkMp5nIw5N-o/rs:fit:1608:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi85ZWVhOGY0MmRi/NTI0MTkwOWIyY2Rk/Mjc1NjQ0Mjg2Zi5q/cGc.jpg',
                                                                ),
                                                                width: 44.0,
                                                                height: 44.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                listViewPostsRecord
                                                                    .postUserName,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Urbanist',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  dateTimeFormat(
                                                                    'relative',
                                                                    getCurrentTimestamp,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF606A85),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.more_vert,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        size: 24.0,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    if (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.isSubscribed,
                                                        false)) {
                                                      return Container(
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                child: Text(
                                                                  listViewPostsRecord
                                                                      .postText,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Stack(
                                                              children: [
                                                                if (listViewPostsRecord
                                                                        .type ==
                                                                    'image')
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewPostsRecord
                                                                            .postImage,
                                                                        'https://photo-cdn2.icons8.com/k6zfijEH6S1gleoNo7XIER1Kr0clBHrnkMp5nIw5N-o/rs:fit:1608:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi85ZWVhOGY0MmRi/NTI0MTkwOWIyY2Rk/Mjc1NjQ0Mjg2Zi5q/cGc.jpg',
                                                                      ),
                                                                      width:
                                                                          350.0,
                                                                      height:
                                                                          350.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                if (listViewPostsRecord
                                                                        .type ==
                                                                    'video')
                                                                  FlutterFlowVideoPlayer(
                                                                    path: listViewPostsRecord
                                                                        .postVideo,
                                                                    videoType:
                                                                        VideoType
                                                                            .network,
                                                                    width:
                                                                        350.0,
                                                                    height:
                                                                        350.0,
                                                                    autoPlay:
                                                                        false,
                                                                    looping:
                                                                        true,
                                                                    showControls:
                                                                        false,
                                                                    allowFullScreen:
                                                                        true,
                                                                    allowPlaybackSpeedMenu:
                                                                        false,
                                                                  ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          8.0,
                                                                          12.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          final userLikesElement =
                                                                              currentUserReference;
                                                                          final userLikesUpdate = listViewPostsRecord.userLikes.contains(userLikesElement)
                                                                              ? FieldValue.arrayRemove([
                                                                                  userLikesElement
                                                                                ])
                                                                              : FieldValue.arrayUnion([
                                                                                  userLikesElement
                                                                                ]);
                                                                          await listViewPostsRecord
                                                                              .reference
                                                                              .update({
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'userLikes': userLikesUpdate,
                                                                              },
                                                                            ),
                                                                          });
                                                                          if (listViewPostsRecord.userLikes.contains(currentUserReference) ==
                                                                              true) {
                                                                            await listViewPostsRecord.reference.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'userLikes': FieldValue.arrayRemove([
                                                                                    currentUserReference
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          } else {
                                                                            await listViewPostsRecord.reference.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'userLikes': FieldValue.arrayUnion([
                                                                                    currentUserReference
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          }
                                                                        },
                                                                        value: listViewPostsRecord
                                                                            .userLikes
                                                                            .contains(currentUserReference),
                                                                        onIcon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite_rounded,
                                                                          color:
                                                                              Color(0xFFE51010),
                                                                          size:
                                                                              25.0,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          size:
                                                                              25.0,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          listViewPostsRecord.userLikes.length.toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return GestureDetector(
                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: SizedBox(
                                                                                      height: MediaQuery.sizeOf(context).height * 0.8,
                                                                                      child: CommentOnPostComponentWidget(
                                                                                        postID: listViewPostsRecord.reference,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            Icons.insert_comment_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            6.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          listViewPostsRecord.comments.toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return GestureDetector(
                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: SizedBox(
                                                                                      height: MediaQuery.sizeOf(context).height * 0.8,
                                                                                      child: SendATipFromPostWidget(
                                                                                        postID: listViewPostsRecord.reference,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          },
                                                                          child:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.moneyCheckAlt,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'n039z0qj' /* SEND TIP */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final userBookmarksElement =
                                                                          currentUserReference;
                                                                      final userBookmarksUpdate = listViewPostsRecord
                                                                              .userBookmarks
                                                                              .contains(
                                                                                  userBookmarksElement)
                                                                          ? FieldValue
                                                                              .arrayRemove([
                                                                              userBookmarksElement
                                                                            ])
                                                                          : FieldValue
                                                                              .arrayUnion([
                                                                              userBookmarksElement
                                                                            ]);
                                                                      await listViewPostsRecord
                                                                          .reference
                                                                          .update({
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'userBookmarks':
                                                                                userBookmarksUpdate,
                                                                          },
                                                                        ),
                                                                      });
                                                                      if (listViewPostsRecord
                                                                              .userBookmarks
                                                                              .contains(currentUserReference) ==
                                                                          true) {
                                                                        await listViewPostsRecord
                                                                            .reference
                                                                            .update({
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'userBookmarks': FieldValue.arrayRemove([
                                                                                currentUserReference
                                                                              ]),
                                                                            },
                                                                          ),
                                                                        });
                                                                      } else {
                                                                        await listViewPostsRecord
                                                                            .reference
                                                                            .update({
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'userBookmarks': FieldValue.arrayUnion([
                                                                                currentUserReference
                                                                              ]),
                                                                            },
                                                                          ),
                                                                        });
                                                                      }
                                                                    },
                                                                    value: listViewPostsRecord
                                                                        .userBookmarks
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .bookmark_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          25.0,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .bookmark_border,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      size:
                                                                          25.0,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    } else {
                                                      return Stack(
                                                        children: [
                                                          ClipRect(
                                                            child:
                                                                ImageFiltered(
                                                              imageFilter:
                                                                  ImageFilter
                                                                      .blur(
                                                                sigmaX: 5.0,
                                                                sigmaY: 5.0,
                                                              ),
                                                              child: Container(
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          8.0),
                                                                      child:
                                                                          Text(
                                                                        listViewPostsRecord
                                                                            .postText,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Stack(
                                                                      children: [
                                                                        if (listViewPostsRecord.type ==
                                                                            'image')
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0.0),
                                                                            child:
                                                                                Image.network(
                                                                              valueOrDefault<String>(
                                                                                listViewPostsRecord.postImage,
                                                                                'https://photo-cdn2.icons8.com/k6zfijEH6S1gleoNo7XIER1Kr0clBHrnkMp5nIw5N-o/rs:fit:1608:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi85ZWVhOGY0MmRi/NTI0MTkwOWIyY2Rk/Mjc1NjQ0Mjg2Zi5q/cGc.jpg',
                                                                              ),
                                                                              width: 350.0,
                                                                              height: 350.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        if (listViewPostsRecord.type ==
                                                                            'video')
                                                                          FlutterFlowVideoPlayer(
                                                                            path:
                                                                                listViewPostsRecord.postVideo,
                                                                            videoType:
                                                                                VideoType.network,
                                                                            width:
                                                                                350.0,
                                                                            height:
                                                                                350.0,
                                                                            autoPlay:
                                                                                false,
                                                                            looping:
                                                                                true,
                                                                            showControls:
                                                                                false,
                                                                            allowFullScreen:
                                                                                true,
                                                                            allowPlaybackSpeedMenu:
                                                                                false,
                                                                          ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          8.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              ToggleIcon(
                                                                                onPressed: () async {
                                                                                  final userLikesElement = currentUserReference;
                                                                                  final userLikesUpdate = listViewPostsRecord.userLikes.contains(userLikesElement)
                                                                                      ? FieldValue.arrayRemove([
                                                                                          userLikesElement
                                                                                        ])
                                                                                      : FieldValue.arrayUnion([
                                                                                          userLikesElement
                                                                                        ]);
                                                                                  await listViewPostsRecord.reference.update({
                                                                                    ...mapToFirestore(
                                                                                      {
                                                                                        'userLikes': userLikesUpdate,
                                                                                      },
                                                                                    ),
                                                                                  });
                                                                                  if (listViewPostsRecord.userLikes.contains(currentUserReference) == true) {
                                                                                    await listViewPostsRecord.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'userLikes': FieldValue.arrayRemove([
                                                                                            currentUserReference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  } else {
                                                                                    await listViewPostsRecord.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'userLikes': FieldValue.arrayUnion([
                                                                                            currentUserReference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  }
                                                                                },
                                                                                value: listViewPostsRecord.userLikes.contains(currentUserReference),
                                                                                onIcon: const Icon(
                                                                                  Icons.favorite_rounded,
                                                                                  color: Color(0xFFE51010),
                                                                                  size: 25.0,
                                                                                ),
                                                                                offIcon: Icon(
                                                                                  Icons.favorite_border,
                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                  size: 25.0,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  listViewPostsRecord.userLikes.length.toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    await showModalBottomSheet(
                                                                                      isScrollControlled: true,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      context: context,
                                                                                      builder: (context) {
                                                                                        return GestureDetector(
                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                          child: Padding(
                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                            child: SizedBox(
                                                                                              height: MediaQuery.sizeOf(context).height * 0.8,
                                                                                              child: CommentOnPostComponentWidget(
                                                                                                postID: listViewPostsRecord.reference,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => safeSetState(() {}));
                                                                                  },
                                                                                  child: Icon(
                                                                                    Icons.insert_comment_rounded,
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  listViewPostsRecord.comments.toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    await showModalBottomSheet(
                                                                                      isScrollControlled: true,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      enableDrag: false,
                                                                                      context: context,
                                                                                      builder: (context) {
                                                                                        return GestureDetector(
                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                          child: Padding(
                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                            child: SizedBox(
                                                                                              height: MediaQuery.sizeOf(context).height * 0.8,
                                                                                              child: SendATipFromPostWidget(
                                                                                                postID: listViewPostsRecord.reference,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => safeSetState(() {}));
                                                                                  },
                                                                                  child: FaIcon(
                                                                                    FontAwesomeIcons.moneyCheckAlt,
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '7uyp05zw' /* SEND TIP */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          ToggleIcon(
                                                                            onPressed:
                                                                                () async {
                                                                              final userBookmarksElement = currentUserReference;
                                                                              final userBookmarksUpdate = listViewPostsRecord.userBookmarks.contains(userBookmarksElement)
                                                                                  ? FieldValue.arrayRemove([
                                                                                      userBookmarksElement
                                                                                    ])
                                                                                  : FieldValue.arrayUnion([
                                                                                      userBookmarksElement
                                                                                    ]);
                                                                              await listViewPostsRecord.reference.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'userBookmarks': userBookmarksUpdate,
                                                                                  },
                                                                                ),
                                                                              });
                                                                              if (listViewPostsRecord.userBookmarks.contains(currentUserReference) == true) {
                                                                                await listViewPostsRecord.reference.update({
                                                                                  ...mapToFirestore(
                                                                                    {
                                                                                      'userBookmarks': FieldValue.arrayRemove([
                                                                                        currentUserReference
                                                                                      ]),
                                                                                    },
                                                                                  ),
                                                                                });
                                                                              } else {
                                                                                await listViewPostsRecord.reference.update({
                                                                                  ...mapToFirestore(
                                                                                    {
                                                                                      'userBookmarks': FieldValue.arrayUnion([
                                                                                        currentUserReference
                                                                                      ]),
                                                                                    },
                                                                                  ),
                                                                                });
                                                                              }
                                                                            },
                                                                            value:
                                                                                listViewPostsRecord.userBookmarks.contains(currentUserReference),
                                                                            onIcon:
                                                                                Icon(
                                                                              Icons.bookmark_outlined,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 25.0,
                                                                            ),
                                                                            offIcon:
                                                                                Icon(
                                                                              Icons.bookmark_border,
                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                              size: 25.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Container(
                                                              width: 350.0,
                                                              height: 300.0,
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: SizedBox(
                                                                                height: MediaQuery.sizeOf(context).height * 0.8,
                                                                                child: const SubscriptionComponentWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'clcpymiy' /* SUBSCRIBE TO SEE USER'S POSTS */,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                      elevation:
                                                                          3.0,
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    }
                                                  },
                                                ),
                                              ].divide(const SizedBox(height: 12.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          if ((currentUserDocument?.userFollowing.toList() ??
                                      []).isEmpty)
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Container(
                                  width: double.infinity,
                                  height: 100.0,
                                  decoration: const BoxDecoration(),
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Visibility(
                                    visible: (currentUserDocument?.userFollowing
                                                    .toList() ??
                                                []).isEmpty,
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed('searchPage');
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'jm7usu1e' /* Discover celebrities to follow */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.bottomNavigationComponentCelebrityModel,
                  updateCallback: () => setState(() {}),
                  child: const BottomNavigationComponentCelebrityWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
