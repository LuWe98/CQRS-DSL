<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:960662d9-c1ee-48af-b5a5-518d2ac1ca55(CQRS.helper)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="sx7w" ref="r:dc830b23-b722-4fd1-8178-0431aafe57ef(CQRS.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1201370618622" name="jetbrains.mps.baseLanguage.structure.Property" flags="ig" index="2RhdJD">
        <property id="1201371481316" name="propertyName" index="2RkwnN" />
        <child id="1201371521209" name="type" index="2RkE6I" />
        <child id="1201372378714" name="propertyImplementation" index="2RnVtd" />
      </concept>
      <concept id="1201372606839" name="jetbrains.mps.baseLanguage.structure.DefaultPropertyImplementation" flags="ng" index="2RoN1w">
        <child id="1202065356069" name="defaultGetAccessor" index="3wFrgM" />
        <child id="1202078082794" name="defaultSetAccessor" index="3xrYvX" />
      </concept>
      <concept id="1201385106094" name="jetbrains.mps.baseLanguage.structure.PropertyReference" flags="nn" index="2S8uIT">
        <reference id="1201385237847" name="property" index="2S8YL0" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="5862977038373003187" name="jetbrains.mps.baseLanguage.structure.LocalPropertyReference" flags="nn" index="338YkY">
        <reference id="5862977038373003188" name="property" index="338YkT" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1202065242027" name="jetbrains.mps.baseLanguage.structure.DefaultGetAccessor" flags="ng" index="3wEZqW" />
      <concept id="1202077725299" name="jetbrains.mps.baseLanguage.structure.DefaultSetAccessor" flags="ng" index="3xqBd$">
        <child id="1202077744034" name="visibility" index="3xqFEP" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1vyzkEMs91R">
    <property role="TrG5h" value="DerivedVariableWrapper" />
    <property role="3GE5qa" value="variable" />
    <node concept="2tJIrI" id="1vyzkEMs9mn" role="jymVt" />
    <node concept="2RhdJD" id="1vyzkEMs4En" role="jymVt">
      <property role="2RkwnN" value="flatteringRule" />
      <node concept="3Tm1VV" id="1vyzkEMs4Eo" role="1B3o_S" />
      <node concept="2RoN1w" id="1vyzkEMs4Ep" role="2RnVtd">
        <node concept="3wEZqW" id="1vyzkEMs4Eq" role="3wFrgM" />
        <node concept="3xqBd$" id="1vyzkEMs4Er" role="3xrYvX">
          <node concept="3Tm6S6" id="1vyzkEMs4Es" role="3xqFEP" />
        </node>
      </node>
      <node concept="3Tqbb2" id="1vyzkEMs4EW" role="2RkE6I">
        <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
      </node>
    </node>
    <node concept="2RhdJD" id="1vyzkEMs5X2" role="jymVt">
      <property role="2RkwnN" value="variableWrapper" />
      <node concept="3Tm1VV" id="1vyzkEMs5X3" role="1B3o_S" />
      <node concept="2RoN1w" id="1vyzkEMs5X4" role="2RnVtd">
        <node concept="3wEZqW" id="1vyzkEMs5X5" role="3wFrgM" />
        <node concept="3xqBd$" id="1vyzkEMs5X6" role="3xrYvX">
          <node concept="3Tm6S6" id="1vyzkEMs5X7" role="3xqFEP" />
        </node>
      </node>
      <node concept="3uibUv" id="1vyzkEMtvY0" role="2RkE6I">
        <ref role="3uigEE" node="1vyzkEMtuLJ" resolve="VariableWrapper" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vyzkEMs5Tq" role="jymVt" />
    <node concept="3clFbW" id="1vyzkEMs4zQ" role="jymVt">
      <node concept="37vLTG" id="1vyzkEMs4B4" role="3clF46">
        <property role="TrG5h" value="flatteningRule" />
        <node concept="3Tqbb2" id="1vyzkEMs4Bz" role="1tU5fm">
          <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
        </node>
      </node>
      <node concept="37vLTG" id="1vyzkEMs4$q" role="3clF46">
        <property role="TrG5h" value="variableWrapper" />
        <node concept="3uibUv" id="1vyzkEMtvMa" role="1tU5fm">
          <ref role="3uigEE" node="1vyzkEMtuLJ" resolve="VariableWrapper" />
        </node>
      </node>
      <node concept="3cqZAl" id="1vyzkEMs4zS" role="3clF45" />
      <node concept="3Tm6S6" id="6Yyl_4kHFwp" role="1B3o_S" />
      <node concept="3clFbS" id="1vyzkEMs4zU" role="3clF47">
        <node concept="3clFbF" id="1vyzkEMs4FY" role="3cqZAp">
          <node concept="37vLTI" id="1vyzkEMs5QO" role="3clFbG">
            <node concept="37vLTw" id="1vyzkEMs5Sc" role="37vLTx">
              <ref role="3cqZAo" node="1vyzkEMs4B4" resolve="flatteningRule" />
            </node>
            <node concept="2OqwBi" id="1vyzkEMs4Ng" role="37vLTJ">
              <node concept="Xjq3P" id="1vyzkEMs4FX" role="2Oq$k0" />
              <node concept="2S8uIT" id="1vyzkEMs55s" role="2OqNvi">
                <ref role="2S8YL0" node="1vyzkEMs4En" resolve="flatteringRule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1vyzkEMs60w" role="3cqZAp">
          <node concept="37vLTI" id="1vyzkEMs6rs" role="3clFbG">
            <node concept="37vLTw" id="1vyzkEMs6td" role="37vLTx">
              <ref role="3cqZAo" node="1vyzkEMs4$q" resolve="variableWrapper" />
            </node>
            <node concept="2OqwBi" id="1vyzkEMs68f" role="37vLTJ">
              <node concept="Xjq3P" id="1vyzkEMs60u" role="2Oq$k0" />
              <node concept="2S8uIT" id="1vyzkEMs6f3" role="2OqNvi">
                <ref role="2S8YL0" node="1vyzkEMs5X2" resolve="variableWrapper" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1vyzkEMs9mp" role="jymVt" />
    <node concept="3clFb_" id="1vyzkEMtwDa" role="jymVt">
      <property role="TrG5h" value="getVariableName" />
      <node concept="3Tm1VV" id="1vyzkEMtwDb" role="1B3o_S" />
      <node concept="17QB3L" id="1vyzkEMtwDd" role="3clF45" />
      <node concept="3clFbS" id="1vyzkEMtwDe" role="3clF47">
        <node concept="3cpWs8" id="1vyzkEMtVtc" role="3cqZAp">
          <node concept="3cpWsn" id="1vyzkEMtVtd" role="3cpWs9">
            <property role="TrG5h" value="subVariableName" />
            <node concept="17QB3L" id="1vyzkEMtVqt" role="1tU5fm" />
            <node concept="2OqwBi" id="1vyzkEMtVte" role="33vP2m">
              <node concept="338YkY" id="1vyzkEMtVtf" role="2Oq$k0">
                <ref role="338YkT" node="1vyzkEMs5X2" resolve="variableWrapper" />
              </node>
              <node concept="liA8E" id="1vyzkEMtVtg" role="2OqNvi">
                <ref role="37wK5l" node="1vyzkEMtwwP" resolve="getVariableName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1vyzkEMtU$N" role="3cqZAp" />
        <node concept="3clFbJ" id="1vyzkEMtXP4" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="1vyzkEMtXP6" role="3clFbx">
            <node concept="3cpWs6" id="1vyzkEMtZDB" role="3cqZAp">
              <node concept="37vLTw" id="1vyzkEMtZSG" role="3cqZAk">
                <ref role="3cqZAo" node="1vyzkEMtVtd" resolve="subVariableName" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1vyzkEMtZgK" role="3clFbw">
            <node concept="2OqwBi" id="1vyzkEMtYMw" role="2Oq$k0">
              <node concept="338YkY" id="1vyzkEMtYzh" role="2Oq$k0">
                <ref role="338YkT" node="1vyzkEMs4En" resolve="flatteringRule" />
              </node>
              <node concept="3TrcHB" id="1vyzkEMtZ5r" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
              </node>
            </node>
            <node concept="21noJN" id="1vyzkEMtZv4" role="2OqNvi">
              <node concept="21nZrQ" id="1vyzkEMtZv6" role="21noJM">
                <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1vyzkEMtZXu" role="3cqZAp" />
        <node concept="3cpWs8" id="1vyzkEMu1XT" role="3cqZAp">
          <node concept="3cpWsn" id="1vyzkEMu1XU" role="3cpWs9">
            <property role="TrG5h" value="preOrSuffix" />
            <node concept="17QB3L" id="1vyzkEMu1QF" role="1tU5fm" />
            <node concept="3K4zz7" id="1vyzkEMu4j3" role="33vP2m">
              <node concept="2OqwBi" id="1vyzkEMu4JT" role="3K4E3e">
                <node concept="338YkY" id="1vyzkEMu4w1" role="2Oq$k0">
                  <ref role="338YkT" node="1vyzkEMs4En" resolve="flatteringRule" />
                </node>
                <node concept="2qgKlT" id="1vyzkEMu4Qe" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:2RbvdOM0peT" resolve="getName" />
                </node>
              </node>
              <node concept="2OqwBi" id="1vyzkEMu5U4" role="3K4GZi">
                <node concept="338YkY" id="1vyzkEMu4X2" role="2Oq$k0">
                  <ref role="338YkT" node="1vyzkEMs4En" resolve="flatteringRule" />
                </node>
                <node concept="2qgKlT" id="1vyzkEMu60F" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:2RbvdOLeryC" resolve="getPlaceholderText" />
                </node>
              </node>
              <node concept="2OqwBi" id="1vyzkEMu1XV" role="3K4Cdx">
                <node concept="338YkY" id="1vyzkEMu1XW" role="2Oq$k0">
                  <ref role="338YkT" node="1vyzkEMs4En" resolve="flatteringRule" />
                </node>
                <node concept="2qgKlT" id="1vyzkEMu1XX" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:2RbvdOM0nGV" resolve="isNameSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1vyzkEMu1uX" role="3cqZAp" />
        <node concept="3clFbJ" id="1vyzkEMu09g" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="1vyzkEMu09i" role="3clFbx">
            <node concept="3cpWs6" id="1vyzkEMueAT" role="3cqZAp">
              <node concept="3cpWs3" id="1vyzkEMufxF" role="3cqZAk">
                <node concept="37vLTw" id="1vyzkEMufF7" role="3uHU7w">
                  <ref role="3cqZAo" node="1vyzkEMu1XU" resolve="preOrSuffix" />
                </node>
                <node concept="37vLTw" id="1vyzkEMuf0Z" role="3uHU7B">
                  <ref role="3cqZAo" node="1vyzkEMtVtd" resolve="subVariableName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1vyzkEMu12r" role="3clFbw">
            <node concept="2OqwBi" id="1vyzkEMu0wi" role="2Oq$k0">
              <node concept="338YkY" id="1vyzkEMu0g3" role="2Oq$k0">
                <ref role="338YkT" node="1vyzkEMs4En" resolve="flatteringRule" />
              </node>
              <node concept="3TrcHB" id="1vyzkEMu0QL" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
              </node>
            </node>
            <node concept="21noJN" id="1vyzkEMu1ff" role="2OqNvi">
              <node concept="21nZrQ" id="1vyzkEMu1fh" role="21noJM">
                <ref role="21nZrZ" to="3nll:3NXs7yqZJYF" resolve="Prefix" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1vyzkEMtVYR" role="3cqZAp" />
        <node concept="3clFbJ" id="1ZO4_Lan31r" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="1ZO4_Lan31t" role="3clFbx">
            <node concept="3cpWs6" id="1ZO4_Lan9hM" role="3cqZAp">
              <node concept="37vLTw" id="1ZO4_Lan9NK" role="3cqZAk">
                <ref role="3cqZAo" node="1vyzkEMu1XU" resolve="preOrSuffix" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1ZO4_Lan4vq" role="3clFbw">
            <node concept="3eOVzh" id="1ZO4_Lan7SM" role="3uHU7w">
              <node concept="3cmrfG" id="1ZO4_Lan96c" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="1ZO4_Lan5e4" role="3uHU7B">
                <node concept="37vLTw" id="1ZO4_Lan4Ek" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vyzkEMtVtd" resolve="subVariableName" />
                </node>
                <node concept="liA8E" id="1ZO4_Lan5Ge" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="1ZO4_Lan4aR" role="3uHU7B">
              <node concept="37vLTw" id="1ZO4_Lan3f8" role="3uHU7B">
                <ref role="3cqZAo" node="1vyzkEMtVtd" resolve="subVariableName" />
              </node>
              <node concept="10Nm6u" id="1ZO4_Lan4lh" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1ZO4_Lan2O6" role="3cqZAp" />
        <node concept="3cpWs8" id="1vyzkEMubNG" role="3cqZAp">
          <node concept="3cpWsn" id="1vyzkEMubNH" role="3cpWs9">
            <property role="TrG5h" value="firstChar" />
            <node concept="17QB3L" id="1vyzkEMucma" role="1tU5fm" />
            <node concept="2YIFZM" id="1vyzkEMubNI" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~String.valueOf(char)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="1vyzkEMubNJ" role="37wK5m">
                <node concept="37vLTw" id="1vyzkEMubNK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vyzkEMtVtd" resolve="subVariableName" />
                </node>
                <node concept="liA8E" id="1vyzkEMubNL" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                  <node concept="3cmrfG" id="1vyzkEMubNM" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1vyzkEMukEx" role="3cqZAp">
          <node concept="3cpWsn" id="1vyzkEMukEy" role="3cpWs9">
            <property role="TrG5h" value="updatedSubVariableName" />
            <node concept="17QB3L" id="1vyzkEMukvD" role="1tU5fm" />
            <node concept="3cpWs3" id="1vyzkEMukEz" role="33vP2m">
              <node concept="2OqwBi" id="1vyzkEMukE$" role="3uHU7B">
                <node concept="37vLTw" id="1vyzkEMukE_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vyzkEMubNH" resolve="firstChar" />
                </node>
                <node concept="liA8E" id="1vyzkEMukEA" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.toUpperCase()" resolve="toUpperCase" />
                </node>
              </node>
              <node concept="1eOMI4" id="1vyzkEMurXa" role="3uHU7w">
                <node concept="3K4zz7" id="1vyzkEMuw2y" role="1eOMHV">
                  <node concept="Xl_RD" id="1vyzkEMuwcp" role="3K4E3e">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="2dkUwp" id="1vyzkEMuubs" role="3K4Cdx">
                    <node concept="3cmrfG" id="1vyzkEMuvf2" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="1vyzkEMusBp" role="3uHU7B">
                      <node concept="37vLTw" id="1vyzkEMus6u" role="2Oq$k0">
                        <ref role="3cqZAo" node="1vyzkEMtVtd" resolve="subVariableName" />
                      </node>
                      <node concept="liA8E" id="1vyzkEMut33" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1vyzkEMukEB" role="3K4GZi">
                    <node concept="37vLTw" id="1vyzkEMukEC" role="2Oq$k0">
                      <ref role="3cqZAo" node="1vyzkEMtVtd" resolve="subVariableName" />
                    </node>
                    <node concept="liA8E" id="1vyzkEMukED" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                      <node concept="3cmrfG" id="1vyzkEMukEE" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1vyzkEMun3n" role="3cqZAp">
          <node concept="3cpWs3" id="1vyzkEMunIp" role="3clFbG">
            <node concept="37vLTw" id="1vyzkEMunT1" role="3uHU7w">
              <ref role="3cqZAo" node="1vyzkEMukEy" resolve="updatedSubVariableName" />
            </node>
            <node concept="37vLTw" id="1vyzkEMun3l" role="3uHU7B">
              <ref role="3cqZAo" node="1vyzkEMu1XU" resolve="preOrSuffix" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1vyzkEMtwDf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vyzkEMwnyM" role="jymVt" />
    <node concept="3clFb_" id="1vyzkEMwojZ" role="jymVt">
      <property role="TrG5h" value="getWrappedVariable" />
      <node concept="3Tm1VV" id="1vyzkEMwok2" role="1B3o_S" />
      <node concept="3clFbS" id="1vyzkEMwok3" role="3clF47">
        <node concept="3clFbF" id="1vyzkEMxg4W" role="3cqZAp">
          <node concept="2OqwBi" id="1vyzkEMxeSc" role="3clFbG">
            <node concept="338YkY" id="1vyzkEMxe$$" role="2Oq$k0">
              <ref role="338YkT" node="1vyzkEMs5X2" resolve="variableWrapper" />
            </node>
            <node concept="liA8E" id="1vyzkEMxfz9" role="2OqNvi">
              <ref role="37wK5l" node="1vyzkEMx9vg" resolve="getWrappedVariable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1vyzkEMwoQG" role="3clF45">
        <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
      </node>
      <node concept="2AHcQZ" id="1vyzkEMxe1L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ZO4_Lanbg5" role="jymVt" />
    <node concept="3clFb_" id="1ZO4_Lanc$t" role="jymVt">
      <property role="TrG5h" value="findVariableOrigin" />
      <node concept="3Tm1VV" id="1ZO4_Lanc$w" role="1B3o_S" />
      <node concept="3clFbS" id="1ZO4_Lanc$x" role="3clF47">
        <node concept="3cpWs8" id="1ZO4_Lanif3" role="3cqZAp">
          <node concept="3cpWsn" id="1ZO4_Lanif4" role="3cpWs9">
            <property role="TrG5h" value="currentWrapper" />
            <node concept="3uibUv" id="1ZO4_Lani9R" role="1tU5fm">
              <ref role="3uigEE" node="1vyzkEMtuLJ" resolve="VariableWrapper" />
            </node>
            <node concept="Xjq3P" id="1ZO4_LanKUb" role="33vP2m" />
          </node>
        </node>
        <node concept="2$JKZl" id="1ZO4_Lanj8S" role="3cqZAp">
          <node concept="3clFbS" id="1ZO4_Lanj8U" role="2LFqv$">
            <node concept="3clFbJ" id="1ZO4_LanVEn" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <node concept="2ZW3vV" id="1ZO4_LanVEo" role="3clFbw">
                <node concept="3uibUv" id="1ZO4_LanVEp" role="2ZW6by">
                  <ref role="3uigEE" node="1vyzkEMtuAz" resolve="SimpleVariableWrapper" />
                </node>
                <node concept="37vLTw" id="1ZO4_LanVEq" role="2ZW6bz">
                  <ref role="3cqZAo" node="1ZO4_Lanif4" resolve="currentWrapper" />
                </node>
              </node>
              <node concept="3clFbS" id="1ZO4_LanVEr" role="3clFbx">
                <node concept="3cpWs6" id="1ZO4_LanVEs" role="3cqZAp">
                  <node concept="10Nm6u" id="1ZO4_LanWBi" role="3cqZAk" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1ZO4_LanVqa" role="3cqZAp" />
            <node concept="3cpWs8" id="1ZO4_LanL_T" role="3cqZAp">
              <node concept="3cpWsn" id="1ZO4_LanL_U" role="3cpWs9">
                <property role="TrG5h" value="derivedWrapper" />
                <node concept="3uibUv" id="1ZO4_LanLv8" role="1tU5fm">
                  <ref role="3uigEE" node="1vyzkEMs91R" resolve="DerivedVariableWrapper" />
                </node>
                <node concept="0kSF2" id="1ZO4_LanL_V" role="33vP2m">
                  <node concept="3uibUv" id="1ZO4_LanL_W" role="0kSFW">
                    <ref role="3uigEE" node="1vyzkEMs91R" resolve="DerivedVariableWrapper" />
                  </node>
                  <node concept="37vLTw" id="1ZO4_LanL_X" role="0kSFX">
                    <ref role="3cqZAo" node="1ZO4_Lanif4" resolve="currentWrapper" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1ZO4_LanF9w" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <node concept="3clFbS" id="1ZO4_LanF9y" role="3clFbx">
                <node concept="3cpWs6" id="1ZO4_LanJmo" role="3cqZAp">
                  <node concept="2OqwBi" id="1ZO4_LanPQ$" role="3cqZAk">
                    <node concept="2OqwBi" id="1ZO4_LanK_S" role="2Oq$k0">
                      <node concept="37vLTw" id="1ZO4_LanK1n" role="2Oq$k0">
                        <ref role="3cqZAo" node="1ZO4_LanL_U" resolve="derivedWrapper" />
                      </node>
                      <node concept="2S8uIT" id="1ZO4_LanPpz" role="2OqNvi">
                        <ref role="2S8YL0" node="1vyzkEMs4En" resolve="flatteringRule" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="1ZO4_LanQl4" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="1ZO4_LanHps" role="3clFbw">
                <node concept="3uibUv" id="1ZO4_LanII0" role="2ZW6by">
                  <ref role="3uigEE" node="1vyzkEMtuAz" resolve="SimpleVariableWrapper" />
                </node>
                <node concept="2OqwBi" id="1ZO4_Lao03$" role="2ZW6bz">
                  <node concept="37vLTw" id="1ZO4_Lao03_" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ZO4_LanL_U" resolve="derivedWrapper" />
                  </node>
                  <node concept="2S8uIT" id="1ZO4_Lao03A" role="2OqNvi">
                    <ref role="2S8YL0" node="1vyzkEMs5X2" resolve="variableWrapper" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1ZO4_LanT9u" role="3cqZAp" />
            <node concept="3clFbF" id="1ZO4_LanABq" role="3cqZAp">
              <node concept="37vLTI" id="1ZO4_LanABr" role="3clFbG">
                <node concept="2OqwBi" id="1ZO4_LanABs" role="37vLTx">
                  <node concept="0kSF2" id="1ZO4_LanABt" role="2Oq$k0">
                    <node concept="3uibUv" id="1ZO4_LanABu" role="0kSFW">
                      <ref role="3uigEE" node="1vyzkEMs91R" resolve="DerivedVariableWrapper" />
                    </node>
                    <node concept="37vLTw" id="1ZO4_LanABv" role="0kSFX">
                      <ref role="3cqZAo" node="1ZO4_Lanif4" resolve="currentWrapper" />
                    </node>
                  </node>
                  <node concept="2S8uIT" id="1ZO4_LanABw" role="2OqNvi">
                    <ref role="2S8YL0" node="1vyzkEMs5X2" resolve="variableWrapper" />
                  </node>
                </node>
                <node concept="37vLTw" id="1ZO4_LanABx" role="37vLTJ">
                  <ref role="3cqZAo" node="1ZO4_Lanif4" resolve="currentWrapper" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="1ZO4_Lanjy6" role="2$JKZa">
            <node concept="10Nm6u" id="1ZO4_LanjIc" role="3uHU7w" />
            <node concept="37vLTw" id="1ZO4_Lanjl2" role="3uHU7B">
              <ref role="3cqZAo" node="1ZO4_Lanif4" resolve="currentWrapper" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ZO4_LanpCj" role="3cqZAp">
          <node concept="10Nm6u" id="1ZO4_LanpCh" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tqbb2" id="1ZO4_LanuFA" role="3clF45">
        <ref role="ehGHo" to="3nll:4LpUh3T0rQI" resolve="IDtoDerivable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vyzkEMwnBv" role="jymVt" />
    <node concept="2YIFZL" id="1vyzkEMssZV" role="jymVt">
      <property role="TrG5h" value="of" />
      <node concept="37vLTG" id="1vyzkEMtSlo" role="3clF46">
        <property role="TrG5h" value="fromRule" />
        <node concept="3Tqbb2" id="1vyzkEMtSlp" role="1tU5fm">
          <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
        </node>
      </node>
      <node concept="37vLTG" id="1vyzkEMst3T" role="3clF46">
        <property role="TrG5h" value="variable" />
        <node concept="3uibUv" id="1vyzkEMtw2g" role="1tU5fm">
          <ref role="3uigEE" node="1vyzkEMtuLJ" resolve="VariableWrapper" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1vyzkEMssZY" role="1B3o_S" />
      <node concept="3clFbS" id="1vyzkEMssZZ" role="3clF47">
        <node concept="3clFbF" id="1vyzkEMst83" role="3cqZAp">
          <node concept="2ShNRf" id="1vyzkEMst7Z" role="3clFbG">
            <node concept="1pGfFk" id="1vyzkEMsuhd" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="1vyzkEMs4zQ" resolve="DerivedVariableWrapper" />
              <node concept="37vLTw" id="1vyzkEMtSs9" role="37wK5m">
                <ref role="3cqZAo" node="1vyzkEMtSlo" resolve="fromRule" />
              </node>
              <node concept="37vLTw" id="1vyzkEMsuke" role="37wK5m">
                <ref role="3cqZAo" node="1vyzkEMst3T" resolve="variable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1vyzkEMst2$" role="3clF45">
        <ref role="3uigEE" node="1vyzkEMs91R" resolve="DerivedVariableWrapper" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vyzkEMssY7" role="jymVt" />
    <node concept="3Tm1VV" id="1vyzkEMs91S" role="1B3o_S" />
    <node concept="3uibUv" id="1vyzkEMtuSm" role="EKbjA">
      <ref role="3uigEE" node="1vyzkEMtuLJ" resolve="VariableWrapper" />
    </node>
  </node>
  <node concept="312cEu" id="1vyzkEMtuAz">
    <property role="TrG5h" value="SimpleVariableWrapper" />
    <property role="3GE5qa" value="variable" />
    <node concept="2tJIrI" id="1vyzkEMtuBb" role="jymVt" />
    <node concept="312cEg" id="1vyzkEMx9Qg" role="jymVt">
      <property role="TrG5h" value="variable" />
      <node concept="3Tm6S6" id="1vyzkEMx9MN" role="1B3o_S" />
      <node concept="3Tqbb2" id="1vyzkEMx9Ps" role="1tU5fm">
        <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vyzkEMx9I9" role="jymVt" />
    <node concept="3clFbW" id="1vyzkEMtuBH" role="jymVt">
      <node concept="37vLTG" id="1vyzkEMtuBK" role="3clF46">
        <property role="TrG5h" value="variable" />
        <node concept="3Tqbb2" id="1vyzkEMtuBL" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
        </node>
      </node>
      <node concept="3cqZAl" id="1vyzkEMtuBM" role="3clF45" />
      <node concept="3Tm6S6" id="6Yyl_4kHDQ4" role="1B3o_S" />
      <node concept="3clFbS" id="1vyzkEMtuBO" role="3clF47">
        <node concept="3clFbF" id="1vyzkEMtuBV" role="3cqZAp">
          <node concept="37vLTI" id="1vyzkEMtuBW" role="3clFbG">
            <node concept="37vLTw" id="1vyzkEMtuBX" role="37vLTx">
              <ref role="3cqZAo" node="1vyzkEMtuBK" resolve="variable" />
            </node>
            <node concept="2OqwBi" id="1vyzkEMtuBY" role="37vLTJ">
              <node concept="Xjq3P" id="1vyzkEMtuBZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="1vyzkEMxa9G" role="2OqNvi">
                <ref role="2Oxat5" node="1vyzkEMx9Qg" resolve="variable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1vyzkEMtwUA" role="jymVt" />
    <node concept="3clFb_" id="1vyzkEMtwXe" role="jymVt">
      <property role="TrG5h" value="getVariableName" />
      <node concept="3Tm1VV" id="1vyzkEMtwXf" role="1B3o_S" />
      <node concept="17QB3L" id="1vyzkEMtwXh" role="3clF45" />
      <node concept="3clFbS" id="1vyzkEMtwXi" role="3clF47">
        <node concept="3clFbF" id="1vyzkEMtwXl" role="3cqZAp">
          <node concept="2OqwBi" id="1vyzkEMtxnr" role="3clFbG">
            <node concept="37vLTw" id="1vyzkEMxadj" role="2Oq$k0">
              <ref role="3cqZAo" node="1vyzkEMx9Qg" resolve="variable" />
            </node>
            <node concept="3TrcHB" id="1vyzkEMtxz0" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1vyzkEMtwXj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vyzkEMxai8" role="jymVt" />
    <node concept="3clFb_" id="1vyzkEMxamI" role="jymVt">
      <property role="TrG5h" value="getWrappedVariable" />
      <node concept="3Tm1VV" id="1vyzkEMxamJ" role="1B3o_S" />
      <node concept="3Tqbb2" id="1vyzkEMxamL" role="3clF45">
        <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
      </node>
      <node concept="3clFbS" id="1vyzkEMxamM" role="3clF47">
        <node concept="3clFbF" id="1vyzkEMxa_3" role="3cqZAp">
          <node concept="37vLTw" id="1vyzkEMxa_2" role="3clFbG">
            <ref role="3cqZAo" node="1vyzkEMx9Qg" resolve="variable" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1vyzkEMxamN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vyzkEMtS_X" role="jymVt" />
    <node concept="2YIFZL" id="1vyzkEMtTrI" role="jymVt">
      <property role="TrG5h" value="of" />
      <node concept="37vLTG" id="1vyzkEMtTw8" role="3clF46">
        <property role="TrG5h" value="variable" />
        <node concept="3Tqbb2" id="1vyzkEMtTxz" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
        </node>
      </node>
      <node concept="3uibUv" id="1vyzkEMtTz2" role="3clF45">
        <ref role="3uigEE" node="1vyzkEMtuAz" resolve="SimpleVariableWrapper" />
      </node>
      <node concept="3Tm1VV" id="1vyzkEMtTrL" role="1B3o_S" />
      <node concept="3clFbS" id="1vyzkEMtTrM" role="3clF47">
        <node concept="3clFbF" id="1vyzkEMtT$Y" role="3cqZAp">
          <node concept="2ShNRf" id="1vyzkEMtT$W" role="3clFbG">
            <node concept="1pGfFk" id="1vyzkEMtTI6" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="1vyzkEMtuBH" resolve="SimpleVariableWrapper" />
              <node concept="37vLTw" id="1vyzkEMtTKq" role="37wK5m">
                <ref role="3cqZAo" node="1vyzkEMtTw8" resolve="variable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1vyzkEMtuBg" role="jymVt" />
    <node concept="3Tm1VV" id="1vyzkEMtuA$" role="1B3o_S" />
    <node concept="3uibUv" id="1vyzkEMtvcl" role="EKbjA">
      <ref role="3uigEE" node="1vyzkEMtuLJ" resolve="VariableWrapper" />
    </node>
  </node>
  <node concept="3HP615" id="1vyzkEMtuLJ">
    <property role="TrG5h" value="VariableWrapper" />
    <property role="3GE5qa" value="variable" />
    <node concept="3clFb_" id="1vyzkEMtwwP" role="jymVt">
      <property role="TrG5h" value="getVariableName" />
      <node concept="3Tm1VV" id="1vyzkEMtwwS" role="1B3o_S" />
      <node concept="3clFbS" id="1vyzkEMtwwT" role="3clF47" />
      <node concept="17QB3L" id="1vyzkEMtwxN" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1vyzkEMx9vg" role="jymVt">
      <property role="TrG5h" value="getWrappedVariable" />
      <node concept="3Tm1VV" id="1vyzkEMx9vj" role="1B3o_S" />
      <node concept="3clFbS" id="1vyzkEMx9vk" role="3clF47" />
      <node concept="3Tqbb2" id="1vyzkEMx9wY" role="3clF45">
        <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1vyzkEMtuLK" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2QCVoC3$uIT">
    <property role="TrG5h" value="KeywordColorUtils" />
    <property role="3GE5qa" value="color" />
    <node concept="2tJIrI" id="2QCVoC3$uNT" role="jymVt" />
    <node concept="Wx3nA" id="2QCVoC3$zo2" role="jymVt">
      <property role="TrG5h" value="KEYWORD_LIGHT_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$zo3" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$zo4" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC3Z5z7" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC3Z5A7" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC3Z5A8" role="37wK5m">
            <property role="3cmrfH" value="207" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3Z5A9" role="37wK5m">
            <property role="3cmrfH" value="132" />
          </node>
          <node concept="3cmrfG" id="2QCVoC4gAv_" role="37wK5m">
            <property role="3cmrfH" value="10" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2QCVoC3$zk8" role="jymVt">
      <property role="TrG5h" value="KEYWORD_DARK_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$zk9" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$zka" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC58v6Q" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC58v6R" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC58v6S" role="37wK5m">
            <property role="3cmrfH" value="207" />
          </node>
          <node concept="3cmrfG" id="2QCVoC58v6T" role="37wK5m">
            <property role="3cmrfH" value="132" />
          </node>
          <node concept="3cmrfG" id="2QCVoC58v6U" role="37wK5m">
            <property role="3cmrfH" value="10" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$zaq" role="jymVt" />
    <node concept="Wx3nA" id="2QCVoC3$zwQ" role="jymVt">
      <property role="TrG5h" value="OPTIONAL_KEYWORD_LIGHT_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$zwR" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$zwS" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC43rH6" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC43rH7" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC43rH8" role="37wK5m">
            <property role="3cmrfH" value="255" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43rH9" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
          <node concept="3cmrfG" id="2QCVoC5B0MV" role="37wK5m">
            <property role="3cmrfH" value="117" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2QCVoC3$zzB" role="jymVt">
      <property role="TrG5h" value="OPTIONAL_KEYWORD_DARK_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$zzC" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$zzD" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC3HqSY" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC3HqSZ" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC3Qc7w" role="37wK5m">
            <property role="3cmrfH" value="124" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3Qco2" role="37wK5m">
            <property role="3cmrfH" value="85" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3QcEt" role="37wK5m">
            <property role="3cmrfH" value="85" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$ztS" role="jymVt" />
    <node concept="Wx3nA" id="2QCVoC3$_cr" role="jymVt">
      <property role="TrG5h" value="GENERIC_TYPE_LIGHT_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_cs" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_ct" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC43s4Y" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC43s4Z" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC43s50" role="37wK5m">
            <property role="3cmrfH" value="255" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43s51" role="37wK5m">
            <property role="3cmrfH" value="200" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43s52" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2QCVoC3$_cx" role="jymVt">
      <property role="TrG5h" value="GENERIC_TYPE_DARK_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_cy" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_cz" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC3Hwnx" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC3Hwny" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC3HwPC" role="37wK5m">
            <property role="3cmrfH" value="255" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3Hx5I" role="37wK5m">
            <property role="3cmrfH" value="200" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3HxrR" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC5ummM" role="jymVt" />
    <node concept="Wx3nA" id="2QCVoC3$xwq" role="jymVt">
      <property role="TrG5h" value="PRIMITIVE_TYPE_LIGHT_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$xlp" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$xyI" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC43ssq" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC43ssr" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC43sss" role="37wK5m">
            <property role="3cmrfH" value="144" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43sst" role="37wK5m">
            <property role="3cmrfH" value="111" />
          </node>
          <node concept="3cmrfG" id="2QCVoC58AoA" role="37wK5m">
            <property role="3cmrfH" value="159" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2QCVoC3$xGW" role="jymVt">
      <property role="TrG5h" value="PRIMITIVE_TYPE_DARK_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$xGX" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$xGY" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC3D4qz" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC3D4p3" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC3D4vf" role="37wK5m">
            <property role="3cmrfH" value="159" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3D4IP" role="37wK5m">
            <property role="3cmrfH" value="101" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3D5xv" role="37wK5m">
            <property role="3cmrfH" value="8" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$_hc" role="jymVt" />
    <node concept="Wx3nA" id="2QCVoC3$_l1" role="jymVt">
      <property role="TrG5h" value="COLLECTION_TYPE_LIGHT_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_l2" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_l3" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC43sQq" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC43sQr" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC43sQs" role="37wK5m">
            <property role="3cmrfH" value="88" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43sQt" role="37wK5m">
            <property role="3cmrfH" value="157" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43sQu" role="37wK5m">
            <property role="3cmrfH" value="246" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2QCVoC3$_l7" role="jymVt">
      <property role="TrG5h" value="COLLECTION_TYPE_DARK_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_l8" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_l9" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC3HpEe" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC3HpCI" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC3HpJZ" role="37wK5m">
            <property role="3cmrfH" value="88" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3HpXd" role="37wK5m">
            <property role="3cmrfH" value="157" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3Hqwd" role="37wK5m">
            <property role="3cmrfH" value="246" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$_q0" role="jymVt" />
    <node concept="Wx3nA" id="2QCVoC3$_u9" role="jymVt">
      <property role="TrG5h" value="BOUNDED_CONTEXT_LIGHT_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_ua" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_ub" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC43tgC" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC43tgD" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC5d0VJ" role="37wK5m">
            <property role="3cmrfH" value="107" />
          </node>
          <node concept="3cmrfG" id="2QCVoC5lFdn" role="37wK5m">
            <property role="3cmrfH" value="67" />
          </node>
          <node concept="3cmrfG" id="2QCVoC5pYJo" role="37wK5m">
            <property role="3cmrfH" value="249" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2QCVoC3$_uf" role="jymVt">
      <property role="TrG5h" value="BOUNDED_CONTEXT_DARK_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_ug" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_uh" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC3HxFU" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC3HxFV" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC3HyBx" role="37wK5m">
            <property role="3cmrfH" value="151" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3HyS9" role="37wK5m">
            <property role="3cmrfH" value="118" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3Hz5k" role="37wK5m">
            <property role="3cmrfH" value="169" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$_zm" role="jymVt" />
    <node concept="Wx3nA" id="2QCVoC3$_BN" role="jymVt">
      <property role="TrG5h" value="CONNECTING_COMPONENT_LIGHT_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_BO" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_BP" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC43tFT" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC43tFU" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC43tFV" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43tFW" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43tFX" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2QCVoC3$_BT" role="jymVt">
      <property role="TrG5h" value="CONNECTING_COMPONENT_DARK_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_BU" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_BV" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC3HuUK" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC3HuUL" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC3HuUN" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3Hvto" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3HwbZ" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$_He" role="jymVt" />
    <node concept="Wx3nA" id="2QCVoC3$_LZ" role="jymVt">
      <property role="TrG5h" value="COMMAND_COMPONENT_LIGHT_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_M0" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_M1" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC43u95" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC43u96" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC43u97" role="37wK5m">
            <property role="3cmrfH" value="98" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43u98" role="37wK5m">
            <property role="3cmrfH" value="150" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43u99" role="37wK5m">
            <property role="3cmrfH" value="85" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2QCVoC3$_M5" role="jymVt">
      <property role="TrG5h" value="COMMAND_COMPONENT_DARK_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_M6" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_M7" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC3Hom$" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC3Hol4" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC3HosD" role="37wK5m">
            <property role="3cmrfH" value="98" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3HoDE" role="37wK5m">
            <property role="3cmrfH" value="150" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3HpfE" role="37wK5m">
            <property role="3cmrfH" value="85" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$_RC" role="jymVt" />
    <node concept="Wx3nA" id="2QCVoC3$_WH" role="jymVt">
      <property role="TrG5h" value="QUERY_COMPONENT_LIGHT_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_WI" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_WJ" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC43uBl" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC43uBm" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC43uBn" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43uBo" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
          <node concept="3cmrfG" id="2QCVoC43uBp" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2QCVoC3$_WN" role="jymVt">
      <property role="TrG5h" value="QUERY_COMPONENT_DARK_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2QCVoC3$_WO" role="1B3o_S" />
      <node concept="3uibUv" id="2QCVoC3$_WP" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2QCVoC3HsDE" role="33vP2m">
        <node concept="1pGfFk" id="2QCVoC3HsDF" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="2QCVoC3Htgi" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3HugH" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
          <node concept="3cmrfG" id="2QCVoC3HuCn" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$BMG" role="jymVt" />
    <node concept="2tJIrI" id="2QCVoC3$$TV" role="jymVt" />
    <node concept="2YIFZL" id="2QCVoC3$BVv" role="jymVt">
      <property role="TrG5h" value="getKeywordColors" />
      <node concept="3uibUv" id="2QCVoC3$BVw" role="3clF45">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="2QCVoC3$BVx" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="2QCVoC3$BVy" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QCVoC3$BVz" role="1B3o_S" />
      <node concept="3clFbS" id="2QCVoC3$BV$" role="3clF47">
        <node concept="3clFbF" id="2QCVoC3$BV_" role="3cqZAp">
          <node concept="2ShNRf" id="2QCVoC3$BVA" role="3clFbG">
            <node concept="1pGfFk" id="2QCVoC3$BVB" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
              <node concept="37vLTw" id="2QCVoC3$BVE" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$zo2" resolve="KEYWORD_LIGHT_COLOR" />
              </node>
              <node concept="37vLTw" id="2QCVoC3$BVI" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$zk8" resolve="KEYWORD_DARK_COLOR" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$zaP" role="jymVt" />
    <node concept="2YIFZL" id="2QCVoC3$C6Q" role="jymVt">
      <property role="TrG5h" value="getOptionalKeywordColors" />
      <node concept="3uibUv" id="2QCVoC3$C6R" role="3clF45">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="2QCVoC3$C6S" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="2QCVoC3$C6T" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QCVoC3$C6U" role="1B3o_S" />
      <node concept="3clFbS" id="2QCVoC3$C6V" role="3clF47">
        <node concept="3clFbF" id="2QCVoC3$C6W" role="3cqZAp">
          <node concept="2ShNRf" id="2QCVoC3$C6X" role="3clFbG">
            <node concept="1pGfFk" id="2QCVoC3$C6Y" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
              <node concept="37vLTw" id="2QCVoC3$C71" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$zwQ" resolve="OPTIONAL_KEYWORD_LIGHT_COLOR" />
              </node>
              <node concept="37vLTw" id="2QCVoC3$C75" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$zzB" resolve="OPTIONAL_KEYWORD_DARK_COLOR" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$C1u" role="jymVt" />
    <node concept="2YIFZL" id="2QCVoC3$ClL" role="jymVt">
      <property role="TrG5h" value="getGenericTypeColors" />
      <node concept="3uibUv" id="2QCVoC3$ClM" role="3clF45">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="2QCVoC3$ClN" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="2QCVoC3$ClO" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QCVoC3$ClP" role="1B3o_S" />
      <node concept="3clFbS" id="2QCVoC3$ClQ" role="3clF47">
        <node concept="3clFbF" id="2QCVoC3$ClR" role="3cqZAp">
          <node concept="2ShNRf" id="2QCVoC3$ClS" role="3clFbG">
            <node concept="1pGfFk" id="2QCVoC3$ClT" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
              <node concept="37vLTw" id="2QCVoC3$ClW" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_cr" resolve="GENERIC_TYPE_LIGHT_COLOR" />
              </node>
              <node concept="37vLTw" id="2QCVoC3$Cm0" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_cx" resolve="GENERIC_TYPE_DARK_COLOR" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$BRS" role="jymVt" />
    <node concept="2YIFZL" id="2QCVoC3$uOc" role="jymVt">
      <property role="TrG5h" value="getPrimitiveTypeColors" />
      <node concept="3uibUv" id="2QCVoC3$uUO" role="3clF45">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="2QCVoC3$uWa" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="2QCVoC3$uXI" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QCVoC3$uOf" role="1B3o_S" />
      <node concept="3clFbS" id="2QCVoC3$uOg" role="3clF47">
        <node concept="3clFbF" id="2QCVoC3$v52" role="3cqZAp">
          <node concept="2ShNRf" id="2QCVoC3$v50" role="3clFbG">
            <node concept="1pGfFk" id="2QCVoC3$x3y" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
              <node concept="37vLTw" id="2QCVoC3$xN$" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$xwq" resolve="PRIMITIVE_TYPE_LIGHT_COLOR" />
              </node>
              <node concept="37vLTw" id="2QCVoC3$xUp" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$xGW" resolve="PRIMITIVE_TYPE_DARK_COLOR" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$CEj" role="jymVt" />
    <node concept="2YIFZL" id="2QCVoC3$CPk" role="jymVt">
      <property role="TrG5h" value="getCollectionTypeColors" />
      <node concept="3uibUv" id="2QCVoC3$CPl" role="3clF45">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="2QCVoC3$CPm" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="2QCVoC3$CPn" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QCVoC3$CPo" role="1B3o_S" />
      <node concept="3clFbS" id="2QCVoC3$CPp" role="3clF47">
        <node concept="3clFbF" id="2QCVoC3$CPq" role="3cqZAp">
          <node concept="2ShNRf" id="2QCVoC3$CPr" role="3clFbG">
            <node concept="1pGfFk" id="2QCVoC3$CPs" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
              <node concept="37vLTw" id="2QCVoC3$CPv" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_l1" resolve="COLLECTION_TYPE_LIGHT_COLOR" />
              </node>
              <node concept="37vLTw" id="2QCVoC3$CPz" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_l7" resolve="COLLECTION_TYPE_DARK_COLOR" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$D0F" role="jymVt" />
    <node concept="2YIFZL" id="2QCVoC3$DdF" role="jymVt">
      <property role="TrG5h" value="getBoundedContextColors" />
      <node concept="3uibUv" id="2QCVoC3$DdG" role="3clF45">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="2QCVoC3$DdH" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="2QCVoC3$DdI" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QCVoC3$DdJ" role="1B3o_S" />
      <node concept="3clFbS" id="2QCVoC3$DdK" role="3clF47">
        <node concept="3clFbF" id="2QCVoC3$DdL" role="3cqZAp">
          <node concept="2ShNRf" id="2QCVoC3$DdM" role="3clFbG">
            <node concept="1pGfFk" id="2QCVoC3$DdN" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
              <node concept="37vLTw" id="2QCVoC3$DdQ" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_u9" resolve="BOUNDED_CONTEXT_LIGHT_COLOR" />
              </node>
              <node concept="37vLTw" id="2QCVoC3$DdU" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_uf" resolve="BOUNDED_CONTEXT_DARK_COLOR" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$DqQ" role="jymVt" />
    <node concept="2YIFZL" id="2QCVoC3$DDP" role="jymVt">
      <property role="TrG5h" value="getConnectingComponentColors" />
      <node concept="3uibUv" id="2QCVoC3$DDQ" role="3clF45">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="2QCVoC3$DDR" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="2QCVoC3$DDS" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QCVoC3$DDT" role="1B3o_S" />
      <node concept="3clFbS" id="2QCVoC3$DDU" role="3clF47">
        <node concept="3clFbF" id="2QCVoC3$DDV" role="3cqZAp">
          <node concept="2ShNRf" id="2QCVoC3$DDW" role="3clFbG">
            <node concept="1pGfFk" id="2QCVoC3$DDX" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
              <node concept="37vLTw" id="2QCVoC3$DE0" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_BN" resolve="CONNECTING_COMPONENT_LIGHT_COLOR" />
              </node>
              <node concept="37vLTw" id="2QCVoC3$DE4" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_BT" resolve="CONNECTING_COMPONENT_DARK_COLOR" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$DSl" role="jymVt" />
    <node concept="2YIFZL" id="2QCVoC3$DXO" role="jymVt">
      <property role="TrG5h" value="getCommandComponentColors" />
      <node concept="3uibUv" id="2QCVoC3$DXP" role="3clF45">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="2QCVoC3$DXQ" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="2QCVoC3$DXR" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QCVoC3$DXS" role="1B3o_S" />
      <node concept="3clFbS" id="2QCVoC3$DXT" role="3clF47">
        <node concept="3clFbF" id="2QCVoC3$DXU" role="3cqZAp">
          <node concept="2ShNRf" id="2QCVoC3$DXV" role="3clFbG">
            <node concept="1pGfFk" id="2QCVoC3$DXW" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
              <node concept="37vLTw" id="2QCVoC3$DXZ" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_LZ" resolve="COMMAND_COMPONENT_LIGHT_COLOR" />
              </node>
              <node concept="37vLTw" id="2QCVoC3$DY3" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_M5" resolve="COMMAND_COMPONENT_DARK_COLOR" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$Eee" role="jymVt" />
    <node concept="2YIFZL" id="2QCVoC3$Ex9" role="jymVt">
      <property role="TrG5h" value="getQueryComponentColors" />
      <node concept="3uibUv" id="2QCVoC3$Exa" role="3clF45">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="2QCVoC3$Exb" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="2QCVoC3$Exc" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QCVoC3$Exd" role="1B3o_S" />
      <node concept="3clFbS" id="2QCVoC3$Exe" role="3clF47">
        <node concept="3clFbF" id="2QCVoC3$Exf" role="3cqZAp">
          <node concept="2ShNRf" id="2QCVoC3$Exg" role="3clFbG">
            <node concept="1pGfFk" id="2QCVoC3$Exh" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
              <node concept="37vLTw" id="2QCVoC3$Exk" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_WH" resolve="QUERY_COMPONENT_LIGHT_COLOR" />
              </node>
              <node concept="37vLTw" id="2QCVoC3$Exo" role="37wK5m">
                <ref role="3cqZAo" node="2QCVoC3$_WN" resolve="QUERY_COMPONENT_DARK_COLOR" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QCVoC3$uNY" role="jymVt" />
    <node concept="3Tm1VV" id="2QCVoC3$uIU" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1aRcFPNFjIB">
    <property role="TrG5h" value="KeywordUtil" />
    <node concept="2YIFZL" id="1aRcFPNFjL5" role="jymVt">
      <property role="TrG5h" value="isValidKeyword" />
      <node concept="37vLTG" id="1aRcFPNFjNB" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1aRcFPNFjQO" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="1aRcFPNFjS$" role="3clF45" />
      <node concept="3Tm1VV" id="1aRcFPNFjL8" role="1B3o_S" />
      <node concept="3clFbS" id="1aRcFPNFjL9" role="3clF47">
        <node concept="3cpWs8" id="1aRcFPNFbdR" role="3cqZAp">
          <node concept="3cpWsn" id="1aRcFPNFbdS" role="3cpWs9">
            <property role="TrG5h" value="matchesIdPattern" />
            <node concept="10P_77" id="1aRcFPNFbcf" role="1tU5fm" />
            <node concept="2OqwBi" id="1aRcFPNFbdT" role="33vP2m">
              <node concept="2OqwBi" id="1aRcFPNFbdU" role="2Oq$k0">
                <node concept="liA8E" id="1aRcFPNFbdV" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence)" resolve="matcher" />
                  <node concept="37vLTw" id="1aRcFPNFkg_" role="37wK5m">
                    <ref role="3cqZAo" node="1aRcFPNFjNB" resolve="name" />
                  </node>
                </node>
                <node concept="10M0yZ" id="1aRcFPNFbdX" role="2Oq$k0">
                  <ref role="3cqZAo" to="18ew:~JavaNameUtil.VALID_ID_PATTERN" resolve="VALID_ID_PATTERN" />
                  <ref role="1PxDUh" to="18ew:~JavaNameUtil" resolve="JavaNameUtil" />
                </node>
              </node>
              <node concept="liA8E" id="1aRcFPNFbdY" role="2OqNvi">
                <ref role="37wK5l" to="ni5j:~Matcher.matches()" resolve="matches" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1aRcFPNFbKG" role="3cqZAp">
          <node concept="3cpWsn" id="1aRcFPNFbKH" role="3cpWs9">
            <property role="TrG5h" value="isReservedKeyword" />
            <node concept="10P_77" id="1aRcFPNFbJV" role="1tU5fm" />
            <node concept="2YIFZM" id="1aRcFPNFbKI" role="33vP2m">
              <ref role="1Pybhc" to="18ew:~JavaNameUtil" resolve="JavaNameUtil" />
              <ref role="37wK5l" to="18ew:~JavaNameUtil.isJavaReserved(java.lang.String)" resolve="isJavaReserved" />
              <node concept="37vLTw" id="1aRcFPNFkna" role="37wK5m">
                <ref role="3cqZAo" node="1aRcFPNFjNB" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1aRcFPNFcgx" role="3cqZAp">
          <node concept="1Wc70l" id="1aRcFPNFcI0" role="3clFbG">
            <node concept="3fqX7Q" id="1aRcFPNFcKl" role="3uHU7w">
              <node concept="37vLTw" id="1aRcFPNFcR8" role="3fr31v">
                <ref role="3cqZAo" node="1aRcFPNFbKH" resolve="isReservedKeyword" />
              </node>
            </node>
            <node concept="37vLTw" id="1aRcFPNFcgv" role="3uHU7B">
              <ref role="3cqZAo" node="1aRcFPNFbdS" resolve="matchesIdPattern" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1aRcFPNFjIC" role="1B3o_S" />
  </node>
</model>

