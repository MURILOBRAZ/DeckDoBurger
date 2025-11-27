import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'cardapio_page_model.dart';
export 'cardapio_page_model.dart';

class CardapioPageWidget extends StatefulWidget {
  const CardapioPageWidget({super.key});

  static String routeName = 'CardapioPage';
  static String routePath = '/cardapioPage';

  @override
  State<CardapioPageWidget> createState() => _CardapioPageWidgetState();
}

class _CardapioPageWidgetState extends State<CardapioPageWidget>
    with TickerProviderStateMixin {
  late CardapioPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardapioPageModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 1080.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1080.0.ms,
            begin: Offset(41.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeOut,
            delay: 1.0.ms,
            duration: 860.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1080.0.ms,
            begin: Offset(41.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeOut,
            delay: 1.0.ms,
            duration: 860.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1080.0.ms,
            begin: Offset(41.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeOut,
            delay: 1.0.ms,
            duration: 860.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1080.0.ms,
            begin: Offset(41.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeOut,
            delay: 1.0.ms,
            duration: 860.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1080.0.ms,
            begin: Offset(41.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeOut,
            delay: 1.0.ms,
            duration: 860.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sections = <_MenuSectionConfig>[
      const _MenuSectionConfig(
        title: 'Hamburgueres da Orla',
        tipo: 'Orla',
        rowAnimationKey: 'rowOnPageLoadAnimation1',
        iconAnimationKey: 'iconOnActionTriggerAnimation1',
      ),
      const _MenuSectionConfig(
        title: 'Especiais Turisticos',
        tipo: 'Turistico',
        rowAnimationKey: 'rowOnPageLoadAnimation2',
        iconAnimationKey: 'iconOnActionTriggerAnimation2',
      ),
      const _MenuSectionConfig(
        title: 'Acompanhamentos Caiaras',
        tipo: 'Acompanhamento',
        rowAnimationKey: 'rowOnPageLoadAnimation3',
        iconAnimationKey: 'iconOnActionTriggerAnimation3',
      ),
      const _MenuSectionConfig(
        title: 'Bebidas do Porto',
        tipo: 'Bebida',
        rowAnimationKey: 'rowOnPageLoadAnimation4',
        iconAnimationKey: 'iconOnActionTriggerAnimation4',
      ),
      const _MenuSectionConfig(
        title: 'Doces da Areia',
        tipo: 'Sobremesa',
        rowAnimationKey: 'rowOnPageLoadAnimation5',
        iconAnimationKey: 'iconOnActionTriggerAnimation5',
      ),
    ];

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF383746),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildHeader(context),
                for (final section in sections)
                  _buildMenuSection(context, section),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: const Color(0xFF383746),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: const Color(0x33000000),
              offset: const Offset(0.0, 2.0),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                width: 80.0,
                height: 80.0,
                child: Image.asset(
                  'assets/images/Logo_deckburger.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: GradientText(
                'Deck do Burger',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Sansserif',
                      color: Colors.white,
                      fontSize: 48.0,
                      letterSpacing: 3.0,
                    ),
                colors: const [
                  Color(0xFFE5541C),
                  Color(0xFFFFE30D),
                ],
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuSection(
    BuildContext context,
    _MenuSectionConfig config,
  ) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 0.0, 0.0),
              child: Text(
                config.title,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .fontStyle,
                      ),
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .fontStyle,
                    ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: FutureBuilder<List<CardapioRecord>>(
              future: queryCardapioRecordOnce(
                queryBuilder: (cardapioRecord) =>
                    cardapioRecord.where(
                  'Tipo',
                  isEqualTo: config.tipo,
                ),
              ),
              builder: (context, snapshot) {
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
                final products = snapshot.data!;
                if (products.isEmpty) {
                  return const SizedBox();
                }
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(products.length, (productIndex) {
                      final product = products[productIndex];
                      return Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            8.0, 0.0, 0.0, 0.0),
                        child: _buildProductCard(
                          context: context,
                          product: product,
                          iconAnimationKey: config.iconAnimationKey,
                          ratingTipo: config.tipo,
                        ),
                      );
                    }),
                  ),
                ).animateOnPageLoad(
                  animationsMap[config.rowAnimationKey]!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard({
    required BuildContext context,
    required CardapioRecord product,
    required String iconAnimationKey,
    required String ratingTipo,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(
          ItemPageWidget.routeName,
          queryParameters: {
            'imagem': serializeParam(
              product.fotos,
              ParamType.String,
            ),
            'nome': serializeParam(
              product.name,
              ParamType.String,
            ),
            'especificacoes': serializeParam(
              product.specifications,
              ParamType.String,
            ),
            'detalhes': serializeParam(
              product.description,
              ParamType.String,
            ),
            'valor': serializeParam(
              product.preco,
              ParamType.double,
            ),
          }.withoutNulls,
        );
      },
      child: Material(
        color: Colors.transparent,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          width: 150.0,
          height: 250.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [Color(0xFFFFE30D), Color(0xFFE5541C)],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(0.34, -1.0),
              end: const AlignmentDirectional(-0.34, 1.0),
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding:
                const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0, 14.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 135.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              product.fotos,
                            ).image,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: const Color(0xFFEEA50E),
                          ),
                        ),
                        alignment: const AlignmentDirectional(1.0, -1.0),
                        child: Align(
                          alignment: const AlignmentDirectional(1.0, -1.0),
                          child: Container(
                            width: 60.0,
                            height: 22.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF383746),
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            alignment:
                                const AlignmentDirectional(0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                const Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Color(0xFFFFD500),
                                    size: 19.0,
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '4.8',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontStyle,
                                          ),
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0, 5.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 5.0, 0.0),
                          child: StreamBuilder<List<CardapioRecord>>(
                            stream: queryCardapioRecord(
                              queryBuilder: (cardapioRecord) =>
                                  cardapioRecord.where(
                                'Tipo',
                                isEqualTo: ratingTipo,
                              ),
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
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
                              final records = snapshot.data!;
                              if (records.isEmpty) {
                                return const SizedBox();
                              }
                              return Text(
                                product.name.maybeHandleOverflow(
                                  maxChars: 50,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      5.0, 5.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        formatNumber(
                          product.preco,
                          formatType: FormatType.custom,
                          format: 'R\$00.00',
                          locale: '',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      5.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await CarrinhoRecord.collection.doc().set(
                                createCarrinhoRecordData(
                                  name: product.name,
                                  description: product.description,
                                  specifications: product.specifications,
                                  price: product.preco,
                                  fotos: product.fotos,
                                  user: currentUserReference?.id,
                                  pedidoFeito: false,
                                  quantity: 1,
                                ),
                              );
                        },
                        child: const Icon(
                          Icons.add_circle,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ).animateOnActionTrigger(
                        animationsMap[iconAnimationKey]!,
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

class _MenuSectionConfig {
  const _MenuSectionConfig({
    required this.title,
    required this.tipo,
    required this.rowAnimationKey,
    required this.iconAnimationKey,
  });

  final String title;
  final String tipo;
  final String rowAnimationKey;
  final String iconAnimationKey;
}
