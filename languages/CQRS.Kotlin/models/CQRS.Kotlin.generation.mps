<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:80a70671-192c-4185-9509-8b98e792e24c(CQRS.Kotlin.generation)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="m7gy" ref="r:a27ce5e9-db29-4fc0-925f-cc4b526bab30(CQRS.Kotlin.structure)" />
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="8kqr" ref="r:9ab05d74-4802-4d07-8f30-20e4ca6a3b94(CQRS.Kotlin.util)" />
    <import index="cpc8" ref="r:c29d26de-4040-4764-ba29-6361cc981593(CQRS.Generation.generation)" />
    <import index="3u0l" ref="r:05fbaab0-ab1c-4838-90da-9d54e17b6c69(CQRS.Generation.util)" />
    <import index="7ztp" ref="r:3eb3aafd-620b-4947-940a-c9f6d272b651(CQRS.util)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="sx7w" ref="r:dc830b23-b722-4fd1-8178-0431aafe57ef(CQRS.behavior)" implicit="true" />
    <import index="anwi" ref="r:7c81c792-29f8-43b8-86dd-c441406afee9(CQRS.Generation.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1761385620274348152" name="jetbrains.mps.lang.smodel.structure.SConceptTypeCastExpression" flags="nn" index="2CBFar" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1181952871644" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSubConcepts" flags="nn" index="LSoRf">
        <child id="1182506816063" name="smodel" index="1iTxcG" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="312cEu" id="4p0keayHgO_">
    <property role="TrG5h" value="KoltinDependencyTextConverter" />
    <property role="3GE5qa" value="dependency" />
    <node concept="2tJIrI" id="4p0keayIxLu" role="jymVt" />
    <node concept="312cEg" id="13eBkswPQuZ" role="jymVt">
      <property role="TrG5h" value="textConverter" />
      <node concept="3Tm6S6" id="13eBkswPPOB" role="1B3o_S" />
      <node concept="3uibUv" id="13eBkswPQnc" role="1tU5fm">
        <ref role="3uigEE" node="13eBkswPNEP" resolve="KotlinJavaTypeTextConverter" />
      </node>
      <node concept="2ShNRf" id="13eBkswPRd2" role="33vP2m">
        <node concept="HV5vD" id="13eBkswPRLw" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="HV5vE" node="13eBkswPNEP" resolve="KotlinJavaTypeTextConverter" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="13eBkswPPjf" role="jymVt" />
    <node concept="3clFb_" id="4b$xqUBeH4p" role="jymVt">
      <property role="TrG5h" value="getGenerationTarget" />
      <node concept="3uibUv" id="4b$xqUBeH4q" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
      </node>
      <node concept="3Tm1VV" id="4b$xqUBeH4r" role="1B3o_S" />
      <node concept="3clFbS" id="4b$xqUBeH4t" role="3clF47">
        <node concept="3clFbF" id="4b$xqUBeH4w" role="3cqZAp">
          <node concept="Rm8GO" id="4b$xqUBeIKL" role="3clFbG">
            <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
            <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4b$xqUBeH4u" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4yUYSn0fPt8" role="jymVt" />
    <node concept="3clFb_" id="4p0keayID1o" role="jymVt">
      <property role="TrG5h" value="convertPrimitive" />
      <node concept="37vLTG" id="4p0keayID1p" role="3clF46">
        <property role="TrG5h" value="primitive" />
        <node concept="3Tqbb2" id="4p0keayID1q" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMv" resolve="IPrimitiveType" />
        </node>
      </node>
      <node concept="17QB3L" id="4p0keayID1r" role="3clF45" />
      <node concept="3Tm1VV" id="4p0keayID1s" role="1B3o_S" />
      <node concept="3clFbS" id="4p0keayID1u" role="3clF47">
        <node concept="3clFbF" id="4yUYSn07iUc" role="3cqZAp">
          <node concept="2YIFZM" id="4yUYSn07jym" role="3clFbG">
            <ref role="37wK5l" to="3u0l:4p0keayI3IS" resolve="firstToUpper" />
            <ref role="1Pybhc" to="3u0l:4yUYSn07am5" resolve="StringUtil" />
            <node concept="2OqwBi" id="4yUYSn07jSt" role="37wK5m">
              <node concept="2OqwBi" id="4yUYSn07jSu" role="2Oq$k0">
                <node concept="37vLTw" id="4yUYSn07jSv" role="2Oq$k0">
                  <ref role="3cqZAo" node="4p0keayID1p" resolve="primitive" />
                </node>
                <node concept="2yIwOk" id="4yUYSn07jSw" role="2OqNvi" />
              </node>
              <node concept="3n3YKJ" id="4yUYSn07jSx" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4p0keayID1v" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4p0keayIEkf" role="jymVt" />
    <node concept="3clFb_" id="4p0keayID1y" role="jymVt">
      <property role="TrG5h" value="convertCollection" />
      <node concept="37vLTG" id="4p0keayID1z" role="3clF46">
        <property role="TrG5h" value="collection" />
        <node concept="3Tqbb2" id="4p0keayID1$" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
        </node>
      </node>
      <node concept="17QB3L" id="4p0keayID1_" role="3clF45" />
      <node concept="3Tm1VV" id="4p0keayID1A" role="1B3o_S" />
      <node concept="3clFbS" id="4p0keayID1C" role="3clF47">
        <node concept="3clFbF" id="4yUYSn07l$G" role="3cqZAp">
          <node concept="2OqwBi" id="4yUYSn0oMke" role="3clFbG">
            <node concept="2OqwBi" id="4yUYSn0oJcf" role="2Oq$k0">
              <node concept="2OqwBi" id="4yUYSn0oHfs" role="2Oq$k0">
                <node concept="2YIFZM" id="4yUYSn07l$I" role="2Oq$k0">
                  <ref role="37wK5l" to="3u0l:4p0keayI3IS" resolve="firstToUpper" />
                  <ref role="1Pybhc" to="3u0l:4yUYSn07am5" resolve="StringUtil" />
                  <node concept="2OqwBi" id="4yUYSn07l$J" role="37wK5m">
                    <node concept="2OqwBi" id="4yUYSn07l$K" role="2Oq$k0">
                      <node concept="37vLTw" id="4yUYSn07l$L" role="2Oq$k0">
                        <ref role="3cqZAo" node="4p0keayID1z" resolve="collection" />
                      </node>
                      <node concept="2yIwOk" id="4yUYSn07l$M" role="2OqNvi" />
                    </node>
                    <node concept="3n3YKJ" id="4yUYSn07l$N" role="2OqNvi" />
                  </node>
                </node>
                <node concept="liA8E" id="4yUYSn0oHS$" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                  <node concept="Xl_RD" id="4yUYSn0oIhN" role="37wK5m">
                    <property role="Xl_RC" value="&lt;" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4yUYSn0oJTr" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                <node concept="1rXfSq" id="4yUYSn07ovf" role="37wK5m">
                  <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                  <node concept="2OqwBi" id="4yUYSn07ovg" role="37wK5m">
                    <node concept="37vLTw" id="4yUYSn07ovh" role="2Oq$k0">
                      <ref role="3cqZAo" node="4p0keayID1z" resolve="collection" />
                    </node>
                    <node concept="3TrEf2" id="4yUYSn07ovi" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4yUYSn0oN4A" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
              <node concept="Xl_RD" id="4yUYSn07pCD" role="37wK5m">
                <property role="Xl_RC" value="&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4p0keayID1D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4p0keayIEzC" role="jymVt" />
    <node concept="3clFb_" id="4p0keayID1G" role="jymVt">
      <property role="TrG5h" value="convertMapType" />
      <node concept="37vLTG" id="4p0keayID1H" role="3clF46">
        <property role="TrG5h" value="map" />
        <node concept="3Tqbb2" id="4p0keayID1I" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7wXJBPuINtT" resolve="MapType" />
        </node>
      </node>
      <node concept="17QB3L" id="4p0keayID1J" role="3clF45" />
      <node concept="3Tm1VV" id="4p0keayID1K" role="1B3o_S" />
      <node concept="3clFbS" id="4p0keayID1M" role="3clF47">
        <node concept="3clFbF" id="4p0keayID1P" role="3cqZAp">
          <node concept="2OqwBi" id="4p0keayIXcW" role="3clFbG">
            <node concept="2OqwBi" id="4p0keayIVFj" role="2Oq$k0">
              <node concept="2OqwBi" id="4p0keayITWw" role="2Oq$k0">
                <node concept="2OqwBi" id="4p0keayIR3L" role="2Oq$k0">
                  <node concept="2OqwBi" id="4yUYSn08BxO" role="2Oq$k0">
                    <node concept="Xl_RD" id="4p0keayID1O" role="2Oq$k0">
                      <property role="Xl_RC" value="Map" />
                    </node>
                    <node concept="liA8E" id="4yUYSn08C6l" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                      <node concept="Xl_RD" id="4yUYSn08CpV" role="37wK5m">
                        <property role="Xl_RC" value="&lt;" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4p0keayIR_X" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                    <node concept="1rXfSq" id="4p0keayIRSa" role="37wK5m">
                      <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                      <node concept="2OqwBi" id="4p0keayISvH" role="37wK5m">
                        <node concept="37vLTw" id="4p0keayIShm" role="2Oq$k0">
                          <ref role="3cqZAo" node="4p0keayID1H" resolve="map" />
                        </node>
                        <node concept="3TrEf2" id="4p0keayISR5" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:7wXJBPuINtW" resolve="keyType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4p0keayIUzk" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                  <node concept="Xl_RD" id="4p0keayIUN0" role="37wK5m">
                    <property role="Xl_RC" value=", " />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4p0keayIW31" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                <node concept="1rXfSq" id="4p0keayIWmb" role="37wK5m">
                  <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                  <node concept="2OqwBi" id="4p0keayIWI7" role="37wK5m">
                    <node concept="37vLTw" id="4p0keayIWCf" role="2Oq$k0">
                      <ref role="3cqZAo" node="4p0keayID1H" resolve="map" />
                    </node>
                    <node concept="3TrEf2" id="4p0keayIWXR" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:7wXJBPuINtY" resolve="valueType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4p0keayIXC_" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
              <node concept="Xl_RD" id="4p0keayIY9D" role="37wK5m">
                <property role="Xl_RC" value="&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4p0keayID1N" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4p0keayIEN2" role="jymVt" />
    <node concept="3clFb_" id="4p0keayID1Q" role="jymVt">
      <property role="TrG5h" value="convertImportedType" />
      <node concept="37vLTG" id="4p0keayID1R" role="3clF46">
        <property role="TrG5h" value="importedType" />
        <node concept="3Tqbb2" id="4p0keayID1S" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
        </node>
      </node>
      <node concept="17QB3L" id="4p0keayID1T" role="3clF45" />
      <node concept="3Tm1VV" id="4p0keayID1U" role="1B3o_S" />
      <node concept="3clFbS" id="4p0keayID1W" role="3clF47">
        <node concept="3clFbJ" id="4p0keayJ65F" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="4p0keayJ65H" role="3clFbx">
            <node concept="3cpWs6" id="4p0keayJcmg" role="3cqZAp">
              <node concept="2OqwBi" id="3GrpC3f0TzR" role="3cqZAk">
                <node concept="37vLTw" id="3GrpC3f0TzS" role="2Oq$k0">
                  <ref role="3cqZAo" node="4p0keayID1R" resolve="importedType" />
                </node>
                <node concept="2qgKlT" id="3GrpC3f0TzT" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:4p0keayJ2pN" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4p0keayJbUH" role="3clFbw">
            <node concept="2OqwBi" id="4p0keayJbUJ" role="3fr31v">
              <node concept="37vLTw" id="4p0keayJbUK" role="2Oq$k0">
                <ref role="3cqZAo" node="4p0keayID1R" resolve="importedType" />
              </node>
              <node concept="2qgKlT" id="4p0keayJbUL" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3aCsR_d7tlX" resolve="expectsGenericTypes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4p0keayID1Z" role="3cqZAp">
          <node concept="2OqwBi" id="4p0keayJr8s" role="3clFbG">
            <node concept="2OqwBi" id="4p0keayJhac" role="2Oq$k0">
              <node concept="2OqwBi" id="4p0keayJeL1" role="2Oq$k0">
                <node concept="liA8E" id="4p0keayJfks" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                  <node concept="Xl_RD" id="4p0keayJfA2" role="37wK5m">
                    <property role="Xl_RC" value="&lt;" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3GrpC3f0Udm" role="2Oq$k0">
                  <node concept="37vLTw" id="3GrpC3f0Udn" role="2Oq$k0">
                    <ref role="3cqZAo" node="4p0keayID1R" resolve="importedType" />
                  </node>
                  <node concept="2qgKlT" id="3GrpC3f0Udo" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:4p0keayJ2pN" resolve="getName" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4p0keayJi5T" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                <node concept="2OqwBi" id="4p0keayJpny" role="37wK5m">
                  <node concept="2OqwBi" id="4p0keayJlzS" role="2Oq$k0">
                    <node concept="2OqwBi" id="4p0keayJjpG" role="2Oq$k0">
                      <node concept="37vLTw" id="4p0keayJiYF" role="2Oq$k0">
                        <ref role="3cqZAo" node="4p0keayID1R" resolve="importedType" />
                      </node>
                      <node concept="3Tsc0h" id="4p0keayJjPd" role="2OqNvi">
                        <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="4p0keayJnb7" role="2OqNvi">
                      <node concept="1bVj0M" id="4p0keayJnb9" role="23t8la">
                        <node concept="3clFbS" id="4p0keayJnba" role="1bW5cS">
                          <node concept="3clFbF" id="4p0keayJnAc" role="3cqZAp">
                            <node concept="1rXfSq" id="4p0keayJnAb" role="3clFbG">
                              <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                              <node concept="37vLTw" id="4p0keayJo0s" role="37wK5m">
                                <ref role="3cqZAo" node="4p0keayJnbb" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="4p0keayJnbb" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4p0keayJnbc" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uJxvA" id="4p0keayJpWh" role="2OqNvi">
                    <node concept="Xl_RD" id="4p0keayJqNU" role="3uJOhx">
                      <property role="Xl_RC" value=", " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4p0keayJsIz" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
              <node concept="Xl_RD" id="4p0keayJt7t" role="37wK5m">
                <property role="Xl_RC" value="&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4p0keayID1X" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4p0keayIF2t" role="jymVt" />
    <node concept="3clFb_" id="4p0keayID20" role="jymVt">
      <property role="TrG5h" value="convertJavaDataType" />
      <node concept="37vLTG" id="4p0keayID21" role="3clF46">
        <property role="TrG5h" value="javaDataType" />
        <node concept="3Tqbb2" id="4p0keayID22" role="1tU5fm">
          <ref role="ehGHo" to="3nll:5eyACQI58pp" resolve="JavaDataType" />
        </node>
      </node>
      <node concept="17QB3L" id="4p0keayID23" role="3clF45" />
      <node concept="3Tm1VV" id="4p0keayID24" role="1B3o_S" />
      <node concept="3clFbS" id="4p0keayID26" role="3clF47">
        <node concept="3clFbF" id="13eBkswPSta" role="3cqZAp">
          <node concept="2OqwBi" id="13eBkswPSUZ" role="3clFbG">
            <node concept="37vLTw" id="13eBkswPSt8" role="2Oq$k0">
              <ref role="3cqZAo" node="13eBkswPQuZ" resolve="textConverter" />
            </node>
            <node concept="liA8E" id="13eBkswPTqF" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:13eBkswPGyE" resolve="convertJavaType" />
              <node concept="37vLTw" id="13eBkswPTO5" role="37wK5m">
                <ref role="3cqZAo" node="4p0keayID21" resolve="javaDataType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4p0keayID27" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4p0keayHhMP" role="jymVt" />
    <node concept="3Tm1VV" id="4p0keayHgOA" role="1B3o_S" />
    <node concept="3uibUv" id="4p0keayIxFf" role="EKbjA">
      <ref role="3uigEE" to="cpc8:4p0keayIwoL" resolve="DependencyTextConverter" />
    </node>
  </node>
  <node concept="312cEu" id="4yUYSn0eSfs">
    <property role="TrG5h" value="KotlinDependencyResolver" />
    <property role="3GE5qa" value="dependency" />
    <node concept="2tJIrI" id="4yUYSn0eSix" role="jymVt" />
    <node concept="312cEg" id="4yUYSn0f3X0" role="jymVt">
      <property role="TrG5h" value="boundedContext" />
      <node concept="3Tm6S6" id="4yUYSn0f3kx" role="1B3o_S" />
      <node concept="3Tqbb2" id="4yUYSn0f3Ax" role="1tU5fm">
        <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
      </node>
    </node>
    <node concept="2tJIrI" id="4yUYSn0gkZa" role="jymVt" />
    <node concept="3clFbW" id="4yUYSn0f60d" role="jymVt">
      <node concept="37vLTG" id="4yUYSn0f6i$" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3Tqbb2" id="4yUYSn0f6vm" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
        </node>
      </node>
      <node concept="3cqZAl" id="4yUYSn0f60f" role="3clF45" />
      <node concept="3Tm1VV" id="4yUYSn0f60g" role="1B3o_S" />
      <node concept="3clFbS" id="4yUYSn0f60h" role="3clF47">
        <node concept="3clFbF" id="4yUYSn0f6Dm" role="3cqZAp">
          <node concept="37vLTI" id="4yUYSn0f7H9" role="3clFbG">
            <node concept="37vLTw" id="4yUYSn0f81_" role="37vLTx">
              <ref role="3cqZAo" node="4yUYSn0f6i$" resolve="context" />
            </node>
            <node concept="2OqwBi" id="4yUYSn0f6Q5" role="37vLTJ">
              <node concept="Xjq3P" id="4yUYSn0f6Dl" role="2Oq$k0" />
              <node concept="2OwXpG" id="4yUYSn0f7dK" role="2OqNvi">
                <ref role="2Oxat5" node="4yUYSn0f3X0" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4yUYSn0gl2e" role="jymVt" />
    <node concept="3clFb_" id="4yUYSn0glGh" role="jymVt">
      <property role="TrG5h" value="getBoundedContext" />
      <node concept="3Tm1VV" id="4yUYSn0glGi" role="1B3o_S" />
      <node concept="3Tqbb2" id="4yUYSn0glGk" role="3clF45">
        <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
      </node>
      <node concept="3clFbS" id="4yUYSn0glGl" role="3clF47">
        <node concept="3clFbF" id="4yUYSn0gmPB" role="3cqZAp">
          <node concept="37vLTw" id="4yUYSn0gmPA" role="3clFbG">
            <ref role="3cqZAo" node="4yUYSn0f3X0" resolve="boundedContext" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4yUYSn0glGm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4yUYSn0wlJn" role="jymVt" />
    <node concept="3clFb_" id="4yUYSn0wm2b" role="jymVt">
      <property role="TrG5h" value="getGenerationTarget" />
      <node concept="3Tm1VV" id="4yUYSn0wm2d" role="1B3o_S" />
      <node concept="3uibUv" id="4yUYSn0wm2e" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
      </node>
      <node concept="3clFbS" id="4yUYSn0wm2f" role="3clF47">
        <node concept="3clFbF" id="4yUYSn0wmKk" role="3cqZAp">
          <node concept="Rm8GO" id="4b$xqUAJsKi" role="3clFbG">
            <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
            <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4yUYSn0wm2g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4yUYSn0eSiA" role="jymVt" />
    <node concept="3Tm1VV" id="4yUYSn0eSft" role="1B3o_S" />
    <node concept="3uibUv" id="4yUYSn0eShi" role="EKbjA">
      <ref role="3uigEE" to="cpc8:4yUYSn06Jek" resolve="DependencyResolver" />
    </node>
  </node>
  <node concept="312cEu" id="4b$xqUAZENp">
    <property role="3GE5qa" value="dependency" />
    <property role="TrG5h" value="KotlinImportPathResolver" />
    <node concept="2tJIrI" id="4b$xqUAZEOP" role="jymVt" />
    <node concept="3clFb_" id="4b$xqUAZEPi" role="jymVt">
      <property role="TrG5h" value="resolve" />
      <node concept="37vLTG" id="4b$xqUAZEQi" role="3clF46">
        <property role="TrG5h" value="fileOutoput" />
        <node concept="3Tqbb2" id="4b$xqUAZEQM" role="1tU5fm">
          <ref role="ehGHo" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
        </node>
      </node>
      <node concept="3cqZAl" id="4b$xqUAZEPk" role="3clF45" />
      <node concept="3Tm1VV" id="4b$xqUAZEPl" role="1B3o_S" />
      <node concept="3clFbS" id="4b$xqUAZEPm" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4b$xqUAZEOR" role="jymVt" />
    <node concept="3Tm1VV" id="4b$xqUAZENq" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3JSfbhYdI4F">
    <property role="3GE5qa" value="concept" />
    <property role="TrG5h" value="KotlinConceptMapper" />
    <node concept="2tJIrI" id="3JSfbhYdI5_" role="jymVt" />
    <node concept="312cEg" id="3JSfbhYfHHW" role="jymVt">
      <property role="TrG5h" value="fileOutputMappings" />
      <node concept="3rvAFt" id="3JSfbhYfHI0" role="1tU5fm">
        <node concept="3bZ5Sz" id="3JSfbhYfHI1" role="3rvQeY">
          <ref role="3bZ5Sy" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
        </node>
        <node concept="3bZ5Sz" id="3JSfbhYfHI2" role="3rvSg0">
          <ref role="3bZ5Sy" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3JSfbhYfHHZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3JSfbhYdIKj" role="jymVt" />
    <node concept="312cEg" id="2Np_kya1Swc" role="jymVt">
      <property role="TrG5h" value="elementOutputMappings" />
      <node concept="3rvAFt" id="2Np_kya1Swd" role="1tU5fm">
        <node concept="3bZ5Sz" id="2Np_kya1Swe" role="3rvQeY">
          <ref role="3bZ5Sy" to="anwi:61W7Av0nhkE" resolve="ElementOutput" />
        </node>
        <node concept="3bZ5Sz" id="2Np_kya1Swf" role="3rvSg0">
          <ref role="3bZ5Sy" to="anwi:61W7Av0nhkE" resolve="ElementOutput" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2Np_kya1Swg" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2Np_kya1SeE" role="jymVt" />
    <node concept="3clFbW" id="3JSfbhYfIFp" role="jymVt">
      <node concept="37vLTG" id="3JSfbhYfIO6" role="3clF46">
        <property role="TrG5h" value="cqrsModel" />
        <node concept="H_c77" id="3JSfbhYfIQB" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3JSfbhYfIFr" role="3clF45" />
      <node concept="3Tm1VV" id="3JSfbhYfIFs" role="1B3o_S" />
      <node concept="3clFbS" id="3JSfbhYfIFt" role="3clF47">
        <node concept="3clFbF" id="3JSfbhYfM3B" role="3cqZAp">
          <node concept="1rXfSq" id="3JSfbhYfM3A" role="3clFbG">
            <ref role="37wK5l" node="3JSfbhYfHP6" resolve="initConceptMappings" />
            <node concept="37vLTw" id="3JSfbhYfM7I" role="37wK5m">
              <ref role="3cqZAo" node="3JSfbhYfIO6" resolve="cqrsModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3JSfbhYfI1M" role="jymVt" />
    <node concept="3clFb_" id="3JSfbhYfHP6" role="jymVt">
      <property role="TrG5h" value="initConceptMappings" />
      <node concept="37vLTG" id="3JSfbhYfL$7" role="3clF46">
        <property role="TrG5h" value="cqrsModel" />
        <node concept="H_c77" id="3JSfbhYfLFH" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3JSfbhYfHP9" role="3clF47">
        <node concept="3clFbF" id="3JSfbhYfNxm" role="3cqZAp">
          <node concept="37vLTI" id="3JSfbhYfOCY" role="3clFbG">
            <node concept="37vLTw" id="3JSfbhYfNxk" role="37vLTJ">
              <ref role="3cqZAo" node="3JSfbhYfHHW" resolve="fileOutputMappings" />
            </node>
            <node concept="2ShNRf" id="3JSfbhYfOPO" role="37vLTx">
              <node concept="3rGOSV" id="3JSfbhYfOPP" role="2ShVmc">
                <node concept="3bZ5Sz" id="3JSfbhYfOPQ" role="3rHrn6">
                  <ref role="3bZ5Sy" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
                </node>
                <node concept="3bZ5Sz" id="3JSfbhYfOPR" role="3rHtpV">
                  <ref role="3bZ5Sy" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JSfbhYfJbz" role="3cqZAp">
          <node concept="2OqwBi" id="3JSfbhYfKQr" role="3clFbG">
            <node concept="2OqwBi" id="3JSfbhYfJB2" role="2Oq$k0">
              <node concept="35c_gC" id="3JSfbhYfJbx" role="2Oq$k0">
                <ref role="35c_gD" to="m7gy:4b$xqUBa5Fa" resolve="KotlinFileOutput" />
              </node>
              <node concept="LSoRf" id="3JSfbhYfJU2" role="2OqNvi">
                <node concept="37vLTw" id="3JSfbhYfK2z" role="1iTxcG">
                  <ref role="3cqZAo" node="3JSfbhYfL$7" resolve="cqrsModel" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="3JSfbhYfQ4G" role="2OqNvi">
              <node concept="1bVj0M" id="3JSfbhYfQ4I" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="3JSfbhYfQ4J" role="1bW5cS">
                  <node concept="3clFbF" id="3JSfbhYfR7P" role="3cqZAp">
                    <node concept="37vLTI" id="3JSfbhYfT2E" role="3clFbG">
                      <node concept="37vLTw" id="3JSfbhYfTjI" role="37vLTx">
                        <ref role="3cqZAo" node="3JSfbhYfQ4K" resolve="it" />
                      </node>
                      <node concept="3EllGN" id="3JSfbhYfRv0" role="37vLTJ">
                        <node concept="37vLTw" id="3JSfbhYfR7N" role="3ElQJh">
                          <ref role="3cqZAo" node="3JSfbhYfHHW" resolve="fileOutputMappings" />
                        </node>
                        <node concept="2CBFar" id="3JSfbhYfXI0" role="3ElVtu">
                          <node concept="chp4Y" id="3JSfbhYfXWi" role="3oSUPX">
                            <ref role="cht4Q" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
                          </node>
                          <node concept="2OqwBi" id="3JSfbhYfVZ2" role="1m5AlR">
                            <node concept="37vLTw" id="3JSfbhYfVZ3" role="2Oq$k0">
                              <ref role="3cqZAo" node="3JSfbhYfQ4K" resolve="it" />
                            </node>
                            <node concept="liA8E" id="3JSfbhYfVZ4" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SAbstractConcept.getSuperConcept()" resolve="getSuperConcept" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3JSfbhYfQ4K" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3JSfbhYfQ4L" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kya1RZl" role="3cqZAp" />
        <node concept="3clFbF" id="2Np_kya1WKd" role="3cqZAp">
          <node concept="37vLTI" id="2Np_kya1WKe" role="3clFbG">
            <node concept="37vLTw" id="2Np_kya1WKf" role="37vLTJ">
              <ref role="3cqZAo" node="2Np_kya1Swc" resolve="elementOutputMappings" />
            </node>
            <node concept="2ShNRf" id="2Np_kya1WKg" role="37vLTx">
              <node concept="3rGOSV" id="2Np_kya1WKh" role="2ShVmc">
                <node concept="3bZ5Sz" id="2Np_kya1WKi" role="3rHrn6">
                  <ref role="3bZ5Sy" to="anwi:61W7Av0nhkE" resolve="ElementOutput" />
                </node>
                <node concept="3bZ5Sz" id="2Np_kya1WKj" role="3rHtpV">
                  <ref role="3bZ5Sy" to="anwi:61W7Av0nhkE" resolve="ElementOutput" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Np_kya1WKk" role="3cqZAp">
          <node concept="2OqwBi" id="2Np_kya1WKl" role="3clFbG">
            <node concept="2OqwBi" id="2Np_kya1WKm" role="2Oq$k0">
              <node concept="35c_gC" id="2Np_kya1WKn" role="2Oq$k0">
                <ref role="35c_gD" to="m7gy:2Np_kya0mOE" resolve="KotlinElementOutput" />
              </node>
              <node concept="LSoRf" id="2Np_kya1WKo" role="2OqNvi">
                <node concept="37vLTw" id="2Np_kya1WKp" role="1iTxcG">
                  <ref role="3cqZAo" node="3JSfbhYfL$7" resolve="cqrsModel" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="2Np_kya1WKq" role="2OqNvi">
              <node concept="1bVj0M" id="2Np_kya1WKr" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="2Np_kya1WKs" role="1bW5cS">
                  <node concept="3clFbF" id="2Np_kya1WKt" role="3cqZAp">
                    <node concept="37vLTI" id="2Np_kya1WKu" role="3clFbG">
                      <node concept="37vLTw" id="2Np_kya1WKv" role="37vLTx">
                        <ref role="3cqZAo" node="2Np_kya1WKB" resolve="it" />
                      </node>
                      <node concept="3EllGN" id="2Np_kya1WKw" role="37vLTJ">
                        <node concept="37vLTw" id="2Np_kya1WKx" role="3ElQJh">
                          <ref role="3cqZAo" node="2Np_kya1Swc" resolve="elementOutputMappings" />
                        </node>
                        <node concept="2CBFar" id="2Np_kya1WKy" role="3ElVtu">
                          <node concept="chp4Y" id="2Np_kya1WKz" role="3oSUPX">
                            <ref role="cht4Q" to="anwi:61W7Av0nhkE" resolve="ElementOutput" />
                          </node>
                          <node concept="2OqwBi" id="2Np_kya1WK$" role="1m5AlR">
                            <node concept="37vLTw" id="2Np_kya1WK_" role="2Oq$k0">
                              <ref role="3cqZAo" node="2Np_kya1WKB" resolve="it" />
                            </node>
                            <node concept="liA8E" id="2Np_kya1WKA" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SAbstractConcept.getSuperConcept()" resolve="getSuperConcept" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2Np_kya1WKB" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2Np_kya1WKC" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3JSfbhYfIqM" role="1B3o_S" />
      <node concept="3cqZAl" id="3JSfbhYg0km" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3JSfbhYdLH0" role="jymVt" />
    <node concept="3clFb_" id="3JSfbhYdLPW" role="jymVt">
      <property role="TrG5h" value="getGenerationTarget" />
      <node concept="3Tm1VV" id="3JSfbhYdLPY" role="1B3o_S" />
      <node concept="3uibUv" id="3JSfbhYdLPZ" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
      </node>
      <node concept="3clFbS" id="3JSfbhYdLQ0" role="3clF47">
        <node concept="3clFbF" id="3JSfbhYdM76" role="3cqZAp">
          <node concept="Rm8GO" id="3JSfbhYdMco" role="3clFbG">
            <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
            <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3JSfbhYdLQ1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3JSfbhYdJ1H" role="jymVt" />
    <node concept="3clFb_" id="3JSfbhYdIED" role="jymVt">
      <property role="TrG5h" value="getFileOutputMappings" />
      <node concept="3Tm1VV" id="3JSfbhYdIEE" role="1B3o_S" />
      <node concept="3rvAFt" id="3JSfbhYdIEG" role="3clF45">
        <node concept="3bZ5Sz" id="3JSfbhYdIEH" role="3rvQeY">
          <ref role="3bZ5Sy" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
        </node>
        <node concept="3bZ5Sz" id="3JSfbhYdIEI" role="3rvSg0">
          <ref role="3bZ5Sy" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
        </node>
      </node>
      <node concept="3clFbS" id="3JSfbhYdIEJ" role="3clF47">
        <node concept="3clFbF" id="3JSfbhYdLyT" role="3cqZAp">
          <node concept="37vLTw" id="3JSfbhYdLyS" role="3clFbG">
            <ref role="3cqZAo" node="3JSfbhYfHHW" resolve="fileOutputMappings" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3JSfbhYdIEK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2Np_kya1Z$4" role="jymVt" />
    <node concept="3clFb_" id="2Np_kya201q" role="jymVt">
      <property role="TrG5h" value="getElementOutputMappings" />
      <node concept="3Tm1VV" id="2Np_kya201r" role="1B3o_S" />
      <node concept="3rvAFt" id="2Np_kya201t" role="3clF45">
        <node concept="3bZ5Sz" id="2Np_kya201u" role="3rvQeY">
          <ref role="3bZ5Sy" to="anwi:61W7Av0nhkE" resolve="ElementOutput" />
        </node>
        <node concept="3bZ5Sz" id="2Np_kya201v" role="3rvSg0">
          <ref role="3bZ5Sy" to="anwi:61W7Av0nhkE" resolve="ElementOutput" />
        </node>
      </node>
      <node concept="3clFbS" id="2Np_kya201w" role="3clF47">
        <node concept="3clFbF" id="2Np_kya219n" role="3cqZAp">
          <node concept="37vLTw" id="2Np_kya219m" role="3clFbG">
            <ref role="3cqZAo" node="2Np_kya1Swc" resolve="elementOutputMappings" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Np_kya201x" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3JSfbhYdI4G" role="1B3o_S" />
    <node concept="3uibUv" id="3JSfbhYdI6A" role="EKbjA">
      <ref role="3uigEE" to="cpc8:3JSfbhYdlGO" resolve="ConceptMapper" />
    </node>
  </node>
  <node concept="312cEu" id="13eBkswPNEP">
    <property role="TrG5h" value="KotlinJavaTypeTextConverter" />
    <property role="3GE5qa" value="text" />
    <node concept="2tJIrI" id="13eBkswPNI8" role="jymVt" />
    <node concept="3clFb_" id="13eBkswPNJB" role="jymVt">
      <property role="TrG5h" value="convertPrimitiveType" />
      <node concept="3Tm1VV" id="13eBkswPNJD" role="1B3o_S" />
      <node concept="17QB3L" id="13eBkswPNJE" role="3clF45" />
      <node concept="37vLTG" id="13eBkswPNJF" role="3clF46">
        <property role="TrG5h" value="primitiveType" />
        <node concept="3Tqbb2" id="13eBkswPNJG" role="1tU5fm">
          <ref role="ehGHo" to="tpee:gWaQbR$" resolve="PrimitiveType" />
        </node>
      </node>
      <node concept="3clFbS" id="13eBkswPNJH" role="3clF47">
        <node concept="3clFbF" id="13eBkswRJVY" role="3cqZAp">
          <node concept="1rXfSq" id="13eBkswRJVX" role="3clFbG">
            <ref role="37wK5l" node="13eBkswRGZL" resolve="convertPrimitiveType" />
            <node concept="2OqwBi" id="13eBkswRKBv" role="37wK5m">
              <node concept="37vLTw" id="13eBkswRKk7" role="2Oq$k0">
                <ref role="3cqZAo" node="13eBkswPNJF" resolve="primitiveType" />
              </node>
              <node concept="2yIwOk" id="13eBkswRKXA" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="13eBkswPNJI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="13eBkswQ2$Q" role="jymVt" />
    <node concept="3clFb_" id="13eBkswRGZL" role="jymVt">
      <property role="TrG5h" value="convertPrimitiveType" />
      <node concept="3Tm1VV" id="13eBkswRGZM" role="1B3o_S" />
      <node concept="17QB3L" id="13eBkswRGZN" role="3clF45" />
      <node concept="37vLTG" id="13eBkswRGZO" role="3clF46">
        <property role="TrG5h" value="primitiveTypeConcept" />
        <node concept="3bZ5Sz" id="13eBkswRIrG" role="1tU5fm">
          <ref role="3bZ5Sy" to="tpee:gWaQbR$" resolve="PrimitiveType" />
        </node>
      </node>
      <node concept="3clFbS" id="13eBkswRGZQ" role="3clF47">
        <node concept="1_3QMa" id="13eBkswRGZR" role="3cqZAp">
          <node concept="1pnPoh" id="13eBkswRGZS" role="1_3QMm">
            <node concept="3gn64h" id="13eBkswRGZT" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:f_0P_4Y" resolve="BooleanType" />
            </node>
            <node concept="3clFbS" id="13eBkswRGZU" role="1pnPq1">
              <node concept="3cpWs6" id="13eBkswRGZV" role="3cqZAp">
                <node concept="Xl_RD" id="13eBkswRGZW" role="3cqZAk">
                  <property role="Xl_RC" value="Boolean" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="13eBkswRGZX" role="1_3QMm">
            <node concept="3gn64h" id="13eBkswRGZY" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:f_0Pron" resolve="ByteType" />
            </node>
            <node concept="3clFbS" id="13eBkswRGZZ" role="1pnPq1">
              <node concept="3cpWs6" id="13eBkswRH00" role="3cqZAp">
                <node concept="Xl_RD" id="13eBkswRH01" role="3cqZAk">
                  <property role="Xl_RC" value="Byte" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="13eBkswRH02" role="1_3QMm">
            <node concept="3gn64h" id="13eBkswRH03" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:f_0PfwA" resolve="CharType" />
            </node>
            <node concept="3clFbS" id="13eBkswRH04" role="1pnPq1">
              <node concept="3cpWs6" id="13eBkswRH05" role="3cqZAp">
                <node concept="Xl_RD" id="13eBkswRH06" role="3cqZAk">
                  <property role="Xl_RC" value="Char" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="13eBkswRH07" role="1_3QMm">
            <node concept="3gn64h" id="13eBkswRH08" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:f_0P56A" resolve="DoubleType" />
            </node>
            <node concept="3clFbS" id="13eBkswRH09" role="1pnPq1">
              <node concept="3cpWs6" id="13eBkswRH0a" role="3cqZAp">
                <node concept="Xl_RD" id="13eBkswRH0b" role="3cqZAk">
                  <property role="Xl_RC" value="Double" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="13eBkswRH0c" role="1_3QMm">
            <node concept="3gn64h" id="13eBkswRH0d" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:f_0OMvX" resolve="FloatType" />
            </node>
            <node concept="3clFbS" id="13eBkswRH0e" role="1pnPq1">
              <node concept="3cpWs6" id="13eBkswRH0f" role="3cqZAp">
                <node concept="Xl_RD" id="13eBkswRH0g" role="3cqZAk">
                  <property role="Xl_RC" value="FLoat" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="13eBkswRH0h" role="1_3QMm">
            <node concept="3gn64h" id="13eBkswRH0i" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:f_0OyhT" resolve="IntegerType" />
            </node>
            <node concept="3clFbS" id="13eBkswRH0j" role="1pnPq1">
              <node concept="3cpWs6" id="13eBkswRH0k" role="3cqZAp">
                <node concept="Xl_RD" id="13eBkswRH0l" role="3cqZAk">
                  <property role="Xl_RC" value="Integer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="13eBkswRH0m" role="1_3QMm">
            <node concept="3gn64h" id="13eBkswRH0n" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:fzcpWvN" resolve="LongType" />
            </node>
            <node concept="3clFbS" id="13eBkswRH0o" role="1pnPq1">
              <node concept="3cpWs6" id="13eBkswRH0p" role="3cqZAp">
                <node concept="Xl_RD" id="13eBkswRH0q" role="3cqZAk">
                  <property role="Xl_RC" value="Long" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="13eBkswRH0r" role="1_3QMm">
            <node concept="3gn64h" id="13eBkswRH0s" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:f_0N3wd" resolve="ShortType" />
            </node>
            <node concept="3clFbS" id="13eBkswRH0t" role="1pnPq1">
              <node concept="3cpWs6" id="13eBkswRH0u" role="3cqZAp">
                <node concept="Xl_RD" id="13eBkswRH0v" role="3cqZAk">
                  <property role="Xl_RC" value="Short" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="13eBkswRH0w" role="1_3QMm">
            <node concept="3gn64h" id="13eBkswRH0x" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:hP7QB7G" resolve="StringType" />
            </node>
            <node concept="3clFbS" id="13eBkswRH0y" role="1pnPq1">
              <node concept="3cpWs6" id="13eBkswRH0z" role="3cqZAp">
                <node concept="Xl_RD" id="13eBkswRH0$" role="3cqZAk">
                  <property role="Xl_RC" value="String" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="13eBkswRH0A" role="1_3QMn">
            <ref role="3cqZAo" node="13eBkswRGZO" resolve="primitiveTypeConcept" />
          </node>
        </node>
        <node concept="3clFbH" id="13eBkswRH0C" role="3cqZAp" />
        <node concept="YS8fn" id="13eBkswRH0D" role="3cqZAp">
          <node concept="2ShNRf" id="13eBkswRH0E" role="YScLw">
            <node concept="1pGfFk" id="13eBkswRH0F" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="3cpWs3" id="13eBkswRH0G" role="37wK5m">
                <node concept="37vLTw" id="13eBkswRH0H" role="3uHU7w">
                  <ref role="3cqZAo" node="13eBkswRGZO" resolve="primitiveTypeConcept" />
                </node>
                <node concept="Xl_RD" id="13eBkswRH0I" role="3uHU7B">
                  <property role="Xl_RC" value="Could not resolve primitive: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="13eBkswRGN8" role="jymVt" />
    <node concept="3clFb_" id="13eBkswPNJL" role="jymVt">
      <property role="TrG5h" value="convertStringType" />
      <node concept="3Tm1VV" id="13eBkswPNJN" role="1B3o_S" />
      <node concept="17QB3L" id="13eBkswPNJO" role="3clF45" />
      <node concept="37vLTG" id="13eBkswPNJP" role="3clF46">
        <property role="TrG5h" value="stringType" />
        <node concept="3Tqbb2" id="13eBkswPNJQ" role="1tU5fm">
          <ref role="ehGHo" to="tpee:hP7QB7G" resolve="StringType" />
        </node>
      </node>
      <node concept="3clFbS" id="13eBkswPNJR" role="3clF47">
        <node concept="3clFbF" id="13eBkswPNJU" role="3cqZAp">
          <node concept="Xl_RD" id="13eBkswPNJT" role="3clFbG">
            <property role="Xl_RC" value="String" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="13eBkswPNJS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="13eBkswQ2F5" role="jymVt" />
    <node concept="3clFb_" id="13eBkswPNJV" role="jymVt">
      <property role="TrG5h" value="convertArrayType" />
      <node concept="3Tm1VV" id="13eBkswPNJX" role="1B3o_S" />
      <node concept="17QB3L" id="13eBkswPNJY" role="3clF45" />
      <node concept="37vLTG" id="13eBkswPNJZ" role="3clF46">
        <property role="TrG5h" value="arrayType" />
        <node concept="3Tqbb2" id="13eBkswPNK0" role="1tU5fm">
          <ref role="ehGHo" to="tpee:f_0Q1BR" resolve="ArrayType" />
        </node>
      </node>
      <node concept="3clFbS" id="13eBkswPNK1" role="3clF47">
        <node concept="3clFbF" id="13eBkswPNK4" role="3cqZAp">
          <node concept="2OqwBi" id="13eBkswROGM" role="3clFbG">
            <node concept="2OqwBi" id="13eBkswRPOU" role="2Oq$k0">
              <node concept="2OqwBi" id="13eBkswRMOm" role="2Oq$k0">
                <node concept="Xl_RD" id="13eBkswPNK3" role="2Oq$k0">
                  <property role="Xl_RC" value="Array" />
                </node>
                <node concept="liA8E" id="13eBkswRNi1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                  <node concept="Xl_RD" id="13eBkswRNzQ" role="37wK5m">
                    <property role="Xl_RC" value="&lt;" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="13eBkswRQ7R" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                <node concept="1rXfSq" id="13eBkswRQlk" role="37wK5m">
                  <ref role="37wK5l" to="cpc8:13eBkswPGBQ" resolve="convertType" />
                  <node concept="2OqwBi" id="13eBkswRQNt" role="37wK5m">
                    <node concept="37vLTw" id="13eBkswRQ$9" role="2Oq$k0">
                      <ref role="3cqZAo" node="13eBkswPNJZ" resolve="arrayType" />
                    </node>
                    <node concept="3TrEf2" id="13eBkswRRcJ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:f_0Q1BS" resolve="componentType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="13eBkswRPgj" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
              <node concept="Xl_RD" id="13eBkswRPtj" role="37wK5m">
                <property role="Xl_RC" value="&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="13eBkswPNK2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="13eBkswQ2Ll" role="jymVt" />
    <node concept="3clFb_" id="13eBkswPNK5" role="jymVt">
      <property role="TrG5h" value="convertClassifierType" />
      <node concept="3Tm1VV" id="13eBkswPNK7" role="1B3o_S" />
      <node concept="17QB3L" id="13eBkswPNK8" role="3clF45" />
      <node concept="37vLTG" id="13eBkswPNK9" role="3clF46">
        <property role="TrG5h" value="classifierType" />
        <node concept="3Tqbb2" id="13eBkswPNKa" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
        </node>
      </node>
      <node concept="3clFbS" id="13eBkswPNKb" role="3clF47">
        <node concept="3cpWs8" id="13eBkswRCew" role="3cqZAp">
          <node concept="3cpWsn" id="13eBkswRCex" role="3cpWs9">
            <property role="TrG5h" value="primitive" />
            <node concept="3bZ5Sz" id="13eBkswRC8i" role="1tU5fm">
              <ref role="3bZ5Sy" to="tpee:gWaQbR$" resolve="PrimitiveType" />
            </node>
            <node concept="2YIFZM" id="13eBkswRCey" role="33vP2m">
              <ref role="37wK5l" to="7ztp:pkUpORyroA" resolve="getPrimitiveConceptOf" />
              <ref role="1Pybhc" to="7ztp:pkUpORtaEE" resolve="JavaTypeCheckUtils" />
              <node concept="37vLTw" id="13eBkswRCez" role="37wK5m">
                <ref role="3cqZAo" node="13eBkswPNK9" resolve="classifierType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="13eBkswRCEe" role="3cqZAp" />
        <node concept="3clFbJ" id="13eBkswRD8_" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="13eBkswRD8B" role="3clFbx">
            <node concept="3cpWs6" id="13eBkswRE$y" role="3cqZAp">
              <node concept="1rXfSq" id="13eBkswREUT" role="3cqZAk">
                <ref role="37wK5l" node="13eBkswRGZL" resolve="convertPrimitiveType" />
                <node concept="37vLTw" id="13eBkswRF6K" role="37wK5m">
                  <ref role="3cqZAo" node="13eBkswRCex" resolve="primitive" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="13eBkswREgI" role="3clFbw">
            <node concept="10Nm6u" id="13eBkswREql" role="3uHU7w" />
            <node concept="37vLTw" id="13eBkswRDhp" role="3uHU7B">
              <ref role="3cqZAo" node="13eBkswRCex" resolve="primitive" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="13eBksx7gP1" role="3cqZAp" />
        <node concept="3clFbJ" id="13eBksx7hEA" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="13eBksx7hEC" role="3clFbx">
            <node concept="3cpWs6" id="13eBksx7mRU" role="3cqZAp">
              <node concept="1rXfSq" id="13eBksx7nRU" role="3cqZAk">
                <ref role="37wK5l" node="13eBkswPNJL" resolve="convertStringType" />
                <node concept="2ShNRf" id="13eBksx7of5" role="37wK5m">
                  <node concept="3zrR0B" id="13eBksx7oSS" role="2ShVmc">
                    <node concept="3Tqbb2" id="13eBksx7pdv" role="3zrR0E">
                      <ref role="ehGHo" to="tpee:hP7QB7G" resolve="StringType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="13eBksx7kxA" role="3clFbw">
            <node concept="2OqwBi" id="13eBksx7iAb" role="3uHU7B">
              <node concept="37vLTw" id="13eBksx7i4X" role="2Oq$k0">
                <ref role="3cqZAo" node="13eBkswPNK9" resolve="classifierType" />
              </node>
              <node concept="2qgKlT" id="13eBksx7j7R" role="2OqNvi">
                <ref role="37wK5l" to="tpek:7F81Cd2C7e3" resolve="jniSignature" />
              </node>
            </node>
            <node concept="10M0yZ" id="13eBksxiQhs" role="3uHU7w">
              <ref role="3cqZAo" to="7ztp:13eBksxiB$1" resolve="STRING_JNI" />
              <ref role="1PxDUh" to="7ztp:pkUpORtaEE" resolve="JavaTypeCheckUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="13eBksx7gRG" role="3cqZAp" />
        <node concept="3cpWs8" id="13eBkswS0nl" role="3cqZAp">
          <node concept="3cpWsn" id="13eBkswS0nm" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="13eBkswS0b1" role="1tU5fm" />
            <node concept="2OqwBi" id="13eBkswS0nn" role="33vP2m">
              <node concept="2OqwBi" id="13eBkswS0no" role="2Oq$k0">
                <node concept="37vLTw" id="13eBkswS0np" role="2Oq$k0">
                  <ref role="3cqZAo" node="13eBkswPNK9" resolve="classifierType" />
                </node>
                <node concept="3TrEf2" id="13eBkswS0nq" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                </node>
              </node>
              <node concept="3TrcHB" id="13eBkswS0nr" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13eBkswS1l7" role="3cqZAp">
          <node concept="3clFbS" id="13eBkswS1l9" role="3clFbx">
            <node concept="3clFbF" id="13eBkswS6Ip" role="3cqZAp">
              <node concept="37vLTI" id="13eBkswSocg" role="3clFbG">
                <node concept="2OqwBi" id="13eBkswSrzb" role="37vLTx">
                  <node concept="2OqwBi" id="13eBkswSqpS" role="2Oq$k0">
                    <node concept="2OqwBi" id="13eBkswSoEb" role="2Oq$k0">
                      <node concept="37vLTw" id="13eBkswSorV" role="2Oq$k0">
                        <ref role="3cqZAo" node="13eBkswS0nm" resolve="result" />
                      </node>
                      <node concept="liA8E" id="13eBkswSpnh" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                        <node concept="Xl_RD" id="13eBkswSpA2" role="37wK5m">
                          <property role="Xl_RC" value="&lt;" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="13eBkswSr0M" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                      <node concept="2OqwBi" id="13eBkswSjUy" role="37wK5m">
                        <node concept="2OqwBi" id="13eBkswSeSi" role="2Oq$k0">
                          <node concept="2OqwBi" id="13eBkswSbUE" role="2Oq$k0">
                            <node concept="37vLTw" id="13eBkswSbrt" role="2Oq$k0">
                              <ref role="3cqZAo" node="13eBkswPNK9" resolve="classifierType" />
                            </node>
                            <node concept="3Tsc0h" id="13eBkswScm0" role="2OqNvi">
                              <ref role="3TtcxE" to="tpee:g91_B6F" resolve="parameter" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="13eBkswShSX" role="2OqNvi">
                            <node concept="1bVj0M" id="13eBkswShSZ" role="23t8la">
                              <node concept="3clFbS" id="13eBkswShT0" role="1bW5cS">
                                <node concept="3clFbF" id="13eBkswSiUM" role="3cqZAp">
                                  <node concept="1rXfSq" id="13eBkswSiUL" role="3clFbG">
                                    <ref role="37wK5l" to="cpc8:13eBkswPGBQ" resolve="convertType" />
                                    <node concept="37vLTw" id="13eBkswSjdG" role="37wK5m">
                                      <ref role="3cqZAo" node="13eBkswShT1" resolve="type" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="13eBkswShT1" role="1bW2Oz">
                                <property role="TrG5h" value="type" />
                                <node concept="2jxLKc" id="13eBkswShT2" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uJxvA" id="13eBkswSkr1" role="2OqNvi">
                          <node concept="Xl_RD" id="13eBkswSmo3" role="3uJOhx">
                            <property role="Xl_RC" value=", " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="13eBkswSs4P" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                    <node concept="Xl_RD" id="13eBkswSsr8" role="37wK5m">
                      <property role="Xl_RC" value="&gt;" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="13eBkswS6In" role="37vLTJ">
                  <ref role="3cqZAo" node="13eBkswS0nm" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="13eBkswS4kY" role="3clFbw">
            <node concept="2OqwBi" id="13eBkswS1QZ" role="2Oq$k0">
              <node concept="37vLTw" id="13eBkswS1_$" role="2Oq$k0">
                <ref role="3cqZAo" node="13eBkswPNK9" resolve="classifierType" />
              </node>
              <node concept="3Tsc0h" id="13eBkswS24I" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:g91_B6F" resolve="parameter" />
              </node>
            </node>
            <node concept="3GX2aA" id="13eBkswS6hh" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="13eBkswRT_R" role="3cqZAp">
          <node concept="37vLTw" id="13eBkswS0ns" role="3clFbG">
            <ref role="3cqZAo" node="13eBkswS0nm" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="13eBkswPNKc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="13eBkswPNId" role="jymVt" />
    <node concept="2tJIrI" id="p4fyl5BD_5" role="jymVt" />
    <node concept="3clFb_" id="p4fyl5BEvm" role="jymVt">
      <property role="TrG5h" value="convertWildCardType" />
      <node concept="3Tm1VV" id="p4fyl5BEvo" role="1B3o_S" />
      <node concept="17QB3L" id="p4fyl5BEvp" role="3clF45" />
      <node concept="37vLTG" id="p4fyl5BEvq" role="3clF46">
        <property role="TrG5h" value="wildCardType" />
        <node concept="3Tqbb2" id="p4fyl5BEvr" role="1tU5fm">
          <ref role="ehGHo" to="tpee:h3qTviz" resolve="WildCardType" />
        </node>
      </node>
      <node concept="3clFbS" id="p4fyl5BEvs" role="3clF47">
        <node concept="3clFbF" id="p4fyl5BEvv" role="3cqZAp">
          <node concept="Xl_RD" id="p4fyl5BEvu" role="3clFbG">
            <property role="Xl_RC" value="*" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="p4fyl5BEvt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="p4fyl5BDC2" role="jymVt" />
    <node concept="3Tm1VV" id="13eBkswPNEQ" role="1B3o_S" />
    <node concept="3uibUv" id="13eBkswPNHF" role="EKbjA">
      <ref role="3uigEE" to="cpc8:13eBkswPFvB" resolve="JavaTypeTextConverter" />
    </node>
  </node>
</model>

