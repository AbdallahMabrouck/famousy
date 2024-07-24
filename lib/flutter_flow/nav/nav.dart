import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? const HomePageFanWidget()
          : const SplashScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const HomePageFanWidget()
              : const SplashScreenWidget(),
        ),
        FFRoute(
          name: 'splashScreen',
          path: '/splashScreen',
          builder: (context, params) => const SplashScreenWidget(),
        ),
        FFRoute(
          name: 'waitingRoom-Celebrity',
          path: '/waitingRoomCelebrity',
          builder: (context, params) => const WaitingRoomCelebrityWidget(),
        ),
        FFRoute(
          name: 'videoIntro-celebrity',
          path: '/videoIntroCelebrity',
          builder: (context, params) => const VideoIntroCelebrityWidget(),
        ),
        FFRoute(
          name: 'paymentDetails-celebrity',
          path: '/paymentDetailsCelebrity',
          builder: (context, params) => const PaymentDetailsCelebrityWidget(),
        ),
        FFRoute(
          name: 'availabilitySetting-celebrity',
          path: '/availabilitySettingCelebrity',
          builder: (context, params) => const AvailabilitySettingCelebrityWidget(),
        ),
        FFRoute(
          name: 'homePage-fan',
          path: '/homePageFan',
          builder: (context, params) => const HomePageFanWidget(),
        ),
        FFRoute(
          name: 'homePage-celebrity',
          path: '/homePageCelebrity',
          builder: (context, params) => const HomePageCelebrityWidget(),
        ),
        FFRoute(
          name: 'orders-fan',
          path: '/ordersFan',
          builder: (context, params) => const OrdersFanWidget(),
        ),
        FFRoute(
          name: 'featured-fan',
          path: '/featuredFan',
          builder: (context, params) => const FeaturedFanWidget(),
        ),
        FFRoute(
          name: 'description-celebrity',
          path: '/descriptionCelebrity',
          builder: (context, params) => DescriptionCelebrityWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            reviewID: params.getParam(
              'reviewID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['reviews'],
            ),
          ),
        ),
        FFRoute(
          name: 'newRequestDetailsForm-fan',
          path: '/newRequestDetailsFormFan',
          builder: (context, params) => NewRequestDetailsFormFanWidget(
            videoRequest: params.getParam(
              'videoRequest',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['videoRequests'],
            ),
          ),
        ),
        FFRoute(
          name: 'newRequestSummary-fan',
          path: '/newRequestSummaryFan',
          builder: (context, params) => NewRequestSummaryFanWidget(
            videoRequest: params.getParam(
              'videoRequest',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['videoRequests'],
            ),
          ),
        ),
        FFRoute(
          name: 'congratulations-fan',
          path: '/congratulationsFan',
          builder: (context, params) => const CongratulationsFanWidget(),
        ),
        FFRoute(
          name: 'chats',
          path: '/chats',
          builder: (context, params) => const ChatsWidget(),
        ),
        FFRoute(
          name: 'chatPage',
          path: '/chatPage',
          builder: (context, params) => ChatPageWidget(
            receiveChat: params.getParam(
              'receiveChat',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['chats'],
            ),
          ),
        ),
        FFRoute(
          name: 'paymentGateway-fan',
          path: '/paymentGatewayFan',
          builder: (context, params) => const PaymentGatewayFanWidget(),
        ),
        FFRoute(
          name: 'requestUploadVideo-celebrity',
          path: '/requestUploadVideoCelebrity',
          builder: (context, params) => const RequestUploadVideoCelebrityWidget(),
        ),
        FFRoute(
          name: 'videoReview-celebrity',
          path: '/videoReviewCelebrity',
          builder: (context, params) => const VideoReviewCelebrityWidget(),
        ),
        FFRoute(
          name: 'videos-celebrity',
          path: '/videosCelebrity',
          builder: (context, params) => const VideosCelebrityWidget(),
        ),
        FFRoute(
          name: 'languageSettings',
          path: '/languageSettings',
          builder: (context, params) => const LanguageSettingsWidget(),
        ),
        FFRoute(
          name: 'accountSettings',
          path: '/accountSettings',
          builder: (context, params) => const AccountSettingsWidget(),
        ),
        FFRoute(
          name: 'changeEmail',
          path: '/changeEmail',
          builder: (context, params) => const ChangeEmailWidget(),
        ),
        FFRoute(
          name: 'deleteAccount',
          path: '/deleteAccount',
          builder: (context, params) => const DeleteAccountWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => LoginWidget(
            role: params.getParam(
              'role',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'trending-fans',
          path: '/trendingFans',
          builder: (context, params) => const TrendingFansWidget(),
        ),
        FFRoute(
          name: 'delivery24hrs-fan',
          path: '/delivery24hrsFan',
          builder: (context, params) => const Delivery24hrsFanWidget(),
        ),
        FFRoute(
          name: 'under50K-fan',
          path: '/under50KFan',
          builder: (context, params) => const Under50KFanWidget(),
        ),
        FFRoute(
          name: 'under200K-fan',
          path: '/under200KFan',
          builder: (context, params) => const Under200KFanWidget(),
        ),
        FFRoute(
          name: 'under500K-fan',
          path: '/under500KFan',
          builder: (context, params) => const Under500KFanWidget(),
        ),
        FFRoute(
          name: 'musicians-fan',
          path: '/musiciansFan',
          builder: (context, params) => const MusiciansFanWidget(),
        ),
        FFRoute(
          name: 'actors-fan',
          path: '/actorsFan',
          builder: (context, params) => const ActorsFanWidget(),
        ),
        FFRoute(
          name: 'comedians-fan',
          path: '/comediansFan',
          builder: (context, params) => const ComediansFanWidget(),
        ),
        FFRoute(
          name: 'dancers-fan',
          path: '/dancersFan',
          builder: (context, params) => const DancersFanWidget(),
        ),
        FFRoute(
          name: 'sports-fan',
          path: '/sportsFan',
          builder: (context, params) => const SportsFanWidget(),
        ),
        FFRoute(
          name: 'creators-fan',
          path: '/creatorsFan',
          builder: (context, params) => const CreatorsFanWidget(),
        ),
        FFRoute(
          name: 'tvRadio-fan',
          path: '/tvRadioFan',
          builder: (context, params) => const TvRadioFanWidget(),
        ),
        FFRoute(
          name: 'moreCelebs-fan',
          path: '/moreCelebsFan',
          builder: (context, params) => const MoreCelebsFanWidget(),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'profile-create-fan',
          path: '/profileCreateFan',
          builder: (context, params) => const ProfileCreateFanWidget(),
        ),
        FFRoute(
          name: 'profile-create-celebrity',
          path: '/profileCreateCelebrity',
          builder: (context, params) => const ProfileCreateCelebrityWidget(),
        ),
        FFRoute(
          name: 'signUp',
          path: '/signUp',
          builder: (context, params) => SignUpWidget(
            role: params.getParam(
              'role',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'videoFeed-authenticatedUser',
          path: '/videoFeedAuthenticatedUser',
          builder: (context, params) => const VideoFeedAuthenticatedUserWidget(),
        ),
        FFRoute(
          name: 'allReviews-fan',
          path: '/allReviewsFan',
          builder: (context, params) => AllReviewsFanWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            reviewID: params.getParam(
              'reviewID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['reviews'],
            ),
          ),
        ),
        FFRoute(
          name: 'feedback-fan',
          path: '/feedbackFan',
          builder: (context, params) => const FeedbackFanWidget(),
        ),
        FFRoute(
          name: 'resetmailSent',
          path: '/resetmailSent',
          builder: (context, params) => const ResetmailSentWidget(),
        ),
        FFRoute(
          name: 'requestSummmary-celebrity',
          path: '/requestSummmaryCelebrity',
          builder: (context, params) => RequestSummmaryCelebrityWidget(
            videoRequestID: params.getParam(
              'videoRequestID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['videoRequests'],
            ),
          ),
        ),
        FFRoute(
          name: 'feed',
          path: '/feed',
          builder: (context, params) => const FeedWidget(),
        ),
        FFRoute(
          name: 'postPage',
          path: '/postPage',
          builder: (context, params) => PostPageWidget(
            postID: params.getParam(
              'postID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['posts'],
            ),
          ),
        ),
        FFRoute(
          name: 'searchPage',
          path: '/searchPage',
          builder: (context, params) => const SearchPageWidget(),
        ),
        FFRoute(
          name: 'authenticatedUserProfile-celebrity',
          path: '/authenticatedUserProfileCelebrity',
          builder: (context, params) =>
              const AuthenticatedUserProfileCelebrityWidget(),
        ),
        FFRoute(
          name: 'bookmarkedPosts',
          path: '/bookmarkedPosts',
          builder: (context, params) => const BookmarkedPostsWidget(),
        ),
        FFRoute(
          name: 'notifications-celebrity',
          path: '/notificationsCelebrity',
          builder: (context, params) => const NotificationsCelebrityWidget(),
        ),
        FFRoute(
          name: 'profile-edit-fan',
          path: '/profileEditFan',
          builder: (context, params) => const ProfileEditFanWidget(),
        ),
        FFRoute(
          name: 'profile-edit-celebrity',
          path: '/profileEditCelebrity',
          builder: (context, params) => const ProfileEditCelebrityWidget(),
        ),
        FFRoute(
          name: 'otherUserProfile-celebrity',
          path: '/otherUserProfileCelebrity',
          builder: (context, params) => OtherUserProfileCelebrityWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'authenticatedUserProfile-fan',
          path: '/authenticatedUserProfileFan',
          builder: (context, params) => const AuthenticatedUserProfileFanWidget(),
        ),
        FFRoute(
          name: 'otherUserProfile-fan',
          path: '/otherUserProfileFan',
          builder: (context, params) => OtherUserProfileFanWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'videoFeed-otherUsers',
          path: '/videoFeedOtherUsers',
          builder: (context, params) => VideoFeedOtherUsersWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'religion-fan',
          path: '/religionFan',
          builder: (context, params) => const ReligionFanWidget(),
        ),
        FFRoute(
          name: 'bookingPage-fan',
          path: '/bookingPageFan',
          builder: (context, params) => const BookingPageFanWidget(),
        ),
        FFRoute(
          name: 'onboardingScreen-celebrity',
          path: '/onboardingScreenCelebrity',
          builder: (context, params) => OnboardingScreenCelebrityWidget(
            role: params.getParam(
              'role',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'onboardingScreen-fan',
          path: '/onboardingScreenFan',
          builder: (context, params) => OnboardingScreenFanWidget(
            role: params.getParam(
              'role',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'WelcomeScreen',
          path: '/welcomeScreen',
          builder: (context, params) => const WelcomeScreenWidget(),
        ),
        FFRoute(
          name: 'followersPage',
          path: '/followersPage',
          builder: (context, params) => const FollowersPageWidget(),
        ),
        FFRoute(
          name: 'followingPage',
          path: '/followingPage',
          builder: (context, params) => const FollowingPageWidget(),
        ),
        FFRoute(
          name: 'setSubscriptions-celebrity',
          path: '/setSubscriptionsCelebrity',
          builder: (context, params) => const SetSubscriptionsCelebrityWidget(),
        ),
        FFRoute(
          name: 'authUserFeed-celebrity',
          path: '/authUserFeedCelebrity',
          builder: (context, params) => const AuthUserFeedCelebrityWidget(),
        ),
        FFRoute(
          name: 'otherUserFeed-celebrity',
          path: '/otherUserFeedCelebrity',
          builder: (context, params) => OtherUserFeedCelebrityWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'subscribersPage-celebrity',
          path: '/subscribersPageCelebrity',
          builder: (context, params) => SubscribersPageCelebrityWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'subscriptionsPage-fan',
          path: '/subscriptionsPageFan',
          builder: (context, params) => SubscriptionsPageFanWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'notifications-fan',
          path: '/notificationsFan',
          builder: (context, params) => const NotificationsFanWidget(),
        ),
        FFRoute(
          name: 'videos-fan',
          path: '/videosFan',
          builder: (context, params) => const VideosFanWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/splashScreen';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
