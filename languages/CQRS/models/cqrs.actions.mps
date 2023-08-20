<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d0133378-c212-476f-9d93-c504506cf59e(CQRS.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="7ztp" ref="r:3eb3aafd-620b-4947-940a-c9f6d272b651(CQRS.util)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
    <import index="sx7w" ref="r:dc830b23-b722-4fd1-8178-0431aafe57ef(CQRS.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="8899501406397518321" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_index" flags="nn" index="3tUb2h" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5948027493682789918" name="jetbrains.mps.lang.actions.structure.CopyPasteHandlers" flags="ng" index="21GTPz">
        <child id="5948027493682790175" name="preProcessor" index="21GTLy" />
        <child id="5948027493682790174" name="postProcessor" index="21GTLz" />
      </concept>
      <concept id="5948027493682405480" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_nodeToCopyPreProcessOriginal" flags="nn" index="21Iscl" />
      <concept id="5948027493682405428" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_nodeToCopyPreProcess" flags="nn" index="21Isd9" />
      <concept id="5948027493682321734" name="jetbrains.mps.lang.actions.structure.CopyPreProcessor" flags="ng" index="21IFCV">
        <reference id="5948027493682346893" name="concept" index="21IHzK" />
        <child id="5948027493682325465" name="preProcessFunction" index="21ICi$" />
      </concept>
      <concept id="5948027493682346911" name="jetbrains.mps.lang.actions.structure.CopyPreProcessFunction" flags="in" index="21IHzy" />
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="1221135252814" name="jetbrains.mps.lang.actions.structure.PasteWrappers" flags="ig" index="1hljLi">
        <child id="1221135321084" name="wrapper" index="1hl$rw" />
      </concept>
      <concept id="1221135315536" name="jetbrains.mps.lang.actions.structure.PasteWrapper" flags="lg" index="1hlzdc">
        <reference id="1221135563864" name="sourceConcept" index="1hmvP4" />
        <reference id="1221137152191" name="targetConcept" index="1hszAz" />
        <child id="1221137217490" name="wrapperFunction" index="1hsNre" />
      </concept>
      <concept id="1221137268788" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_nodeToPasteWrap" flags="nn" index="1ht04C" />
      <concept id="1221137293320" name="jetbrains.mps.lang.actions.structure.QueryFunction_PasteWrapper" flags="in" index="1ht64k" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
      <concept id="5584396657084920670" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_EnclosingNode" flags="nn" index="1r4N1M" />
      <concept id="5584396657084920413" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_SampleNode" flags="nn" index="1r4N5L" />
      <concept id="6026743057587447931" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_nodeToPastePostProcess" flags="nn" index="1JFAaq" />
      <concept id="6026743057587433039" name="jetbrains.mps.lang.actions.structure.PastePostProcessFunction" flags="in" index="1JFUiI" />
      <concept id="564335015825199468" name="jetbrains.mps.lang.actions.structure.PastePostProcessor" flags="ng" index="3ZhVFo">
        <reference id="6026743057587410043" name="concept" index="1JFXUq" />
        <child id="3887139083693416947" name="postProcessFunction" index="3xT8ml" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="37WguZ" id="3FBObroU79E">
    <property role="TrG5h" value="AggregateRootFactory" />
    <node concept="37WvkG" id="3FBObroU79F" role="37WGs$">
      <ref role="37XkoT" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
      <node concept="37Y9Zx" id="3FBObroU79G" role="37ZfLb">
        <node concept="3clFbS" id="3FBObroU79H" role="2VODD2">
          <node concept="3clFbJ" id="4afTDVDUbG0" role="3cqZAp">
            <node concept="3clFbS" id="4afTDVDUbG2" role="3clFbx">
              <node concept="3cpWs6" id="4afTDVDUcP3" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="4afTDVDUcoI" role="3clFbw">
              <node concept="10Nm6u" id="4afTDVDUcEe" role="3uHU7w" />
              <node concept="1r4Lsj" id="4afTDVDUc1Y" role="3uHU7B" />
            </node>
          </node>
          <node concept="3cpWs8" id="3FBObroVwov" role="3cqZAp">
            <node concept="3cpWsn" id="3FBObroVwow" role="3cpWs9">
              <property role="TrG5h" value="boundedContext" />
              <node concept="3Tqbb2" id="3FBObroVwkf" role="1tU5fm">
                <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1aRcFPNGWes" role="3cqZAp">
            <node concept="2OqwBi" id="4afTDVDQWkX" role="3clFbw">
              <node concept="1r4N1M" id="4afTDVDQUqR" role="2Oq$k0" />
              <node concept="3w_OXm" id="4afTDVDQWDQ" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="1aRcFPNGWev" role="3clFbx">
              <node concept="3clFbF" id="1aRcFPNGWe4" role="3cqZAp">
                <node concept="37vLTI" id="1aRcFPNGWe5" role="3clFbG">
                  <node concept="2OqwBi" id="1aRcFPNGWe6" role="37vLTx">
                    <node concept="1eOMI4" id="1aRcFPNGWe7" role="2Oq$k0">
                      <node concept="1r4N5L" id="1aRcFPNGWe8" role="1eOMHV" />
                    </node>
                    <node concept="2Xjw5R" id="1aRcFPNGWe9" role="2OqNvi">
                      <node concept="1xMEDy" id="1aRcFPNGWea" role="1xVPHs">
                        <node concept="chp4Y" id="1aRcFPNGWeb" role="ri$Ld">
                          <ref role="cht4Q" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="1aRcFPNGWec" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1aRcFPNGWed" role="37vLTJ">
                    <ref role="3cqZAo" node="3FBObroVwow" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="1aRcFPNGWee" role="9aQIa">
              <node concept="3clFbS" id="1aRcFPNGWeg" role="9aQI4">
                <node concept="3clFbF" id="1aRcFPNGWei" role="3cqZAp">
                  <node concept="37vLTI" id="1aRcFPNGWej" role="3clFbG">
                    <node concept="2OqwBi" id="1aRcFPNGWek" role="37vLTx">
                      <node concept="1eOMI4" id="1aRcFPNGWel" role="2Oq$k0">
                        <node concept="1r4N1M" id="1aRcFPNGWem" role="1eOMHV" />
                      </node>
                      <node concept="2Xjw5R" id="1aRcFPNGWen" role="2OqNvi">
                        <node concept="1xMEDy" id="1aRcFPNGWeo" role="1xVPHs">
                          <node concept="chp4Y" id="1aRcFPNGWep" role="ri$Ld">
                            <ref role="cht4Q" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="1aRcFPNGWeq" role="1xVPHs" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1aRcFPNGWer" role="37vLTJ">
                      <ref role="3cqZAo" node="3FBObroVwow" resolve="boundedContext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1jrq3noTYTt" role="3cqZAp">
            <node concept="3cpWsn" id="1jrq3noTYTu" role="3cpWs9">
              <property role="TrG5h" value="reference" />
              <node concept="3Tqbb2" id="1jrq3noTYRl" role="1tU5fm">
                <ref role="ehGHo" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
              </node>
              <node concept="2ShNRf" id="1jrq3noTYTv" role="33vP2m">
                <node concept="3zrR0B" id="1jrq3noTYTw" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jrq3noTYTx" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1jrq3noTYra" role="3cqZAp">
            <node concept="2OqwBi" id="1jrq3noTZRo" role="3clFbG">
              <node concept="2OqwBi" id="1jrq3noTZkH" role="2Oq$k0">
                <node concept="37vLTw" id="1jrq3noTYTy" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jrq3noTYTu" resolve="reference" />
                </node>
                <node concept="3TrEf2" id="1jrq3noTZEv" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                </node>
              </node>
              <node concept="2oxUTD" id="1jrq3noU0Bj" role="2OqNvi">
                <node concept="1r4Lsj" id="1jrq3noU0C8" role="2oxUTC" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1ZO4_Lb2lI$" role="3cqZAp" />
          <node concept="3cpWs8" id="3FBObroV$Bc" role="3cqZAp">
            <node concept="3cpWsn" id="3FBObroV$Bd" role="3cpWs9">
              <property role="TrG5h" value="eventContainer" />
              <node concept="3Tqbb2" id="3FBObroV$_5" role="1tU5fm">
                <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
              </node>
              <node concept="2ShNRf" id="3FBObroV$Be" role="33vP2m">
                <node concept="3zrR0B" id="3FBObroV$Bf" role="2ShVmc">
                  <node concept="3Tqbb2" id="3FBObroV$Bg" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3FBObroV$fc" role="3cqZAp">
            <node concept="2OqwBi" id="3FBObroV_kw" role="3clFbG">
              <node concept="2OqwBi" id="1jrq3noU0V2" role="2Oq$k0">
                <node concept="37vLTw" id="3FBObroV$Bh" role="2Oq$k0">
                  <ref role="3cqZAo" node="3FBObroV$Bd" resolve="eventContainer" />
                </node>
                <node concept="3TrEf2" id="1jrq3noU16W" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:1jrq3noTPfl" resolve="aggregateReference" />
                </node>
              </node>
              <node concept="2oxUTD" id="3FBObroV_AC" role="2OqNvi">
                <node concept="37vLTw" id="1jrq3noU0K$" role="2oxUTC">
                  <ref role="3cqZAo" node="1jrq3noTYTu" resolve="reference" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3FBObroZOIi" role="3cqZAp">
            <node concept="2OqwBi" id="3FBObroZRbN" role="3clFbG">
              <node concept="2OqwBi" id="3FBObroZPg8" role="2Oq$k0">
                <node concept="37vLTw" id="3FBObroZOIg" role="2Oq$k0">
                  <ref role="3cqZAo" node="3FBObroVwow" resolve="boundedContext" />
                </node>
                <node concept="3Tsc0h" id="3FBObroZPyv" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
                </node>
              </node>
              <node concept="liA8E" id="3FBObroZU2c" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
                <node concept="3cpWs3" id="3FBObroZWXg" role="37wK5m">
                  <node concept="3tUb2h" id="3FBObroZVZi" role="3uHU7B" />
                  <node concept="3cmrfG" id="5$Oa659MQLA" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="2ShNRf" id="3FBObroZYc7" role="37wK5m">
                  <node concept="3zrR0B" id="3FBObroZYw4" role="2ShVmc">
                    <node concept="3Tqbb2" id="3FBObroZYw6" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3FBObroVwBk" role="3cqZAp">
            <node concept="2OqwBi" id="3FBObroVyHP" role="3clFbG">
              <node concept="2OqwBi" id="3FBObroVwT2" role="2Oq$k0">
                <node concept="37vLTw" id="3FBObroVwBi" role="2Oq$k0">
                  <ref role="3cqZAo" node="3FBObroVwow" resolve="boundedContext" />
                </node>
                <node concept="3Tsc0h" id="3FBObroVx4x" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
                </node>
              </node>
              <node concept="liA8E" id="3FBObroYqmK" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
                <node concept="3cpWs3" id="3FBObroYrcg" role="37wK5m">
                  <node concept="3tUb2h" id="3FBObroYqsm" role="3uHU7B" />
                  <node concept="3cmrfG" id="5$Oa659MQSb" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="37vLTw" id="3FBObroYrhu" role="37wK5m">
                  <ref role="3cqZAo" node="3FBObroV$Bd" resolve="eventContainer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="21GTPz" id="1LTEHzhZxY">
    <property role="TrG5h" value="CopyPasteHandlers" />
    <node concept="21IFCV" id="23r34DQuY8r" role="21GTLy">
      <ref role="21IHzK" to="3nll:omljbzjybJ" resolve="DescriptionLine" />
      <node concept="21IHzy" id="23r34DQuY8s" role="21ICi$">
        <node concept="3clFbS" id="23r34DQuY8t" role="2VODD2">
          <node concept="3SKdUt" id="23r34DR0dEE" role="3cqZAp">
            <node concept="1PaTwC" id="23r34DR0dEF" role="1aUNEU">
              <node concept="3oM_SD" id="23r34DR0dFk" role="1PaTwD">
                <property role="3oM_SC" value="Replaces" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dFm" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dFp" role="1PaTwD">
                <property role="3oM_SC" value="original" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dFt" role="1PaTwD">
                <property role="3oM_SC" value="node" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dFy" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dFC" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dFJ" role="1PaTwD">
                <property role="3oM_SC" value="copy" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dFR" role="1PaTwD">
                <property role="3oM_SC" value="so" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dG0" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dGa" role="1PaTwD">
                <property role="3oM_SC" value="will" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dGl" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dGx" role="1PaTwD">
                <property role="3oM_SC" value="be" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dGI" role="1PaTwD">
                <property role="3oM_SC" value="removed" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dGW" role="1PaTwD">
                <property role="3oM_SC" value="when" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dHG" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dHW" role="1PaTwD">
                <property role="3oM_SC" value="cut" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dId" role="1PaTwD">
                <property role="3oM_SC" value="action" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dIv" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dIM" role="1PaTwD">
                <property role="3oM_SC" value="invoked" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="23r34DQJBBP" role="3cqZAp">
            <node concept="2OqwBi" id="23r34DQJBRZ" role="3clFbG">
              <node concept="21Iscl" id="23r34DQJBBO" role="2Oq$k0" />
              <node concept="1P9Npp" id="23r34DQJC27" role="2OqNvi">
                <node concept="21Isd9" id="23r34DQJC9w" role="1P9ThW" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="1LTEH$epv0" role="21GTLz">
      <ref role="1JFXUq" to="3nll:7fqk8p43ygY" resolve="Command" />
      <node concept="1JFUiI" id="1LTEH$epv1" role="3xT8ml">
        <node concept="3clFbS" id="1LTEH$epv2" role="2VODD2">
          <node concept="3clFbF" id="omljbxufD5" role="3cqZAp">
            <node concept="2OqwBi" id="omljbxufYe" role="3clFbG">
              <node concept="1JFAaq" id="omljbxufD4" role="2Oq$k0" />
              <node concept="2qgKlT" id="omljbxugqd" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:omljbxlS61" resolve="onPastedInParentComponentWithRepositoryReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="5jZDGTgKUgD" role="21GTLz">
      <ref role="1JFXUq" to="3nll:7fqk8p43ygS" resolve="Event" />
      <node concept="1JFUiI" id="5jZDGTgKUgE" role="3xT8ml">
        <node concept="3clFbS" id="5jZDGTgKUgF" role="2VODD2">
          <node concept="3clFbF" id="omljbxCbeK" role="3cqZAp">
            <node concept="2OqwBi" id="omljbxCbeL" role="3clFbG">
              <node concept="1JFAaq" id="omljbxCbeM" role="2Oq$k0" />
              <node concept="2qgKlT" id="omljbxCbeN" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:omljbxlS61" resolve="onPastedInParentComponentWithRepositoryReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="1LTEHzhZxZ" role="21GTLz">
      <ref role="1JFXUq" to="3nll:7fqk8p43yh4" resolve="Query" />
      <node concept="1JFUiI" id="1LTEHzhZy0" role="3xT8ml">
        <node concept="3clFbS" id="1LTEHzhZy1" role="2VODD2">
          <node concept="3clFbF" id="omljbxCbsl" role="3cqZAp">
            <node concept="2OqwBi" id="omljbxCbsm" role="3clFbG">
              <node concept="1JFAaq" id="omljbxCbsn" role="2Oq$k0" />
              <node concept="2qgKlT" id="omljbxCbso" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:omljbxlS61" resolve="onPastedInParentComponentWithRepositoryReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="5A5sGroHXTc" role="21GTLz">
      <ref role="1JFXUq" to="3nll:6gxxZVsFKM9" resolve="QueryContainerMethods" />
      <node concept="1JFUiI" id="5A5sGroHXTd" role="3xT8ml">
        <node concept="3clFbS" id="5A5sGroHXTe" role="2VODD2">
          <node concept="3cpWs8" id="5A5sGroKdlG" role="3cqZAp">
            <node concept="3cpWsn" id="5A5sGroKdlH" role="3cpWs9">
              <property role="TrG5h" value="currentNode" />
              <node concept="3Tqbb2" id="5A5sGroKdjy" role="1tU5fm">
                <ref role="ehGHo" to="3nll:6gxxZVsFKM9" resolve="QueryContainerMethods" />
              </node>
              <node concept="2OqwBi" id="5A5sGroKdlI" role="33vP2m">
                <node concept="2qgKlT" id="5A5sGroKdlK" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5jZDGThqeMc" resolve="findNotPastedQueryContainerMethods" />
                  <node concept="1JFAaq" id="5jZDGThqm7$" role="37wK5m" />
                </node>
                <node concept="2OqwBi" id="5A5sGroI0eO" role="2Oq$k0">
                  <node concept="1JFAaq" id="5A5sGroI0eP" role="2Oq$k0" />
                  <node concept="2qgKlT" id="5A5sGroI0eQ" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5A5sGroHXVV" resolve="dtoRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5A5sGroHZEn" role="3cqZAp">
            <node concept="3clFbS" id="5A5sGroHZEp" role="3clFbx">
              <node concept="3cpWs6" id="5A5sGroI7ur" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="5A5sGroKdVP" role="3clFbw">
              <node concept="37vLTw" id="5A5sGroKdLg" role="2Oq$k0">
                <ref role="3cqZAo" node="5A5sGroKdlH" resolve="currentNode" />
              </node>
              <node concept="3w_OXm" id="5A5sGroKe7A" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="5jZDGThxuNw" role="3cqZAp" />
          <node concept="3cpWs8" id="5jZDGThCpoz" role="3cqZAp">
            <node concept="3cpWsn" id="5jZDGThCpo$" role="3cpWs9">
              <property role="TrG5h" value="references" />
              <node concept="_YKpA" id="5jZDGThCpnV" role="1tU5fm">
                <node concept="3Tqbb2" id="5jZDGThCpnY" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
                </node>
              </node>
              <node concept="2YIFZM" id="5jZDGThCpo_" role="33vP2m">
                <ref role="37wK5l" to="7ztp:5jZDGTh$T4u" resolve="merge" />
                <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
                <node concept="2OqwBi" id="5jZDGThLft0" role="37wK5m">
                  <node concept="2OqwBi" id="5jZDGThCpoA" role="2Oq$k0">
                    <node concept="37vLTw" id="5jZDGThCpoB" role="2Oq$k0">
                      <ref role="3cqZAo" node="5A5sGroKdlH" resolve="currentNode" />
                    </node>
                    <node concept="3Tsc0h" id="5jZDGThCpoC" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:6gxxZVsFKMa" resolve="queryContainerReference" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="5jZDGThLhj2" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:6gxxZVsFKMd" resolve="queryContainer" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5jZDGThLkep" role="37wK5m">
                  <node concept="2OqwBi" id="5jZDGThCpoD" role="2Oq$k0">
                    <node concept="1JFAaq" id="5jZDGThCpoE" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5jZDGThCpoF" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:6gxxZVsFKMa" resolve="queryContainerReference" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="5jZDGThLlTC" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:6gxxZVsFKMd" resolve="queryContainer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGThCsnA" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGThCvN_" role="3clFbG">
              <node concept="2OqwBi" id="5jZDGThCtEp" role="2Oq$k0">
                <node concept="1JFAaq" id="5jZDGThCsn_" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5jZDGThCtSR" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:6gxxZVsFKMa" resolve="queryContainerReference" />
                </node>
              </node>
              <node concept="2Kehj3" id="5jZDGThC$ZT" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGThxvbz" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGThxxvZ" role="3clFbG">
              <node concept="2OqwBi" id="5jZDGThxvnZ" role="2Oq$k0">
                <node concept="1JFAaq" id="5jZDGThxvby" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5jZDGThxv_h" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:6gxxZVsFKMa" resolve="queryContainerReference" />
                </node>
              </node>
              <node concept="X8dFx" id="5jZDGThxz8W" role="2OqNvi">
                <node concept="2OqwBi" id="5jZDGThLtcw" role="25WWJ7">
                  <node concept="37vLTw" id="5jZDGThCMXO" role="2Oq$k0">
                    <ref role="3cqZAo" node="5jZDGThCpo$" resolve="references" />
                  </node>
                  <node concept="3$u5V9" id="5jZDGThLzqc" role="2OqNvi">
                    <node concept="1bVj0M" id="5jZDGThLzqe" role="23t8la">
                      <node concept="3clFbS" id="5jZDGThLzqf" role="1bW5cS">
                        <node concept="3clFbF" id="5jZDGThYHUv" role="3cqZAp">
                          <node concept="2OqwBi" id="5jZDGThYKvA" role="3clFbG">
                            <node concept="37vLTw" id="5jZDGThYHUu" role="2Oq$k0">
                              <ref role="3cqZAo" node="5jZDGThLzqg" resolve="it" />
                            </node>
                            <node concept="2qgKlT" id="5jZDGThYMGJ" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:5jZDGThLEoa" resolve="toReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5jZDGThLzqg" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5jZDGThLzqh" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5jZDGThCHAl" role="3cqZAp" />
          <node concept="3clFbF" id="5A5sGroKenv" role="3cqZAp">
            <node concept="2OqwBi" id="5A5sGroKeoL" role="3clFbG">
              <node concept="37vLTw" id="5A5sGroKent" role="2Oq$k0">
                <ref role="3cqZAo" node="5A5sGroKdlH" resolve="currentNode" />
              </node>
              <node concept="1_qnLN" id="5A5sGroMiC8" role="2OqNvi">
                <ref role="1_rbq0" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGTi8wQ7" role="3cqZAp">
            <node concept="2YIFZM" id="5jZDGTi8wQ8" role="3clFbG">
              <ref role="37wK5l" to="7ztp:5jZDGTi8528" resolve="removeNextSiblingIfEmptyLine" />
              <ref role="1Pybhc" to="7ztp:5jZDGTi82o8" resolve="ConceptUtils" />
              <node concept="1JFAaq" id="5jZDGTi8wQ9" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="5A5sGroI0c4" role="21GTLz">
      <ref role="1JFXUq" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
      <node concept="1JFUiI" id="5A5sGroI0c5" role="3xT8ml">
        <node concept="3clFbS" id="5A5sGroI0c6" role="2VODD2">
          <node concept="3cpWs8" id="5A5sGroKeWR" role="3cqZAp">
            <node concept="3cpWsn" id="5A5sGroKeWS" role="3cpWs9">
              <property role="TrG5h" value="currentNode" />
              <node concept="3Tqbb2" id="5A5sGroKeWy" role="1tU5fm">
                <ref role="ehGHo" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
              </node>
              <node concept="2OqwBi" id="5A5sGroKeWT" role="33vP2m">
                <node concept="2qgKlT" id="5A5sGroKeWV" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5jZDGThq8lz" resolve="findNotPastedQueryMethods" />
                  <node concept="1JFAaq" id="5jZDGThqmgw" role="37wK5m" />
                </node>
                <node concept="2OqwBi" id="5jZDGThxs1i" role="2Oq$k0">
                  <node concept="1JFAaq" id="5jZDGThxs1j" role="2Oq$k0" />
                  <node concept="2qgKlT" id="5jZDGThxs1k" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5A5sGroI1gZ" resolve="dtoRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5A5sGroI0eS" role="3cqZAp">
            <node concept="3clFbS" id="5A5sGroI0eT" role="3clFbx">
              <node concept="3cpWs6" id="5A5sGroI7wZ" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="5A5sGroKfhD" role="3clFbw">
              <node concept="37vLTw" id="5A5sGroKf7h" role="2Oq$k0">
                <ref role="3cqZAo" node="5A5sGroKeWS" resolve="currentNode" />
              </node>
              <node concept="3w_OXm" id="5A5sGroKftc" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="5jZDGTh$jEY" role="3cqZAp" />
          <node concept="3cpWs8" id="5jZDGTh$IUj" role="3cqZAp">
            <node concept="3cpWsn" id="5jZDGTh$IUk" role="3cpWs9">
              <property role="TrG5h" value="queries" />
              <node concept="_YKpA" id="5jZDGTh_td8" role="1tU5fm">
                <node concept="3Tqbb2" id="5jZDGTh_tda" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
                </node>
              </node>
              <node concept="2YIFZM" id="5jZDGTh_sPN" role="33vP2m">
                <ref role="37wK5l" to="7ztp:5jZDGTh$T4u" resolve="merge" />
                <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
                <node concept="2OqwBi" id="5jZDGThYSQo" role="37wK5m">
                  <node concept="2OqwBi" id="5jZDGTh_sPR" role="2Oq$k0">
                    <node concept="37vLTw" id="5jZDGTh_sPS" role="2Oq$k0">
                      <ref role="3cqZAo" node="5A5sGroKeWS" resolve="currentNode" />
                    </node>
                    <node concept="3Tsc0h" id="5jZDGTh_sPT" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:1WhJCpUZu2S" resolve="queryRefernces" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="5jZDGThYWlH" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:7fqk8p43yh8" resolve="query" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5jZDGThYYip" role="37wK5m">
                  <node concept="2OqwBi" id="5jZDGTh_sPO" role="2Oq$k0">
                    <node concept="1JFAaq" id="5jZDGTh_sPP" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5jZDGTh_sPQ" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:1WhJCpUZu2S" resolve="queryRefernces" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="5jZDGThZ1ea" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:7fqk8p43yh8" resolve="query" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGThzVRg" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGTh$dwm" role="3clFbG">
              <node concept="2OqwBi" id="5jZDGThzXhu" role="2Oq$k0">
                <node concept="1JFAaq" id="5jZDGThzVRf" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5jZDGThzYGE" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:1WhJCpUZu2S" resolve="queryRefernces" />
                </node>
              </node>
              <node concept="2Kehj3" id="5jZDGTh$hsF" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGTh_$f$" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGTh_GN5" role="3clFbG">
              <node concept="2OqwBi" id="5jZDGTh_Clg" role="2Oq$k0">
                <node concept="1JFAaq" id="5jZDGTh_$fz" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5jZDGTh_ES5" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:1WhJCpUZu2S" resolve="queryRefernces" />
                </node>
              </node>
              <node concept="X8dFx" id="5jZDGTh_KKZ" role="2OqNvi">
                <node concept="2OqwBi" id="5jZDGThZ9sn" role="25WWJ7">
                  <node concept="37vLTw" id="5jZDGTh_M$D" role="2Oq$k0">
                    <ref role="3cqZAo" node="5jZDGTh$IUk" resolve="queries" />
                  </node>
                  <node concept="3$u5V9" id="5jZDGThZgBd" role="2OqNvi">
                    <node concept="1bVj0M" id="5jZDGThZgBf" role="23t8la">
                      <node concept="3clFbS" id="5jZDGThZgBg" role="1bW5cS">
                        <node concept="3clFbF" id="5jZDGThZgSi" role="3cqZAp">
                          <node concept="2OqwBi" id="5jZDGThZjwv" role="3clFbG">
                            <node concept="37vLTw" id="5jZDGThZgSh" role="2Oq$k0">
                              <ref role="3cqZAo" node="5jZDGThZgBh" resolve="it" />
                            </node>
                            <node concept="2qgKlT" id="5jZDGThZkdP" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:5jZDGThYDzO" resolve="toReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5jZDGThZgBh" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5jZDGThZgBi" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5jZDGTh_wOz" role="3cqZAp" />
          <node concept="3clFbF" id="5jZDGThs_V1" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGThsA6K" role="3clFbG">
              <node concept="37vLTw" id="5jZDGThs_UZ" role="2Oq$k0">
                <ref role="3cqZAo" node="5A5sGroKeWS" resolve="currentNode" />
              </node>
              <node concept="1_qnLN" id="5jZDGThv55Y" role="2OqNvi">
                <ref role="1_rbq0" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGTi89pt" role="3cqZAp">
            <node concept="2YIFZM" id="5jZDGTi8cx8" role="3clFbG">
              <ref role="37wK5l" to="7ztp:5jZDGTi8528" resolve="removeNextSiblingIfEmptyLine" />
              <ref role="1Pybhc" to="7ztp:5jZDGTi82o8" resolve="ConceptUtils" />
              <node concept="1JFAaq" id="5jZDGTi8eYi" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="mdpAJNR3st" role="21GTLz">
      <ref role="1JFXUq" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
      <node concept="1JFUiI" id="mdpAJNR3su" role="3xT8ml">
        <node concept="3clFbS" id="mdpAJNR3sv" role="2VODD2">
          <node concept="3clFbF" id="mdpAJOmrXa" role="3cqZAp">
            <node concept="2OqwBi" id="mdpAJOms7Q" role="3clFbG">
              <node concept="1JFAaq" id="mdpAJOmrX9" role="2Oq$k0" />
              <node concept="2qgKlT" id="mdpAJOmskh" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:mdpAJOmqph" resolve="onRepositoryReferencePasted" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="mdpAJNR3KW" role="21GTLz">
      <ref role="1JFXUq" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
      <node concept="1JFUiI" id="mdpAJNR3KX" role="3xT8ml">
        <node concept="3clFbS" id="mdpAJNR3KY" role="2VODD2">
          <node concept="3clFbF" id="mdpAJOms$2" role="3cqZAp">
            <node concept="2OqwBi" id="mdpAJOms$3" role="3clFbG">
              <node concept="1JFAaq" id="mdpAJOms$4" role="2Oq$k0" />
              <node concept="2qgKlT" id="mdpAJOms$5" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:mdpAJOmqph" resolve="onRepositoryReferencePasted" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="omljbyeM8A" role="21GTLz">
      <ref role="1JFXUq" to="3nll:5SyewCaZ9pz" resolve="GenericType" />
      <node concept="1JFUiI" id="omljbyeM8B" role="3xT8ml">
        <node concept="3clFbS" id="omljbyeM8C" role="2VODD2">
          <node concept="3cpWs8" id="omljbyheH7" role="3cqZAp">
            <node concept="3cpWsn" id="omljbyheH8" role="3cpWs9">
              <property role="TrG5h" value="importStatement" />
              <node concept="3Tqbb2" id="omljbyheGP" role="1tU5fm">
                <ref role="ehGHo" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
              </node>
              <node concept="2OqwBi" id="omljbyheH9" role="33vP2m">
                <node concept="1JFAaq" id="omljbyheHa" role="2Oq$k0" />
                <node concept="2Xjw5R" id="omljbyheHb" role="2OqNvi">
                  <node concept="1xMEDy" id="omljbyheHc" role="1xVPHs">
                    <node concept="chp4Y" id="omljbyheHd" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="omljbyheHe" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="omljbylVs0" role="3cqZAp">
            <node concept="3clFbS" id="omljbylVs2" role="3clFbx">
              <node concept="3cpWs6" id="1ZO4_LbgxHP" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="omljbylVDV" role="3clFbw">
              <node concept="37vLTw" id="omljbylVtC" role="2Oq$k0">
                <ref role="3cqZAo" node="omljbyheH8" resolve="importStatement" />
              </node>
              <node concept="3w_OXm" id="1ZO4_LbgxEk" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="omljbyheLF" role="3cqZAp">
            <node concept="2OqwBi" id="omljbyheYy" role="3clFbG">
              <node concept="37vLTw" id="omljbyheLD" role="2Oq$k0">
                <ref role="3cqZAo" node="omljbyheH8" resolve="importStatement" />
              </node>
              <node concept="2qgKlT" id="omljbyhfeh" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:mdpAJM7dS5" resolve="adjustImportStatementReferenceGenericTypes" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="omljbyj$VX" role="3cqZAp">
            <node concept="2OqwBi" id="omljbyj$Xw" role="3clFbG">
              <node concept="1JFAaq" id="omljbyj$VW" role="2Oq$k0" />
              <node concept="1P9Npp" id="omljbyj$YO" role="2OqNvi">
                <node concept="2OqwBi" id="omljbylVlo" role="1P9ThW">
                  <node concept="1JFAaq" id="omljbylVlp" role="2Oq$k0" />
                  <node concept="1$rogu" id="omljbylVlq" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="5qxF18FxF7q" role="21GTLz">
      <ref role="1JFXUq" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
      <node concept="1JFUiI" id="5qxF18FxF7r" role="3xT8ml">
        <node concept="3clFbS" id="5qxF18FxF7s" role="2VODD2">
          <node concept="3cpWs8" id="7qLyWzwgIJW" role="3cqZAp">
            <node concept="3cpWsn" id="7qLyWzwgIJX" role="3cpWs9">
              <property role="TrG5h" value="generationSettings" />
              <node concept="A3Dl8" id="7qLyWzwgIIY" role="1tU5fm">
                <node concept="3Tqbb2" id="7qLyWzwgIJ1" role="A3Ik2">
                  <ref role="ehGHo" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
                </node>
              </node>
              <node concept="2OqwBi" id="7qLyWzwgIJY" role="33vP2m">
                <node concept="2OqwBi" id="7qLyWzwgIJZ" role="2Oq$k0">
                  <node concept="2OqwBi" id="7qLyWzwgIK0" role="2Oq$k0">
                    <node concept="1JFAaq" id="7qLyWzwgIK1" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7qLyWzwgIK2" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="7qLyWzwgIK3" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
                  </node>
                </node>
                <node concept="v3k3i" id="7qLyWzwgIK4" role="2OqNvi">
                  <node concept="chp4Y" id="7qLyWzwgIK5" role="v3oSu">
                    <ref role="cht4Q" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1ZO4_Lbgx8F" role="3cqZAp" />
          <node concept="3clFbF" id="1ZO4_Lbgw_s" role="3cqZAp">
            <node concept="2OqwBi" id="1ZO4_Lbgw_u" role="3clFbG">
              <node concept="2OqwBi" id="1ZO4_Lbgw_v" role="2Oq$k0">
                <node concept="37vLTw" id="1ZO4_Lbgw_w" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qLyWzwgIJX" resolve="generationSettings" />
                </node>
                <node concept="3zZkjj" id="1ZO4_Lbgw_x" role="2OqNvi">
                  <node concept="1bVj0M" id="1ZO4_Lbgw_y" role="23t8la">
                    <node concept="3clFbS" id="1ZO4_Lbgw_z" role="1bW5cS">
                      <node concept="3clFbF" id="1ZO4_Lbgw_$" role="3cqZAp">
                        <node concept="3y3z36" id="1ZO4_Lbgw__" role="3clFbG">
                          <node concept="1JFAaq" id="1ZO4_Lbgw_A" role="3uHU7w" />
                          <node concept="37vLTw" id="1ZO4_Lbgw_B" role="3uHU7B">
                            <ref role="3cqZAo" node="1ZO4_Lbgw_C" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1ZO4_Lbgw_C" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1ZO4_Lbgw_D" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2es0OD" id="1ZO4_Lbgw_E" role="2OqNvi">
                <node concept="1bVj0M" id="1ZO4_Lbgw_F" role="23t8la">
                  <property role="3yWfEV" value="true" />
                  <node concept="3clFbS" id="1ZO4_Lbgw_G" role="1bW5cS">
                    <node concept="3clFbF" id="1ZO4_Lbgw_H" role="3cqZAp">
                      <node concept="2OqwBi" id="1ZO4_Lbgw_I" role="3clFbG">
                        <node concept="37vLTw" id="1ZO4_Lbgw_J" role="2Oq$k0">
                          <ref role="3cqZAo" node="1ZO4_Lbgw_L" resolve="it" />
                        </node>
                        <node concept="3YRAZt" id="1ZO4_Lbgw_K" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1ZO4_Lbgw_L" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1ZO4_Lbgw_M" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1hljLi" id="mdpAJNxm3e">
    <property role="TrG5h" value="PasteWrappers" />
    <node concept="1hlzdc" id="4V91Il7stoH" role="1hl$rw">
      <ref role="1hmvP4" to="3nll:7fqk8p3V6WN" resolve="Property" />
      <ref role="1hszAz" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
      <node concept="1ht64k" id="4V91Il7stoI" role="1hsNre">
        <node concept="3clFbS" id="4V91Il7stoJ" role="2VODD2">
          <node concept="3clFbF" id="4V91Il8jdl_" role="3cqZAp">
            <node concept="2OqwBi" id="4V91Il8jdAa" role="3clFbG">
              <node concept="1ht04C" id="4V91Il8jdl$" role="2Oq$k0" />
              <node concept="2qgKlT" id="4V91Il8jdWc" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:4V91Il8jc9j" resolve="toParameter" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hlzdc" id="mdpAJOv87U" role="1hl$rw">
      <ref role="1hmvP4" to="3nll:5jZDGTilvf_" resolve="IRepository" />
      <ref role="1hszAz" to="3nll:5jZDGTgnxtU" resolve="IRepositoryReference" />
      <node concept="1ht64k" id="mdpAJOv87V" role="1hsNre">
        <node concept="3clFbS" id="mdpAJOv87W" role="2VODD2">
          <node concept="3clFbF" id="mdpAJOv8dI" role="3cqZAp">
            <node concept="2OqwBi" id="mdpAJOv8rm" role="3clFbG">
              <node concept="1ht04C" id="mdpAJOv8dH" role="2Oq$k0" />
              <node concept="2qgKlT" id="mdpAJOv8A3" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTilCJr" resolve="toRepositoryReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hlzdc" id="4V91Il7SprG" role="1hl$rw">
      <ref role="1hmvP4" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
      <ref role="1hszAz" to="3nll:awtshk_L0H" resolve="IAggregateRootComponent" />
      <node concept="1ht64k" id="4V91Il7SprH" role="1hsNre">
        <node concept="3clFbS" id="4V91Il7SprI" role="2VODD2">
          <node concept="3clFbF" id="4V91Il8jefB" role="3cqZAp">
            <node concept="2OqwBi" id="4V91Il8jew5" role="3clFbG">
              <node concept="1ht04C" id="4V91Il8jefA" role="2Oq$k0" />
              <node concept="2qgKlT" id="4V91Il8jeJX" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:4V91Il8jbXp" resolve="toProperty" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hlzdc" id="4V91Il8jb$D" role="1hl$rw">
      <ref role="1hmvP4" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
      <ref role="1hszAz" to="3nll:7fqk8p3VKtM" resolve="IEntityComponent" />
      <node concept="1ht64k" id="4V91Il8jb$E" role="1hsNre">
        <node concept="3clFbS" id="4V91Il8jb$F" role="2VODD2">
          <node concept="3clFbF" id="4V91Il8jeS9" role="3cqZAp">
            <node concept="2OqwBi" id="4V91Il8jeSa" role="3clFbG">
              <node concept="1ht04C" id="4V91Il8jeSb" role="2Oq$k0" />
              <node concept="2qgKlT" id="4V91Il8jeSc" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:4V91Il8jbXp" resolve="toProperty" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hlzdc" id="7IRUqbcjWY5" role="1hl$rw">
      <ref role="1hmvP4" to="3nll:7fqk8p43yh4" resolve="Query" />
      <ref role="1hszAz" to="3nll:7fqk8p43yh7" resolve="QueryReference" />
      <node concept="1ht64k" id="7IRUqbcjWY6" role="1hsNre">
        <node concept="3clFbS" id="7IRUqbcjWY7" role="2VODD2">
          <node concept="3SKdUt" id="7IRUqbctz8e" role="3cqZAp">
            <node concept="1PaTwC" id="7IRUqbctz8f" role="1aUNEU">
              <node concept="3oM_SD" id="7IRUqbctz9a" role="1PaTwD">
                <property role="3oM_SC" value="TODO" />
              </node>
              <node concept="3oM_SD" id="7IRUqbctz9g" role="1PaTwD">
                <property role="3oM_SC" value="Das" />
              </node>
              <node concept="3oM_SD" id="7IRUqbctz9n" role="1PaTwD">
                <property role="3oM_SC" value="geht" />
              </node>
              <node concept="3oM_SD" id="7IRUqbctz9w" role="1PaTwD">
                <property role="3oM_SC" value="irgendwie" />
              </node>
              <node concept="3oM_SD" id="7IRUqbctz9P" role="1PaTwD">
                <property role="3oM_SC" value="noch" />
              </node>
              <node concept="3oM_SD" id="7IRUqbctza0" role="1PaTwD">
                <property role="3oM_SC" value="nicht" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7IRUqbcjX4u" role="3cqZAp">
            <node concept="2OqwBi" id="7IRUqbcjXpR" role="3clFbG">
              <node concept="1ht04C" id="7IRUqbcjX4t" role="2Oq$k0" />
              <node concept="2qgKlT" id="7IRUqbcjXMt" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGThYDzO" resolve="toReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

