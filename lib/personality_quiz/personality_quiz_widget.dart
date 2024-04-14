import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'personality_quiz_model.dart';
export 'personality_quiz_model.dart';

class PersonalityQuizWidget extends StatefulWidget {
  const PersonalityQuizWidget({super.key});

  @override
  State<PersonalityQuizWidget> createState() => _PersonalityQuizWidgetState();
}

class _PersonalityQuizWidgetState extends State<PersonalityQuizWidget> {
  late PersonalityQuizModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalityQuizModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 25.0),
                      child: Text(
                        'Let\'s find more about you!',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 25.0),
                  child: StreamBuilder<List<QuestionsRecord>>(
                    stream: queryQuestionsRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<QuestionsRecord> listViewQuestionsRecordList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewQuestionsRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewQuestionsRecord =
                              listViewQuestionsRecordList[listViewIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 12.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 400.0,
                                    constraints: const BoxConstraints(
                                      maxWidth: 530.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 3.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          1.0, 0.0, 0.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 16.0, 24.0, 16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    listViewQuestionsRecord
                                                        .question,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final answersPoints =
                                                  listViewQuestionsRecord
                                                      .answersPoints
                                                      .toList();
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: answersPoints.length,
                                                itemBuilder: (context,
                                                    answersPointsIndex) {
                                                  final answersPointsItem =
                                                      answersPoints[
                                                          answersPointsIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 1.0),
                                                    child: Container(
                                                      width: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            offset: const Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    8.0,
                                                                    12.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
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
                                                                    Text(
                                                                      answersPointsItem
                                                                          .answer,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .checkboxValueMap[
                                                                    answersPointsItem] ??= false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.checkboxValueMap[
                                                                              answersPointsItem] =
                                                                          newValue!);
                                                                  if (newValue!) {
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                          .score = FFAppState()
                                                                              .score +
                                                                          answersPointsItem
                                                                              .points;
                                                                    });
                                                                  } else {
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                          .score = FFAppState()
                                                                              .score -
                                                                          answersPointsItem
                                                                              .points;
                                                                    });
                                                                  }
                                                                },
                                                                side:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          await currentUserReference!
                              .update(createUsersRecordData(
                            distinction: () {
                              if (FFAppState().score < 6) {
                                return 'Quintessential Quester';
                              } else if ((FFAppState().score > 6) &&
                                  (FFAppState().score <= 10)) {
                                return 'Luminary Luminescence';
                              } else if ((FFAppState().score > 10) &&
                                  (FFAppState().score <= 16)) {
                                return 'Harmonic Herald';
                              } else {
                                return 'Zenith';
                              }
                            }(),
                            dUrl: () {
                              if (FFAppState().score < 6) {
                                return 'https://firebasestorage.googleapis.com/v0/b/lqselgros.appspot.com/o/_8b7e3180-2bd0-498f-a2e7-d8bd3a66a116.jpeg?alt=media&token=9eb8d3f5-6ed8-4448-bcff-77e557001ff5';
                              } else if ((FFAppState().score > 6) &&
                                  (FFAppState().score <= 10)) {
                                return 'https://firebasestorage.googleapis.com/v0/b/lqselgros.appspot.com/o/LUMINA.jpeg?alt=media&token=3cf43d91-dfa3-4ea3-8b5e-d176a5abc2d2';
                              } else if ((FFAppState().score > 10) &&
                                  (FFAppState().score <= 16)) {
                                return 'https://firebasestorage.googleapis.com/v0/b/lqselgros.appspot.com/o/herald.jpeg?alt=media&token=a621ceed-e957-4e8e-b17e-f1a03049ead5';
                              } else {
                                return 'https://firebasestorage.googleapis.com/v0/b/lqselgros.appspot.com/o/zani.jpeg?alt=media&token=f8ef9a88-203f-49ca-99e1-5df4edeb03b0';
                              }
                            }(),
                            distinctionUrl: () {
                              if (FFAppState().score < 6) {
                                return 'https://firebasestorage.googleapis.com/v0/b/lqselgros.appspot.com/o/_8b7e3180-2bd0-498f-a2e7-d8bd3a66a116.jpeg?alt=media&token=9eb8d3f5-6ed8-4448-bcff-77e557001ff5';
                              } else if ((FFAppState().score > 6) &&
                                  (FFAppState().score <= 10)) {
                                return 'https://firebasestorage.googleapis.com/v0/b/lqselgros.appspot.com/o/LUMINA.jpeg?alt=media&token=3cf43d91-dfa3-4ea3-8b5e-d176a5abc2d2';
                              } else if ((FFAppState().score > 10) &&
                                  (FFAppState().score <= 16)) {
                                return 'https://firebasestorage.googleapis.com/v0/b/lqselgros.appspot.com/o/herald.jpeg?alt=media&token=a621ceed-e957-4e8e-b17e-f1a03049ead5';
                              } else {
                                return 'https://firebasestorage.googleapis.com/v0/b/lqselgros.appspot.com/o/zani.jpeg?alt=media&token=f8ef9a88-203f-49ca-99e1-5df4edeb03b0';
                              }
                            }(),
                          ));

                          context.pushNamed('DASHBOARD');
                        },
                        text: 'Let\'s start!',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
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
