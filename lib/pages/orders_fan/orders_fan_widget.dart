import '/components/empty_state_orders_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'orders_fan_model.dart';
export 'orders_fan_model.dart';

class OrdersFanWidget extends StatefulWidget {
  const OrdersFanWidget({super.key});

  @override
  State<OrdersFanWidget> createState() => _OrdersFanWidgetState();
}

class _OrdersFanWidgetState extends State<OrdersFanWidget>
    with TickerProviderStateMixin {
  late OrdersFanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdersFanModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        backgroundColor: const Color(0xFF121212),
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '9835j6on' /* Your orders */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Urbanist',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: TabBar(
                          labelColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                          unselectedLabelStyle: const TextStyle(),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          padding: const EdgeInsets.all(4.0),
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'k6mdet7c' /* All */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'ctbixl12' /* Completed */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'fjmm5506' /* Open */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'usrdtzgj' /* Cancelled */,
                              ),
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [
                              () async {},
                              () async {},
                              () async {},
                              () async {}
                            ][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            wrapWithModel(
                              model: _model.emptyStateOrdersModel1,
                              updateCallback: () => setState(() {}),
                              child: const EmptyStateOrdersWidget(),
                            ),
                            wrapWithModel(
                              model: _model.emptyStateOrdersModel2,
                              updateCallback: () => setState(() {}),
                              child: const EmptyStateOrdersWidget(),
                            ),
                            wrapWithModel(
                              model: _model.emptyStateOrdersModel3,
                              updateCallback: () => setState(() {}),
                              child: const EmptyStateOrdersWidget(),
                            ),
                            wrapWithModel(
                              model: _model.emptyStateOrdersModel4,
                              updateCallback: () => setState(() {}),
                              child: const EmptyStateOrdersWidget(),
                            ),
                          ],
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
    );
  }
}
