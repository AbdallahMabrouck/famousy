import '/components/add_post_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_navigation_component_celebrity_model.dart';
export 'bottom_navigation_component_celebrity_model.dart';

class BottomNavigationComponentCelebrityWidget extends StatefulWidget {
  const BottomNavigationComponentCelebrityWidget({
    super.key,
    int? selectedPageIndex,
  }) : selectedPageIndex = selectedPageIndex ?? 1;

  final int selectedPageIndex;

  @override
  State<BottomNavigationComponentCelebrityWidget> createState() =>
      _BottomNavigationComponentCelebrityWidgetState();
}

class _BottomNavigationComponentCelebrityWidgetState
    extends State<BottomNavigationComponentCelebrityWidget>
    with TickerProviderStateMixin {
  late BottomNavigationComponentCelebrityModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => BottomNavigationComponentCelebrityModel());

    animationsMap.addAll({
      'dividerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderRadius: 30.0,
                borderWidth: 0.0,
                buttonSize: 50.0,
                icon: FaIcon(
                  FontAwesomeIcons.home,
                  color: widget.selectedPageIndex == 1
                      ? FlutterFlowTheme.of(context).secondaryBackground
                      : const Color(0xBBFFFFFF),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.goNamed(
                    'homePage-celebrity',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
              if (widget.selectedPageIndex == 1)
                SizedBox(
                  width: 50.0,
                  child: Divider(
                    height: 2.0,
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ).animateOnPageLoad(
                    animationsMap['dividerOnPageLoadAnimation1']!),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 0.0,
                buttonSize: 50.0,
                icon: Icon(
                  Icons.dashboard_outlined,
                  color: widget.selectedPageIndex == 3
                      ? FlutterFlowTheme.of(context).secondaryBackground
                      : const Color(0xBBFFFFFF),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.goNamed(
                    'feed',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
              if (widget.selectedPageIndex == 3)
                SizedBox(
                  width: 50.0,
                  child: Divider(
                    height: 2.0,
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ).animateOnPageLoad(
                    animationsMap['dividerOnPageLoadAnimation2']!),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 55.0,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.add,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.8,
                            child: const AddPostComponentWidget(),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 0.0,
                buttonSize: 50.0,
                icon: FaIcon(
                  FontAwesomeIcons.bell,
                  color: widget.selectedPageIndex == 4
                      ? FlutterFlowTheme.of(context).secondaryBackground
                      : const Color(0xBBFFFFFF),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.goNamed(
                    'notifications-celebrity',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
              if (widget.selectedPageIndex == 4)
                SizedBox(
                  width: 50.0,
                  child: Divider(
                    height: 2.0,
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ).animateOnPageLoad(
                    animationsMap['dividerOnPageLoadAnimation3']!),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 0.0,
                buttonSize: 50.0,
                icon: FaIcon(
                  FontAwesomeIcons.user,
                  color: widget.selectedPageIndex == 4
                      ? FlutterFlowTheme.of(context).secondaryBackground
                      : const Color(0xBBFFFFFF),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.goNamed(
                    'authenticatedUserProfile-celebrity',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
              if (widget.selectedPageIndex == 4)
                SizedBox(
                  width: 50.0,
                  child: Divider(
                    height: 2.0,
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ).animateOnPageLoad(
                    animationsMap['dividerOnPageLoadAnimation4']!),
            ],
          ),
        ].divide(const SizedBox(width: 16.0)).around(const SizedBox(width: 16.0)),
      ),
    );
  }
}
