<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:536879c6-46f8-4c9c-860d-b388e5bcaaf0(CQRS.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="sx7w" ref="r:dc830b23-b722-4fd1-8178-0431aafe57ef(CQRS.behavior)" />
    <import index="7ztp" ref="r:3eb3aafd-620b-4947-940a-c9f6d272b651(CQRS.util)" />
    <import index="4d66" ref="r:960662d9-c1ee-48af-b5a5-518d2ac1ca55(CQRS.helper)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods">
      <concept id="8022092943110829337" name="jetbrains.mps.baseLanguage.extensionMethods.structure.BaseExtensionMethodContainer" flags="ng" index="a7sou">
        <child id="8022092943110829339" name="methods" index="a7sos" />
      </concept>
      <concept id="8022092943109322131" name="jetbrains.mps.baseLanguage.extensionMethods.structure.SimpleExtensionMethodsContainer" flags="ng" index="apGqk" />
      <concept id="1550313277221324859" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodCall" flags="nn" index="AQDAd" />
      <concept id="1550313277222152185" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodDeclaration" flags="ng" index="ATzpf">
        <child id="8022092943109605394" name="extendedType" index="aoRGl" />
      </concept>
      <concept id="3316739663067157299" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ThisExtensionExpression" flags="nn" index="2V_BSl" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
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
      <concept id="5779574625832259537" name="jetbrains.mps.lang.smodel.structure.EnumMember_PresentationOperation" flags="ng" index="1XCIdh" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
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
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
    </language>
  </registry>
  <node concept="18kY7G" id="awtshk8DUn">
    <property role="TrG5h" value="check_BoundedContext" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="awtshk8DUo" role="18ibNy">
      <node concept="3clFbF" id="awtshkdHTl" role="3cqZAp">
        <node concept="2OqwBi" id="awtshkdHTm" role="3clFbG">
          <node concept="2OqwBi" id="awtshkdHTn" role="2Oq$k0">
            <node concept="1YBJjd" id="awtshkdHTo" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshk8DUq" resolve="boundedContext" />
            </node>
            <node concept="2qgKlT" id="awtshkdHTp" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
            </node>
          </node>
          <node concept="AQDAd" id="awtshkdHTq" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="awtshkdHTr" role="37wK5m">
              <node concept="37vLTG" id="awtshkdHTs" role="1bW2Oz">
                <property role="TrG5h" value="valueObject" />
                <node concept="3Tqbb2" id="awtshkdHTt" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="awtshkdHTu" role="1bW5cS">
                <node concept="2MkqsV" id="awtshkdHTv" role="3cqZAp">
                  <node concept="Xl_RD" id="awtshkdHTw" role="2MkJ7o">
                    <property role="Xl_RC" value="Value object name already defined" />
                  </node>
                  <node concept="37vLTw" id="awtshkdHTx" role="1urrMF">
                    <ref role="3cqZAo" node="awtshkdHTs" resolve="valueObject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="E4RYEam0n1" role="3cqZAp" />
      <node concept="3clFbF" id="awtshkdHKB" role="3cqZAp">
        <node concept="2OqwBi" id="awtshkdHKC" role="3clFbG">
          <node concept="2OqwBi" id="awtshkdHKD" role="2Oq$k0">
            <node concept="1YBJjd" id="awtshkdHKE" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshk8DUq" resolve="boundedContext" />
            </node>
            <node concept="2qgKlT" id="awtshkdHKF" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:7fqk8p41AIx" resolve="entities" />
            </node>
          </node>
          <node concept="AQDAd" id="awtshkdHKG" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="awtshkdHKH" role="37wK5m">
              <node concept="37vLTG" id="awtshkdHKI" role="1bW2Oz">
                <property role="TrG5h" value="entity" />
                <node concept="3Tqbb2" id="awtshkdHKJ" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="awtshkdHKK" role="1bW5cS">
                <node concept="2MkqsV" id="awtshkdHKL" role="3cqZAp">
                  <node concept="Xl_RD" id="awtshkdHKM" role="2MkJ7o">
                    <property role="Xl_RC" value="Entity name already defined" />
                  </node>
                  <node concept="37vLTw" id="awtshkdHKN" role="1urrMF">
                    <ref role="3cqZAo" node="awtshkdHKI" resolve="entity" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="4LpUh3UUjfL" role="3cqZAp" />
      <node concept="3clFbF" id="awtshkdHAS" role="3cqZAp">
        <node concept="2OqwBi" id="awtshkdHAT" role="3clFbG">
          <node concept="2OqwBi" id="awtshkdHAU" role="2Oq$k0">
            <node concept="1YBJjd" id="awtshkdHAV" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshk8DUq" resolve="boundedContext" />
            </node>
            <node concept="2qgKlT" id="awtshkdHAW" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
            </node>
          </node>
          <node concept="AQDAd" id="awtshkdHAX" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="awtshkdHAY" role="37wK5m">
              <node concept="37vLTG" id="awtshkdHAZ" role="1bW2Oz">
                <property role="TrG5h" value="aggregate" />
                <node concept="3Tqbb2" id="awtshkdHB0" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="awtshkdHB1" role="1bW5cS">
                <node concept="2MkqsV" id="awtshkdHB2" role="3cqZAp">
                  <node concept="Xl_RD" id="awtshkdHB3" role="2MkJ7o">
                    <property role="Xl_RC" value="Aggregate root name already defined" />
                  </node>
                  <node concept="37vLTw" id="awtshkdHB4" role="1urrMF">
                    <ref role="3cqZAo" node="awtshkdHAZ" resolve="aggregate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="4LpUh3UUq5F" role="3cqZAp" />
      <node concept="3clFbF" id="awtshkcZSI" role="3cqZAp">
        <node concept="2OqwBi" id="awtshkd0OU" role="3clFbG">
          <node concept="2OqwBi" id="awtshkd0aG" role="2Oq$k0">
            <node concept="1YBJjd" id="awtshkcZSG" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshk8DUq" resolve="boundedContext" />
            </node>
            <node concept="2qgKlT" id="awtshkd0$R" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
            </node>
          </node>
          <node concept="AQDAd" id="awtshkd33a" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="awtshkd3Rw" role="37wK5m">
              <node concept="37vLTG" id="awtshkd45o" role="1bW2Oz">
                <property role="TrG5h" value="dto" />
                <node concept="3Tqbb2" id="awtshkd4dj" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="awtshkd3Ry" role="1bW5cS">
                <node concept="2MkqsV" id="awtshkd4n7" role="3cqZAp">
                  <node concept="Xl_RD" id="awtshkd4p8" role="2MkJ7o">
                    <property role="Xl_RC" value="DTO name already defined" />
                  </node>
                  <node concept="37vLTw" id="awtshkd4ES" role="1urrMF">
                    <ref role="3cqZAo" node="awtshkd45o" resolve="dto" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="awtshk8DUq" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="apGqk" id="awtshkcLyH">
    <property role="TrG5h" value="INamedConceptExtensions" />
    <property role="3GE5qa" value="extensions" />
    <node concept="ATzpf" id="awtshkcLyI" role="a7sos">
      <property role="TrG5h" value="forEachDuplicateName" />
      <node concept="37vLTG" id="awtshkcXKt" role="3clF46">
        <property role="TrG5h" value="callback" />
        <node concept="1ajhzC" id="awtshkcY6B" role="1tU5fm">
          <node concept="3cqZAl" id="awtshkcY76" role="1ajl9A" />
          <node concept="3Tqbb2" id="awtshkcY8B" role="1ajw0F">
            <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="awtshkcLyJ" role="1B3o_S" />
      <node concept="3cqZAl" id="awtshkcLza" role="3clF45" />
      <node concept="3clFbS" id="awtshkcLyL" role="3clF47">
        <node concept="3clFbJ" id="3FBObrp3hsz" role="3cqZAp">
          <node concept="3clFbS" id="3FBObrp3hs_" role="3clFbx">
            <node concept="3cpWs6" id="3FBObrp3lXe" role="3cqZAp" />
          </node>
          <node concept="3eOVzh" id="3FBObrp3mb9" role="3clFbw">
            <node concept="2OqwBi" id="3FBObrp3lpI" role="3uHU7B">
              <node concept="2V_BSl" id="3FBObrp3lkt" role="2Oq$k0" />
              <node concept="34oBXx" id="3FBObrp3l$8" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="3FBObrp3moE" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3FBObrp3hkV" role="3cqZAp" />
        <node concept="3cpWs8" id="3FBObrp39uu" role="3cqZAp">
          <node concept="3cpWsn" id="3FBObrp39ux" role="3cpWs9">
            <property role="TrG5h" value="nameIndexMap" />
            <node concept="3rvAFt" id="3FBObrp39uo" role="1tU5fm">
              <node concept="17QB3L" id="3FBObrp39B3" role="3rvQeY" />
              <node concept="10Oyi0" id="3FBObrp39K8" role="3rvSg0" />
            </node>
            <node concept="2ShNRf" id="3FBObrp3aog" role="33vP2m">
              <node concept="3rGOSV" id="3FBObrp3ao7" role="2ShVmc">
                <node concept="17QB3L" id="3FBObrp3ao8" role="3rHrn6" />
                <node concept="10Oyi0" id="3FBObrp3ao9" role="3rHtpV" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3FBObrp3pmz" role="3cqZAp">
          <node concept="3cpWsn" id="3FBObrp3pm$" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="_YKpA" id="3FBObrp3pj0" role="1tU5fm">
              <node concept="3Tqbb2" id="3FBObrp3pj3" role="_ZDj9">
                <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
            <node concept="2OqwBi" id="3FBObrp3pm_" role="33vP2m">
              <node concept="2V_BSl" id="3FBObrp3pmA" role="2Oq$k0" />
              <node concept="ANE8D" id="3FBObrp3pmB" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3FBObrp3o8Q" role="3cqZAp" />
        <node concept="1Dw8fO" id="3FBObrp3ei8" role="3cqZAp">
          <node concept="3clFbS" id="3FBObrp3eia" role="2LFqv$">
            <node concept="3cpWs8" id="3FBObrp3AuZ" role="3cqZAp">
              <node concept="3cpWsn" id="3FBObrp3Av0" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3FBObrp3ApW" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
                <node concept="1y4W85" id="3FBObrp3Av1" role="33vP2m">
                  <node concept="37vLTw" id="3FBObrp3Av2" role="1y58nS">
                    <ref role="3cqZAo" node="3FBObrp3eib" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="3FBObrp3Av3" role="1y566C">
                    <ref role="3cqZAo" node="3FBObrp3pm$" resolve="nodes" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3FBObrp3_6_" role="3cqZAp" />
            <node concept="3clFbJ" id="3FBObrp3DNq" role="3cqZAp">
              <node concept="3clFbS" id="3FBObrp3DNs" role="3clFbx">
                <node concept="3N13vt" id="3FBObrp3Gt1" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="3FBObrp3FOX" role="3clFbw">
                <node concept="10Nm6u" id="3FBObrp3Ghh" role="3uHU7w" />
                <node concept="2OqwBi" id="3FBObrp3ErV" role="3uHU7B">
                  <node concept="37vLTw" id="3FBObrp3E8$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3FBObrp3Av0" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="3FBObrp3FbA" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3FBObrp3GBL" role="3cqZAp" />
            <node concept="3clFbJ" id="3FBObrp3mv8" role="3cqZAp">
              <node concept="3clFbS" id="3FBObrp3mv9" role="3clFbx">
                <node concept="3clFbF" id="3FBObrp3mvh" role="3cqZAp">
                  <node concept="37vLTI" id="3FBObrp3uSe" role="3clFbG">
                    <node concept="3EllGN" id="3FBObrp3mvi" role="37vLTJ">
                      <node concept="2OqwBi" id="3FBObrp3$0e" role="3ElVtu">
                        <node concept="3TrcHB" id="3FBObrp3$ri" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="37vLTw" id="3FBObrp3CNe" role="2Oq$k0">
                          <ref role="3cqZAo" node="3FBObrp3Av0" resolve="node" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3FBObrp3mvk" role="3ElQJh">
                        <ref role="3cqZAo" node="3FBObrp39ux" resolve="nameIndexMap" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3FBObrp3$KD" role="37vLTx">
                      <ref role="3cqZAo" node="3FBObrp3eib" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3FBObrp3mvl" role="3clFbw">
                <node concept="2OqwBi" id="3FBObrp3mvm" role="3fr31v">
                  <node concept="37vLTw" id="3FBObrp3mvn" role="2Oq$k0">
                    <ref role="3cqZAo" node="3FBObrp39ux" resolve="nameIndexMap" />
                  </node>
                  <node concept="2Nt0df" id="3FBObrp3mvo" role="2OqNvi">
                    <node concept="2OqwBi" id="3FBObrp3snT" role="38cxEo">
                      <node concept="3TrcHB" id="3FBObrp3sUR" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="37vLTw" id="3FBObrp3Cj4" role="2Oq$k0">
                        <ref role="3cqZAo" node="3FBObrp3Av0" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="3FBObrp3HL3" role="9aQIa">
                <node concept="3clFbS" id="3FBObrp3HL4" role="9aQI4">
                  <node concept="3clFbF" id="3FBObrp3mvz" role="3cqZAp">
                    <node concept="2OqwBi" id="3FBObrp3mv$" role="3clFbG">
                      <node concept="37vLTw" id="3FBObrp3mv_" role="2Oq$k0">
                        <ref role="3cqZAo" node="awtshkcXKt" resolve="callback" />
                      </node>
                      <node concept="1Bd96e" id="3FBObrp3mvA" role="2OqNvi">
                        <node concept="37vLTw" id="3FBObrp3mvB" role="1BdPVh">
                          <ref role="3cqZAo" node="3FBObrp3Av0" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3FBObrp3JiK" role="3cqZAp">
                    <node concept="2OqwBi" id="3FBObrp3JwG" role="3clFbG">
                      <node concept="37vLTw" id="3FBObrp3JiI" role="2Oq$k0">
                        <ref role="3cqZAo" node="awtshkcXKt" resolve="callback" />
                      </node>
                      <node concept="1Bd96e" id="3FBObrp3JU8" role="2OqNvi">
                        <node concept="1y4W85" id="3FBObrp3Mwk" role="1BdPVh">
                          <node concept="37vLTw" id="3FBObrp3L46" role="1y566C">
                            <ref role="3cqZAo" node="3FBObrp3pm$" resolve="nodes" />
                          </node>
                          <node concept="3EllGN" id="3FBObrp3KFr" role="1y58nS">
                            <node concept="2OqwBi" id="3FBObrp3N7x" role="3ElVtu">
                              <node concept="37vLTw" id="3FBObrp3MJz" role="2Oq$k0">
                                <ref role="3cqZAo" node="3FBObrp3Av0" resolve="node" />
                              </node>
                              <node concept="3TrcHB" id="3FBObrp3Nw8" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="3FBObrp3KaA" role="3ElQJh">
                              <ref role="3cqZAo" node="3FBObrp39ux" resolve="nameIndexMap" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3FBObrp3eib" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3FBObrp3euG" role="1tU5fm" />
            <node concept="3cmrfG" id="3FBObrp3eIh" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3FBObrp3fS7" role="1Dwp0S">
            <node concept="2OqwBi" id="3FBObrp3g$D" role="3uHU7w">
              <node concept="2V_BSl" id="3FBObrp3fXv" role="2Oq$k0" />
              <node concept="34oBXx" id="3FBObrp3gV7" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="3FBObrp3eNz" role="3uHU7B">
              <ref role="3cqZAo" node="3FBObrp3eib" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="3FBObrp3hdT" role="1Dwrff">
            <node concept="37vLTw" id="3FBObrp3hdV" role="2$L3a6">
              <ref role="3cqZAo" node="3FBObrp3eib" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="awtshkd1MU" role="aoRGl">
        <node concept="3Tqbb2" id="awtshkd1Ve" role="A3Ik2">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
    </node>
    <node concept="ATzpf" id="5jZDGTfudAl" role="a7sos">
      <property role="TrG5h" value="forEachNodeWhichStartsWithLowercase" />
      <node concept="3Tm1VV" id="5jZDGTfudAm" role="1B3o_S" />
      <node concept="3clFbS" id="5jZDGTfudAo" role="3clF47">
        <node concept="3clFbF" id="5jZDGTfue$2" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfufi8" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfueJT" role="2Oq$k0">
              <node concept="2V_BSl" id="5jZDGTfue$1" role="2Oq$k0" />
              <node concept="3zZkjj" id="5jZDGTfuqXo" role="2OqNvi">
                <node concept="1bVj0M" id="5jZDGTfuqXq" role="23t8la">
                  <node concept="3clFbS" id="5jZDGTfuqXr" role="1bW5cS">
                    <node concept="3clFbF" id="5jZDGTfur5Y" role="3cqZAp">
                      <node concept="3fqX7Q" id="5jZDGTf$XZ7" role="3clFbG">
                        <node concept="2OqwBi" id="5jZDGTf$XZ9" role="3fr31v">
                          <node concept="37vLTw" id="5jZDGTf$XZa" role="2Oq$k0">
                            <ref role="3cqZAo" node="5jZDGTfuqXs" resolve="it" />
                          </node>
                          <node concept="AQDAd" id="5jZDGTf$XZb" role="2OqNvi">
                            <ref role="37wK5l" node="5jZDGTfulpg" resolve="startsWithUppercaseLetter" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5jZDGTfuqXs" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5jZDGTfuqXt" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="5jZDGTfug35" role="2OqNvi">
              <node concept="37vLTw" id="5jZDGTfus0T" role="23t8la">
                <ref role="3cqZAo" node="5jZDGTfuedZ" resolve="callback" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5jZDGTfueaS" role="3clF45" />
      <node concept="37vLTG" id="5jZDGTfuedZ" role="3clF46">
        <property role="TrG5h" value="callback" />
        <node concept="1ajhzC" id="5jZDGTfuedX" role="1tU5fm">
          <node concept="3Tqbb2" id="5jZDGTfueh2" role="1ajw0F">
            <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
          </node>
          <node concept="3cqZAl" id="5jZDGTfueft" role="1ajl9A" />
        </node>
      </node>
      <node concept="A3Dl8" id="5jZDGTfuej4" role="aoRGl">
        <node concept="3Tqbb2" id="5jZDGTfuekb" role="A3Ik2">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
    </node>
    <node concept="ATzpf" id="5jZDGTfulpg" role="a7sos">
      <property role="TrG5h" value="startsWithUppercaseLetter" />
      <node concept="3Tm1VV" id="5jZDGTfulph" role="1B3o_S" />
      <node concept="10P_77" id="5jZDGTfumn_" role="3clF45" />
      <node concept="3clFbS" id="5jZDGTfulpj" role="3clF47">
        <node concept="3clFbF" id="5jZDGTfup8J" role="3cqZAp">
          <node concept="3K4zz7" id="5jZDGTfup8K" role="3clFbG">
            <node concept="3clFbT" id="5jZDGTfup8L" role="3K4E3e" />
            <node concept="3clFbC" id="5jZDGTfup8M" role="3K4Cdx">
              <node concept="10Nm6u" id="5jZDGTfup8N" role="3uHU7w" />
              <node concept="2OqwBi" id="5jZDGTfup8O" role="3uHU7B">
                <node concept="3TrcHB" id="5jZDGTfup8Q" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="2V_BSl" id="5jZDGTfup_i" role="2Oq$k0" />
              </node>
            </node>
            <node concept="1eOMI4" id="5jZDGTfwA6y" role="3K4GZi">
              <node concept="1Wc70l" id="5jZDGTfwB49" role="1eOMHV">
                <node concept="2YIFZM" id="5jZDGTf$XHn" role="3uHU7w">
                  <ref role="37wK5l" to="wyt6:~Character.isUpperCase(char)" resolve="isUpperCase" />
                  <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                  <node concept="2OqwBi" id="5jZDGTf$XHo" role="37wK5m">
                    <node concept="2OqwBi" id="5jZDGTf$XHp" role="2Oq$k0">
                      <node concept="2V_BSl" id="5jZDGTf$XHq" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5jZDGTf$XHr" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5jZDGTf$XHs" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                      <node concept="3cmrfG" id="5jZDGTf$XHt" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="5jZDGTfwBmv" role="3uHU7B">
                  <ref role="37wK5l" to="wyt6:~Character.isLetter(char)" resolve="isLetter" />
                  <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                  <node concept="2OqwBi" id="5jZDGTfwBmw" role="37wK5m">
                    <node concept="2OqwBi" id="5jZDGTfwBmx" role="2Oq$k0">
                      <node concept="2V_BSl" id="5jZDGTfwBmy" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5jZDGTfwBmz" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5jZDGTfwBm$" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                      <node concept="3cmrfG" id="5jZDGTfwBm_" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5jZDGTfunoq" role="aoRGl">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="ATzpf" id="5jZDGTfFrS_" role="a7sos">
      <property role="TrG5h" value="startsWithLowercaseLetter" />
      <node concept="3Tm1VV" id="5jZDGTfFrSA" role="1B3o_S" />
      <node concept="10P_77" id="5jZDGTfFrSB" role="3clF45" />
      <node concept="3clFbS" id="5jZDGTfFrSC" role="3clF47">
        <node concept="3clFbF" id="5jZDGTfFrSD" role="3cqZAp">
          <node concept="3K4zz7" id="5jZDGTfFrSE" role="3clFbG">
            <node concept="3clFbT" id="5jZDGTfFrSF" role="3K4E3e" />
            <node concept="3clFbC" id="5jZDGTfFrSG" role="3K4Cdx">
              <node concept="10Nm6u" id="5jZDGTfFrSH" role="3uHU7w" />
              <node concept="2OqwBi" id="5jZDGTfFrSI" role="3uHU7B">
                <node concept="3TrcHB" id="5jZDGTfFrSJ" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="2V_BSl" id="5jZDGTfFrSK" role="2Oq$k0" />
              </node>
            </node>
            <node concept="1eOMI4" id="5jZDGTfFrSL" role="3K4GZi">
              <node concept="1Wc70l" id="5jZDGTfFrSM" role="1eOMHV">
                <node concept="2YIFZM" id="5jZDGTfFtca" role="3uHU7w">
                  <ref role="37wK5l" to="wyt6:~Character.isLowerCase(char)" resolve="isLowerCase" />
                  <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                  <node concept="2OqwBi" id="5jZDGTfFtcb" role="37wK5m">
                    <node concept="2OqwBi" id="5jZDGTfFtcc" role="2Oq$k0">
                      <node concept="2V_BSl" id="5jZDGTfFtcd" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5jZDGTfFtce" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5jZDGTfFtcf" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                      <node concept="3cmrfG" id="5jZDGTfFtcg" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="5jZDGTfFrSU" role="3uHU7B">
                  <ref role="37wK5l" to="wyt6:~Character.isLetter(char)" resolve="isLetter" />
                  <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                  <node concept="2OqwBi" id="5jZDGTfFrSV" role="37wK5m">
                    <node concept="2OqwBi" id="5jZDGTfFrSW" role="2Oq$k0">
                      <node concept="2V_BSl" id="5jZDGTfFrSX" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5jZDGTfFrSY" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5jZDGTfFrSZ" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                      <node concept="3cmrfG" id="5jZDGTfFrT0" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5jZDGTfFrT1" role="aoRGl">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="ATzpf" id="3FBObrp36U7" role="a7sos">
      <property role="TrG5h" value="forEachDuplicateNameOld" />
      <node concept="37vLTG" id="3FBObrp38WL" role="3clF46">
        <property role="TrG5h" value="callback" />
        <node concept="1ajhzC" id="3FBObrp38WM" role="1tU5fm">
          <node concept="3cqZAl" id="3FBObrp38WN" role="1ajl9A" />
          <node concept="3Tqbb2" id="3FBObrp38WO" role="1ajw0F">
            <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3FBObrp36U8" role="1B3o_S" />
      <node concept="3cqZAl" id="3FBObrp37hU" role="3clF45" />
      <node concept="3clFbS" id="3FBObrp36Ua" role="3clF47">
        <node concept="3cpWs8" id="3FBObrp38eS" role="3cqZAp">
          <node concept="3cpWsn" id="3FBObrp38eT" role="3cpWs9">
            <property role="TrG5h" value="duplicateNameList" />
            <node concept="2hMVRd" id="3FBObrp38eU" role="1tU5fm">
              <node concept="17QB3L" id="3FBObrp38eV" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="3FBObrp38eW" role="33vP2m">
              <node concept="2i4dXS" id="3FBObrp38eX" role="2ShVmc">
                <node concept="17QB3L" id="3FBObrp38eY" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3FBObrp38eZ" role="3cqZAp" />
        <node concept="3clFbF" id="3FBObrp38f0" role="3cqZAp">
          <node concept="2OqwBi" id="3FBObrp38f1" role="3clFbG">
            <node concept="2V_BSl" id="3FBObrp38f2" role="2Oq$k0" />
            <node concept="2es0OD" id="3FBObrp38f3" role="2OqNvi">
              <node concept="1bVj0M" id="3FBObrp38f4" role="23t8la">
                <node concept="3clFbS" id="3FBObrp38f5" role="1bW5cS">
                  <node concept="3clFbJ" id="3FBObrp38f6" role="3cqZAp">
                    <node concept="3clFbS" id="3FBObrp38f7" role="3clFbx">
                      <node concept="3clFbF" id="3FBObrp38f8" role="3cqZAp">
                        <node concept="2OqwBi" id="3FBObrp38f9" role="3clFbG">
                          <node concept="37vLTw" id="3FBObrp38fa" role="2Oq$k0">
                            <ref role="3cqZAo" node="3FBObrp38eT" resolve="duplicateNameList" />
                          </node>
                          <node concept="TSZUe" id="3FBObrp38fb" role="2OqNvi">
                            <node concept="2OqwBi" id="3FBObrp38fc" role="25WWJ7">
                              <node concept="37vLTw" id="3FBObrp38fd" role="2Oq$k0">
                                <ref role="3cqZAo" node="3FBObrp38fy" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="3FBObrp38fe" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="3FBObrp38ff" role="3clFbw">
                      <node concept="2OqwBi" id="3FBObrp38fg" role="3fr31v">
                        <node concept="37vLTw" id="3FBObrp38fh" role="2Oq$k0">
                          <ref role="3cqZAo" node="3FBObrp38eT" resolve="duplicateNameList" />
                        </node>
                        <node concept="3JPx81" id="3FBObrp38fi" role="2OqNvi">
                          <node concept="2OqwBi" id="3FBObrp38fj" role="25WWJ7">
                            <node concept="37vLTw" id="3FBObrp38fk" role="2Oq$k0">
                              <ref role="3cqZAo" node="3FBObrp38fy" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3FBObrp38fl" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="3FBObrp38fm" role="3eNLev">
                      <node concept="3y3z36" id="3FBObrp38fn" role="3eO9$A">
                        <node concept="10Nm6u" id="3FBObrp38fo" role="3uHU7w" />
                        <node concept="2OqwBi" id="3FBObrp38fp" role="3uHU7B">
                          <node concept="37vLTw" id="3FBObrp38fq" role="2Oq$k0">
                            <ref role="3cqZAo" node="3FBObrp38fy" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="3FBObrp38fr" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="3FBObrp38fs" role="3eOfB_">
                        <node concept="3clFbF" id="3FBObrp38ft" role="3cqZAp">
                          <node concept="2OqwBi" id="3FBObrp38fu" role="3clFbG">
                            <node concept="37vLTw" id="3FBObrp38fv" role="2Oq$k0">
                              <ref role="3cqZAo" node="3FBObrp38WL" resolve="callback" />
                            </node>
                            <node concept="1Bd96e" id="3FBObrp38fw" role="2OqNvi">
                              <node concept="37vLTw" id="3FBObrp38fx" role="1BdPVh">
                                <ref role="3cqZAo" node="3FBObrp38fy" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3FBObrp38fy" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3FBObrp38fz" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="3FBObrp38AJ" role="aoRGl">
        <node concept="3Tqbb2" id="3FBObrp38AK" role="A3Ik2">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
    </node>
    <node concept="ATzpf" id="7mYw4uWE97K" role="a7sos">
      <property role="TrG5h" value="findNodesWithSameName" />
      <node concept="3Tm1VV" id="7mYw4uWE97L" role="1B3o_S" />
      <node concept="3clFbS" id="7mYw4uWE97N" role="3clF47">
        <node concept="3cpWs8" id="7mYw4uWEsME" role="3cqZAp">
          <node concept="3cpWsn" id="7mYw4uWEsMH" role="3cpWs9">
            <property role="TrG5h" value="conceptMap" />
            <node concept="3rvAFt" id="7mYw4uWEsM$" role="1tU5fm">
              <node concept="17QB3L" id="7mYw4uWEsSx" role="3rvQeY" />
              <node concept="_YKpA" id="7mYw4uWEsXn" role="3rvSg0">
                <node concept="3Tqbb2" id="7mYw4uWEt2j" role="_ZDj9">
                  <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="7mYw4uWEt_r" role="33vP2m">
              <node concept="3rGOSV" id="7mYw4uWEt_f" role="2ShVmc">
                <node concept="17QB3L" id="7mYw4uWEt_g" role="3rHrn6" />
                <node concept="_YKpA" id="7mYw4uWEt_h" role="3rHtpV">
                  <node concept="3Tqbb2" id="7mYw4uWEt_i" role="_ZDj9">
                    <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7mYw4uWEsHh" role="3cqZAp" />
        <node concept="3clFbF" id="7mYw4uWEbvi" role="3cqZAp">
          <node concept="2OqwBi" id="7mYw4uWEbGY" role="3clFbG">
            <node concept="2V_BSl" id="7mYw4uWEbvg" role="2Oq$k0" />
            <node concept="2es0OD" id="7mYw4uWEc1l" role="2OqNvi">
              <node concept="1bVj0M" id="7mYw4uWEc1n" role="23t8la">
                <node concept="3clFbS" id="7mYw4uWEc1o" role="1bW5cS">
                  <node concept="3clFbJ" id="7mYw4uWEccH" role="3cqZAp">
                    <node concept="3clFbS" id="7mYw4uWEccJ" role="3clFbx">
                      <node concept="3cpWs8" id="7mYw4uWED0p" role="3cqZAp">
                        <node concept="3cpWsn" id="7mYw4uWED0s" role="3cpWs9">
                          <property role="TrG5h" value="list" />
                          <node concept="_YKpA" id="7mYw4uWED0l" role="1tU5fm">
                            <node concept="3Tqbb2" id="7mYw4uWED7m" role="_ZDj9">
                              <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            </node>
                          </node>
                          <node concept="2ShNRf" id="7mYw4uWEDwi" role="33vP2m">
                            <node concept="Tc6Ow" id="7mYw4uWEDwe" role="2ShVmc">
                              <node concept="3Tqbb2" id="7mYw4uWEDwf" role="HW$YZ">
                                <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7mYw4uWEDHR" role="3cqZAp">
                        <node concept="2OqwBi" id="7mYw4uWEERB" role="3clFbG">
                          <node concept="37vLTw" id="7mYw4uWEDHP" role="2Oq$k0">
                            <ref role="3cqZAo" node="7mYw4uWED0s" resolve="list" />
                          </node>
                          <node concept="TSZUe" id="7mYw4uWEGfE" role="2OqNvi">
                            <node concept="37vLTw" id="7mYw4uWEGn1" role="25WWJ7">
                              <ref role="3cqZAo" node="7mYw4uWEc1p" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7mYw4uWEr7I" role="3cqZAp">
                        <node concept="37vLTI" id="7mYw4uWEGJ8" role="3clFbG">
                          <node concept="37vLTw" id="7mYw4uWEGTN" role="37vLTx">
                            <ref role="3cqZAo" node="7mYw4uWED0s" resolve="list" />
                          </node>
                          <node concept="3EllGN" id="7mYw4uWErAw" role="37vLTJ">
                            <node concept="2OqwBi" id="7mYw4uWErUX" role="3ElVtu">
                              <node concept="37vLTw" id="7mYw4uWErHx" role="2Oq$k0">
                                <ref role="3cqZAo" node="7mYw4uWEc1p" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="7mYw4uWEsoA" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="7mYw4uWEr7G" role="3ElQJh">
                              <ref role="3cqZAo" node="7mYw4uWEsMH" resolve="conceptMap" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="7mYw4uWEkKR" role="3clFbw">
                      <node concept="3y3z36" id="7mYw4uWElKF" role="3uHU7w">
                        <node concept="10Nm6u" id="7mYw4uWEm6U" role="3uHU7w" />
                        <node concept="2OqwBi" id="7mYw4uWEl2r" role="3uHU7B">
                          <node concept="37vLTw" id="7mYw4uWEkPK" role="2Oq$k0">
                            <ref role="3cqZAo" node="7mYw4uWEc1p" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="7mYw4uWElcl" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="7mYw4uWEek0" role="3uHU7B">
                        <node concept="2OqwBi" id="7mYw4uWEek2" role="3fr31v">
                          <node concept="37vLTw" id="7mYw4uWEek3" role="2Oq$k0">
                            <ref role="3cqZAo" node="7mYw4uWEsMH" resolve="conceptMap" />
                          </node>
                          <node concept="2Nt0df" id="7mYw4uWEjr4" role="2OqNvi">
                            <node concept="2OqwBi" id="7mYw4uWEjHc" role="38cxEo">
                              <node concept="37vLTw" id="7mYw4uWEjvf" role="2Oq$k0">
                                <ref role="3cqZAo" node="7mYw4uWEc1p" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="7mYw4uWEkjj" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="7mYw4uWEHbO" role="3eNLev">
                      <node concept="3clFbS" id="7mYw4uWEHbP" role="3eOfB_">
                        <node concept="3clFbF" id="7mYw4uWEJAn" role="3cqZAp">
                          <node concept="2OqwBi" id="7mYw4uWEMf1" role="3clFbG">
                            <node concept="3EllGN" id="7mYw4uWEKce" role="2Oq$k0">
                              <node concept="2OqwBi" id="7mYw4uWEKAK" role="3ElVtu">
                                <node concept="37vLTw" id="7mYw4uWEKl2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7mYw4uWEc1p" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="7mYw4uWEKOQ" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="7mYw4uWEJAm" role="3ElQJh">
                                <ref role="3cqZAo" node="7mYw4uWEsMH" resolve="conceptMap" />
                              </node>
                            </node>
                            <node concept="TSZUe" id="7mYw4uWENFv" role="2OqNvi">
                              <node concept="37vLTw" id="7mYw4uWENQo" role="25WWJ7">
                                <ref role="3cqZAo" node="7mYw4uWEc1p" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="7mYw4uWEJlI" role="3eO9$A">
                        <node concept="10Nm6u" id="7mYw4uWEJtU" role="3uHU7w" />
                        <node concept="2OqwBi" id="7mYw4uWEHA1" role="3uHU7B">
                          <node concept="37vLTw" id="7mYw4uWEHj_" role="2Oq$k0">
                            <ref role="3cqZAo" node="7mYw4uWEc1p" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="7mYw4uWEHWb" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7mYw4uWEc1p" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7mYw4uWEc1q" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7mYw4uWF2t5" role="3cqZAp" />
        <node concept="3cpWs6" id="7mYw4uWE_Zg" role="3cqZAp">
          <node concept="2OqwBi" id="7mYw4uWEVrt" role="3cqZAk">
            <node concept="2OqwBi" id="7mYw4uWEACF" role="2Oq$k0">
              <node concept="37vLTw" id="7mYw4uWEAap" role="2Oq$k0">
                <ref role="3cqZAo" node="7mYw4uWEsMH" resolve="conceptMap" />
              </node>
              <node concept="T8wYR" id="7mYw4uWF43F" role="2OqNvi" />
            </node>
            <node concept="3zZkjj" id="7mYw4uWEWzJ" role="2OqNvi">
              <node concept="1bVj0M" id="7mYw4uWEWzL" role="23t8la">
                <node concept="3clFbS" id="7mYw4uWEWzM" role="1bW5cS">
                  <node concept="3clFbF" id="7mYw4uWEWNY" role="3cqZAp">
                    <node concept="3eOSWO" id="7mYw4uWF1QG" role="3clFbG">
                      <node concept="3cmrfG" id="7mYw4uWF24h" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="2OqwBi" id="7mYw4uWEYih" role="3uHU7B">
                        <node concept="37vLTw" id="7mYw4uWEWNX" role="2Oq$k0">
                          <ref role="3cqZAo" node="7mYw4uWEWzN" resolve="it" />
                        </node>
                        <node concept="34oBXx" id="7mYw4uWF06O" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7mYw4uWEWzN" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7mYw4uWEWzO" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="7mYw4uWE9uM" role="aoRGl">
        <node concept="3Tqbb2" id="7mYw4uWE9vI" role="A3Ik2">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
      <node concept="A3Dl8" id="7mYw4uWECRN" role="3clF45">
        <node concept="_YKpA" id="7mYw4uWECRU" role="A3Ik2">
          <node concept="3Tqbb2" id="7mYw4uWECRV" role="_ZDj9">
            <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="awtshkgv7r" role="1B3o_S" />
  </node>
  <node concept="18kY7G" id="awtshkemBE">
    <property role="TrG5h" value="check_ValueObject" />
    <property role="3GE5qa" value="valueObjects" />
    <node concept="3clFbS" id="awtshkemBF" role="18ibNy">
      <node concept="3clFbJ" id="5jZDGTfFjMJ" role="3cqZAp">
        <node concept="3fqX7Q" id="5jZDGTfFjMK" role="3clFbw">
          <node concept="2OqwBi" id="5jZDGTfFjML" role="3fr31v">
            <node concept="1YBJjd" id="5jZDGTfFjMM" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkemBH" resolve="valueObject" />
            </node>
            <node concept="AQDAd" id="5jZDGTfFjMN" role="2OqNvi">
              <ref role="37wK5l" node="5jZDGTfulpg" resolve="startsWithUppercaseLetter" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5jZDGTfFjMO" role="3clFbx">
          <node concept="a7r0C" id="5jZDGTfFjMP" role="3cqZAp">
            <node concept="Xl_RD" id="5jZDGTfFjMQ" role="a7wSD">
              <property role="Xl_RC" value="Value Objects should start with an uppercase letter" />
            </node>
            <node concept="1YBJjd" id="5jZDGTfFjMR" role="1urrMF">
              <ref role="1YBMHb" node="awtshkemBH" resolve="valueObject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5jZDGTfFjKj" role="3cqZAp" />
      <node concept="3clFbF" id="oGImgOs4gI" role="3cqZAp">
        <node concept="2OqwBi" id="oGImgOs4gJ" role="3clFbG">
          <node concept="2OqwBi" id="oGImgOs4gK" role="2Oq$k0">
            <node concept="1YBJjd" id="oGImgOs4gL" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkemBH" resolve="valueObject" />
            </node>
            <node concept="2qgKlT" id="oGImgOs4gM" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:oGImgOs5tY" resolve="methods" />
            </node>
          </node>
          <node concept="AQDAd" id="oGImgOs4gN" role="2OqNvi">
            <ref role="37wK5l" node="23PrvZR5M3X" resolve="forEachMethodWithSameSignature" />
            <node concept="1bVj0M" id="oGImgOs4gO" role="37wK5m">
              <node concept="3clFbS" id="oGImgOs4gP" role="1bW5cS">
                <node concept="2MkqsV" id="oGImgOs4gQ" role="3cqZAp">
                  <node concept="Xl_RD" id="oGImgOs4gR" role="2MkJ7o">
                    <property role="Xl_RC" value="Method signature already defined" />
                  </node>
                  <node concept="37vLTw" id="oGImgOs4gS" role="1urrMF">
                    <ref role="3cqZAo" node="oGImgOs4gT" resolve="method" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="oGImgOs4gT" role="1bW2Oz">
                <property role="TrG5h" value="method" />
                <node concept="3Tqbb2" id="oGImgOs4gU" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="awtshkemBH" role="1YuTPh">
      <property role="TrG5h" value="valueObject" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
    </node>
  </node>
  <node concept="18kY7G" id="awtshkf2zt">
    <property role="TrG5h" value="check_AggregateRoot" />
    <property role="3GE5qa" value="aggregates" />
    <node concept="3clFbS" id="awtshkf2zu" role="18ibNy">
      <node concept="3clFbJ" id="5jZDGTfFlaM" role="3cqZAp">
        <node concept="1Wc70l" id="1aRcFPN_qFR" role="3clFbw">
          <node concept="17QLQc" id="1aRcFPN_v_f" role="3uHU7B">
            <node concept="10Nm6u" id="1aRcFPN_vFr" role="3uHU7w" />
            <node concept="2OqwBi" id="1aRcFPN_rzX" role="3uHU7B">
              <node concept="1YBJjd" id="1aRcFPN_rjC" role="2Oq$k0">
                <ref role="1YBMHb" node="awtshkf2zw" resolve="aggregateRoot" />
              </node>
              <node concept="3TrcHB" id="1aRcFPN_sfr" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5jZDGTfFlaN" role="3uHU7w">
            <node concept="2OqwBi" id="5jZDGTfFlaO" role="3fr31v">
              <node concept="1YBJjd" id="5jZDGTfFlaP" role="2Oq$k0">
                <ref role="1YBMHb" node="awtshkf2zw" resolve="aggregateRoot" />
              </node>
              <node concept="AQDAd" id="5jZDGTfFlaQ" role="2OqNvi">
                <ref role="37wK5l" node="5jZDGTfulpg" resolve="startsWithUppercaseLetter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5jZDGTfFlaR" role="3clFbx">
          <node concept="a7r0C" id="5jZDGTfFlaS" role="3cqZAp">
            <node concept="Xl_RD" id="5jZDGTfFlaT" role="a7wSD">
              <property role="Xl_RC" value="Aggregate roots should start with an uppercase letter" />
            </node>
            <node concept="1YBJjd" id="5jZDGTfFlaU" role="1urrMF">
              <ref role="1YBMHb" node="awtshkf2zw" resolve="aggregateRoot" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5jZDGTfFl4a" role="3cqZAp" />
      <node concept="3clFbF" id="3DbZR$NYC4A" role="3cqZAp">
        <node concept="2OqwBi" id="3DbZR$NYCOf" role="3clFbG">
          <node concept="2OqwBi" id="3DbZR$NYCfu" role="2Oq$k0">
            <node concept="1YBJjd" id="3DbZR$NYC4$" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkf2zw" resolve="aggregateRoot" />
            </node>
            <node concept="2qgKlT" id="3DbZR$NYC_4" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3DbZR$NYzvO" resolve="properties" />
            </node>
          </node>
          <node concept="AQDAd" id="3DbZR$NYDki" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="3DbZR$NYDu0" role="37wK5m">
              <node concept="3clFbS" id="3DbZR$NYDu1" role="1bW5cS">
                <node concept="2MkqsV" id="3DbZR$NYDQh" role="3cqZAp">
                  <node concept="Xl_RD" id="3DbZR$NYDSi" role="2MkJ7o">
                    <property role="Xl_RC" value="Property name already defined" />
                  </node>
                  <node concept="37vLTw" id="3DbZR$NYEk6" role="1urrMF">
                    <ref role="3cqZAo" node="3DbZR$NYDH6" resolve="property" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="3DbZR$NYDH6" role="1bW2Oz">
                <property role="TrG5h" value="property" />
                <node concept="3Tqbb2" id="3DbZR$NYDH5" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="3DbZR$NYELH" role="3cqZAp">
        <node concept="2OqwBi" id="3DbZR$NYFzJ" role="3clFbG">
          <node concept="2OqwBi" id="3DbZR$NYEZL" role="2Oq$k0">
            <node concept="1YBJjd" id="3DbZR$NYELF" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkf2zw" resolve="aggregateRoot" />
            </node>
            <node concept="2qgKlT" id="3DbZR$NYFny" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3DbZR$NYuVI" resolve="methods" />
            </node>
          </node>
          <node concept="AQDAd" id="3DbZR$NYFUN" role="2OqNvi">
            <ref role="37wK5l" node="23PrvZR5M3X" resolve="forEachMethodWithSameSignature" />
            <node concept="1bVj0M" id="3DbZR$NYG1o" role="37wK5m">
              <node concept="3clFbS" id="3DbZR$NYG1p" role="1bW5cS">
                <node concept="2MkqsV" id="3DbZR$NYGgG" role="3cqZAp">
                  <node concept="Xl_RD" id="3DbZR$NYGng" role="2MkJ7o">
                    <property role="Xl_RC" value="Method signature already defined" />
                  </node>
                  <node concept="37vLTw" id="3DbZR$NYGBv" role="1urrMF">
                    <ref role="3cqZAo" node="3DbZR$NYG39" resolve="method" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="3DbZR$NYG39" role="1bW2Oz">
                <property role="TrG5h" value="method" />
                <node concept="3Tqbb2" id="3DbZR$NYG8f" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3FBObro0hym" role="3cqZAp" />
      <node concept="3clFbJ" id="3FBObro0hGK" role="3cqZAp">
        <node concept="3clFbS" id="3FBObro0hGM" role="3clFbx">
          <node concept="2MkqsV" id="3FBObro0ltH" role="3cqZAp">
            <node concept="Xl_RD" id="3FBObro0ltW" role="2MkJ7o">
              <property role="Xl_RC" value="There are no events defined for this aggregate" />
            </node>
            <node concept="1YBJjd" id="3FBObro0lvE" role="1urrMF">
              <ref role="1YBMHb" node="awtshkf2zw" resolve="aggregateRoot" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="3FBObro3l4u" role="3clFbw">
          <node concept="2OqwBi" id="3FBObro1LLz" role="2Oq$k0">
            <node concept="2OqwBi" id="3FBObro1LL$" role="2Oq$k0">
              <node concept="1YBJjd" id="3FBObro1LL_" role="2Oq$k0">
                <ref role="1YBMHb" node="awtshkf2zw" resolve="aggregateRoot" />
              </node>
              <node concept="2qgKlT" id="3FBObro1LLA" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
            <node concept="2qgKlT" id="3FBObro3kGg" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3FBObro3aoN" resolve="findEventContainerFor" />
              <node concept="1YBJjd" id="3FBObro3kOL" role="37wK5m">
                <ref role="1YBMHb" node="awtshkf2zw" resolve="aggregateRoot" />
              </node>
            </node>
          </node>
          <node concept="3w_OXm" id="3FBObro3lxF" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="awtshkf2zw" role="1YuTPh">
      <property role="TrG5h" value="aggregateRoot" />
      <ref role="1YaFvo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
    </node>
  </node>
  <node concept="18kY7G" id="awtshkf8wr">
    <property role="TrG5h" value="check_Entity" />
    <property role="3GE5qa" value="entity" />
    <node concept="3clFbS" id="awtshkf8ws" role="18ibNy">
      <node concept="3clFbJ" id="5jZDGTfFnAx" role="3cqZAp">
        <node concept="3fqX7Q" id="5jZDGTfFnAy" role="3clFbw">
          <node concept="2OqwBi" id="5jZDGTfFnAz" role="3fr31v">
            <node concept="1YBJjd" id="5jZDGTfFnA$" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkf8wu" resolve="entity" />
            </node>
            <node concept="AQDAd" id="5jZDGTfFnA_" role="2OqNvi">
              <ref role="37wK5l" node="5jZDGTfulpg" resolve="startsWithUppercaseLetter" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5jZDGTfFnAA" role="3clFbx">
          <node concept="a7r0C" id="5jZDGTfFnAB" role="3cqZAp">
            <node concept="Xl_RD" id="5jZDGTfFnAC" role="a7wSD">
              <property role="Xl_RC" value="Entities should start with an uppercase letter" />
            </node>
            <node concept="1YBJjd" id="5jZDGTfFnAD" role="1urrMF">
              <ref role="1YBMHb" node="awtshkf8wu" resolve="entity" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5jZDGTfFnA4" role="3cqZAp" />
      <node concept="3clFbF" id="3DbZR$NYsZ1" role="3cqZAp">
        <node concept="2OqwBi" id="3DbZR$NYtLq" role="3clFbG">
          <node concept="2OqwBi" id="3DbZR$NYtc4" role="2Oq$k0">
            <node concept="1YBJjd" id="3DbZR$NYsYZ" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkf8wu" resolve="entity" />
            </node>
            <node concept="2qgKlT" id="3DbZR$NYt_d" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3DbZR$NYkue" resolve="properties" />
            </node>
          </node>
          <node concept="AQDAd" id="3DbZR$NYuaH" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="3DbZR$NYukr" role="37wK5m">
              <node concept="3clFbS" id="3DbZR$NYuks" role="1bW5cS">
                <node concept="2MkqsV" id="3DbZR$NYuwT" role="3cqZAp">
                  <node concept="Xl_RD" id="3DbZR$NYuyU" role="2MkJ7o">
                    <property role="Xl_RC" value="Property name already defined" />
                  </node>
                  <node concept="37vLTw" id="3DbZR$NYuCQ" role="1urrMF">
                    <ref role="3cqZAo" node="3DbZR$NYume" resolve="property" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="3DbZR$NYume" role="1bW2Oz">
                <property role="TrG5h" value="property" />
                <node concept="3Tqbb2" id="3DbZR$NYuqw" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="3DbZR$NYpIM" role="3cqZAp">
        <node concept="2OqwBi" id="3DbZR$NYqur" role="3clFbG">
          <node concept="2OqwBi" id="3DbZR$NYpTE" role="2Oq$k0">
            <node concept="1YBJjd" id="3DbZR$NYpIK" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkf8wu" resolve="entity" />
            </node>
            <node concept="2qgKlT" id="3DbZR$NYqfg" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3DbZR$NYdN7" resolve="methods" />
            </node>
          </node>
          <node concept="AQDAd" id="3DbZR$NYqMr" role="2OqNvi">
            <ref role="37wK5l" node="23PrvZR5M3X" resolve="forEachMethodWithSameSignature" />
            <node concept="1bVj0M" id="3DbZR$NYqT0" role="37wK5m">
              <node concept="37vLTG" id="3DbZR$NYqUL" role="1bW2Oz">
                <property role="TrG5h" value="method" />
                <node concept="3Tqbb2" id="3DbZR$NYr0d" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="3DbZR$NYqT1" role="1bW5cS">
                <node concept="2MkqsV" id="3DbZR$NYr6G" role="3cqZAp">
                  <node concept="Xl_RD" id="3DbZR$NYr8F" role="2MkJ7o">
                    <property role="Xl_RC" value="Method signature already defined" />
                  </node>
                  <node concept="37vLTw" id="3DbZR$NYsqr" role="1urrMF">
                    <ref role="3cqZAo" node="3DbZR$NYqUL" resolve="method" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="awtshkf8wu" role="1YuTPh">
      <property role="TrG5h" value="entity" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
    </node>
  </node>
  <node concept="18kY7G" id="awtshkgvkt">
    <property role="TrG5h" value="check_Dto_Name" />
    <property role="3GE5qa" value="dto" />
    <node concept="3clFbS" id="awtshkgvku" role="18ibNy">
      <node concept="3clFbJ" id="5jZDGTfFoXr" role="3cqZAp">
        <node concept="3fqX7Q" id="5jZDGTfFoXs" role="3clFbw">
          <node concept="2OqwBi" id="5jZDGTfFoXt" role="3fr31v">
            <node concept="1YBJjd" id="5jZDGTfFoXu" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkgvkw" resolve="dto" />
            </node>
            <node concept="AQDAd" id="5jZDGTfFoXv" role="2OqNvi">
              <ref role="37wK5l" node="5jZDGTfulpg" resolve="startsWithUppercaseLetter" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5jZDGTfFoXw" role="3clFbx">
          <node concept="a7r0C" id="5jZDGTfFoXx" role="3cqZAp">
            <node concept="Xl_RD" id="5jZDGTfFoXy" role="a7wSD">
              <property role="Xl_RC" value="DTOs should start with an uppercase letter" />
            </node>
            <node concept="1YBJjd" id="5jZDGTfFoXz" role="1urrMF">
              <ref role="1YBMHb" node="awtshkgvkw" resolve="dto" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="awtshkgvkw" role="1YuTPh">
      <property role="TrG5h" value="dto" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    </node>
  </node>
  <node concept="18kY7G" id="awtshkhbta">
    <property role="TrG5h" value="check_Event" />
    <property role="3GE5qa" value="event" />
    <node concept="3clFbS" id="awtshkhbtb" role="18ibNy">
      <node concept="3clFbJ" id="51Z40VxaDBA" role="3cqZAp">
        <node concept="1Wc70l" id="51Z40VxaDBB" role="3clFbw">
          <node concept="2OqwBi" id="51Z40VxaDBC" role="3uHU7B">
            <node concept="2OqwBi" id="51Z40VxaDBD" role="2Oq$k0">
              <node concept="1YBJjd" id="51Z40VxaDBE" role="2Oq$k0">
                <ref role="1YBMHb" node="awtshkhbtd" resolve="event" />
              </node>
              <node concept="2qgKlT" id="51Z40VxaDBF" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTfVx8p" resolve="getEventContainer" />
              </node>
            </node>
            <node concept="2qgKlT" id="51Z40VxaDBG" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTdmWlV" resolve="isEventHandler" />
            </node>
          </node>
          <node concept="2OqwBi" id="51Z40VxaDBH" role="3uHU7w">
            <node concept="1YBJjd" id="51Z40VxaDBI" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkhbtd" resolve="event" />
            </node>
            <node concept="3TrcHB" id="51Z40VxaDBJ" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="51Z40VxaDBK" role="3clFbx">
          <node concept="2MkqsV" id="51Z40VxaDBL" role="3cqZAp">
            <node concept="Xl_RD" id="51Z40VxaDBM" role="2MkJ7o">
              <property role="Xl_RC" value="Required repositories should be defined in the 'event handler' scope" />
            </node>
            <node concept="1YBJjd" id="51Z40VxaDBN" role="1urrMF">
              <ref role="1YBMHb" node="awtshkhbtd" resolve="event" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="51Z40VxaDB8" role="3cqZAp" />
      <node concept="3clFbJ" id="5jZDGTfusK2" role="3cqZAp">
        <node concept="3fqX7Q" id="5jZDGTf$YHa" role="3clFbw">
          <node concept="2OqwBi" id="5jZDGTf$YHc" role="3fr31v">
            <node concept="1YBJjd" id="5jZDGTf$YHd" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkhbtd" resolve="event" />
            </node>
            <node concept="AQDAd" id="5jZDGTf$YHe" role="2OqNvi">
              <ref role="37wK5l" node="5jZDGTfulpg" resolve="startsWithUppercaseLetter" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5jZDGTfusK4" role="3clFbx">
          <node concept="a7r0C" id="5jZDGTfB5bX" role="3cqZAp">
            <node concept="Xl_RD" id="5jZDGTfB5bZ" role="a7wSD">
              <property role="Xl_RC" value="Event should start with an uppercase letter" />
            </node>
            <node concept="1YBJjd" id="5jZDGTfB5c0" role="1urrMF">
              <ref role="1YBMHb" node="awtshkhbtd" resolve="event" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="awtshkhbtd" role="1YuTPh">
      <property role="TrG5h" value="event" />
      <ref role="1YaFvo" to="3nll:7fqk8p43ygS" resolve="Event" />
    </node>
  </node>
  <node concept="18kY7G" id="awtshkhgdK">
    <property role="TrG5h" value="check_Command" />
    <property role="3GE5qa" value="command" />
    <node concept="3clFbS" id="awtshkhgdL" role="18ibNy">
      <node concept="3clFbJ" id="4REBMIuqHhr" role="3cqZAp">
        <node concept="1Wc70l" id="4REBMIuqN9h" role="3clFbw">
          <node concept="2OqwBi" id="4REBMIuqMkg" role="3uHU7B">
            <node concept="2OqwBi" id="4REBMIuqHwf" role="2Oq$k0">
              <node concept="1YBJjd" id="4REBMIuqHhB" role="2Oq$k0">
                <ref role="1YBMHb" node="awtshkhgdN" resolve="command" />
              </node>
              <node concept="2qgKlT" id="4REBMIuqM7d" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5$Oa659Yq3n" resolve="getCommandContainer" />
              </node>
            </node>
            <node concept="2qgKlT" id="1LTEH$2ynT" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:1LTEHzOfCt" resolve="isCommandHandler" />
            </node>
          </node>
          <node concept="2OqwBi" id="4REBMIuqNoj" role="3uHU7w">
            <node concept="1YBJjd" id="4REBMIuqNa7" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkhgdN" resolve="command" />
            </node>
            <node concept="3TrcHB" id="4REBMIuqNpU" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4REBMIuqHht" role="3clFbx">
          <node concept="2MkqsV" id="4REBMIuyONr" role="3cqZAp">
            <node concept="Xl_RD" id="4REBMIuyONt" role="2MkJ7o">
              <property role="Xl_RC" value="Required repositories should be defined in the 'command handler' scope" />
            </node>
            <node concept="1YBJjd" id="4REBMIuyONu" role="1urrMF">
              <ref role="1YBMHb" node="awtshkhgdN" resolve="command" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5jZDGTfDcg3" role="3cqZAp" />
      <node concept="3clFbJ" id="5jZDGTfDchV" role="3cqZAp">
        <node concept="3fqX7Q" id="5jZDGTfDchW" role="3clFbw">
          <node concept="2OqwBi" id="5jZDGTfDchX" role="3fr31v">
            <node concept="1YBJjd" id="5jZDGTfDchY" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkhgdN" resolve="command" />
            </node>
            <node concept="AQDAd" id="5jZDGTfDchZ" role="2OqNvi">
              <ref role="37wK5l" node="5jZDGTfulpg" resolve="startsWithUppercaseLetter" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5jZDGTfDci0" role="3clFbx">
          <node concept="a7r0C" id="5jZDGTfDci1" role="3cqZAp">
            <node concept="Xl_RD" id="5jZDGTfDci2" role="a7wSD">
              <property role="Xl_RC" value="Command should start with an uppercase letter" />
            </node>
            <node concept="1YBJjd" id="5jZDGTfDci3" role="1urrMF">
              <ref role="1YBMHb" node="awtshkhgdN" resolve="command" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="awtshkhgdN" role="1YuTPh">
      <property role="TrG5h" value="command" />
      <ref role="1YaFvo" to="3nll:7fqk8p43ygY" resolve="Command" />
    </node>
  </node>
  <node concept="18kY7G" id="awtshkhl6A">
    <property role="TrG5h" value="check_EventContainer" />
    <property role="3GE5qa" value="eventContainer" />
    <node concept="3clFbS" id="awtshkhl6B" role="18ibNy">
      <node concept="3clFbF" id="awtshkhl6Y" role="3cqZAp">
        <node concept="2OqwBi" id="awtshkhnDr" role="3clFbG">
          <node concept="2OqwBi" id="awtshkhlgR" role="2Oq$k0">
            <node concept="1YBJjd" id="awtshkhl6X" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshkhl6D" resolve="eventContainer" />
            </node>
            <node concept="2qgKlT" id="oGImgOKweG" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:oGImgOKqqA" resolve="events" />
            </node>
          </node>
          <node concept="AQDAd" id="awtshkhpy5" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="awtshkhpz4" role="37wK5m">
              <node concept="37vLTG" id="awtshkhp$i" role="1bW2Oz">
                <property role="TrG5h" value="event" />
                <node concept="3Tqbb2" id="awtshkhpBX" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="awtshkhpz5" role="1bW5cS">
                <node concept="2MkqsV" id="awtshkhpFr" role="3cqZAp">
                  <node concept="Xl_RD" id="awtshkhpGY" role="2MkJ7o">
                    <property role="Xl_RC" value="Event already defined" />
                  </node>
                  <node concept="37vLTw" id="awtshkhpPR" role="1urrMF">
                    <ref role="3cqZAo" node="awtshkhp$i" resolve="event" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="awtshkhl6D" role="1YuTPh">
      <property role="TrG5h" value="eventContainer" />
      <ref role="1YaFvo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
    </node>
  </node>
  <node concept="18kY7G" id="awtshktvwR">
    <property role="TrG5h" value="check_AggregateCommandContainer" />
    <property role="3GE5qa" value="commandContainer" />
    <node concept="3clFbS" id="awtshktvwS" role="18ibNy">
      <node concept="3clFbF" id="awtshktvxh" role="3cqZAp">
        <node concept="2OqwBi" id="awtshkty3I" role="3clFbG">
          <node concept="2OqwBi" id="awtshktvFa" role="2Oq$k0">
            <node concept="1YBJjd" id="awtshktvxg" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshktvwU" resolve="commandContainer" />
            </node>
            <node concept="2qgKlT" id="oGImgOKAEK" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:oGImgOKxc1" resolve="commands" />
            </node>
          </node>
          <node concept="AQDAd" id="awtshktzUF" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="awtshktzVE" role="37wK5m">
              <node concept="3clFbS" id="awtshktzVF" role="1bW5cS">
                <node concept="2MkqsV" id="awtshkt$3S" role="3cqZAp">
                  <node concept="Xl_RD" id="awtshkt$5r" role="2MkJ7o">
                    <property role="Xl_RC" value="Command already defined" />
                  </node>
                  <node concept="37vLTw" id="awtshkt$dq" role="1urrMF">
                    <ref role="3cqZAo" node="awtshktzWS" resolve="command" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="awtshktzWS" role="1bW2Oz">
                <property role="TrG5h" value="command" />
                <node concept="3Tqbb2" id="awtshkt$0A" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="4REBMIutZ_H" role="3cqZAp" />
      <node concept="3clFbJ" id="4REBMIutZF3" role="3cqZAp">
        <node concept="3clFbS" id="4REBMIutZF5" role="3clFbx">
          <node concept="3clFbJ" id="51Z40VxvAP0" role="3cqZAp">
            <node concept="3clFbS" id="51Z40VxvAP2" role="3clFbx">
              <node concept="2MkqsV" id="4REBMIuu5Np" role="3cqZAp">
                <node concept="Xl_RD" id="4REBMIuu5NC" role="2MkJ7o">
                  <property role="Xl_RC" value="Command handler name has to be specified" />
                </node>
                <node concept="1YBJjd" id="4REBMIuu5OM" role="1urrMF">
                  <ref role="1YBMHb" node="awtshktvwU" resolve="commandContainer" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="51Z40VyLsO5" role="3clFbw">
              <node concept="3fqX7Q" id="51Z40VyLwzQ" role="3uHU7w">
                <node concept="2OqwBi" id="51Z40VyLwzS" role="3fr31v">
                  <node concept="2OqwBi" id="51Z40VyLwzT" role="2Oq$k0">
                    <node concept="1YBJjd" id="51Z40VyLwzU" role="2Oq$k0">
                      <ref role="1YBMHb" node="awtshktvwU" resolve="commandContainer" />
                    </node>
                    <node concept="3TrEf2" id="51Z40VyLwzV" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="51Z40VyLwzW" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:2RbvdOKU7zU" resolve="isNameSet" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="51Z40VyLse7" role="3uHU7B">
                <node concept="2OqwBi" id="51Z40VyLse8" role="2Oq$k0">
                  <node concept="1YBJjd" id="51Z40VyLse9" role="2Oq$k0">
                    <ref role="1YBMHb" node="awtshktvwU" resolve="commandContainer" />
                  </node>
                  <node concept="3TrEf2" id="51Z40VyLsea" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7x9oRL8vqaW" resolve="aggregateReference" />
                  </node>
                </node>
                <node concept="3w_OXm" id="51Z40VyLseb" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="4REBMIutZUC" role="3clFbw">
          <node concept="1YBJjd" id="4REBMIutZHF" role="2Oq$k0">
            <ref role="1YBMHb" node="awtshktvwU" resolve="commandContainer" />
          </node>
          <node concept="2qgKlT" id="1LTEHzOmOo" role="2OqNvi">
            <ref role="37wK5l" to="sx7w:1LTEHzOfCt" resolve="isCommandHandler" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="51Z40Vx$bGs" role="3cqZAp" />
      <node concept="3clFbJ" id="51Z40Vx$c7U" role="3cqZAp">
        <node concept="3clFbS" id="51Z40Vx$c7W" role="3clFbx">
          <node concept="2MkqsV" id="51Z40Vx$f1x" role="3cqZAp">
            <node concept="Xl_RD" id="51Z40Vx$f1K" role="2MkJ7o">
              <property role="Xl_RC" value="Aggregate has to be specified" />
            </node>
            <node concept="1YBJjd" id="51Z40Vx$f2L" role="1urrMF">
              <ref role="1YBMHb" node="awtshktvwU" resolve="commandContainer" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="51Z40Vx$dYR" role="3clFbw">
          <node concept="2OqwBi" id="51Z40Vx$erH" role="3uHU7w">
            <node concept="2OqwBi" id="51Z40Vx$e7O" role="2Oq$k0">
              <node concept="1YBJjd" id="51Z40Vx$e2z" role="2Oq$k0">
                <ref role="1YBMHb" node="awtshktvwU" resolve="commandContainer" />
              </node>
              <node concept="3TrEf2" id="51Z40Vx$ecs" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:7x9oRL8vqaW" resolve="aggregateReference" />
              </node>
            </node>
            <node concept="3w_OXm" id="51Z40Vx$eVb" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="51Z40Vx$cKr" role="3uHU7B">
            <node concept="1YBJjd" id="51Z40Vx$cx1" role="2Oq$k0">
              <ref role="1YBMHb" node="awtshktvwU" resolve="commandContainer" />
            </node>
            <node concept="3TrcHB" id="51Z40Vx$d$$" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="awtshktvwU" role="1YuTPh">
      <property role="TrG5h" value="commandContainer" />
      <ref role="1YaFvo" to="3nll:awtshkmllB" resolve="CommandContainer" />
    </node>
  </node>
  <node concept="18kY7G" id="7mYw4uWE8Z9">
    <property role="TrG5h" value="check_AggregateRootRepository" />
    <property role="3GE5qa" value="aggregateRepository" />
    <node concept="3clFbS" id="7mYw4uWE8Za" role="18ibNy">
      <node concept="3clFbF" id="23PrvZQXtVr" role="3cqZAp">
        <node concept="2OqwBi" id="23PrvZQXAmU" role="3clFbG">
          <node concept="2OqwBi" id="23PrvZQXu66" role="2Oq$k0">
            <node concept="1YBJjd" id="23PrvZQXtVq" role="2Oq$k0">
              <ref role="1YBMHb" node="7mYw4uWE8Zc" resolve="aggregateRootRepository" />
            </node>
            <node concept="2qgKlT" id="23PrvZQXA7J" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:23PrvZQXxsd" resolve="methods" />
            </node>
          </node>
          <node concept="AQDAd" id="23PrvZQXA$8" role="2OqNvi">
            <ref role="37wK5l" node="23PrvZR5M3X" resolve="forEachMethodWithSameSignature" />
            <node concept="1bVj0M" id="23PrvZQXAA4" role="37wK5m">
              <node concept="3clFbS" id="23PrvZQXAA5" role="1bW5cS">
                <node concept="2MkqsV" id="23PrvZQXAR8" role="3cqZAp">
                  <node concept="Xl_RD" id="23PrvZQXB3n" role="2MkJ7o">
                    <property role="Xl_RC" value="Method signature already defined" />
                  </node>
                  <node concept="37vLTw" id="23PrvZQXBs_" role="1urrMF">
                    <ref role="3cqZAo" node="23PrvZQXABO" resolve="method" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="23PrvZQXABO" role="1bW2Oz">
                <property role="TrG5h" value="method" />
                <node concept="3Tqbb2" id="23PrvZQXAHb" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5SyewCa3mp_" role="3cqZAp" />
      <node concept="3clFbJ" id="5SyewCa3lof" role="3cqZAp">
        <node concept="3clFbS" id="5SyewCa3loh" role="3clFbx">
          <node concept="a7r0C" id="5SyewCa3nGH" role="3cqZAp">
            <node concept="2OqwBi" id="5SyewCa3o73" role="a7wSD">
              <node concept="Xl_RD" id="5SyewCa3nH2" role="2Oq$k0">
                <property role="Xl_RC" value="Aggregate Repository should provide a method which returns " />
              </node>
              <node concept="liA8E" id="5SyewCa3oUf" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                <node concept="2OqwBi" id="5SyewCa3qNM" role="37wK5m">
                  <node concept="2OqwBi" id="5SyewCa3q3F" role="2Oq$k0">
                    <node concept="2OqwBi" id="5SyewCa3p8E" role="2Oq$k0">
                      <node concept="1YBJjd" id="5SyewCa3oVR" role="2Oq$k0">
                        <ref role="1YBMHb" node="7mYw4uWE8Zc" resolve="aggregateRootRepository" />
                      </node>
                      <node concept="3TrEf2" id="5SyewCa3pM1" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:5SyewC9Zz9D" resolve="aggregateReference" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="5SyewCa3qt3" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5SyewCa3rjG" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="5SyewCa3rsg" role="1urrMF">
              <ref role="1YBMHb" node="7mYw4uWE8Zc" resolve="aggregateRootRepository" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="5SyewCa3m$g" role="3clFbw">
          <node concept="3fqX7Q" id="5SyewCa3nzU" role="3uHU7B">
            <node concept="2OqwBi" id="5SyewCa3nzW" role="3fr31v">
              <node concept="1YBJjd" id="5SyewCa3nzX" role="2Oq$k0">
                <ref role="1YBMHb" node="7mYw4uWE8Zc" resolve="aggregateRootRepository" />
              </node>
              <node concept="3TrcHB" id="5SyewCa3nzY" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5SyewCa3lMG" role="3uHU7w">
            <node concept="2OqwBi" id="5SyewCa3lMI" role="3fr31v">
              <node concept="2OqwBi" id="5SyewCa3lMJ" role="2Oq$k0">
                <node concept="1YBJjd" id="5SyewCa3lMK" role="2Oq$k0">
                  <ref role="1YBMHb" node="7mYw4uWE8Zc" resolve="aggregateRootRepository" />
                </node>
                <node concept="2qgKlT" id="5SyewCa3lML" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:23PrvZQXxsd" resolve="methods" />
                </node>
              </node>
              <node concept="2HwmR7" id="5SyewCa3lMM" role="2OqNvi">
                <node concept="1bVj0M" id="5SyewCa3lMN" role="23t8la">
                  <node concept="3clFbS" id="5SyewCa3lMO" role="1bW5cS">
                    <node concept="3clFbF" id="5SyewCa3lMP" role="3cqZAp">
                      <node concept="2OqwBi" id="5SyewCa3lMQ" role="3clFbG">
                        <node concept="2OqwBi" id="1jrq3norsB0" role="2Oq$k0">
                          <node concept="2OqwBi" id="5SyewCa3lMR" role="2Oq$k0">
                            <node concept="37vLTw" id="5SyewCa3lMS" role="2Oq$k0">
                              <ref role="3cqZAo" node="5SyewCa3lMY" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="5SyewCa3lMT" role="2OqNvi">
                              <ref role="3Tt5mk" to="3nll:7fqk8p40d8l" resolve="returnTypeWrapper" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="1jrq3nort8M" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:6ci4EVj$QUz" resolve="wrappedType" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="5SyewCa3lMU" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:3DbZR$NHBwn" resolve="hasSameDatatype" />
                          <node concept="2OqwBi" id="5SyewCa3lMV" role="37wK5m">
                            <node concept="1YBJjd" id="5SyewCa3lMW" role="2Oq$k0">
                              <ref role="1YBMHb" node="7mYw4uWE8Zc" resolve="aggregateRootRepository" />
                            </node>
                            <node concept="3TrEf2" id="5SyewCa3lMX" role="2OqNvi">
                              <ref role="3Tt5mk" to="3nll:5SyewC9Zz9D" resolve="aggregateReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5SyewCa3lMY" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5SyewCa3lMZ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7mYw4uWE8Zc" role="1YuTPh">
      <property role="TrG5h" value="aggregateRootRepository" />
      <ref role="1YaFvo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
    </node>
  </node>
  <node concept="apGqk" id="23PrvZR5KZE">
    <property role="3GE5qa" value="extensions" />
    <property role="TrG5h" value="MethodExtensions" />
    <node concept="ATzpf" id="23PrvZR5M3X" role="a7sos">
      <property role="TrG5h" value="forEachMethodWithSameSignature" />
      <node concept="37vLTG" id="23PrvZR5M3Y" role="3clF46">
        <property role="TrG5h" value="callback" />
        <node concept="1ajhzC" id="23PrvZR5M3Z" role="1tU5fm">
          <node concept="3cqZAl" id="23PrvZR5M40" role="1ajl9A" />
          <node concept="3Tqbb2" id="23PrvZR5M41" role="1ajw0F">
            <ref role="ehGHo" to="3nll:7fqk8p3W55Y" resolve="Method" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="23PrvZR5M42" role="1B3o_S" />
      <node concept="3clFbS" id="23PrvZR5M43" role="3clF47">
        <node concept="3cpWs8" id="23PrvZR5M44" role="3cqZAp">
          <node concept="3cpWsn" id="23PrvZR5M45" role="3cpWs9">
            <property role="TrG5h" value="methods" />
            <node concept="_YKpA" id="23PrvZR5M46" role="1tU5fm">
              <node concept="3Tqbb2" id="23PrvZR5M47" role="_ZDj9">
                <ref role="ehGHo" to="3nll:7fqk8p3W55Y" resolve="Method" />
              </node>
            </node>
            <node concept="2OqwBi" id="23PrvZR5M48" role="33vP2m">
              <node concept="2V_BSl" id="23PrvZR5M49" role="2Oq$k0" />
              <node concept="ANE8D" id="23PrvZR5M4a" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="23PrvZR5M4b" role="3cqZAp">
          <node concept="3cpWsn" id="23PrvZR5M4c" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="23PrvZR5M4d" role="1tU5fm" />
            <node concept="3cmrfG" id="23PrvZR5M4e" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="23PrvZR5M4f" role="2LFqv$">
            <node concept="3cpWs8" id="23PrvZR5M4g" role="3cqZAp">
              <node concept="3cpWsn" id="23PrvZR5M4h" role="3cpWs9">
                <property role="TrG5h" value="method" />
                <node concept="3Tqbb2" id="23PrvZR5M4i" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:7fqk8p3W55Y" resolve="Method" />
                </node>
                <node concept="1y4W85" id="23PrvZR5M4j" role="33vP2m">
                  <node concept="37vLTw" id="23PrvZR5M4k" role="1y58nS">
                    <ref role="3cqZAo" node="23PrvZR5M4c" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="23PrvZR5M4l" role="1y566C">
                    <ref role="3cqZAo" node="23PrvZR5M45" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="23PrvZR5M4m" role="3cqZAp">
              <node concept="3clFbS" id="23PrvZR5M4n" role="3clFbx">
                <node concept="3N13vt" id="23PrvZR5M4o" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="23PrvZR5M4p" role="3clFbw">
                <node concept="2OqwBi" id="23PrvZR5M4q" role="3uHU7B">
                  <node concept="37vLTw" id="23PrvZR5M4r" role="2Oq$k0">
                    <ref role="3cqZAo" node="23PrvZR5M4h" resolve="method" />
                  </node>
                  <node concept="3TrcHB" id="23PrvZR5M4s" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="10Nm6u" id="23PrvZR5M4t" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbH" id="23PrvZR5M4u" role="3cqZAp" />
            <node concept="1Dw8fO" id="23PrvZR5M4v" role="3cqZAp">
              <node concept="3clFbS" id="23PrvZR5M4w" role="2LFqv$">
                <node concept="3cpWs8" id="23PrvZR5M4x" role="3cqZAp">
                  <node concept="3cpWsn" id="23PrvZR5M4y" role="3cpWs9">
                    <property role="TrG5h" value="otherMethod" />
                    <node concept="3Tqbb2" id="23PrvZR5M4z" role="1tU5fm">
                      <ref role="ehGHo" to="3nll:7fqk8p3W55Y" resolve="Method" />
                    </node>
                    <node concept="1y4W85" id="23PrvZR5M4$" role="33vP2m">
                      <node concept="37vLTw" id="23PrvZR5M4_" role="1y58nS">
                        <ref role="3cqZAo" node="23PrvZR5M54" resolve="j" />
                      </node>
                      <node concept="37vLTw" id="23PrvZR5M4A" role="1y566C">
                        <ref role="3cqZAo" node="23PrvZR5M45" resolve="methods" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="23PrvZR5M4B" role="3cqZAp">
                  <node concept="3clFbS" id="23PrvZR5M4C" role="3clFbx">
                    <node concept="3N13vt" id="23PrvZR5M4D" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="23PrvZR5M4E" role="3clFbw">
                    <node concept="10Nm6u" id="23PrvZR5M4F" role="3uHU7w" />
                    <node concept="2OqwBi" id="23PrvZR5M4G" role="3uHU7B">
                      <node concept="37vLTw" id="23PrvZR5M4H" role="2Oq$k0">
                        <ref role="3cqZAo" node="23PrvZR5M4y" resolve="otherMethod" />
                      </node>
                      <node concept="3TrcHB" id="23PrvZR5M4I" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="23PrvZR5M4J" role="3cqZAp" />
                <node concept="3clFbJ" id="23PrvZR5M4K" role="3cqZAp">
                  <node concept="3clFbS" id="23PrvZR5M4L" role="3clFbx">
                    <node concept="3clFbF" id="23PrvZR5M4M" role="3cqZAp">
                      <node concept="2OqwBi" id="23PrvZR5M4N" role="3clFbG">
                        <node concept="37vLTw" id="23PrvZR5M4O" role="2Oq$k0">
                          <ref role="3cqZAo" node="23PrvZR5M3Y" resolve="callback" />
                        </node>
                        <node concept="1Bd96e" id="23PrvZR5M4P" role="2OqNvi">
                          <node concept="37vLTw" id="23PrvZR5M4Q" role="1BdPVh">
                            <ref role="3cqZAo" node="23PrvZR5M4h" resolve="method" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="23PrvZR5M4R" role="3cqZAp">
                      <node concept="2OqwBi" id="23PrvZR5M4S" role="3clFbG">
                        <node concept="37vLTw" id="23PrvZR5M4T" role="2Oq$k0">
                          <ref role="3cqZAo" node="23PrvZR5M3Y" resolve="callback" />
                        </node>
                        <node concept="1Bd96e" id="23PrvZR5M4U" role="2OqNvi">
                          <node concept="37vLTw" id="23PrvZR5M4V" role="1BdPVh">
                            <ref role="3cqZAo" node="23PrvZR5M4y" resolve="otherMethod" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="23PrvZR7bFv" role="3clFbw">
                    <node concept="2OqwBi" id="23PrvZR7bOj" role="3uHU7w">
                      <node concept="AQDAd" id="23PrvZR7bOm" role="2OqNvi">
                        <ref role="37wK5l" node="23PrvZR5Qp7" resolve="areParametersTheSame" />
                        <node concept="37vLTw" id="23PrvZR7d47" role="37wK5m">
                          <ref role="3cqZAo" node="23PrvZR5M4y" resolve="otherMethod" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="23PrvZR7cS7" role="2Oq$k0">
                        <ref role="3cqZAo" node="23PrvZR5M4h" resolve="method" />
                      </node>
                    </node>
                    <node concept="17R0WA" id="3DbZR$PhibY" role="3uHU7B">
                      <node concept="2OqwBi" id="23PrvZR5M4X" role="3uHU7B">
                        <node concept="37vLTw" id="23PrvZR5M4Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="23PrvZR5M4h" resolve="method" />
                        </node>
                        <node concept="3TrcHB" id="23PrvZR5M4Z" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="23PrvZR5M51" role="3uHU7w">
                        <node concept="37vLTw" id="23PrvZR5M52" role="2Oq$k0">
                          <ref role="3cqZAo" node="23PrvZR5M4y" resolve="otherMethod" />
                        </node>
                        <node concept="3TrcHB" id="23PrvZR5M53" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="23PrvZR5M54" role="1Duv9x">
                <property role="TrG5h" value="j" />
                <node concept="10Oyi0" id="23PrvZR5M55" role="1tU5fm" />
                <node concept="3cpWs3" id="23PrvZR5M56" role="33vP2m">
                  <node concept="3cmrfG" id="23PrvZR5M57" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="23PrvZR5M58" role="3uHU7B">
                    <ref role="3cqZAo" node="23PrvZR5M4c" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="23PrvZR5M59" role="1Dwp0S">
                <node concept="2OqwBi" id="23PrvZR5M5a" role="3uHU7w">
                  <node concept="37vLTw" id="23PrvZR5M5b" role="2Oq$k0">
                    <ref role="3cqZAo" node="23PrvZR5M45" resolve="methods" />
                  </node>
                  <node concept="34oBXx" id="23PrvZR5M5c" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="23PrvZR5M5d" role="3uHU7B">
                  <ref role="3cqZAo" node="23PrvZR5M54" resolve="j" />
                </node>
              </node>
              <node concept="3uNrnE" id="23PrvZR5M5e" role="1Dwrff">
                <node concept="37vLTw" id="23PrvZR5M5f" role="2$L3a6">
                  <ref role="3cqZAo" node="23PrvZR5M54" resolve="j" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="23PrvZR5M5g" role="1Dwp0S">
            <node concept="2OqwBi" id="23PrvZR5M5h" role="3uHU7w">
              <node concept="37vLTw" id="23PrvZR5M5i" role="2Oq$k0">
                <ref role="3cqZAo" node="23PrvZR5M45" resolve="methods" />
              </node>
              <node concept="34oBXx" id="23PrvZR5M5j" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="23PrvZR5M5k" role="3uHU7B">
              <ref role="3cqZAo" node="23PrvZR5M4c" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="23PrvZR5M5l" role="1Dwrff">
            <node concept="37vLTw" id="23PrvZR5M5m" role="2$L3a6">
              <ref role="3cqZAo" node="23PrvZR5M4c" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="23PrvZR5M5n" role="aoRGl">
        <node concept="3Tqbb2" id="23PrvZR5M5o" role="A3Ik2">
          <ref role="ehGHo" to="3nll:7fqk8p3W55Y" resolve="Method" />
        </node>
      </node>
      <node concept="3cqZAl" id="23PrvZR5M5p" role="3clF45" />
    </node>
    <node concept="ATzpf" id="23PrvZR5Qp7" role="a7sos">
      <property role="TrG5h" value="areParametersTheSame" />
      <node concept="37vLTG" id="23PrvZR5QCn" role="3clF46">
        <property role="TrG5h" value="otherMethod" />
        <node concept="3Tqbb2" id="23PrvZR5QDb" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p3W55Y" resolve="Method" />
        </node>
      </node>
      <node concept="3Tm1VV" id="23PrvZR5Qp8" role="1B3o_S" />
      <node concept="10P_77" id="23PrvZR5QA$" role="3clF45" />
      <node concept="3clFbS" id="23PrvZR5Qpa" role="3clF47">
        <node concept="3cpWs6" id="3DbZR$NLA3S" role="3cqZAp">
          <node concept="2OqwBi" id="3DbZR$NLDA8" role="3cqZAk">
            <node concept="2OqwBi" id="3DbZR$NLAYg" role="2Oq$k0">
              <node concept="2V_BSl" id="3DbZR$NLAvb" role="2Oq$k0" />
              <node concept="3Tsc0h" id="3DbZR$NLBwJ" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
              </node>
            </node>
            <node concept="AQDAd" id="3DbZR$NLG0h" role="2OqNvi">
              <ref role="37wK5l" node="3DbZR$NLlLA" resolve="areParametersTheSame" />
              <node concept="2OqwBi" id="3DbZR$NLHOm" role="37wK5m">
                <node concept="37vLTw" id="3DbZR$NLHkB" role="2Oq$k0">
                  <ref role="3cqZAo" node="23PrvZR5QCn" resolve="otherMethod" />
                </node>
                <node concept="3Tsc0h" id="3DbZR$NLInB" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="23PrvZR5QEY" role="aoRGl">
        <ref role="ehGHo" to="3nll:7fqk8p3W55Y" resolve="Method" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1URsbDnWAqd" role="1B3o_S" />
  </node>
  <node concept="apGqk" id="3DbZR$NLlKL">
    <property role="3GE5qa" value="extensions" />
    <property role="TrG5h" value="ParameterExtensions" />
    <node concept="ATzpf" id="3DbZR$NLlLA" role="a7sos">
      <property role="TrG5h" value="areParametersTheSame" />
      <node concept="37vLTG" id="3DbZR$NLlLB" role="3clF46">
        <property role="TrG5h" value="otherParameters" />
        <node concept="_YKpA" id="3DbZR$NLp8A" role="1tU5fm">
          <node concept="3Tqbb2" id="3DbZR$NLp8C" role="_ZDj9">
            <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3DbZR$NLlLD" role="1B3o_S" />
      <node concept="10P_77" id="3DbZR$NLlLE" role="3clF45" />
      <node concept="3clFbS" id="3DbZR$NLlLF" role="3clF47">
        <node concept="3clFbJ" id="3DbZR$NLlLW" role="3cqZAp">
          <node concept="3y3z36" id="3DbZR$NLlLX" role="3clFbw">
            <node concept="2OqwBi" id="3DbZR$NLtXU" role="3uHU7B">
              <node concept="2V_BSl" id="3DbZR$NLqSl" role="2Oq$k0" />
              <node concept="34oBXx" id="3DbZR$NLwSI" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="3DbZR$NLyVd" role="3uHU7w">
              <node concept="37vLTw" id="3DbZR$NLyVe" role="2Oq$k0">
                <ref role="3cqZAo" node="3DbZR$NLlLB" resolve="otherParameters" />
              </node>
              <node concept="34oBXx" id="3DbZR$NLyVf" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="3DbZR$NLlM0" role="3clFbx">
            <node concept="3cpWs6" id="3DbZR$NLlM1" role="3cqZAp">
              <node concept="3clFbT" id="3DbZR$NLlM2" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1URsbDnWy7O" role="3cqZAp" />
        <node concept="1Dw8fO" id="3DbZR$NLlM4" role="3cqZAp">
          <node concept="3clFbS" id="3DbZR$NLlM5" role="2LFqv$">
            <node concept="3clFbJ" id="3DbZR$NLlMe" role="3cqZAp">
              <node concept="3clFbS" id="3DbZR$NLlMf" role="3clFbx">
                <node concept="3cpWs6" id="3DbZR$NLlMg" role="3cqZAp">
                  <node concept="3clFbT" id="3DbZR$NLlMh" role="3cqZAk" />
                </node>
              </node>
              <node concept="22lmx$" id="3DbZR$NOLnK" role="3clFbw">
                <node concept="3clFbC" id="3DbZR$NLlMi" role="3uHU7B">
                  <node concept="2OqwBi" id="3DbZR$NLlMk" role="3uHU7B">
                    <node concept="3TrEf2" id="3DbZR$NLlMm" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:4LpUh3YaKVD" resolve="type" />
                    </node>
                    <node concept="1y4W85" id="3DbZR$NOK0W" role="2Oq$k0">
                      <node concept="37vLTw" id="3DbZR$NOK0X" role="1y58nS">
                        <ref role="3cqZAo" node="3DbZR$NLlMQ" resolve="i" />
                      </node>
                      <node concept="2V_BSl" id="3DbZR$NOK0Y" role="1y566C" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="3DbZR$NLlMj" role="3uHU7w" />
                </node>
                <node concept="3clFbC" id="3DbZR$NOMxs" role="3uHU7w">
                  <node concept="10Nm6u" id="3DbZR$NONwf" role="3uHU7w" />
                  <node concept="2OqwBi" id="3DbZR$NOLLU" role="3uHU7B">
                    <node concept="1y4W85" id="3DbZR$NLlMs" role="2Oq$k0">
                      <node concept="37vLTw" id="3DbZR$NLlMt" role="1y58nS">
                        <ref role="3cqZAo" node="3DbZR$NLlMQ" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="3DbZR$NLlMv" role="1y566C">
                        <ref role="3cqZAo" node="3DbZR$NLlLB" resolve="otherParameters" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="3DbZR$NOMcS" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:4LpUh3YaKVD" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3DbZR$NLlMx" role="3cqZAp">
              <node concept="3clFbS" id="3DbZR$NLlMy" role="3clFbx">
                <node concept="3cpWs6" id="3DbZR$NLlMz" role="3cqZAp">
                  <node concept="3clFbT" id="3DbZR$NLlM$" role="3cqZAk" />
                </node>
              </node>
              <node concept="3fqX7Q" id="3DbZR$NLlM_" role="3clFbw">
                <node concept="2OqwBi" id="3DbZR$NLlMA" role="3fr31v">
                  <node concept="2OqwBi" id="3DbZR$NLlMB" role="2Oq$k0">
                    <node concept="3TrEf2" id="3DbZR$NLlMD" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:4LpUh3YaKVD" resolve="type" />
                    </node>
                    <node concept="1y4W85" id="3DbZR$NOKOz" role="2Oq$k0">
                      <node concept="37vLTw" id="3DbZR$NOKO$" role="1y58nS">
                        <ref role="3cqZAo" node="3DbZR$NLlMQ" resolve="i" />
                      </node>
                      <node concept="2V_BSl" id="3DbZR$NOKO_" role="1y566C" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="3DbZR$NLlME" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3DbZR$NHBwn" resolve="hasSameDatatype" />
                    <node concept="2OqwBi" id="3DbZR$NLlMF" role="37wK5m">
                      <node concept="3TrEf2" id="3DbZR$NLlMH" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:4LpUh3YaKVD" resolve="type" />
                      </node>
                      <node concept="1y4W85" id="3DbZR$NONM9" role="2Oq$k0">
                        <node concept="37vLTw" id="3DbZR$NONMa" role="1y58nS">
                          <ref role="3cqZAo" node="3DbZR$NLlMQ" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="3DbZR$NONMb" role="1y566C">
                          <ref role="3cqZAo" node="3DbZR$NLlLB" resolve="otherParameters" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3DbZR$NLlMQ" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3DbZR$NLlMR" role="1tU5fm" />
            <node concept="3cmrfG" id="3DbZR$NLlMS" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3DbZR$NLlMT" role="1Dwp0S">
            <node concept="2OqwBi" id="3DbZR$NLyaL" role="3uHU7w">
              <node concept="2V_BSl" id="3DbZR$NLxbk" role="2Oq$k0" />
              <node concept="34oBXx" id="3DbZR$NLyPe" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="3DbZR$NLlMV" role="3uHU7B">
              <ref role="3cqZAo" node="3DbZR$NLlMQ" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="3DbZR$NLlMW" role="1Dwrff">
            <node concept="37vLTw" id="3DbZR$NLlMX" role="2$L3a6">
              <ref role="3cqZAo" node="3DbZR$NLlMQ" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3DbZR$NLlMZ" role="3cqZAp">
          <node concept="3clFbT" id="3DbZR$NLlN0" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="3DbZR$NLpXe" role="aoRGl">
        <node concept="3Tqbb2" id="3DbZR$NLpXg" role="_ZDj9">
          <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1URsbDnW$CE" role="1B3o_S" />
  </node>
  <node concept="18kY7G" id="3DbZR$NQdQb">
    <property role="TrG5h" value="check_Method" />
    <property role="3GE5qa" value="method" />
    <node concept="3clFbS" id="3DbZR$NQdQc" role="18ibNy">
      <node concept="3clFbJ" id="5jZDGTfFxmM" role="3cqZAp">
        <node concept="3fqX7Q" id="5jZDGTfFxmN" role="3clFbw">
          <node concept="2OqwBi" id="5jZDGTfFxmO" role="3fr31v">
            <node concept="1YBJjd" id="5jZDGTfFxmP" role="2Oq$k0">
              <ref role="1YBMHb" node="3DbZR$NQdQe" resolve="method" />
            </node>
            <node concept="AQDAd" id="5jZDGTfFxmQ" role="2OqNvi">
              <ref role="37wK5l" node="5jZDGTfFrS_" resolve="startsWithLowercaseLetter" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5jZDGTfFxmR" role="3clFbx">
          <node concept="a7r0C" id="5jZDGTfFxmS" role="3cqZAp">
            <node concept="Xl_RD" id="5jZDGTfFxmT" role="a7wSD">
              <property role="Xl_RC" value="Methods should start with a lowercase letter" />
            </node>
            <node concept="1YBJjd" id="5jZDGTfFxmU" role="1urrMF">
              <ref role="1YBMHb" node="3DbZR$NQdQe" resolve="method" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5jZDGTfFu78" role="3cqZAp" />
      <node concept="3clFbF" id="3DbZR$NQdQO" role="3cqZAp">
        <node concept="2OqwBi" id="3DbZR$NQg_7" role="3clFbG">
          <node concept="2OqwBi" id="3DbZR$NQe33" role="2Oq$k0">
            <node concept="1YBJjd" id="3DbZR$NQdQN" role="2Oq$k0">
              <ref role="1YBMHb" node="3DbZR$NQdQe" resolve="method" />
            </node>
            <node concept="3Tsc0h" id="3DbZR$NQeoL" role="2OqNvi">
              <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
            </node>
          </node>
          <node concept="AQDAd" id="3DbZR$NQiOL" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="3DbZR$NQjdb" role="37wK5m">
              <node concept="3clFbS" id="3DbZR$NQjdc" role="1bW5cS">
                <node concept="2MkqsV" id="3DbZR$NQjm9" role="3cqZAp">
                  <node concept="3cpWs3" id="3DbZR$NQlRQ" role="2MkJ7o">
                    <node concept="Xl_RD" id="3DbZR$NQlUs" role="3uHU7w">
                      <property role="Xl_RC" value=" already defined" />
                    </node>
                    <node concept="2OqwBi" id="3DbZR$NQjVM" role="3uHU7B">
                      <node concept="Xl_RD" id="3DbZR$NQjnG" role="2Oq$k0">
                        <property role="Xl_RC" value="Parameter with name " />
                      </node>
                      <node concept="liA8E" id="3DbZR$NQkHv" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                        <node concept="2OqwBi" id="3DbZR$NQkWt" role="37wK5m">
                          <node concept="37vLTw" id="3DbZR$NQkKr" role="2Oq$k0">
                            <ref role="3cqZAo" node="3DbZR$NQjew" resolve="parameter" />
                          </node>
                          <node concept="3TrcHB" id="3DbZR$NQlvj" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3DbZR$NQm8X" role="1urrMF">
                    <ref role="3cqZAo" node="3DbZR$NQjew" resolve="parameter" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="3DbZR$NQjew" role="1bW2Oz">
                <property role="TrG5h" value="parameter" />
                <node concept="3Tqbb2" id="3DbZR$NQjiv" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5jZDGTfFqK9" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="3DbZR$NQdQe" role="1YuTPh">
      <property role="TrG5h" value="method" />
      <ref role="1YaFvo" to="3nll:7fqk8p3W55Y" resolve="Method" />
    </node>
  </node>
  <node concept="18kY7G" id="3DbZR$O4KdL">
    <property role="TrG5h" value="check_Query" />
    <property role="3GE5qa" value="query" />
    <node concept="3clFbS" id="3DbZR$O4KdM" role="18ibNy">
      <node concept="3cpWs8" id="51Z40Vxegbb" role="3cqZAp">
        <node concept="3cpWsn" id="51Z40Vxegbc" role="3cpWs9">
          <property role="TrG5h" value="queryContainer" />
          <node concept="3Tqbb2" id="51Z40Vxegb7" role="1tU5fm">
            <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
          </node>
          <node concept="2OqwBi" id="51Z40Vxegbd" role="33vP2m">
            <node concept="1YBJjd" id="51Z40Vxegbe" role="2Oq$k0">
              <ref role="1YBMHb" node="3DbZR$O4KdO" resolve="query" />
            </node>
            <node concept="2qgKlT" id="51Z40Vxegbf" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:6gxxZVrXJ64" resolve="getQueryContainer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="51Z40Vxegdk" role="3cqZAp" />
      <node concept="3clFbJ" id="51Z40VxeaW2" role="3cqZAp">
        <node concept="1Wc70l" id="51Z40VxeaW3" role="3clFbw">
          <node concept="1Wc70l" id="sPJqcpYGpU" role="3uHU7B">
            <node concept="2OqwBi" id="sPJqcpYGDg" role="3uHU7B">
              <node concept="37vLTw" id="sPJqcpYGqR" role="2Oq$k0">
                <ref role="3cqZAo" node="51Z40Vxegbc" resolve="queryContainer" />
              </node>
              <node concept="3x8VRR" id="sPJqcpYHbi" role="2OqNvi" />
            </node>
            <node concept="3fqX7Q" id="51Z40Vxeepl" role="3uHU7w">
              <node concept="2OqwBi" id="51Z40Vxeepn" role="3fr31v">
                <node concept="2qgKlT" id="51Z40Vxeepr" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:6gxxZVtebNx" resolve="isQueriesBlock" />
                </node>
                <node concept="37vLTw" id="51Z40VxegfE" role="2Oq$k0">
                  <ref role="3cqZAo" node="51Z40Vxegbc" resolve="queryContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="51Z40VxeaW9" role="3uHU7w">
            <node concept="1YBJjd" id="51Z40VxeaWa" role="2Oq$k0">
              <ref role="1YBMHb" node="3DbZR$O4KdO" resolve="query" />
            </node>
            <node concept="3TrcHB" id="51Z40VxeaWb" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="51Z40VxeaWc" role="3clFbx">
          <node concept="2MkqsV" id="51Z40VxeaWd" role="3cqZAp">
            <node concept="3cpWs3" id="51Z40Vxeh6x" role="2MkJ7o">
              <node concept="Xl_RD" id="51Z40Vxeh7L" role="3uHU7w">
                <property role="Xl_RC" value="' scope" />
              </node>
              <node concept="3cpWs3" id="51Z40Vxehgg" role="3uHU7B">
                <node concept="2OqwBi" id="51Z40Vxeidv" role="3uHU7w">
                  <node concept="2OqwBi" id="51Z40VxehwZ" role="2Oq$k0">
                    <node concept="37vLTw" id="51Z40Vxehkh" role="2Oq$k0">
                      <ref role="3cqZAo" node="51Z40Vxegbc" resolve="queryContainer" />
                    </node>
                    <node concept="3TrcHB" id="51Z40Vxei3J" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                    </node>
                  </node>
                  <node concept="1XCIdh" id="51Z40VxeivT" role="2OqNvi" />
                </node>
                <node concept="Xl_RD" id="51Z40VxeaWe" role="3uHU7B">
                  <property role="Xl_RC" value="Required repositories should be defined in the 'query " />
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="51Z40VxeaWf" role="1urrMF">
              <ref role="1YBMHb" node="3DbZR$O4KdO" resolve="query" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3DbZR$O4KdO" role="1YuTPh">
      <property role="TrG5h" value="query" />
      <ref role="1YaFvo" to="3nll:7fqk8p43yh4" resolve="Query" />
    </node>
  </node>
  <node concept="18kY7G" id="3DbZR$PjU3A">
    <property role="TrG5h" value="check_DataType" />
    <property role="3GE5qa" value="typing" />
    <node concept="3clFbS" id="3DbZR$PjU3B" role="18ibNy" />
    <node concept="1YaCAy" id="3DbZR$PjU3D" role="1YuTPh">
      <property role="TrG5h" value="dataType" />
      <ref role="1YaFvo" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
  <node concept="18kY7G" id="3FBObrnI0Pr">
    <property role="TrG5h" value="check_ImportStatementReferenceGenericTypeCount" />
    <property role="3GE5qa" value="import" />
    <node concept="3clFbS" id="3FBObrnI0Ps" role="18ibNy">
      <node concept="3clFbJ" id="3FBObrnI1iB" role="3cqZAp">
        <node concept="3fqX7Q" id="SXYyTW86jV" role="3clFbw">
          <node concept="2OqwBi" id="SXYyTW86jX" role="3fr31v">
            <node concept="1YBJjd" id="SXYyTW86jY" role="2Oq$k0">
              <ref role="1YBMHb" node="3FBObrnI0Pu" resolve="importReference" />
            </node>
            <node concept="2qgKlT" id="SXYyTW86jZ" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:SXYyTVHx5I" resolve="isTypeCountCorrect" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3FBObrnI1iD" role="3clFbx">
          <node concept="2MkqsV" id="3FBObrqer4z" role="3cqZAp">
            <node concept="3cpWs3" id="3FBObrqeru4" role="2MkJ7o">
              <node concept="2OqwBi" id="3FBObrqerGm" role="3uHU7w">
                <node concept="1YBJjd" id="3FBObrqerum" role="2Oq$k0">
                  <ref role="1YBMHb" node="3FBObrnI0Pu" resolve="importReference" />
                </node>
                <node concept="2qgKlT" id="SXYyTW5yxo" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:SXYyTVHqCv" resolve="expectedTypeCount" />
                </node>
              </node>
              <node concept="Xl_RD" id="3FBObrqer4U" role="3uHU7B">
                <property role="Xl_RC" value="Generic type argument count does not match. Expected: " />
              </node>
            </node>
            <node concept="1YBJjd" id="3FBObrqexOO" role="1urrMF">
              <ref role="1YBMHb" node="3FBObrnI0Pu" resolve="importReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3FBObrnI0Pu" role="1YuTPh">
      <property role="TrG5h" value="importReference" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
    </node>
  </node>
  <node concept="18kY7G" id="3FBObrowvH8">
    <property role="TrG5h" value="check_IComponentWithRequiredParameters" />
    <property role="3GE5qa" value="variable.parameter" />
    <node concept="3clFbS" id="3FBObrowvH9" role="18ibNy">
      <node concept="3clFbJ" id="3FBObrowvIq" role="3cqZAp">
        <node concept="2OqwBi" id="3FBObrowyA2" role="3clFbw">
          <node concept="2OqwBi" id="3FBObrowvSk" role="2Oq$k0">
            <node concept="1YBJjd" id="3FBObrowvIA" role="2Oq$k0">
              <ref role="1YBMHb" node="3FBObrowvHb" resolve="iComponentWithRequiredParameters" />
            </node>
            <node concept="3Tsc0h" id="3FBObrowwa3" role="2OqNvi">
              <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
            </node>
          </node>
          <node concept="1v1jN8" id="3FBObrowBHa" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="3FBObrowvIs" role="3clFbx">
          <node concept="2MkqsV" id="3FBObrowBJU" role="3cqZAp">
            <node concept="Xl_RD" id="3FBObrowBK9" role="2MkJ7o">
              <property role="Xl_RC" value="At least one Parameter is required" />
            </node>
            <node concept="1YBJjd" id="3FBObrowBKA" role="1urrMF">
              <ref role="1YBMHb" node="3FBObrowvHb" resolve="iComponentWithRequiredParameters" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3FBObrowvHb" role="1YuTPh">
      <property role="TrG5h" value="iComponentWithRequiredParameters" />
      <ref role="1YaFvo" to="3nll:3FBObrowvH5" resolve="IComponentWithRequiredParameters" />
    </node>
  </node>
  <node concept="18kY7G" id="3FBObroBTfP">
    <property role="TrG5h" value="check_IComponentWithParameters" />
    <property role="3GE5qa" value="variable.parameter" />
    <node concept="3clFbS" id="3FBObroBTfQ" role="18ibNy">
      <node concept="3clFbF" id="awtshkemBS" role="3cqZAp">
        <node concept="2OqwBi" id="awtshkepf3" role="3clFbG">
          <node concept="2OqwBi" id="awtshkemMz" role="2Oq$k0">
            <node concept="3Tsc0h" id="awtshken0s" role="2OqNvi">
              <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
            </node>
            <node concept="1YBJjd" id="3FBObroBUgA" role="2Oq$k0">
              <ref role="1YBMHb" node="3FBObroBTfS" resolve="component" />
            </node>
          </node>
          <node concept="AQDAd" id="awtshker5F" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="awtshker6E" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="3clFbS" id="awtshker6F" role="1bW5cS">
                <node concept="2MkqsV" id="awtshkerfO" role="3cqZAp">
                  <node concept="Xl_RD" id="awtshkerhn" role="2MkJ7o">
                    <property role="Xl_RC" value="Parameter name already defined" />
                  </node>
                  <node concept="37vLTw" id="awtshkeroT" role="1urrMF">
                    <ref role="3cqZAo" node="awtshker7S" resolve="parameter" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="awtshker7S" role="1bW2Oz">
                <property role="TrG5h" value="parameter" />
                <node concept="3Tqbb2" id="awtshkerbj" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3FBObroBTfS" role="1YuTPh">
      <property role="TrG5h" value="component" />
      <ref role="1YaFvo" to="3nll:oGImgNU0o$" resolve="IComponentWithParameters" />
    </node>
  </node>
  <node concept="18kY7G" id="2RbvdOKg80k">
    <property role="TrG5h" value="check_QueryContainer" />
    <property role="3GE5qa" value="queryContainer" />
    <node concept="3clFbS" id="2RbvdOKg80l" role="18ibNy">
      <node concept="3clFbJ" id="2RbvdOKg81k" role="3cqZAp">
        <node concept="3clFbS" id="2RbvdOKg81m" role="3clFbx">
          <node concept="2MkqsV" id="2RbvdOKgbvk" role="3cqZAp">
            <node concept="2OqwBi" id="2RbvdOKWpbx" role="2MkJ7o">
              <node concept="2OqwBi" id="2RbvdOKWmTW" role="2Oq$k0">
                <node concept="Xl_RD" id="2RbvdOKgbvz" role="2Oq$k0">
                  <property role="Xl_RC" value="Invalid " />
                </node>
                <node concept="liA8E" id="2RbvdOKWnJx" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                  <node concept="2OqwBi" id="2RbvdOKWoAZ" role="37wK5m">
                    <node concept="2OqwBi" id="2RbvdOKWnYQ" role="2Oq$k0">
                      <node concept="1YBJjd" id="2RbvdOKWnLb" role="2Oq$k0">
                        <ref role="1YBMHb" node="2RbvdOKg80n" resolve="queryContainer" />
                      </node>
                      <node concept="3TrcHB" id="2RbvdOKWosf" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                      </node>
                    </node>
                    <node concept="1XCIdh" id="2RbvdOKWoQQ" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2RbvdOKWqUE" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.concat(java.lang.String)" resolve="concat" />
                <node concept="Xl_RD" id="2RbvdOKWqXp" role="37wK5m">
                  <property role="Xl_RC" value=" name specified" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2RbvdOKgbT2" role="1urrMF">
              <node concept="1YBJjd" id="2RbvdOKgbHt" role="2Oq$k0">
                <ref role="1YBMHb" node="2RbvdOKg80n" resolve="queryContainer" />
              </node>
              <node concept="3TrEf2" id="2RbvdOKgcsr" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="2RbvdOKg9Fp" role="3clFbw">
          <node concept="3clFbC" id="2RbvdOKgbbg" role="3uHU7w">
            <node concept="10Nm6u" id="2RbvdOKgbtI" role="3uHU7w" />
            <node concept="2OqwBi" id="2RbvdOKg9JH" role="3uHU7B">
              <node concept="2OqwBi" id="2RbvdOKg9GK" role="2Oq$k0">
                <node concept="1YBJjd" id="2RbvdOKg9Gd" role="2Oq$k0">
                  <ref role="1YBMHb" node="2RbvdOKg80n" resolve="queryContainer" />
                </node>
                <node concept="3TrEf2" id="2RbvdOKg9Ii" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                </node>
              </node>
              <node concept="3TrcHB" id="2RbvdOKg9Lz" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2RbvdOKg8QV" role="3uHU7B">
            <node concept="2OqwBi" id="2RbvdOKg8fj" role="2Oq$k0">
              <node concept="1YBJjd" id="2RbvdOKg81$" role="2Oq$k0">
                <ref role="1YBMHb" node="2RbvdOKg80n" resolve="queryContainer" />
              </node>
              <node concept="3TrEf2" id="2RbvdOKg8Fp" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
              </node>
            </node>
            <node concept="3x8VRR" id="2RbvdOKg9h0" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5jZDGTibg$w" role="3cqZAp" />
      <node concept="3clFbF" id="5jZDGTibgC3" role="3cqZAp">
        <node concept="2OqwBi" id="5jZDGTibhC3" role="3clFbG">
          <node concept="2OqwBi" id="5jZDGTibgWs" role="2Oq$k0">
            <node concept="1YBJjd" id="5jZDGTibgC1" role="2Oq$k0">
              <ref role="1YBMHb" node="2RbvdOKg80n" resolve="queryContainer" />
            </node>
            <node concept="2qgKlT" id="5jZDGTibhrT" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5SyewCaMpun" resolve="queries" />
            </node>
          </node>
          <node concept="AQDAd" id="5jZDGTibi6O" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="5jZDGTibimr" role="37wK5m">
              <node concept="3clFbS" id="5jZDGTibims" role="1bW5cS">
                <node concept="2MkqsV" id="5jZDGTibiPY" role="3cqZAp">
                  <node concept="Xl_RD" id="5jZDGTibiRZ" role="2MkJ7o">
                    <property role="Xl_RC" value="Query name already defined" />
                  </node>
                  <node concept="37vLTw" id="5jZDGTibj1R" role="1urrMF">
                    <ref role="3cqZAo" node="5jZDGTibiFC" resolve="query" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="5jZDGTibiFC" role="1bW2Oz">
                <property role="TrG5h" value="query" />
                <node concept="3Tqbb2" id="5jZDGTibiKS" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="2RbvdOKg80t" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="2RbvdOKg80n" role="1YuTPh">
      <property role="TrG5h" value="queryContainer" />
      <ref role="1YaFvo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    </node>
  </node>
  <node concept="18kY7G" id="5jZDGTfHFe$">
    <property role="TrG5h" value="check_Parameter" />
    <property role="3GE5qa" value="variable.parameter" />
    <node concept="3clFbS" id="5jZDGTfHFe_" role="18ibNy">
      <node concept="3clFbJ" id="5jZDGTfHFeF" role="3cqZAp">
        <node concept="3fqX7Q" id="5jZDGTfHFeG" role="3clFbw">
          <node concept="2OqwBi" id="5jZDGTfHFeH" role="3fr31v">
            <node concept="1YBJjd" id="5jZDGTfHFeI" role="2Oq$k0">
              <ref role="1YBMHb" node="5jZDGTfHFeB" resolve="parameter" />
            </node>
            <node concept="AQDAd" id="5jZDGTfHFeJ" role="2OqNvi">
              <ref role="37wK5l" node="5jZDGTfFrS_" resolve="startsWithLowercaseLetter" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5jZDGTfHFeK" role="3clFbx">
          <node concept="a7r0C" id="5jZDGTfHFeL" role="3cqZAp">
            <node concept="Xl_RD" id="5jZDGTfHFeM" role="a7wSD">
              <property role="Xl_RC" value="Parameters should start with a lowercase letter" />
            </node>
            <node concept="1YBJjd" id="5jZDGTfHFeN" role="1urrMF">
              <ref role="1YBMHb" node="5jZDGTfHFeB" resolve="parameter" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5jZDGTfHFeB" role="1YuTPh">
      <property role="TrG5h" value="parameter" />
      <ref role="1YaFvo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
    </node>
  </node>
  <node concept="18kY7G" id="5jZDGTfHFD3">
    <property role="TrG5h" value="check_Property" />
    <property role="3GE5qa" value="variable.property" />
    <node concept="3clFbS" id="5jZDGTfHFD4" role="18ibNy">
      <node concept="3clFbJ" id="5jZDGTfHFDa" role="3cqZAp">
        <node concept="3fqX7Q" id="5jZDGTfHFDb" role="3clFbw">
          <node concept="2OqwBi" id="5jZDGTfHFDc" role="3fr31v">
            <node concept="1YBJjd" id="5jZDGTfHFDd" role="2Oq$k0">
              <ref role="1YBMHb" node="5jZDGTfHFD6" resolve="property" />
            </node>
            <node concept="AQDAd" id="5jZDGTfHFDe" role="2OqNvi">
              <ref role="37wK5l" node="5jZDGTfFrS_" resolve="startsWithLowercaseLetter" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5jZDGTfHFDf" role="3clFbx">
          <node concept="a7r0C" id="5jZDGTfHFDg" role="3cqZAp">
            <node concept="Xl_RD" id="5jZDGTfHFDh" role="a7wSD">
              <property role="Xl_RC" value="Property should start with a lowercase letter" />
            </node>
            <node concept="1YBJjd" id="5jZDGTfHFDi" role="1urrMF">
              <ref role="1YBMHb" node="5jZDGTfHFD6" resolve="property" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5jZDGTfHFD6" role="1YuTPh">
      <property role="TrG5h" value="property" />
      <ref role="1YaFvo" to="3nll:7fqk8p3V6WN" resolve="Property" />
    </node>
  </node>
  <node concept="18kY7G" id="5qxF18F4hUd">
    <property role="TrG5h" value="check_QueryProcessingSetting" />
    <property role="3GE5qa" value="generationSettings.query.processing" />
    <node concept="3clFbS" id="5qxF18F4hUe" role="18ibNy">
      <node concept="3clFbJ" id="5qxF18F6J7w" role="3cqZAp">
        <node concept="3clFbS" id="5qxF18F6J7y" role="3clFbx">
          <node concept="3cpWs6" id="5qxF18F6JGc" role="3cqZAp" />
        </node>
        <node concept="3fqX7Q" id="5qxF18F6JCA" role="3clFbw">
          <node concept="2OqwBi" id="5qxF18F6JCC" role="3fr31v">
            <node concept="1YBJjd" id="5qxF18F6JCD" role="2Oq$k0">
              <ref role="1YBMHb" node="5qxF18F4hUg" resolve="settings" />
            </node>
            <node concept="3TrcHB" id="5qxF18F6JCE" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:5qxF18EUWOZ" resolve="useProcessingImplementation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5qxF18FbXr_" role="3cqZAp" />
      <node concept="3cpWs8" id="5qxF18Fjeit" role="3cqZAp">
        <node concept="3cpWsn" id="5qxF18Fjeiu" role="3cpWs9">
          <property role="TrG5h" value="querySettings" />
          <node concept="3Tqbb2" id="5qxF18FjehE" role="1tU5fm">
            <ref role="ehGHo" to="3nll:omljbyVy_1" resolve="QueryGenerationSettings" />
          </node>
          <node concept="2OqwBi" id="5qxF18Fjeiw" role="33vP2m">
            <node concept="1YBJjd" id="5qxF18Fjeix" role="2Oq$k0">
              <ref role="1YBMHb" node="5qxF18F4hUg" resolve="settings" />
            </node>
            <node concept="2qgKlT" id="5qxF18Fjeiy" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5qxF18F4gHy" resolve="getQuerySettings" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5qxF18Fje6V" role="3cqZAp" />
      <node concept="3clFbJ" id="5qxF18F4hVg" role="3cqZAp">
        <node concept="1Wc70l" id="5qxF18FgLlh" role="3clFbw">
          <node concept="3fqX7Q" id="5qxF18F4k8e" role="3uHU7w">
            <node concept="2OqwBi" id="5qxF18F4k8h" role="3fr31v">
              <node concept="2qgKlT" id="5qxF18FbWan" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5qxF18FbINt" resolve="isSeparatedHandling" />
              </node>
              <node concept="2OqwBi" id="5qxF18Fjhr8" role="2Oq$k0">
                <node concept="37vLTw" id="5qxF18FjheP" role="2Oq$k0">
                  <ref role="3cqZAo" node="5qxF18Fjeiu" resolve="querySettings" />
                </node>
                <node concept="2qgKlT" id="5qxF18Fjhww" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5qxF18ESB_u" resolve="getQueryHandlingSetting" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5qxF18FjfmK" role="3uHU7B">
            <node concept="37vLTw" id="5qxF18FjeIj" role="2Oq$k0">
              <ref role="3cqZAo" node="5qxF18Fjeiu" resolve="querySettings" />
            </node>
            <node concept="2qgKlT" id="5qxF18FjgRt" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5qxF18ESB_m" resolve="isQueryHandlingSettingDefined" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5qxF18F4hVi" role="3clFbx">
          <node concept="2MkqsV" id="5qxF18F4kaB" role="3cqZAp">
            <node concept="Xl_RD" id="5qxF18F4kbG" role="2MkJ7o">
              <property role="Xl_RC" value="'handling' has to be of type 'separated' in order to use a query processing implementation" />
            </node>
            <node concept="1YBJjd" id="5qxF18F4key" role="1urrMF">
              <ref role="1YBMHb" node="5qxF18F4hUg" resolve="settings" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5qxF18Feo7Q" role="3cqZAp" />
      <node concept="3clFbJ" id="5qxF18Feodu" role="3cqZAp">
        <node concept="3clFbS" id="5qxF18Feodw" role="3clFbx">
          <node concept="2MkqsV" id="5qxF18FeovK" role="3cqZAp">
            <node concept="Xl_RD" id="5qxF18FeovL" role="2MkJ7o">
              <property role="Xl_RC" value="Generation of processing is only possible if no 'query service' or 'query handler' are defined" />
            </node>
            <node concept="1YBJjd" id="5qxF18FeovM" role="1urrMF">
              <ref role="1YBMHb" node="5qxF18F4hUg" resolve="settings" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="5qxF18FeohE" role="3clFbw">
          <node concept="2OqwBi" id="5qxF18FeohF" role="2Oq$k0">
            <node concept="2OqwBi" id="5qxF18FeohG" role="2Oq$k0">
              <node concept="1YBJjd" id="5qxF18FeohH" role="2Oq$k0">
                <ref role="1YBMHb" node="5qxF18F4hUg" resolve="settings" />
              </node>
              <node concept="2qgKlT" id="5qxF18FeohI" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
            <node concept="2qgKlT" id="5qxF18FeohJ" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3DbZR$O3FhA" resolve="queryContainers" />
            </node>
          </node>
          <node concept="2HwmR7" id="5qxF18FeohK" role="2OqNvi">
            <node concept="1bVj0M" id="5qxF18FeohL" role="23t8la">
              <node concept="3clFbS" id="5qxF18FeohM" role="1bW5cS">
                <node concept="3clFbF" id="5qxF18FeohN" role="3cqZAp">
                  <node concept="3fqX7Q" id="5qxF18FeohO" role="3clFbG">
                    <node concept="2OqwBi" id="5qxF18FeohP" role="3fr31v">
                      <node concept="37vLTw" id="5qxF18FeohQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5qxF18FeohS" resolve="it" />
                      </node>
                      <node concept="2qgKlT" id="5qxF18FeohR" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:6gxxZVtebNx" resolve="isQueriesBlock" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="5qxF18FeohS" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="5qxF18FeohT" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5qxF18F4hUg" role="1YuTPh">
      <property role="TrG5h" value="settings" />
      <ref role="1YaFvo" to="3nll:5qxF18ENJjm" resolve="QueryProcessingSetting" />
    </node>
  </node>
  <node concept="18kY7G" id="3aCsR_bXgLM">
    <property role="TrG5h" value="check_ImportStatement" />
    <property role="3GE5qa" value="import" />
    <node concept="3clFbS" id="3aCsR_bXgLN" role="18ibNy">
      <node concept="3cpWs8" id="3aCsR_c95NR" role="3cqZAp">
        <node concept="3cpWsn" id="3aCsR_c95NS" role="3cpWs9">
          <property role="TrG5h" value="dataType" />
          <node concept="3bZ5Sz" id="3aCsR_c95Lq" role="1tU5fm">
            <ref role="3bZ5Sy" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
          </node>
          <node concept="2YIFZM" id="3aCsR_c95NT" role="33vP2m">
            <ref role="37wK5l" to="7ztp:3aCsR_c91hU" resolve="findTypesystemTypeWithImportType" />
            <ref role="1Pybhc" to="7ztp:3aCsR_bUBh$" resolve="ReservedTypeCheckerUtils" />
            <node concept="1YBJjd" id="3aCsR_c95NU" role="37wK5m">
              <ref role="1YBMHb" node="3aCsR_bXgLP" resolve="importStatement" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3aCsR_c95Ex" role="3cqZAp" />
      <node concept="3clFbJ" id="3aCsR_c96GX" role="3cqZAp">
        <node concept="3clFbS" id="3aCsR_c96GZ" role="3clFbx">
          <node concept="2MkqsV" id="3aCsR_c96IK" role="3cqZAp">
            <node concept="Xl_RD" id="3aCsR_c96IL" role="2MkJ7o">
              <property role="Xl_RC" value="Type is already covered by the typesystem." />
            </node>
            <node concept="1YBJjd" id="3aCsR_c96IM" role="1urrMF">
              <ref role="1YBMHb" node="3aCsR_bXgLP" resolve="importStatement" />
            </node>
          </node>
        </node>
        <node concept="17QLQc" id="3aCsR_c9729" role="3clFbw">
          <node concept="10Nm6u" id="3aCsR_c972y" role="3uHU7w" />
          <node concept="37vLTw" id="3aCsR_c96J5" role="3uHU7B">
            <ref role="3cqZAo" node="3aCsR_c95NS" resolve="dataType" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3aCsR_bXgLP" role="1YuTPh">
      <property role="TrG5h" value="importStatement" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
    </node>
  </node>
  <node concept="18kY7G" id="3aCsR_cglcv">
    <property role="TrG5h" value="check_JavaDataType" />
    <property role="3GE5qa" value="typing.java" />
    <node concept="3clFbS" id="3aCsR_cglcw" role="18ibNy">
      <node concept="3cpWs8" id="3aCsR_cgleR" role="3cqZAp">
        <node concept="3cpWsn" id="3aCsR_cgleS" role="3cpWs9">
          <property role="TrG5h" value="dataType" />
          <node concept="3bZ5Sz" id="3aCsR_cgle_" role="1tU5fm">
            <ref role="3bZ5Sy" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
          </node>
          <node concept="2YIFZM" id="3aCsR_cgleT" role="33vP2m">
            <ref role="37wK5l" to="7ztp:3aCsR_bZADS" resolve="findTypesystemTypeOfJavaType" />
            <ref role="1Pybhc" to="7ztp:3aCsR_bUBh$" resolve="ReservedTypeCheckerUtils" />
            <node concept="1YBJjd" id="3aCsR_cgleU" role="37wK5m">
              <ref role="1YBMHb" node="3aCsR_cglcy" resolve="javaDataType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="2QCVoC6k_N_" role="3cqZAp" />
      <node concept="3clFbJ" id="3aCsR_cglis" role="3cqZAp">
        <node concept="3clFbS" id="3aCsR_cgliu" role="3clFbx">
          <node concept="2MkqsV" id="3aCsR_cgmVO" role="3cqZAp">
            <node concept="3cpWs3" id="3aCsR_cgmVP" role="2MkJ7o">
              <node concept="Xl_RD" id="3aCsR_cgmVQ" role="3uHU7w">
                <property role="Xl_RC" value="' instead." />
              </node>
              <node concept="3cpWs3" id="3aCsR_cgmVR" role="3uHU7B">
                <node concept="Xl_RD" id="3aCsR_cgmVS" role="3uHU7B">
                  <property role="Xl_RC" value="Type is already covered by the typesystem. Use '" />
                </node>
                <node concept="2OqwBi" id="3aCsR_cgmVT" role="3uHU7w">
                  <node concept="37vLTw" id="3aCsR_cgmVU" role="2Oq$k0">
                    <ref role="3cqZAo" node="3aCsR_cgleS" resolve="dataType" />
                  </node>
                  <node concept="3n3YKJ" id="3aCsR_cgmVV" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="3aCsR_cgmVW" role="1urrMF">
              <ref role="1YBMHb" node="3aCsR_cglcy" resolve="javaDataType" />
            </node>
          </node>
        </node>
        <node concept="17QLQc" id="3aCsR_cglyE" role="3clFbw">
          <node concept="10Nm6u" id="3aCsR_cglz3" role="3uHU7w" />
          <node concept="37vLTw" id="3aCsR_cglji" role="3uHU7B">
            <ref role="3cqZAo" node="3aCsR_cgleS" resolve="dataType" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3aCsR_cglcy" role="1YuTPh">
      <property role="TrG5h" value="javaDataType" />
      <ref role="1YaFvo" to="3nll:5eyACQI58pp" resolve="JavaDataType" />
    </node>
  </node>
  <node concept="18kY7G" id="3aCsR_ckQSP">
    <property role="TrG5h" value="check_ImportStatementReferenceType" />
    <property role="3GE5qa" value="import" />
    <node concept="3clFbS" id="3aCsR_ckQSQ" role="18ibNy">
      <node concept="3cpWs8" id="3aCsR_ckVRT" role="3cqZAp">
        <node concept="3cpWsn" id="3aCsR_ckVRU" role="3cpWs9">
          <property role="TrG5h" value="dataType" />
          <node concept="3bZ5Sz" id="3aCsR_ckVRA" role="1tU5fm">
            <ref role="3bZ5Sy" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
          </node>
          <node concept="2YIFZM" id="3aCsR_ckVRV" role="33vP2m">
            <ref role="37wK5l" to="7ztp:3aCsR_ckUqD" resolve="findTypesystemTypeWithImportReferenceType" />
            <ref role="1Pybhc" to="7ztp:3aCsR_bUBh$" resolve="ReservedTypeCheckerUtils" />
            <node concept="1YBJjd" id="3aCsR_ckVRW" role="37wK5m">
              <ref role="1YBMHb" node="3aCsR_ckQSS" resolve="importReference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="3aCsR_ckVVL" role="3cqZAp">
        <node concept="3clFbS" id="3aCsR_ckVVN" role="3clFbx">
          <node concept="2MkqsV" id="3aCsR_ckWwC" role="3cqZAp">
            <node concept="3cpWs3" id="3aCsR_c98Gm" role="2MkJ7o">
              <node concept="Xl_RD" id="3aCsR_c98HI" role="3uHU7w">
                <property role="Xl_RC" value=" instead." />
              </node>
              <node concept="3cpWs3" id="3aCsR_c97zC" role="3uHU7B">
                <node concept="Xl_RD" id="3aCsR_ckWwD" role="3uHU7B">
                  <property role="Xl_RC" value="Type is already covered by the typesystem. Use " />
                </node>
                <node concept="2OqwBi" id="3aCsR_c97Fr" role="3uHU7w">
                  <node concept="37vLTw" id="3aCsR_c97$z" role="2Oq$k0">
                    <ref role="3cqZAo" node="3aCsR_ckVRU" resolve="dataType" />
                  </node>
                  <node concept="3n3YKJ" id="3aCsR_c98co" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="3aCsR_ckWwE" role="1urrMF">
              <ref role="1YBMHb" node="3aCsR_ckQSS" resolve="importReference" />
            </node>
          </node>
        </node>
        <node concept="17QLQc" id="3aCsR_ckWc3" role="3clFbw">
          <node concept="10Nm6u" id="3aCsR_ckWct" role="3uHU7w" />
          <node concept="37vLTw" id="3aCsR_ckVWE" role="3uHU7B">
            <ref role="3cqZAo" node="3aCsR_ckVRU" resolve="dataType" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3aCsR_ckQSS" role="1YuTPh">
      <property role="TrG5h" value="importReference" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
    </node>
  </node>
  <node concept="18kY7G" id="3aCsR_cpoWZ">
    <property role="TrG5h" value="check_QueryMethodsReturnType" />
    <property role="3GE5qa" value="dtoRepository.query" />
    <node concept="3clFbS" id="3aCsR_cpoX0" role="18ibNy">
      <node concept="3cpWs8" id="3aCsR_cpv9$" role="3cqZAp">
        <node concept="3cpWsn" id="3aCsR_cpv9_" role="3cpWs9">
          <property role="TrG5h" value="allowedDto" />
          <node concept="3Tqbb2" id="3aCsR_cpv7o" role="1tU5fm">
            <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          </node>
          <node concept="2OqwBi" id="3aCsR_cpv9A" role="33vP2m">
            <node concept="2OqwBi" id="3aCsR_cpv9B" role="2Oq$k0">
              <node concept="2OqwBi" id="3aCsR_cpv9C" role="2Oq$k0">
                <node concept="1YBJjd" id="3aCsR_cpv9D" role="2Oq$k0">
                  <ref role="1YBMHb" node="3aCsR_cpoX2" resolve="queryMethods" />
                </node>
                <node concept="2qgKlT" id="3aCsR_cpv9E" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5A5sGroI1gZ" resolve="dtoRepository" />
                </node>
              </node>
              <node concept="3TrEf2" id="3aCsR_cpv9F" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
              </node>
            </node>
            <node concept="3TrEf2" id="3aCsR_cpv9G" role="2OqNvi">
              <ref role="3Tt5mk" to="3nll:4Wa3rAG5J$7" resolve="dto" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1DcWWT" id="3aCsR_cpK0p" role="3cqZAp">
        <node concept="3clFbS" id="3aCsR_cpK0r" role="2LFqv$">
          <node concept="3clFbJ" id="3aCsR_cpURv" role="3cqZAp">
            <node concept="3clFbS" id="3aCsR_cpURx" role="3clFbx">
              <node concept="2MkqsV" id="3aCsR_csqaZ" role="3cqZAp">
                <node concept="3cpWs3" id="3aCsR_csqb0" role="2MkJ7o">
                  <node concept="2OqwBi" id="3aCsR_csqb1" role="3uHU7w">
                    <node concept="37vLTw" id="3aCsR_csqb2" role="2Oq$k0">
                      <ref role="3cqZAo" node="3aCsR_cpv9_" resolve="allowedDto" />
                    </node>
                    <node concept="3TrcHB" id="3aCsR_csqb3" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3aCsR_csqb4" role="3uHU7B">
                    <property role="Xl_RC" value="Incorrect dto return type of query. Allowed: " />
                  </node>
                </node>
                <node concept="37vLTw" id="3aCsR_csqb5" role="1urrMF">
                  <ref role="3cqZAo" node="3aCsR_cpK0s" resolve="queryReference" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="3aCsR_c_LQZ" role="3clFbw">
              <node concept="2OqwBi" id="3aCsR_c_LR1" role="3fr31v">
                <node concept="2OqwBi" id="3aCsR_c_LR2" role="2Oq$k0">
                  <node concept="37vLTw" id="3aCsR_c_LR3" role="2Oq$k0">
                    <ref role="3cqZAo" node="3aCsR_cpK0s" resolve="queryReference" />
                  </node>
                  <node concept="3TrEf2" id="3aCsR_c_LR4" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7fqk8p43yh8" resolve="query" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3aCsR_c_LR5" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3aCsR_csrN7" resolve="areOnlyValidDtoReferencesUsed" />
                  <node concept="37vLTw" id="3aCsR_c_LR6" role="37wK5m">
                    <ref role="3cqZAo" node="3aCsR_cpv9_" resolve="allowedDto" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="3aCsR_cpK0s" role="1Duv9x">
          <property role="TrG5h" value="queryReference" />
          <node concept="3Tqbb2" id="3aCsR_cpKeQ" role="1tU5fm">
            <ref role="ehGHo" to="3nll:7fqk8p43yh7" resolve="QueryReference" />
          </node>
        </node>
        <node concept="2OqwBi" id="3aCsR_cpKWA" role="1DdaDG">
          <node concept="1YBJjd" id="3aCsR_cpKLG" role="2Oq$k0">
            <ref role="1YBMHb" node="3aCsR_cpoX2" resolve="queryMethods" />
          </node>
          <node concept="3Tsc0h" id="3aCsR_cpLao" role="2OqNvi">
            <ref role="3TtcxE" to="3nll:1WhJCpUZu2S" resolve="queryRefernces" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3aCsR_cpoX2" role="1YuTPh">
      <property role="TrG5h" value="queryMethods" />
      <ref role="1YaFvo" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
    </node>
  </node>
  <node concept="18kY7G" id="3aCsR_cBXhF">
    <property role="TrG5h" value="check_QueryContainerMethodsReturnTypes" />
    <property role="3GE5qa" value="dtoRepository.query" />
    <node concept="3clFbS" id="3aCsR_cBXhG" role="18ibNy">
      <node concept="3cpWs8" id="3aCsR_cBXqv" role="3cqZAp">
        <node concept="3cpWsn" id="3aCsR_cBXqw" role="3cpWs9">
          <property role="TrG5h" value="allowedDto" />
          <node concept="3Tqbb2" id="3aCsR_cBXqx" role="1tU5fm">
            <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          </node>
          <node concept="2OqwBi" id="3aCsR_cBXqy" role="33vP2m">
            <node concept="2OqwBi" id="3aCsR_cBXqz" role="2Oq$k0">
              <node concept="2OqwBi" id="3aCsR_cBXq$" role="2Oq$k0">
                <node concept="1YBJjd" id="3aCsR_cBXq_" role="2Oq$k0">
                  <ref role="1YBMHb" node="3aCsR_cBXhI" resolve="queryContainerMethods" />
                </node>
                <node concept="2qgKlT" id="3aCsR_cBXqA" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5A5sGroHXVV" resolve="dtoRepository" />
                </node>
              </node>
              <node concept="3TrEf2" id="3aCsR_cBXqB" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
              </node>
            </node>
            <node concept="3TrEf2" id="3aCsR_cBXqC" role="2OqNvi">
              <ref role="3Tt5mk" to="3nll:4Wa3rAG5J$7" resolve="dto" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="3aCsR_cBYZU" role="3cqZAp">
        <node concept="2OqwBi" id="3aCsR_cC17u" role="3clFbG">
          <node concept="2OqwBi" id="3aCsR_cBZaI" role="2Oq$k0">
            <node concept="1YBJjd" id="3aCsR_cBYZS" role="2Oq$k0">
              <ref role="1YBMHb" node="3aCsR_cBXhI" resolve="queryContainerMethods" />
            </node>
            <node concept="3Tsc0h" id="3aCsR_cBZcn" role="2OqNvi">
              <ref role="3TtcxE" to="3nll:6gxxZVsFKMa" resolve="queryContainerReference" />
            </node>
          </node>
          <node concept="2es0OD" id="3aCsR_cCj7J" role="2OqNvi">
            <node concept="1bVj0M" id="3aCsR_cCj7L" role="23t8la">
              <node concept="3clFbS" id="3aCsR_cCj7M" role="1bW5cS">
                <node concept="3cpWs8" id="3aCsR_cCl3u" role="3cqZAp">
                  <node concept="3cpWsn" id="3aCsR_cCl3v" role="3cpWs9">
                    <property role="TrG5h" value="queryContainer" />
                    <node concept="3Tqbb2" id="3aCsR_cCl09" role="1tU5fm">
                      <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
                    </node>
                    <node concept="2OqwBi" id="3aCsR_cCl3w" role="33vP2m">
                      <node concept="37vLTw" id="3aCsR_cCl3x" role="2Oq$k0">
                        <ref role="3cqZAo" node="3aCsR_cCj7N" resolve="queryContainerReference" />
                      </node>
                      <node concept="3TrEf2" id="3aCsR_cCl3y" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:6gxxZVsFKMd" resolve="queryContainer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3aCsR_cC7CA" role="3cqZAp">
                  <node concept="3clFbS" id="3aCsR_cC7CC" role="3clFbx">
                    <node concept="2MkqsV" id="3aCsR_cC8Eg" role="3cqZAp">
                      <node concept="3cpWs3" id="3aCsR_cC8Eh" role="2MkJ7o">
                        <node concept="2OqwBi" id="3aCsR_cC8Ei" role="3uHU7w">
                          <node concept="37vLTw" id="3aCsR_cC8Ej" role="2Oq$k0">
                            <ref role="3cqZAo" node="3aCsR_cBXqw" resolve="allowedDto" />
                          </node>
                          <node concept="3TrcHB" id="3aCsR_cC8Ek" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="3aCsR_cC973" role="3uHU7B">
                          <node concept="3cpWs3" id="3aCsR_cCa5Q" role="3uHU7B">
                            <node concept="2OqwBi" id="3aCsR_cCbda" role="3uHU7w">
                              <node concept="2OqwBi" id="3aCsR_cCaq2" role="2Oq$k0">
                                <node concept="37vLTw" id="3aCsR_cCaax" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3aCsR_cCl3v" resolve="queryContainer" />
                                </node>
                                <node concept="3TrcHB" id="3aCsR_cCaZ4" role="2OqNvi">
                                  <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                                </node>
                              </node>
                              <node concept="1XCIdh" id="3aCsR_cCbxw" role="2OqNvi" />
                            </node>
                            <node concept="Xl_RD" id="3aCsR_cC9bD" role="3uHU7B">
                              <property role="Xl_RC" value="Query " />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="3aCsR_cC8El" role="3uHU7w">
                            <property role="Xl_RC" value=" contains queries which return an invalid dto type. Allowed: " />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3aCsR_cC8Em" role="1urrMF">
                        <ref role="3cqZAo" node="3aCsR_cCj7N" resolve="queryContainerReference" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3aCsR_cC5Av" role="3clFbw">
                    <node concept="2OqwBi" id="3aCsR_cC4Ql" role="2Oq$k0">
                      <node concept="37vLTw" id="3aCsR_cC4AV" role="2Oq$k0">
                        <ref role="3cqZAo" node="3aCsR_cCl3v" resolve="queryContainer" />
                      </node>
                      <node concept="2qgKlT" id="3aCsR_cC5on" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5SyewCaMpun" resolve="queries" />
                      </node>
                    </node>
                    <node concept="2HwmR7" id="3aCsR_cC68O" role="2OqNvi">
                      <node concept="1bVj0M" id="3aCsR_cC68Q" role="23t8la">
                        <node concept="3clFbS" id="3aCsR_cC68R" role="1bW5cS">
                          <node concept="3clFbF" id="3aCsR_cC6fg" role="3cqZAp">
                            <node concept="3fqX7Q" id="3aCsR_cC7ua" role="3clFbG">
                              <node concept="2OqwBi" id="3aCsR_cC7uc" role="3fr31v">
                                <node concept="37vLTw" id="3aCsR_cC7ud" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3aCsR_cC68S" resolve="it" />
                                </node>
                                <node concept="2qgKlT" id="3aCsR_cC7ue" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:3aCsR_csrN7" resolve="areOnlyValidDtoReferencesUsed" />
                                  <node concept="37vLTw" id="3aCsR_cC7uf" role="37wK5m">
                                    <ref role="3cqZAo" node="3aCsR_cBXqw" resolve="allowedDto" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="3aCsR_cC68S" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="3aCsR_cC68T" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="3aCsR_cCj7N" role="1bW2Oz">
                <property role="TrG5h" value="queryContainerReference" />
                <node concept="2jxLKc" id="3aCsR_cCj7O" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3aCsR_cBXhI" role="1YuTPh">
      <property role="TrG5h" value="queryContainerMethods" />
      <ref role="1YaFvo" to="3nll:6gxxZVsFKM9" resolve="QueryContainerMethods" />
    </node>
  </node>
  <node concept="18kY7G" id="4LpUh3UU96c">
    <property role="TrG5h" value="check_Dto_MethodSignature" />
    <property role="3GE5qa" value="dto" />
    <node concept="3clFbS" id="4LpUh3UU96d" role="18ibNy">
      <node concept="3clFbF" id="1URsbDnWpr7" role="3cqZAp">
        <node concept="2OqwBi" id="1URsbDnWqy6" role="3clFbG">
          <node concept="2OqwBi" id="1URsbDnWpAL" role="2Oq$k0">
            <node concept="1YBJjd" id="1URsbDnWpr5" role="2Oq$k0">
              <ref role="1YBMHb" node="4LpUh3UU96f" resolve="dto" />
            </node>
            <node concept="2qgKlT" id="1URsbDnWqlW" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:1URsbDnWjsX" resolve="methods" />
            </node>
          </node>
          <node concept="AQDAd" id="1URsbDnWqYV" role="2OqNvi">
            <ref role="37wK5l" node="23PrvZR5M3X" resolve="forEachMethodWithSameSignature" />
            <node concept="1bVj0M" id="1URsbDnWr70" role="37wK5m">
              <node concept="3clFbS" id="1URsbDnWr71" role="1bW5cS">
                <node concept="2MkqsV" id="1URsbDnWrz1" role="3cqZAp">
                  <node concept="Xl_RD" id="1URsbDnWr_0" role="2MkJ7o">
                    <property role="Xl_RC" value="Method signature already defined" />
                  </node>
                  <node concept="37vLTw" id="1URsbDnWrSq" role="1urrMF">
                    <ref role="3cqZAo" node="1URsbDnWrk7" resolve="method" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="1URsbDnWrk7" role="1bW2Oz">
                <property role="TrG5h" value="method" />
                <node concept="3Tqbb2" id="1URsbDnWrqk" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4LpUh3UU96f" role="1YuTPh">
      <property role="TrG5h" value="dto" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    </node>
  </node>
  <node concept="18kY7G" id="4LpUh3Y57jp">
    <property role="TrG5h" value="check_Dto_DerivationParameterSignature" />
    <property role="3GE5qa" value="dto" />
    <node concept="3clFbS" id="4LpUh3Y57jq" role="18ibNy">
      <node concept="3clFbJ" id="4LpUh3Y57D8" role="3cqZAp">
        <node concept="2OqwBi" id="4LpUh3Y58uu" role="3clFbw">
          <node concept="2OqwBi" id="4LpUh3Y57Qh" role="2Oq$k0">
            <node concept="1YBJjd" id="4LpUh3Y57Dk" role="2Oq$k0">
              <ref role="1YBMHb" node="4LpUh3Y57js" resolve="dto" />
            </node>
            <node concept="3TrEf2" id="4LpUh3Y58hN" role="2OqNvi">
              <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
            </node>
          </node>
          <node concept="3w_OXm" id="4LpUh3Y595h" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="4LpUh3Y57Da" role="3clFbx">
          <node concept="3cpWs6" id="4LpUh3Y59aK" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbH" id="4LpUh3Y5ip5" role="3cqZAp" />
      <node concept="3cpWs8" id="7z5h98Tge0M" role="3cqZAp">
        <node concept="3cpWsn" id="7z5h98Tge0N" role="3cpWs9">
          <property role="TrG5h" value="usedWrappers" />
          <node concept="A3Dl8" id="7z5h98TgdYL" role="1tU5fm">
            <node concept="3uibUv" id="7z5h98TgdYO" role="A3Ik2">
              <ref role="3uigEE" to="4d66:1vyzkEMtuLJ" resolve="VariableWrapper" />
            </node>
          </node>
          <node concept="2OqwBi" id="7z5h98Tge0O" role="33vP2m">
            <node concept="1YBJjd" id="7z5h98Tge0P" role="2Oq$k0">
              <ref role="1YBMHb" node="4LpUh3Y57js" resolve="dto" />
            </node>
            <node concept="2qgKlT" id="7z5h98Tge0Q" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:1vyzkEMwXLH" resolve="getUsedVariableWrappers" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7z5h98TgbSk" role="3cqZAp" />
      <node concept="3clFbF" id="4LpUh3Y5v1c" role="3cqZAp">
        <node concept="2OqwBi" id="4LpUh3Y5yK9" role="3clFbG">
          <node concept="2OqwBi" id="4LpUh3Y5vis" role="2Oq$k0">
            <node concept="1YBJjd" id="4LpUh3Y5v1a" role="2Oq$k0">
              <ref role="1YBMHb" node="4LpUh3Y57js" resolve="dto" />
            </node>
            <node concept="3Tsc0h" id="4LpUh3Y5w55" role="2OqNvi">
              <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
            </node>
          </node>
          <node concept="2es0OD" id="4LpUh3Y5_Yb" role="2OqNvi">
            <node concept="1bVj0M" id="4LpUh3Y5_Yd" role="23t8la">
              <node concept="3clFbS" id="4LpUh3Y5_Ye" role="1bW5cS">
                <node concept="3cpWs8" id="4LpUh3Y5GJf" role="3cqZAp">
                  <node concept="3cpWsn" id="4LpUh3Y5GJg" role="3cpWs9">
                    <property role="TrG5h" value="wrappersWithSameName" />
                    <node concept="2OqwBi" id="4LpUh3Y5GJh" role="33vP2m">
                      <node concept="37vLTw" id="4LpUh3Y5GJi" role="2Oq$k0">
                        <ref role="3cqZAo" node="7z5h98Tge0N" resolve="usedWrappers" />
                      </node>
                      <node concept="3zZkjj" id="7z5h98TggTe" role="2OqNvi">
                        <node concept="1bVj0M" id="7z5h98TggTg" role="23t8la">
                          <node concept="3clFbS" id="7z5h98TggTh" role="1bW5cS">
                            <node concept="3clFbF" id="7z5h98TggTi" role="3cqZAp">
                              <node concept="17R0WA" id="7z5h98TggTj" role="3clFbG">
                                <node concept="2OqwBi" id="7z5h98TggTk" role="3uHU7w">
                                  <node concept="37vLTw" id="7z5h98TggTl" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4LpUh3Y5_Yf" resolve="parameter" />
                                  </node>
                                  <node concept="3TrcHB" id="7z5h98TggTm" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="7z5h98TggTn" role="3uHU7B">
                                  <node concept="37vLTw" id="7z5h98TggTo" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7z5h98TggTq" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="7z5h98Tghgd" role="2OqNvi">
                                    <ref role="37wK5l" to="4d66:1vyzkEMtwwP" resolve="getVariableName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="7z5h98TggTq" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="7z5h98TggTr" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="A3Dl8" id="7z5h98TghnR" role="1tU5fm">
                      <node concept="3uibUv" id="7z5h98TghnT" role="A3Ik2">
                        <ref role="3uigEE" to="4d66:1vyzkEMtuLJ" resolve="VariableWrapper" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4LpUh3Y5HyO" role="3cqZAp">
                  <node concept="3clFbS" id="4LpUh3Y5HyQ" role="3clFbx">
                    <node concept="3cpWs8" id="7z5h98TgmXh" role="3cqZAp">
                      <node concept="3cpWsn" id="7z5h98TgmXi" role="3cpWs9">
                        <property role="TrG5h" value="duplicateVariables" />
                        <node concept="17QB3L" id="7z5h98TgmUV" role="1tU5fm" />
                        <node concept="2OqwBi" id="7z5h98TgmXj" role="33vP2m">
                          <node concept="2OqwBi" id="7z5h98TgmXk" role="2Oq$k0">
                            <node concept="37vLTw" id="7z5h98TgmXl" role="2Oq$k0">
                              <ref role="3cqZAo" node="4LpUh3Y5GJg" resolve="wrappersWithSameName" />
                            </node>
                            <node concept="3$u5V9" id="7z5h98TgmXm" role="2OqNvi">
                              <node concept="1bVj0M" id="7z5h98TgmXn" role="23t8la">
                                <node concept="3clFbS" id="7z5h98TgmXo" role="1bW5cS">
                                  <node concept="3clFbF" id="7z5h98TgmXp" role="3cqZAp">
                                    <node concept="2OqwBi" id="7z5h98TgmXq" role="3clFbG">
                                      <node concept="37vLTw" id="7z5h98TgmXr" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7z5h98TgmXt" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="7z5h98TgmXs" role="2OqNvi">
                                        <ref role="37wK5l" to="4d66:1vyzkEMtwwP" resolve="getVariableName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="7z5h98TgmXt" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="7z5h98TgmXu" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uJxvA" id="7z5h98TgmXv" role="2OqNvi">
                            <node concept="Xl_RD" id="7z5h98TgmXw" role="3uJOhx">
                              <property role="Xl_RC" value="," />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2MkqsV" id="4LpUh3Y5Io3" role="3cqZAp">
                      <node concept="3cpWs3" id="4LpUh3Y5KCA" role="2MkJ7o">
                        <node concept="Xl_RD" id="4LpUh3Y5IsM" role="3uHU7B">
                          <property role="Xl_RC" value="Dto is already defining parameters with the name: " />
                        </node>
                        <node concept="37vLTw" id="7z5h98TgoOE" role="3uHU7w">
                          <ref role="3cqZAo" node="7z5h98TgmXi" resolve="duplicateVariables" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7z5h98TgdP4" role="1urrMF">
                        <node concept="1YBJjd" id="7z5h98Tgdvj" role="2Oq$k0">
                          <ref role="1YBMHb" node="4LpUh3Y57js" resolve="dto" />
                        </node>
                        <node concept="3TrEf2" id="7z5h98TgdVi" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="4LpUh3Y5LNX" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="7z5h98TghW7" role="3clFbw">
                    <node concept="37vLTw" id="4LpUh3Y5HBE" role="2Oq$k0">
                      <ref role="3cqZAo" node="4LpUh3Y5GJg" resolve="wrappersWithSameName" />
                    </node>
                    <node concept="3GX2aA" id="7z5h98Tgid3" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="4LpUh3Y5_Yf" role="1bW2Oz">
                <property role="TrG5h" value="parameter" />
                <node concept="2jxLKc" id="4LpUh3Y5_Yg" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4LpUh3Y57js" role="1YuTPh">
      <property role="TrG5h" value="dto" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    </node>
  </node>
  <node concept="18kY7G" id="4LpUh3YaGCj">
    <property role="TrG5h" value="check_Dto_DerivationDependency" />
    <property role="3GE5qa" value="dto" />
    <node concept="3clFbS" id="4LpUh3YaGCk" role="18ibNy">
      <node concept="3clFbJ" id="4LpUh3YaGDO" role="3cqZAp">
        <node concept="3clFbS" id="4LpUh3YaGDQ" role="3clFbx">
          <node concept="3cpWs6" id="4LpUh3YaHRK" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="4LpUh3YaHsu" role="3clFbw">
          <node concept="2OqwBi" id="4LpUh3YaGR1" role="2Oq$k0">
            <node concept="1YBJjd" id="4LpUh3YaGE4" role="2Oq$k0">
              <ref role="1YBMHb" node="4LpUh3YaGCm" resolve="dto" />
            </node>
            <node concept="3TrEf2" id="4LpUh3YaHiz" role="2OqNvi">
              <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
            </node>
          </node>
          <node concept="3w_OXm" id="4LpUh3YaHMd" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbH" id="3NXs7ynTARD" role="3cqZAp" />
      <node concept="3cpWs8" id="4LpUh3YaVAo" role="3cqZAp">
        <node concept="3cpWsn" id="4LpUh3YaVAp" role="3cpWs9">
          <property role="TrG5h" value="definedDtoDerivables" />
          <node concept="A3Dl8" id="4LpUh3YaVdH" role="1tU5fm">
            <node concept="3Tqbb2" id="4LpUh3YaVdK" role="A3Ik2">
              <ref role="ehGHo" to="3nll:4LpUh3T0rQI" resolve="IDtoDerivable" />
            </node>
          </node>
          <node concept="2OqwBi" id="5QsWOhXE6SE" role="33vP2m">
            <node concept="2OqwBi" id="5QsWOhXE5KE" role="2Oq$k0">
              <node concept="1YBJjd" id="5QsWOhXE4gy" role="2Oq$k0">
                <ref role="1YBMHb" node="4LpUh3YaGCm" resolve="dto" />
              </node>
              <node concept="2qgKlT" id="5QsWOhXE6HQ" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
            <node concept="2qgKlT" id="5QsWOhXE7Cw" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:4LpUh3TnW_R" resolve="findUsedDtoDerivables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="E4RYEaJ5gD" role="3cqZAp" />
      <node concept="3cpWs8" id="E4RYEaAc6Z" role="3cqZAp">
        <node concept="3cpWsn" id="E4RYEaAc70" role="3cpWs9">
          <property role="TrG5h" value="variablesWithDerivableReference" />
          <node concept="A3Dl8" id="E4RYEaAc71" role="1tU5fm">
            <node concept="17QB3L" id="E4RYEaB9qt" role="A3Ik2" />
          </node>
          <node concept="2OqwBi" id="E4RYEaAMGj" role="33vP2m">
            <node concept="2OqwBi" id="E4RYEaAc73" role="2Oq$k0">
              <node concept="2OqwBi" id="E4RYEaAc75" role="2Oq$k0">
                <node concept="1YBJjd" id="E4RYEaAc76" role="2Oq$k0">
                  <ref role="1YBMHb" node="4LpUh3YaGCm" resolve="dto" />
                </node>
                <node concept="2qgKlT" id="E4RYEaAc77" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3NXs7yp5PgA" resolve="getUsedVariables" />
                </node>
              </node>
              <node concept="3$u5V9" id="E4RYEaAMhh" role="2OqNvi">
                <node concept="1bVj0M" id="E4RYEaAMhj" role="23t8la">
                  <property role="3yWfEV" value="true" />
                  <node concept="3clFbS" id="E4RYEaAMhk" role="1bW5cS">
                    <node concept="3cpWs8" id="E4RYEaAMhl" role="3cqZAp">
                      <node concept="3cpWsn" id="E4RYEaAMhm" role="3cpWs9">
                        <property role="TrG5h" value="derivableReferences" />
                        <node concept="2I9FWS" id="E4RYEaAMhn" role="1tU5fm">
                          <ref role="2I9WkF" to="3nll:4LpUh3SXzl5" resolve="IDtoDerivableReference" />
                        </node>
                        <node concept="2OqwBi" id="E4RYEaAMho" role="33vP2m">
                          <node concept="2OqwBi" id="E4RYEaAMhp" role="2Oq$k0">
                            <node concept="37vLTw" id="E4RYEaAMhq" role="2Oq$k0">
                              <ref role="3cqZAo" node="E4RYEaAMhO" resolve="variable" />
                            </node>
                            <node concept="3TrEf2" id="E4RYEaAMhr" role="2OqNvi">
                              <ref role="3Tt5mk" to="3nll:4LpUh3YaKVD" resolve="type" />
                            </node>
                          </node>
                          <node concept="2Rf3mk" id="E4RYEaAMhs" role="2OqNvi">
                            <node concept="1xMEDy" id="E4RYEaAMht" role="1xVPHs">
                              <node concept="chp4Y" id="E4RYEaAMhu" role="ri$Ld">
                                <ref role="cht4Q" to="3nll:4LpUh3SXzl5" resolve="IDtoDerivableReference" />
                              </node>
                            </node>
                            <node concept="1xIGOp" id="E4RYEaAMhv" role="1xVPHs" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="E4RYEaB7YE" role="3cqZAp" />
                    <node concept="3cpWs8" id="E4RYEaAXQy" role="3cqZAp">
                      <node concept="3cpWsn" id="E4RYEaAXQz" role="3cpWs9">
                        <property role="TrG5h" value="invalidTypeString" />
                        <node concept="2OqwBi" id="E4RYEaB4$b" role="33vP2m">
                          <node concept="2OqwBi" id="E4RYEaAZEy" role="2Oq$k0">
                            <node concept="2OqwBi" id="E4RYEaAXQ$" role="2Oq$k0">
                              <node concept="37vLTw" id="E4RYEaAXQ_" role="2Oq$k0">
                                <ref role="3cqZAo" node="E4RYEaAMhm" resolve="derivableReferences" />
                              </node>
                              <node concept="3zZkjj" id="E4RYEaAXQA" role="2OqNvi">
                                <node concept="1bVj0M" id="E4RYEaAXQB" role="23t8la">
                                  <property role="3yWfEV" value="true" />
                                  <node concept="3clFbS" id="E4RYEaAXQC" role="1bW5cS">
                                    <node concept="3clFbF" id="E4RYEaAXQD" role="3cqZAp">
                                      <node concept="3fqX7Q" id="E4RYEaAXQE" role="3clFbG">
                                        <node concept="2OqwBi" id="E4RYEaAXQF" role="3fr31v">
                                          <node concept="37vLTw" id="E4RYEaAXQG" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4LpUh3YaVAp" resolve="definedDtoDerivables" />
                                          </node>
                                          <node concept="3JPx81" id="E4RYEaAXQH" role="2OqNvi">
                                            <node concept="2OqwBi" id="E4RYEaAXQI" role="25WWJ7">
                                              <node concept="37vLTw" id="E4RYEaAXQJ" role="2Oq$k0">
                                                <ref role="3cqZAo" node="E4RYEaAXQL" resolve="it" />
                                              </node>
                                              <node concept="2qgKlT" id="E4RYEaAXQK" role="2OqNvi">
                                                <ref role="37wK5l" to="sx7w:4LpUh3T0tIy" resolve="getDtoDerivable" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="E4RYEaAXQL" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="E4RYEaAXQM" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3$u5V9" id="E4RYEaB0kz" role="2OqNvi">
                              <node concept="1bVj0M" id="E4RYEaB0k_" role="23t8la">
                                <property role="3yWfEV" value="true" />
                                <node concept="3clFbS" id="E4RYEaB0kA" role="1bW5cS">
                                  <node concept="3clFbF" id="E4RYEaB0A3" role="3cqZAp">
                                    <node concept="2OqwBi" id="E4RYEaB3el" role="3clFbG">
                                      <node concept="2OqwBi" id="E4RYEaB0Uq" role="2Oq$k0">
                                        <node concept="37vLTw" id="E4RYEaB0A2" role="2Oq$k0">
                                          <ref role="3cqZAo" node="E4RYEaB0kB" resolve="it" />
                                        </node>
                                        <node concept="2qgKlT" id="E4RYEaB1vK" role="2OqNvi">
                                          <ref role="37wK5l" to="sx7w:4LpUh3T0tIy" resolve="getDtoDerivable" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="E4RYEaB41B" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="E4RYEaB0kB" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="E4RYEaB0kC" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uJxvA" id="E4RYEaB5M5" role="2OqNvi">
                            <node concept="Xl_RD" id="E4RYEaB6UP" role="3uJOhx">
                              <property role="Xl_RC" value=", " />
                            </node>
                          </node>
                        </node>
                        <node concept="17QB3L" id="E4RYEaB7JH" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="E4RYEaAO51" role="3cqZAp" />
                    <node concept="3clFbF" id="E4RYEaBf9h" role="3cqZAp">
                      <node concept="3K4zz7" id="E4RYEaBhSy" role="3clFbG">
                        <node concept="10Nm6u" id="E4RYEaBip0" role="3K4E3e" />
                        <node concept="2OqwBi" id="E4RYEaBf9j" role="3K4Cdx">
                          <node concept="37vLTw" id="E4RYEaBf9k" role="2Oq$k0">
                            <ref role="3cqZAo" node="E4RYEaAXQz" resolve="invalidTypeString" />
                          </node>
                          <node concept="17RlXB" id="E4RYEaMQI9" role="2OqNvi" />
                        </node>
                        <node concept="3cpWs3" id="E4RYEaBiFv" role="3K4GZi">
                          <node concept="37vLTw" id="E4RYEaBiFw" role="3uHU7w">
                            <ref role="3cqZAo" node="E4RYEaAXQz" resolve="invalidTypeString" />
                          </node>
                          <node concept="3cpWs3" id="E4RYEaBiFx" role="3uHU7B">
                            <node concept="2OqwBi" id="E4RYEaBiFy" role="3uHU7B">
                              <node concept="37vLTw" id="E4RYEaBiFz" role="2Oq$k0">
                                <ref role="3cqZAo" node="E4RYEaAMhO" resolve="variable" />
                              </node>
                              <node concept="3TrcHB" id="E4RYEaBiF$" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="E4RYEaBiF_" role="3uHU7w">
                              <property role="Xl_RC" value=" -&gt; " />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="E4RYEaAMhO" role="1bW2Oz">
                    <property role="TrG5h" value="variable" />
                    <node concept="2jxLKc" id="E4RYEaAMhP" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1KnU$U" id="E4RYEaANVQ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="E4RYEaBmwD" role="3cqZAp" />
      <node concept="3clFbJ" id="E4RYEaFgnA" role="3cqZAp">
        <node concept="3clFbS" id="E4RYEaFgnC" role="3clFbx">
          <node concept="3cpWs6" id="E4RYEaFhsj" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="E4RYEaFgNq" role="3clFbw">
          <node concept="37vLTw" id="E4RYEaFg_v" role="2Oq$k0">
            <ref role="3cqZAo" node="E4RYEaAc70" resolve="variablesWithDerivableReference" />
          </node>
          <node concept="1v1jN8" id="E4RYEaFhpQ" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbH" id="E4RYEaFg8j" role="3cqZAp" />
      <node concept="3cpWs8" id="E4RYEaBmXg" role="3cqZAp">
        <node concept="3cpWsn" id="E4RYEaBmXh" role="3cpWs9">
          <property role="TrG5h" value="invalidVariablesWithTypeString" />
          <node concept="17QB3L" id="E4RYEaBmT0" role="1tU5fm" />
          <node concept="2OqwBi" id="E4RYEaBmXi" role="33vP2m">
            <node concept="37vLTw" id="E4RYEaBmXj" role="2Oq$k0">
              <ref role="3cqZAo" node="E4RYEaAc70" resolve="variablesWithDerivableReference" />
            </node>
            <node concept="3uJxvA" id="E4RYEaBmXk" role="2OqNvi">
              <node concept="Xl_RD" id="E4RYEaBmXl" role="3uJOhx">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="E4RYEaBqB9" role="3cqZAp" />
      <node concept="2MkqsV" id="E4RYEaBpaX" role="3cqZAp">
        <node concept="3cpWs3" id="E4RYEaBpaY" role="2MkJ7o">
          <node concept="37vLTw" id="E4RYEaBpaZ" role="3uHU7w">
            <ref role="3cqZAo" node="E4RYEaBmXh" resolve="invalidVariablesWithTypeString" />
          </node>
          <node concept="Xl_RD" id="E4RYEaBpb0" role="3uHU7B">
            <property role="Xl_RC" value="Derived structure has some unresolvable types. \n Create another derived dto or flattening rules for these types or add them to the ignored variable list.\n\n Unresolvable variables:\n" />
          </node>
        </node>
        <node concept="2OqwBi" id="E4RYEaBpb1" role="1urrMF">
          <node concept="1YBJjd" id="E4RYEaBpb2" role="2Oq$k0">
            <ref role="1YBMHb" node="4LpUh3YaGCm" resolve="dto" />
          </node>
          <node concept="3TrEf2" id="E4RYEaBpb3" role="2OqNvi">
            <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4LpUh3YaGCm" role="1YuTPh">
      <property role="TrG5h" value="dto" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    </node>
  </node>
  <node concept="18kY7G" id="3NXs7yn_Fo2">
    <property role="TrG5h" value="check_Dto_ParameterCount" />
    <property role="3GE5qa" value="dto" />
    <node concept="3clFbS" id="3NXs7yn_Fo3" role="18ibNy">
      <node concept="3clFbJ" id="3NXs7yn_GRz" role="3cqZAp">
        <node concept="3clFbS" id="3NXs7yn_GR_" role="3clFbx">
          <node concept="3clFbJ" id="3NXs7yn_Ibl" role="3cqZAp">
            <node concept="3clFbS" id="3NXs7yn_Ibn" role="3clFbx">
              <node concept="2MkqsV" id="3NXs7yn_Oor" role="3cqZAp">
                <node concept="Xl_RD" id="3NXs7yn_Oos" role="2MkJ7o">
                  <property role="Xl_RC" value="At least one Parameter is required" />
                </node>
                <node concept="1YBJjd" id="3NXs7yn_Oot" role="1urrMF">
                  <ref role="1YBMHb" node="3NXs7yn_Fo5" resolve="dto" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="5QsWOhXNdP0" role="3clFbw">
              <node concept="2OqwBi" id="5QsWOhXNdP2" role="3fr31v">
                <node concept="1YBJjd" id="5QsWOhXNdP3" role="2Oq$k0">
                  <ref role="1YBMHb" node="3NXs7yn_Fo5" resolve="dto" />
                </node>
                <node concept="2qgKlT" id="5QsWOhXNdP4" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5QsWOhXN7cG" resolve="hasParameters" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3NXs7yn_Idp" role="3cqZAp" />
        </node>
        <node concept="3fqX7Q" id="5QsWOhXSZh0" role="3clFbw">
          <node concept="2OqwBi" id="5QsWOhXSZh2" role="3fr31v">
            <node concept="1YBJjd" id="5QsWOhXSZh3" role="2Oq$k0">
              <ref role="1YBMHb" node="3NXs7yn_Fo5" resolve="dto" />
            </node>
            <node concept="2qgKlT" id="5QsWOhXSZh4" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3NXs7yomeLh" resolve="isDerived" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5QsWOhXJZn1" role="3cqZAp" />
      <node concept="3clFbJ" id="4LpUh3UU71H" role="3cqZAp">
        <node concept="1Wc70l" id="3NXs7ynykA0" role="3clFbw">
          <node concept="3fqX7Q" id="5QsWOhXNf0n" role="3uHU7w">
            <node concept="2OqwBi" id="5QsWOhXNf0p" role="3fr31v">
              <node concept="1YBJjd" id="5QsWOhXNf0q" role="2Oq$k0">
                <ref role="1YBMHb" node="3NXs7yn_Fo5" resolve="dto" />
              </node>
              <node concept="2qgKlT" id="5QsWOhXNf0r" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5QsWOhXN7cG" resolve="hasParameters" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3NXs7yn_Y5e" role="3uHU7B">
            <node concept="1v1jN8" id="3NXs7yn_YrG" role="2OqNvi" />
            <node concept="2OqwBi" id="5QsWOhXVM$5" role="2Oq$k0">
              <node concept="1YBJjd" id="5QsWOhXVM$6" role="2Oq$k0">
                <ref role="1YBMHb" node="3NXs7yn_Fo5" resolve="dto" />
              </node>
              <node concept="2qgKlT" id="5QsWOhXVM$7" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3NXs7yp5PgA" resolve="getUsedVariables" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4LpUh3UU71N" role="3clFbx">
          <node concept="2MkqsV" id="4LpUh3UU71O" role="3cqZAp">
            <node concept="Xl_RD" id="4LpUh3UU71P" role="2MkJ7o">
              <property role="Xl_RC" value="At least one Parameter is required" />
            </node>
            <node concept="1YBJjd" id="4LpUh3UU71Q" role="1urrMF">
              <ref role="1YBMHb" node="3NXs7yn_Fo5" resolve="dto" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3NXs7yn_Fo5" role="1YuTPh">
      <property role="TrG5h" value="dto" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    </node>
  </node>
  <node concept="18kY7G" id="3NXs7yoSoQE">
    <property role="TrG5h" value="check_DtoFlatteningRule" />
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <node concept="3clFbS" id="3NXs7yoSoQF" role="18ibNy">
      <node concept="3clFbJ" id="3NXs7yoVFEo" role="3cqZAp">
        <node concept="3fqX7Q" id="3NXs7yoVGqp" role="3clFbw">
          <node concept="2OqwBi" id="3NXs7yoVGqr" role="3fr31v">
            <node concept="1YBJjd" id="3NXs7yoVGqs" role="2Oq$k0">
              <ref role="1YBMHb" node="3NXs7yoSoQH" resolve="dtoFlatDerivationRule" />
            </node>
            <node concept="2qgKlT" id="3NXs7yoVGqt" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3NXs7yomeLh" resolve="isDerived" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3NXs7yoVFEq" role="3clFbx">
          <node concept="2MkqsV" id="3NXs7yoVGx9" role="3cqZAp">
            <node concept="Xl_RD" id="3NXs7yoVGxl" role="2MkJ7o">
              <property role="Xl_RC" value="Derivable structure has to be set." />
            </node>
            <node concept="1YBJjd" id="3NXs7yoVGzB" role="1urrMF">
              <ref role="1YBMHb" node="3NXs7yoSoQH" resolve="dtoFlatDerivationRule" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3NXs7yoSoQH" role="1YuTPh">
      <property role="TrG5h" value="dtoFlatDerivationRule" />
      <ref role="1YaFvo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
    </node>
  </node>
  <node concept="18kY7G" id="3NXs7yp9o1t">
    <property role="TrG5h" value="check_IDtoDerivation_AreOnlyExplicitRulesUSed" />
    <property role="3GE5qa" value="dtoDerivation" />
    <node concept="3clFbS" id="3NXs7yp9o1u" role="18ibNy">
      <node concept="3clFbF" id="E4RYEai7Xb" role="3cqZAp">
        <node concept="2OqwBi" id="E4RYEaie2t" role="3clFbG">
          <node concept="2OqwBi" id="E4RYEaiach" role="2Oq$k0">
            <node concept="2OqwBi" id="E4RYEai8b3" role="2Oq$k0">
              <node concept="1YBJjd" id="E4RYEai7X9" role="2Oq$k0">
                <ref role="1YBMHb" node="3NXs7yp9o1w" resolve="derivation" />
              </node>
              <node concept="3Tsc0h" id="E4RYEai8yt" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:5QsWOhW8vfl" resolve="derivationRuleReferences" />
              </node>
            </node>
            <node concept="3zZkjj" id="E4RYEaic8l" role="2OqNvi">
              <node concept="1bVj0M" id="E4RYEaic8n" role="23t8la">
                <node concept="3clFbS" id="E4RYEaic8o" role="1bW5cS">
                  <node concept="3clFbF" id="E4RYEaicdo" role="3cqZAp">
                    <node concept="2OqwBi" id="E4RYEaidvc" role="3clFbG">
                      <node concept="2OqwBi" id="E4RYEaicRh" role="2Oq$k0">
                        <node concept="2OqwBi" id="E4RYEaicpz" role="2Oq$k0">
                          <node concept="37vLTw" id="E4RYEaicdn" role="2Oq$k0">
                            <ref role="3cqZAo" node="E4RYEaic8p" resolve="it" />
                          </node>
                          <node concept="2qgKlT" id="E4RYEaicEX" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5YqiGT0mxXR" resolve="getReferencedRule" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="E4RYEaidgB" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:5QsWOhW3TSQ" resolve="usage" />
                        </node>
                      </node>
                      <node concept="21noJN" id="E4RYEaidLv" role="2OqNvi">
                        <node concept="21nZrQ" id="E4RYEaidLx" role="21noJM">
                          <ref role="21nZrZ" to="3nll:5QsWOhW3TSM" resolve="Implicit" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="E4RYEaic8p" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="E4RYEaic8q" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2es0OD" id="E4RYEaieaF" role="2OqNvi">
            <node concept="1bVj0M" id="E4RYEaieaG" role="23t8la">
              <property role="3yWfEV" value="true" />
              <node concept="3clFbS" id="E4RYEaieaH" role="1bW5cS">
                <node concept="2MkqsV" id="E4RYEaieaI" role="3cqZAp">
                  <node concept="Xl_RD" id="E4RYEaieaJ" role="2MkJ7o">
                    <property role="Xl_RC" value="Only 'explicit' derivation rules can be used here" />
                  </node>
                  <node concept="37vLTw" id="E4RYEaieaK" role="1urrMF">
                    <ref role="3cqZAo" node="E4RYEaieaL" resolve="reference" />
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="E4RYEaieaL" role="1bW2Oz">
                <property role="TrG5h" value="reference" />
                <node concept="2jxLKc" id="E4RYEaieaM" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3NXs7yp9o1w" role="1YuTPh">
      <property role="TrG5h" value="derivation" />
      <ref role="1YaFvo" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    </node>
  </node>
  <node concept="18kY7G" id="7z5h98TjZhG">
    <property role="TrG5h" value="check_Dto_IgnoredVariablesValidity" />
    <property role="3GE5qa" value="dto" />
    <node concept="3clFbS" id="7z5h98TjZhH" role="18ibNy">
      <node concept="3cpWs8" id="7z5h98Tk0e7" role="3cqZAp">
        <node concept="3cpWsn" id="7z5h98Tk0e8" role="3cpWs9">
          <property role="TrG5h" value="availableVariables" />
          <node concept="A3Dl8" id="7z5h98Tk06_" role="1tU5fm">
            <node concept="3Tqbb2" id="7z5h98Tk06C" role="A3Ik2">
              <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
            </node>
          </node>
          <node concept="2OqwBi" id="7z5h98Tk0e9" role="33vP2m">
            <node concept="1YBJjd" id="7z5h98Tk0ea" role="2Oq$k0">
              <ref role="1YBMHb" node="7z5h98TjZhJ" resolve="dto" />
            </node>
            <node concept="2qgKlT" id="7z5h98Tk0eb" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3NXs7yp5UST" resolve="getAvailableVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="7z5h98Tk2_c" role="3cqZAp">
        <node concept="3cpWsn" id="7z5h98Tk2_d" role="3cpWs9">
          <property role="TrG5h" value="invalidIgnoredVariableReferences" />
          <node concept="A3Dl8" id="7z5h98Tk2$x" role="1tU5fm">
            <node concept="3Tqbb2" id="7z5h98Tk2$$" role="A3Ik2">
              <ref role="ehGHo" to="3nll:4LpUh3UZauM" resolve="IVariableReference" />
            </node>
          </node>
          <node concept="2OqwBi" id="7z5h98Tk5to" role="33vP2m">
            <node concept="2OqwBi" id="7z5h98Tk32j" role="2Oq$k0">
              <node concept="1YBJjd" id="7z5h98Tk32k" role="2Oq$k0">
                <ref role="1YBMHb" node="7z5h98TjZhJ" resolve="dto" />
              </node>
              <node concept="3Tsc0h" id="7z5h98Tk5wt" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
              </node>
            </node>
            <node concept="3zZkjj" id="7z5h98Tk7sN" role="2OqNvi">
              <node concept="1bVj0M" id="7z5h98Tk7sP" role="23t8la">
                <node concept="3clFbS" id="7z5h98Tk7sQ" role="1bW5cS">
                  <node concept="3clFbF" id="7z5h98Tk7xF" role="3cqZAp">
                    <node concept="3fqX7Q" id="7z5h98Tk8W5" role="3clFbG">
                      <node concept="2OqwBi" id="7z5h98Tk8W7" role="3fr31v">
                        <node concept="37vLTw" id="7z5h98Tk8W8" role="2Oq$k0">
                          <ref role="3cqZAo" node="7z5h98Tk0e8" resolve="availableVariables" />
                        </node>
                        <node concept="3JPx81" id="7z5h98Tk8W9" role="2OqNvi">
                          <node concept="2OqwBi" id="7z5h98Tk8Wa" role="25WWJ7">
                            <node concept="37vLTw" id="7z5h98Tk8Wb" role="2Oq$k0">
                              <ref role="3cqZAo" node="7z5h98Tk7sR" resolve="it" />
                            </node>
                            <node concept="2qgKlT" id="7z5h98Tk8Wc" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:4LpUh3V3HC0" resolve="getReferencedVariable" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7z5h98Tk7sR" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7z5h98Tk7sS" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="7z5h98Tk912" role="3cqZAp">
        <node concept="2OqwBi" id="7z5h98Tk9g9" role="3clFbG">
          <node concept="37vLTw" id="7z5h98Tk910" role="2Oq$k0">
            <ref role="3cqZAo" node="7z5h98Tk2_d" resolve="invalidIgnoredVariableReferences" />
          </node>
          <node concept="2es0OD" id="7z5h98Tk9Bl" role="2OqNvi">
            <node concept="1bVj0M" id="7z5h98Tk9Bn" role="23t8la">
              <node concept="3clFbS" id="7z5h98Tk9Bo" role="1bW5cS">
                <node concept="2MkqsV" id="7z5h98Tk9G$" role="3cqZAp">
                  <node concept="Xl_RD" id="7z5h98Tk9Im" role="2MkJ7o">
                    <property role="Xl_RC" value="Unresolvable variable." />
                  </node>
                  <node concept="37vLTw" id="7z5h98Tka6D" role="1urrMF">
                    <ref role="3cqZAo" node="7z5h98Tk9Bp" resolve="it" />
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="7z5h98Tk9Bp" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="7z5h98Tk9Bq" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7z5h98TjZhJ" role="1YuTPh">
      <property role="TrG5h" value="dto" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    </node>
  </node>
  <node concept="18kY7G" id="E4RYEam0I2">
    <property role="TrG5h" value="check_BoundedContext_CheckDtoDirectDerivitionUniqueness" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="E4RYEam0I3" role="18ibNy">
      <node concept="3cpWs8" id="E4RYEam9ku" role="3cqZAp">
        <node concept="3cpWsn" id="E4RYEam9kv" role="3cpWs9">
          <property role="TrG5h" value="derivedDtos" />
          <node concept="A3Dl8" id="E4RYEam9kn" role="1tU5fm">
            <node concept="3Tqbb2" id="E4RYEam9kq" role="A3Ik2">
              <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            </node>
          </node>
          <node concept="2OqwBi" id="E4RYEam9kw" role="33vP2m">
            <node concept="1YBJjd" id="E4RYEam9kx" role="2Oq$k0">
              <ref role="1YBMHb" node="E4RYEam0I5" resolve="boundedContext" />
            </node>
            <node concept="2qgKlT" id="E4RYEam9ky" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:4LpUh3WpZ6g" resolve="derivedDtos" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="E4RYEaqaSJ" role="3cqZAp" />
      <node concept="3clFbF" id="E4RYEam9q$" role="3cqZAp">
        <node concept="2OqwBi" id="E4RYEam9Bg" role="3clFbG">
          <node concept="37vLTw" id="E4RYEam9qy" role="2Oq$k0">
            <ref role="3cqZAo" node="E4RYEam9kv" resolve="derivedDtos" />
          </node>
          <node concept="2es0OD" id="E4RYEama2u" role="2OqNvi">
            <node concept="1bVj0M" id="E4RYEama2w" role="23t8la">
              <node concept="3clFbS" id="E4RYEama2x" role="1bW5cS">
                <node concept="3cpWs8" id="E4RYEamdU_" role="3cqZAp">
                  <node concept="3cpWsn" id="E4RYEamdUA" role="3cpWs9">
                    <property role="TrG5h" value="duplicateDerivedDtos" />
                    <node concept="A3Dl8" id="E4RYEamdTC" role="1tU5fm">
                      <node concept="3Tqbb2" id="E4RYEamdTF" role="A3Ik2">
                        <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="E4RYEamdUB" role="33vP2m">
                      <node concept="37vLTw" id="E4RYEamdUC" role="2Oq$k0">
                        <ref role="3cqZAo" node="E4RYEam9kv" resolve="derivedDtos" />
                      </node>
                      <node concept="3zZkjj" id="E4RYEamdUD" role="2OqNvi">
                        <node concept="1bVj0M" id="E4RYEamdUE" role="23t8la">
                          <node concept="3clFbS" id="E4RYEamdUF" role="1bW5cS">
                            <node concept="3clFbF" id="E4RYEamdUG" role="3cqZAp">
                              <node concept="3clFbC" id="E4RYEamdUI" role="3clFbG">
                                <node concept="2OqwBi" id="E4RYEamdUJ" role="3uHU7w">
                                  <node concept="37vLTw" id="E4RYEamdUK" role="2Oq$k0">
                                    <ref role="3cqZAo" node="E4RYEama2y" resolve="dto" />
                                  </node>
                                  <node concept="2qgKlT" id="E4RYEamdUL" role="2OqNvi">
                                    <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="E4RYEamdUM" role="3uHU7B">
                                  <node concept="37vLTw" id="E4RYEamdUN" role="2Oq$k0">
                                    <ref role="3cqZAo" node="E4RYEamdUS" resolve="it" />
                                  </node>
                                  <node concept="2qgKlT" id="E4RYEamdUO" role="2OqNvi">
                                    <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="E4RYEamdUS" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="E4RYEamdUT" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="E4RYEamndf" role="3cqZAp">
                  <node concept="3clFbS" id="E4RYEamndh" role="3clFbx">
                    <node concept="3clFbF" id="E4RYEamezd" role="3cqZAp">
                      <node concept="2OqwBi" id="E4RYEameOQ" role="3clFbG">
                        <node concept="37vLTw" id="E4RYEamezb" role="2Oq$k0">
                          <ref role="3cqZAo" node="E4RYEamdUA" resolve="duplicateDerivedDtos" />
                        </node>
                        <node concept="2es0OD" id="E4RYEamffC" role="2OqNvi">
                          <node concept="1bVj0M" id="E4RYEamffE" role="23t8la">
                            <property role="3yWfEV" value="true" />
                            <node concept="3clFbS" id="E4RYEamffF" role="1bW5cS">
                              <node concept="3SKdUt" id="4Bg9wDFx0uB" role="3cqZAp">
                                <node concept="1PaTwC" id="4Bg9wDFx0uC" role="1aUNEU">
                                  <node concept="3oM_SD" id="4Bg9wDFx0_w" role="1PaTwD">
                                    <property role="3oM_SC" value="TODO" />
                                  </node>
                                  <node concept="3oM_SD" id="4Bg9wDFx0G9" role="1PaTwD">
                                    <property role="3oM_SC" value="Check" />
                                  </node>
                                  <node concept="3oM_SD" id="4Bg9wDFx167" role="1PaTwD">
                                    <property role="3oM_SC" value="ob" />
                                  </node>
                                  <node concept="3oM_SD" id="4Bg9wDFx16b" role="1PaTwD">
                                    <property role="3oM_SC" value="man" />
                                  </node>
                                  <node concept="3oM_SD" id="4Bg9wDFx1wb" role="1PaTwD">
                                    <property role="3oM_SC" value="das" />
                                  </node>
                                  <node concept="3oM_SD" id="4Bg9wDFx1wh" role="1PaTwD">
                                    <property role="3oM_SC" value="hinzufügen" />
                                  </node>
                                  <node concept="3oM_SD" id="4Bg9wDFx1AZ" role="1PaTwD">
                                    <property role="3oM_SC" value="sollte" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1X3_iC" id="4Bg9wDFx0fd" role="lGtFl">
                                <property role="3V$3am" value="statement" />
                                <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                                <node concept="2MkqsV" id="E4RYEamg6l" role="8Wnug">
                                  <node concept="3cpWs3" id="E4RYEaq7wK" role="2MkJ7o">
                                    <node concept="Xl_RD" id="E4RYEaq7BH" role="3uHU7w">
                                      <property role="Xl_RC" value="' have been defined" />
                                    </node>
                                    <node concept="3cpWs3" id="E4RYEaq8Ap" role="3uHU7B">
                                      <node concept="2OqwBi" id="E4RYEaqaaF" role="3uHU7w">
                                        <node concept="2OqwBi" id="E4RYEaq9ck" role="2Oq$k0">
                                          <node concept="37vLTw" id="E4RYEaq8Hr" role="2Oq$k0">
                                            <ref role="3cqZAo" node="E4RYEamffG" resolve="it" />
                                          </node>
                                          <node concept="2qgKlT" id="E4RYEaq9SQ" role="2OqNvi">
                                            <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                                          </node>
                                        </node>
                                        <node concept="3TrcHB" id="E4RYEaqaJ7" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                      <node concept="Xl_RD" id="E4RYEamgd4" role="3uHU7B">
                                        <property role="Xl_RC" value="Multiple DTOs with derivable type '" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="E4RYEamjHo" role="1urrMF">
                                    <ref role="3cqZAo" node="E4RYEamffG" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="E4RYEamffG" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="E4RYEamffH" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOSWO" id="E4RYEammpt" role="3clFbw">
                    <node concept="3cmrfG" id="E4RYEammwp" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="E4RYEamkN7" role="3uHU7B">
                      <node concept="37vLTw" id="E4RYEamkwt" role="2Oq$k0">
                        <ref role="3cqZAo" node="E4RYEamdUA" resolve="duplicateDerivedDtos" />
                      </node>
                      <node concept="34oBXx" id="E4RYEamlfp" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="E4RYEama2y" role="1bW2Oz">
                <property role="TrG5h" value="dto" />
                <node concept="2jxLKc" id="E4RYEama2z" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="E4RYEam0I5" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="E4RYEaqbtn">
    <property role="TrG5h" value="check_BoundedContext_ImplicitFlatteningRuleUniqueness" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="E4RYEaqbto" role="18ibNy">
      <node concept="3cpWs8" id="E4RYEaqjhn" role="3cqZAp">
        <node concept="3cpWsn" id="E4RYEaqjho" role="3cpWs9">
          <property role="TrG5h" value="implicitFlatteningRules" />
          <node concept="A3Dl8" id="E4RYEaqjc2" role="1tU5fm">
            <node concept="3Tqbb2" id="E4RYEaqjc5" role="A3Ik2">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
            </node>
          </node>
          <node concept="2OqwBi" id="E4RYEaqjhp" role="33vP2m">
            <node concept="1YBJjd" id="E4RYEaqjhq" role="2Oq$k0">
              <ref role="1YBMHb" node="E4RYEaqbtq" resolve="boundedContext" />
            </node>
            <node concept="2qgKlT" id="E4RYEaqjhr" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5QsWOhWb1wA" resolve="dtoImplicitFlattteningRules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="E4RYEaqc7H" role="3cqZAp" />
      <node concept="3clFbF" id="E4RYEaqjox" role="3cqZAp">
        <node concept="2OqwBi" id="E4RYEaqj_e" role="3clFbG">
          <node concept="37vLTw" id="E4RYEaqjov" role="2Oq$k0">
            <ref role="3cqZAo" node="E4RYEaqjho" resolve="implicitFlatteningRules" />
          </node>
          <node concept="2es0OD" id="E4RYEaqjWe" role="2OqNvi">
            <node concept="1bVj0M" id="E4RYEaqjWg" role="23t8la">
              <node concept="3clFbS" id="E4RYEaqjWh" role="1bW5cS">
                <node concept="3cpWs8" id="E4RYEaqntP" role="3cqZAp">
                  <node concept="3cpWsn" id="E4RYEaqntQ" role="3cpWs9">
                    <property role="TrG5h" value="duplicateImplicitFlatteningRules" />
                    <node concept="A3Dl8" id="E4RYEaqns_" role="1tU5fm">
                      <node concept="3Tqbb2" id="E4RYEaqnsC" role="A3Ik2">
                        <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="E4RYEaqntR" role="33vP2m">
                      <node concept="37vLTw" id="E4RYEaqntS" role="2Oq$k0">
                        <ref role="3cqZAo" node="E4RYEaqjho" resolve="implicitFlatteningRules" />
                      </node>
                      <node concept="3zZkjj" id="E4RYEaqntT" role="2OqNvi">
                        <node concept="1bVj0M" id="E4RYEaqntU" role="23t8la">
                          <node concept="3clFbS" id="E4RYEaqntV" role="1bW5cS">
                            <node concept="3clFbF" id="E4RYEaqntW" role="3cqZAp">
                              <node concept="3clFbC" id="E4RYEaqntX" role="3clFbG">
                                <node concept="2OqwBi" id="E4RYEaqntY" role="3uHU7w">
                                  <node concept="37vLTw" id="E4RYEaqntZ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="E4RYEaqjWi" resolve="flatteningRule" />
                                  </node>
                                  <node concept="2qgKlT" id="E4RYEaqnu0" role="2OqNvi">
                                    <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="E4RYEaqnu1" role="3uHU7B">
                                  <node concept="37vLTw" id="E4RYEaqnu2" role="2Oq$k0">
                                    <ref role="3cqZAo" node="E4RYEaqnu4" resolve="it" />
                                  </node>
                                  <node concept="2qgKlT" id="E4RYEaqnu3" role="2OqNvi">
                                    <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="E4RYEaqnu4" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="E4RYEaqnu5" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="E4RYEaqo6m" role="3cqZAp">
                  <node concept="3clFbS" id="E4RYEaqo6o" role="3clFbx">
                    <node concept="3clFbF" id="E4RYEaqqp7" role="3cqZAp">
                      <node concept="2OqwBi" id="E4RYEaqqK8" role="3clFbG">
                        <node concept="37vLTw" id="E4RYEaqqp5" role="2Oq$k0">
                          <ref role="3cqZAo" node="E4RYEaqntQ" resolve="duplicateImplicitFlatteningRules" />
                        </node>
                        <node concept="2es0OD" id="E4RYEaqrc7" role="2OqNvi">
                          <node concept="1bVj0M" id="E4RYEaqrc9" role="23t8la">
                            <property role="3yWfEV" value="true" />
                            <node concept="3clFbS" id="E4RYEaqrca" role="1bW5cS">
                              <node concept="2MkqsV" id="E4RYEaqt5d" role="3cqZAp">
                                <node concept="3cpWs3" id="E4RYEaqt5e" role="2MkJ7o">
                                  <node concept="Xl_RD" id="E4RYEaqt5f" role="3uHU7w">
                                    <property role="Xl_RC" value="' have been defined" />
                                  </node>
                                  <node concept="3cpWs3" id="E4RYEaqt5g" role="3uHU7B">
                                    <node concept="2OqwBi" id="E4RYEaqt5h" role="3uHU7w">
                                      <node concept="2OqwBi" id="E4RYEaqt5i" role="2Oq$k0">
                                        <node concept="37vLTw" id="E4RYEaqt5j" role="2Oq$k0">
                                          <ref role="3cqZAo" node="E4RYEaqrcb" resolve="it" />
                                        </node>
                                        <node concept="2qgKlT" id="E4RYEaqt5k" role="2OqNvi">
                                          <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="E4RYEaqt5l" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="E4RYEaqt5m" role="3uHU7B">
                                      <property role="Xl_RC" value="Multiple 'implicit' flattening rules with derivable type '" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="E4RYEaqt5n" role="1urrMF">
                                  <ref role="3cqZAo" node="E4RYEaqrcb" resolve="it" />
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="E4RYEaqrcb" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="E4RYEaqrcc" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOSWO" id="E4RYEaqpB6" role="3clFbw">
                    <node concept="3cmrfG" id="E4RYEaqpGm" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="E4RYEaqolF" role="3uHU7B">
                      <node concept="37vLTw" id="E4RYEaqobz" role="2Oq$k0">
                        <ref role="3cqZAo" node="E4RYEaqntQ" resolve="duplicateImplicitFlatteningRules" />
                      </node>
                      <node concept="34oBXx" id="E4RYEaqouG" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="E4RYEaqjWi" role="1bW2Oz">
                <property role="TrG5h" value="flatteningRule" />
                <node concept="2jxLKc" id="E4RYEaqjWj" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="E4RYEaqbtq" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="4V91Il3EDA7">
    <property role="TrG5h" value="check_BoundedContext_ImplicitDataTypeRuleUniqueness" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="4V91Il3EDA8" role="18ibNy">
      <node concept="3cpWs8" id="4V91Il3EGvj" role="3cqZAp">
        <node concept="3cpWsn" id="4V91Il3EGvk" role="3cpWs9">
          <property role="TrG5h" value="implicitDataTypeRules" />
          <node concept="A3Dl8" id="4V91Il3EGvl" role="1tU5fm">
            <node concept="3Tqbb2" id="4V91Il3EGvm" role="A3Ik2">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA4" resolve="DtoDataTypeRule" />
            </node>
          </node>
          <node concept="2OqwBi" id="4V91Il3EGvn" role="33vP2m">
            <node concept="1YBJjd" id="4V91Il3EGvo" role="2Oq$k0">
              <ref role="1YBMHb" node="4V91Il3EDAa" resolve="boundedContext" />
            </node>
            <node concept="2qgKlT" id="4V91Il3EGvp" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:4V91Il3EwfP" resolve="dtoImplicitDataTypeRules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="4V91Il3EGvq" role="3cqZAp" />
      <node concept="3clFbF" id="4V91Il3EGvr" role="3cqZAp">
        <node concept="2OqwBi" id="4V91Il3EGvs" role="3clFbG">
          <node concept="37vLTw" id="4V91Il3EGvt" role="2Oq$k0">
            <ref role="3cqZAo" node="4V91Il3EGvk" resolve="implicitDataTypeRules" />
          </node>
          <node concept="2es0OD" id="4V91Il3EGvu" role="2OqNvi">
            <node concept="1bVj0M" id="4V91Il3EGvv" role="23t8la">
              <node concept="3clFbS" id="4V91Il3EGvw" role="1bW5cS">
                <node concept="3SKdUt" id="4V91Il3EQWE" role="3cqZAp">
                  <node concept="1PaTwC" id="4V91Il3EQWF" role="1aUNEU">
                    <node concept="3oM_SD" id="4V91Il3ER4L" role="1PaTwD">
                      <property role="3oM_SC" value="It" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ER4N" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ERc7" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ERcb" role="1PaTwD">
                      <property role="3oM_SC" value="allowed" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ERjx" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ERUW" role="1PaTwD">
                      <property role="3oM_SC" value="there" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ES2k" role="1PaTwD">
                      <property role="3oM_SC" value="are" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ESvN" role="1PaTwD">
                      <property role="3oM_SC" value="multiple" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ESBd" role="1PaTwD">
                      <property role="3oM_SC" value="implicit" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ESBn" role="1PaTwD">
                      <property role="3oM_SC" value="rules" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ESIN" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ESXx" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ET_3" role="1PaTwD">
                      <property role="3oM_SC" value="same" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ETGy" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il3ETO2" role="1PaTwD">
                      <property role="3oM_SC" value="Datatype" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4V91Il3EGvx" role="3cqZAp">
                  <node concept="3cpWsn" id="4V91Il3EGvy" role="3cpWs9">
                    <property role="TrG5h" value="duplicateImplicitDataTypeRules" />
                    <node concept="A3Dl8" id="4V91Il3EGvz" role="1tU5fm">
                      <node concept="3Tqbb2" id="4V91Il3EGv$" role="A3Ik2">
                        <ref role="ehGHo" to="3nll:1bq_vIpSfA4" resolve="DtoDataTypeRule" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4V91Il3EGv_" role="33vP2m">
                      <node concept="37vLTw" id="4V91Il3EGvA" role="2Oq$k0">
                        <ref role="3cqZAo" node="4V91Il3EGvk" resolve="implicitDataTypeRules" />
                      </node>
                      <node concept="3zZkjj" id="4V91Il3EGvB" role="2OqNvi">
                        <node concept="1bVj0M" id="4V91Il3EGvC" role="23t8la">
                          <property role="3yWfEV" value="true" />
                          <node concept="3clFbS" id="4V91Il3EGvD" role="1bW5cS">
                            <node concept="3clFbF" id="4V91Il3ENXK" role="3cqZAp">
                              <node concept="2OqwBi" id="4V91Il3EPwB" role="3clFbG">
                                <node concept="2OqwBi" id="4V91Il3EOCc" role="2Oq$k0">
                                  <node concept="37vLTw" id="4V91Il3ENXJ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4V91Il3EGwe" resolve="dataTypeRule" />
                                  </node>
                                  <node concept="3TrEf2" id="4V91Il3EPbp" role="2OqNvi">
                                    <ref role="3Tt5mk" to="3nll:4LpUh3XLV8u" resolve="fromType" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="4V91Il3EPW$" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:3DbZR$NHBwn" resolve="hasSameDatatype" />
                                  <node concept="2OqwBi" id="4V91Il3EQos" role="37wK5m">
                                    <node concept="37vLTw" id="4V91Il3EQ8c" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4V91Il3EGvM" resolve="it" />
                                    </node>
                                    <node concept="3TrEf2" id="4V91Il3EQy_" role="2OqNvi">
                                      <ref role="3Tt5mk" to="3nll:4LpUh3XLV8u" resolve="fromType" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="4V91Il3EGvM" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4V91Il3EGvN" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4V91Il3EMO$" role="3cqZAp" />
                <node concept="3clFbJ" id="4V91Il3EGvO" role="3cqZAp">
                  <node concept="3clFbS" id="4V91Il3EGvP" role="3clFbx">
                    <node concept="3clFbF" id="4V91Il3EGvQ" role="3cqZAp">
                      <node concept="2OqwBi" id="4V91Il3EGvR" role="3clFbG">
                        <node concept="37vLTw" id="4V91Il3EGvS" role="2Oq$k0">
                          <ref role="3cqZAo" node="4V91Il3EGvy" resolve="duplicateImplicitDataTypeRules" />
                        </node>
                        <node concept="2es0OD" id="4V91Il3EGvT" role="2OqNvi">
                          <node concept="1bVj0M" id="4V91Il3EGvU" role="23t8la">
                            <property role="3yWfEV" value="true" />
                            <node concept="3clFbS" id="4V91Il3EGvV" role="1bW5cS">
                              <node concept="2MkqsV" id="4V91Il3EGvW" role="3cqZAp">
                                <node concept="Xl_RD" id="4V91Il3EGw5" role="2MkJ7o">
                                  <property role="Xl_RC" value="Multiple 'implicit' data type rules with the same receiver type have been defined" />
                                </node>
                                <node concept="37vLTw" id="4V91Il3EGw6" role="1urrMF">
                                  <ref role="3cqZAo" node="4V91Il3EGw7" resolve="it" />
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="4V91Il3EGw7" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="4V91Il3EGw8" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOSWO" id="4V91Il3EGw9" role="3clFbw">
                    <node concept="3cmrfG" id="4V91Il3EGwa" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="4V91Il3EGwb" role="3uHU7B">
                      <node concept="37vLTw" id="4V91Il3EGwc" role="2Oq$k0">
                        <ref role="3cqZAo" node="4V91Il3EGvy" resolve="duplicateImplicitDataTypeRules" />
                      </node>
                      <node concept="34oBXx" id="4V91Il3EGwd" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="4V91Il3EGwe" role="1bW2Oz">
                <property role="TrG5h" value="dataTypeRule" />
                <node concept="2jxLKc" id="4V91Il3EGwf" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4V91Il3EDAa" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="4V91Il4idUr">
    <property role="TrG5h" value="check_BoundedContext_ExplicitDataTypeRuleUniqueness" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="4V91Il4idUs" role="18ibNy">
      <node concept="3cpWs8" id="4V91Il4ih1W" role="3cqZAp">
        <node concept="3cpWsn" id="4V91Il4ih1X" role="3cpWs9">
          <property role="TrG5h" value="dataTypeRules" />
          <node concept="A3Dl8" id="4V91Il4ih1Y" role="1tU5fm">
            <node concept="3Tqbb2" id="4V91Il4ih1Z" role="A3Ik2">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA4" resolve="DtoDataTypeRule" />
            </node>
          </node>
          <node concept="2OqwBi" id="4V91Il4ih20" role="33vP2m">
            <node concept="1YBJjd" id="4V91Il4ih21" role="2Oq$k0">
              <ref role="1YBMHb" node="4V91Il4idUu" resolve="boundedContext" />
            </node>
            <node concept="2qgKlT" id="4V91Il4ih22" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:4V91Il3EoyO" resolve="dtoDataTypeRules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="4V91Il4ih23" role="3cqZAp" />
      <node concept="3clFbF" id="4V91Il4ih24" role="3cqZAp">
        <node concept="2OqwBi" id="4V91Il4ih25" role="3clFbG">
          <node concept="37vLTw" id="4V91Il4ih26" role="2Oq$k0">
            <ref role="3cqZAo" node="4V91Il4ih1X" resolve="dataTypeRules" />
          </node>
          <node concept="2es0OD" id="4V91Il4ih27" role="2OqNvi">
            <node concept="1bVj0M" id="4V91Il4ih28" role="23t8la">
              <node concept="3clFbS" id="4V91Il4ih29" role="1bW5cS">
                <node concept="3SKdUt" id="4V91Il4ih2a" role="3cqZAp">
                  <node concept="1PaTwC" id="4V91Il4ih2b" role="1aUNEU">
                    <node concept="3oM_SD" id="4V91Il4ih2c" role="1PaTwD">
                      <property role="3oM_SC" value="It" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2d" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2e" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2f" role="1PaTwD">
                      <property role="3oM_SC" value="allowed" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2g" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2h" role="1PaTwD">
                      <property role="3oM_SC" value="there" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2i" role="1PaTwD">
                      <property role="3oM_SC" value="are" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2j" role="1PaTwD">
                      <property role="3oM_SC" value="multiple" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2k" role="1PaTwD">
                      <property role="3oM_SC" value="implicit" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2l" role="1PaTwD">
                      <property role="3oM_SC" value="rules" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2m" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2n" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2o" role="1PaTwD">
                      <property role="3oM_SC" value="same" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2p" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                    </node>
                    <node concept="3oM_SD" id="4V91Il4ih2q" role="1PaTwD">
                      <property role="3oM_SC" value="Datatype" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4V91Il4ih2r" role="3cqZAp">
                  <node concept="3cpWsn" id="4V91Il4ih2s" role="3cpWs9">
                    <property role="TrG5h" value="duplicateDataTypeRules" />
                    <node concept="A3Dl8" id="4V91Il4ih2t" role="1tU5fm">
                      <node concept="3Tqbb2" id="4V91Il4ih2u" role="A3Ik2">
                        <ref role="ehGHo" to="3nll:1bq_vIpSfA4" resolve="DtoDataTypeRule" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4V91Il4ih2v" role="33vP2m">
                      <node concept="37vLTw" id="4V91Il4ih2w" role="2Oq$k0">
                        <ref role="3cqZAo" node="4V91Il4ih1X" resolve="dataTypeRules" />
                      </node>
                      <node concept="3zZkjj" id="4V91Il4ih2x" role="2OqNvi">
                        <node concept="1bVj0M" id="4V91Il4ih2y" role="23t8la">
                          <property role="3yWfEV" value="true" />
                          <node concept="3clFbS" id="4V91Il4ih2z" role="1bW5cS">
                            <node concept="3clFbF" id="4V91Il4ih2$" role="3cqZAp">
                              <node concept="1Wc70l" id="4V91Il4ijI2" role="3clFbG">
                                <node concept="2OqwBi" id="4V91Il4il7i" role="3uHU7w">
                                  <node concept="2OqwBi" id="4V91Il4ik8G" role="2Oq$k0">
                                    <node concept="37vLTw" id="4V91Il4ijPj" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4V91Il4ih32" resolve="dataTypeRule" />
                                    </node>
                                    <node concept="3TrEf2" id="4V91Il4ikGa" role="2OqNvi">
                                      <ref role="3Tt5mk" to="3nll:4LpUh3XLV8w" resolve="toType" />
                                    </node>
                                  </node>
                                  <node concept="2qgKlT" id="4V91Il4ilzg" role="2OqNvi">
                                    <ref role="37wK5l" to="sx7w:3DbZR$NHBwn" resolve="hasSameDatatype" />
                                    <node concept="2OqwBi" id="4V91Il4ilQj" role="37wK5m">
                                      <node concept="37vLTw" id="4V91Il4ilEq" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4V91Il4ih2H" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="4V91Il4im0X" role="2OqNvi">
                                        <ref role="3Tt5mk" to="3nll:4LpUh3XLV8w" resolve="toType" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4V91Il4ih2_" role="3uHU7B">
                                  <node concept="2OqwBi" id="4V91Il4ih2A" role="2Oq$k0">
                                    <node concept="37vLTw" id="4V91Il4ih2B" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4V91Il4ih32" resolve="dataTypeRule" />
                                    </node>
                                    <node concept="3TrEf2" id="4V91Il4ih2C" role="2OqNvi">
                                      <ref role="3Tt5mk" to="3nll:4LpUh3XLV8u" resolve="fromType" />
                                    </node>
                                  </node>
                                  <node concept="2qgKlT" id="4V91Il4ih2D" role="2OqNvi">
                                    <ref role="37wK5l" to="sx7w:3DbZR$NHBwn" resolve="hasSameDatatype" />
                                    <node concept="2OqwBi" id="4V91Il4ih2E" role="37wK5m">
                                      <node concept="37vLTw" id="4V91Il4ih2F" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4V91Il4ih2H" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="4V91Il4ih2G" role="2OqNvi">
                                        <ref role="3Tt5mk" to="3nll:4LpUh3XLV8u" resolve="fromType" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="4V91Il4ih2H" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4V91Il4ih2I" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4V91Il4ih2J" role="3cqZAp" />
                <node concept="3clFbJ" id="4V91Il4ih2K" role="3cqZAp">
                  <node concept="3clFbS" id="4V91Il4ih2L" role="3clFbx">
                    <node concept="3clFbF" id="4V91Il4ih2M" role="3cqZAp">
                      <node concept="2OqwBi" id="4V91Il4ih2N" role="3clFbG">
                        <node concept="37vLTw" id="4V91Il4ih2O" role="2Oq$k0">
                          <ref role="3cqZAo" node="4V91Il4ih2s" resolve="duplicateDataTypeRules" />
                        </node>
                        <node concept="2es0OD" id="4V91Il4ih2P" role="2OqNvi">
                          <node concept="1bVj0M" id="4V91Il4ih2Q" role="23t8la">
                            <property role="3yWfEV" value="true" />
                            <node concept="3clFbS" id="4V91Il4ih2R" role="1bW5cS">
                              <node concept="2MkqsV" id="4V91Il4ih2S" role="3cqZAp">
                                <node concept="Xl_RD" id="4V91Il4ih2T" role="2MkJ7o">
                                  <property role="Xl_RC" value="Multiple data type rules for the same types have been defined" />
                                </node>
                                <node concept="37vLTw" id="4V91Il4ih2U" role="1urrMF">
                                  <ref role="3cqZAo" node="4V91Il4ih2V" resolve="it" />
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="4V91Il4ih2V" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="4V91Il4ih2W" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOSWO" id="4V91Il4ih2X" role="3clFbw">
                    <node concept="3cmrfG" id="4V91Il4ih2Y" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="4V91Il4ih2Z" role="3uHU7B">
                      <node concept="37vLTw" id="4V91Il4ih30" role="2Oq$k0">
                        <ref role="3cqZAo" node="4V91Il4ih2s" resolve="duplicateDataTypeRules" />
                      </node>
                      <node concept="34oBXx" id="4V91Il4ih31" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="4V91Il4ih32" role="1bW2Oz">
                <property role="TrG5h" value="dataTypeRule" />
                <node concept="2jxLKc" id="4V91Il4ih33" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4V91Il4idUu" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="3jZ1jc1MUiR">
    <property role="TrG5h" value="check_BoundedContext_UniqueName" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3jZ1jc1MUiS" role="18ibNy">
      <node concept="3clFbF" id="3jZ1jc1MXSn" role="3cqZAp">
        <node concept="2OqwBi" id="3jZ1jc1MYsr" role="3clFbG">
          <node concept="AQDAd" id="3jZ1jc1N1j7" role="2OqNvi">
            <ref role="37wK5l" node="awtshkcLyI" resolve="forEachDuplicateName" />
            <node concept="1bVj0M" id="3jZ1jc1N27_" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="3jZ1jc1N290" role="1bW2Oz">
                <property role="TrG5h" value="bc" />
                <node concept="3Tqbb2" id="3jZ1jc1N2eB" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
              </node>
              <node concept="3clFbS" id="3jZ1jc1N27A" role="1bW5cS">
                <node concept="2MkqsV" id="3jZ1jc1N2iJ" role="3cqZAp">
                  <node concept="3cpWs3" id="3jZ1jc1N3SL" role="2MkJ7o">
                    <node concept="Xl_RD" id="3jZ1jc1N3UQ" role="3uHU7w">
                      <property role="Xl_RC" value=" are defined" />
                    </node>
                    <node concept="3cpWs3" id="3jZ1jc1N2TN" role="3uHU7B">
                      <node concept="Xl_RD" id="3jZ1jc1N2lD" role="3uHU7B">
                        <property role="Xl_RC" value="Multiple bounded contexts with name " />
                      </node>
                      <node concept="2OqwBi" id="3jZ1jc1N3aA" role="3uHU7w">
                        <node concept="37vLTw" id="3jZ1jc1N2Vs" role="2Oq$k0">
                          <ref role="3cqZAo" node="3jZ1jc1N290" resolve="bc" />
                        </node>
                        <node concept="3TrcHB" id="3jZ1jc1N3It" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3jZ1jc1N40D" role="1urrMF">
                    <ref role="3cqZAo" node="3jZ1jc1N290" resolve="bc" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3jZ1jc1QgM6" role="2Oq$k0">
            <node concept="2OqwBi" id="3jZ1jc1QgM7" role="2Oq$k0">
              <node concept="1YBJjd" id="3jZ1jc1QgM8" role="2Oq$k0">
                <ref role="1YBMHb" node="3jZ1jc1MUiU" resolve="boundedContext" />
              </node>
              <node concept="I4A8Y" id="3jZ1jc1QgM9" role="2OqNvi" />
            </node>
            <node concept="2SmgA7" id="3jZ1jc1QgMa" role="2OqNvi">
              <node concept="chp4Y" id="3jZ1jc1QgMb" role="1dBWTz">
                <ref role="cht4Q" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3jZ1jc1MUiU" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="3jZ1jc1QiD$">
    <property role="TrG5h" value="check_BoundedContext_SingleGeneratorSettingsDefinition" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3jZ1jc1QiD_" role="18ibNy" />
    <node concept="1YaCAy" id="3jZ1jc1QiDB" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="7qLyWzvPf7j">
    <property role="TrG5h" value="check_GenerationSettings_DuplicateSettingDefinition" />
    <property role="3GE5qa" value="generationSettings" />
    <node concept="3clFbS" id="7qLyWzvPf7k" role="18ibNy">
      <node concept="3cpWs8" id="7qLyWzvQRkV" role="3cqZAp">
        <node concept="3cpWsn" id="7qLyWzvQRkW" role="3cpWs9">
          <property role="TrG5h" value="groupedComponents" />
          <node concept="3rvAFt" id="7qLyWzvQRgG" role="1tU5fm">
            <node concept="_YKpA" id="7qLyWzvQRgP" role="3rvSg0">
              <node concept="3Tqbb2" id="7qLyWzvQRgQ" role="_ZDj9">
                <ref role="ehGHo" to="3nll:omljbyVy$R" resolve="IGeneratorSettingsComponent" />
              </node>
            </node>
            <node concept="3bZ5Sz" id="7qLyWzvQRgR" role="3rvQeY" />
          </node>
          <node concept="2YIFZM" id="7qLyWzvQRkX" role="33vP2m">
            <ref role="37wK5l" to="7ztp:7qLyWzvP_Ik" resolve="groupBy" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
            <node concept="2OqwBi" id="7qLyWzvQRkY" role="37wK5m">
              <node concept="1YBJjd" id="7qLyWzvQRkZ" role="2Oq$k0">
                <ref role="1YBMHb" node="7qLyWzvPf7m" resolve="settings" />
              </node>
              <node concept="3Tsc0h" id="7qLyWzvQRl0" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:omljbyVy$T" resolve="components" />
              </node>
            </node>
            <node concept="1bVj0M" id="7qLyWzvQRl1" role="37wK5m">
              <node concept="37vLTG" id="7qLyWzvQRl2" role="1bW2Oz">
                <property role="TrG5h" value="input" />
                <node concept="3Tqbb2" id="7qLyWzvQRl3" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="7qLyWzvQRl4" role="1bW5cS">
                <node concept="3clFbF" id="7qLyWzvQSek" role="3cqZAp">
                  <node concept="2OqwBi" id="7qLyWzvQSmC" role="3clFbG">
                    <node concept="37vLTw" id="7qLyWzvQSej" role="2Oq$k0">
                      <ref role="3cqZAo" node="7qLyWzvQRl2" resolve="input" />
                    </node>
                    <node concept="2yIwOk" id="7qLyWzvQSrQ" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7qLyWzvQVcL" role="3cqZAp" />
      <node concept="1DcWWT" id="7qLyWzvQZrV" role="3cqZAp">
        <node concept="3clFbS" id="7qLyWzvQZrX" role="2LFqv$">
          <node concept="3clFbJ" id="7qLyWzvR10o" role="3cqZAp">
            <node concept="3clFbS" id="7qLyWzvR10q" role="3clFbx">
              <node concept="3N13vt" id="7qLyWzvR2ij" role="3cqZAp" />
            </node>
            <node concept="22lmx$" id="7qLyWzvR28n" role="3clFbw">
              <node concept="2OqwBi" id="7qLyWzvR2aD" role="3uHU7w">
                <node concept="37vLTw" id="7qLyWzvR2ac" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qLyWzvQZrY" resolve="key" />
                </node>
                <node concept="3O6GUB" id="7qLyWzvR2d$" role="2OqNvi">
                  <node concept="chp4Y" id="7qLyWzvR2ec" role="3QVz_e">
                    <ref role="cht4Q" to="3nll:oGImgOnn6y" resolve="CommentLine" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7qLyWzvR1fj" role="3uHU7B">
                <node concept="37vLTw" id="7qLyWzvR10C" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qLyWzvQZrY" resolve="key" />
                </node>
                <node concept="3O6GUB" id="7qLyWzvR1HI" role="2OqNvi">
                  <node concept="chp4Y" id="7qLyWzvR1KU" role="3QVz_e">
                    <ref role="cht4Q" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7qLyWzvR0Yv" role="3cqZAp" />
          <node concept="3cpWs8" id="7qLyWzvR2Qi" role="3cqZAp">
            <node concept="3cpWsn" id="7qLyWzvR2Qj" role="3cpWs9">
              <property role="TrG5h" value="components" />
              <node concept="_YKpA" id="7qLyWzvR2P4" role="1tU5fm">
                <node concept="3Tqbb2" id="7qLyWzvR2P7" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:omljbyVy$R" resolve="IGeneratorSettingsComponent" />
                </node>
              </node>
              <node concept="3EllGN" id="7qLyWzvR2Qk" role="33vP2m">
                <node concept="37vLTw" id="7qLyWzvR2Ql" role="3ElVtu">
                  <ref role="3cqZAo" node="7qLyWzvQZrY" resolve="key" />
                </node>
                <node concept="37vLTw" id="7qLyWzvR2Qm" role="3ElQJh">
                  <ref role="3cqZAo" node="7qLyWzvQRkW" resolve="groupedComponents" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7qLyWzvR2XX" role="3cqZAp">
            <node concept="3clFbS" id="7qLyWzvR2XZ" role="3clFbx">
              <node concept="3clFbF" id="7qLyWzvR9bw" role="3cqZAp">
                <node concept="2OqwBi" id="7qLyWzvR9ma" role="3clFbG">
                  <node concept="37vLTw" id="7qLyWzvR9bu" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qLyWzvR2Qj" resolve="components" />
                  </node>
                  <node concept="2es0OD" id="7qLyWzvR9Dy" role="2OqNvi">
                    <node concept="1bVj0M" id="7qLyWzvR9D$" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="7qLyWzvR9D_" role="1bW5cS">
                        <node concept="2MkqsV" id="7qLyWzvR9U_" role="3cqZAp">
                          <node concept="3cpWs3" id="7qLyWzvRbJE" role="2MkJ7o">
                            <node concept="Xl_RD" id="7qLyWzvRbNH" role="3uHU7w">
                              <property role="Xl_RC" value=" defined" />
                            </node>
                            <node concept="3cpWs3" id="7qLyWzvRaK5" role="3uHU7B">
                              <node concept="Xl_RD" id="7qLyWzvR9WZ" role="3uHU7B">
                                <property role="Xl_RC" value="Duplicate preference " />
                              </node>
                              <node concept="2OqwBi" id="7qLyWzvRb6i" role="3uHU7w">
                                <node concept="37vLTw" id="7qLyWzvRaMy" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7qLyWzvQZrY" resolve="key" />
                                </node>
                                <node concept="3n3YKJ" id="7qLyWzvRbAX" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="7qLyWzvRbTf" role="1urrMF">
                            <ref role="3cqZAo" node="7qLyWzvR9DA" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="7qLyWzvR9DA" role="1bW2Oz">
                        <property role="TrG5h" value="component" />
                        <node concept="2jxLKc" id="7qLyWzvR9DB" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="7qLyWzvR90S" role="3clFbw">
              <node concept="3cmrfG" id="7qLyWzvR91X" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="7qLyWzvR4B1" role="3uHU7B">
                <node concept="37vLTw" id="7qLyWzvR2ZU" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qLyWzvR2Qj" resolve="components" />
                </node>
                <node concept="34oBXx" id="7qLyWzvR7qH" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="7qLyWzvQZrY" role="1Duv9x">
          <property role="TrG5h" value="key" />
          <node concept="3bZ5Sz" id="7qLyWzvR0_G" role="1tU5fm" />
        </node>
        <node concept="2OqwBi" id="7qLyWzvQWcm" role="1DdaDG">
          <node concept="37vLTw" id="7qLyWzvQVFS" role="2Oq$k0">
            <ref role="3cqZAo" node="7qLyWzvQRkW" resolve="groupedComponents" />
          </node>
          <node concept="3lbrtF" id="7qLyWzvQX2B" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7qLyWzvPf7m" role="1YuTPh">
      <property role="TrG5h" value="settings" />
      <ref role="1YaFvo" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
    </node>
  </node>
  <node concept="18kY7G" id="7qLyWzw3XT_">
    <property role="TrG5h" value="check_BoundedContext_GenerationSettingsUniqueness" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="7qLyWzw3XTA" role="18ibNy">
      <node concept="3cpWs8" id="7qLyWzw42CM" role="3cqZAp">
        <node concept="3cpWsn" id="7qLyWzw42CN" role="3cpWs9">
          <property role="TrG5h" value="definedSettings" />
          <node concept="A3Dl8" id="7qLyWzw42Ce" role="1tU5fm">
            <node concept="3Tqbb2" id="7qLyWzw42Ch" role="A3Ik2">
              <ref role="ehGHo" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
            </node>
          </node>
          <node concept="2OqwBi" id="7qLyWzw42CO" role="33vP2m">
            <node concept="2OqwBi" id="7qLyWzw42CP" role="2Oq$k0">
              <node concept="1YBJjd" id="7qLyWzw42CQ" role="2Oq$k0">
                <ref role="1YBMHb" node="7qLyWzw3XTC" resolve="boundedContext" />
              </node>
              <node concept="3Tsc0h" id="7qLyWzw42CR" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
            </node>
            <node concept="v3k3i" id="7qLyWzw42CS" role="2OqNvi">
              <node concept="chp4Y" id="7qLyWzw42CT" role="v3oSu">
                <ref role="cht4Q" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="7qLyWzw42JT" role="3cqZAp">
        <property role="TyiWK" value="true" />
        <node concept="3clFbS" id="7qLyWzw42JV" role="3clFbx">
          <node concept="3cpWs6" id="7qLyWzw43gB" role="3cqZAp" />
        </node>
        <node concept="2dkUwp" id="7qLyWzw42Ye" role="3clFbw">
          <node concept="3cmrfG" id="7qLyWzw42Yy" role="3uHU7w">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="2OqwBi" id="7qLyWzw43h3" role="3uHU7B">
            <node concept="37vLTw" id="7qLyWzw42Ki" role="2Oq$k0">
              <ref role="3cqZAo" node="7qLyWzw42CN" resolve="definedSettings" />
            </node>
            <node concept="34oBXx" id="7qLyWzw4409" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7qLyWzw4489" role="3cqZAp" />
      <node concept="3clFbF" id="7qLyWzw44bE" role="3cqZAp">
        <node concept="2OqwBi" id="7qLyWzw44nO" role="3clFbG">
          <node concept="37vLTw" id="7qLyWzw44bC" role="2Oq$k0">
            <ref role="3cqZAo" node="7qLyWzw42CN" resolve="definedSettings" />
          </node>
          <node concept="2es0OD" id="7qLyWzw45bh" role="2OqNvi">
            <node concept="1bVj0M" id="7qLyWzw45bj" role="23t8la">
              <property role="3yWfEV" value="true" />
              <node concept="3clFbS" id="7qLyWzw45bk" role="1bW5cS">
                <node concept="2MkqsV" id="7qLyWzw45iq" role="3cqZAp">
                  <node concept="Xl_RD" id="7qLyWzw45kb" role="2MkJ7o">
                    <property role="Xl_RC" value="Duplicate 'generation settings' defined " />
                  </node>
                  <node concept="37vLTw" id="7qLyWzw45zF" role="1urrMF">
                    <ref role="3cqZAo" node="7qLyWzw45bl" resolve="it" />
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="7qLyWzw45bl" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="7qLyWzw45bm" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7qLyWzw3XTC" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="7qLyWzwtqTS">
    <property role="TrG5h" value="check_BoundedContext_ImportUniqueness" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="7qLyWzwtqTT" role="18ibNy">
      <node concept="3clFbF" id="1ZO4_L9R8c7" role="3cqZAp">
        <node concept="2YIFZM" id="1ZO4_L9Txtt" role="3clFbG">
          <ref role="37wK5l" to="7ztp:1ZO4_L9R$vV" resolve="forEachDuplicateValue" />
          <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
          <node concept="2OqwBi" id="1ZO4_L9TEWq" role="37wK5m">
            <node concept="1YBJjd" id="1ZO4_L9TEWr" role="2Oq$k0">
              <ref role="1YBMHb" node="7qLyWzwtqTV" resolve="boundedContext" />
            </node>
            <node concept="2qgKlT" id="1ZO4_L9TEWs" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5SyewCcprln" resolve="importStatements" />
            </node>
          </node>
          <node concept="1bVj0M" id="1ZO4_L9Tx_B" role="37wK5m">
            <property role="3yWfEV" value="true" />
            <node concept="37vLTG" id="1ZO4_L9TxCX" role="1bW2Oz">
              <property role="TrG5h" value="i" />
              <node concept="3Tqbb2" id="1ZO4_L9TxJU" role="1tU5fm">
                <ref role="ehGHo" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
              </node>
            </node>
            <node concept="3clFbS" id="1ZO4_L9Tx_D" role="1bW5cS">
              <node concept="3clFbF" id="1ZO4_L9Ty81" role="3cqZAp">
                <node concept="2OqwBi" id="1ZO4_L9Tym2" role="3clFbG">
                  <node concept="37vLTw" id="1ZO4_L9Ty80" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ZO4_L9TxCX" resolve="i" />
                  </node>
                  <node concept="2qgKlT" id="1ZO4_L9TyO8" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3DbZR$OfNHM" resolve="qualifiedName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1bVj0M" id="1ZO4_L9TzbU" role="37wK5m">
            <property role="3yWfEV" value="true" />
            <node concept="37vLTG" id="1ZO4_L9T_Pk" role="1bW2Oz">
              <property role="TrG5h" value="i" />
              <node concept="3Tqbb2" id="1ZO4_L9T_XW" role="1tU5fm">
                <ref role="ehGHo" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
              </node>
            </node>
            <node concept="3clFbS" id="1ZO4_L9TzbW" role="1bW5cS">
              <node concept="2MkqsV" id="1ZO4_L9TAR$" role="3cqZAp">
                <node concept="3cpWs3" id="1ZO4_L9TDt0" role="2MkJ7o">
                  <node concept="Xl_RD" id="1ZO4_L9TDy9" role="3uHU7w">
                    <property role="Xl_RC" value="' has already been defined" />
                  </node>
                  <node concept="3cpWs3" id="1ZO4_L9TCoW" role="3uHU7B">
                    <node concept="Xl_RD" id="1ZO4_L9TAW8" role="3uHU7B">
                      <property role="Xl_RC" value="Import for for qualified name '" />
                    </node>
                    <node concept="2OqwBi" id="1ZO4_L9TCKD" role="3uHU7w">
                      <node concept="37vLTw" id="1ZO4_L9TCtA" role="2Oq$k0">
                        <ref role="3cqZAo" node="1ZO4_L9T_Pk" resolve="i" />
                      </node>
                      <node concept="2qgKlT" id="1ZO4_L9TDg_" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:3DbZR$OfNHM" resolve="qualifiedName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1ZO4_L9TExA" role="1urrMF">
                  <ref role="3cqZAo" node="1ZO4_L9T_Pk" resolve="i" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7qLyWzwtqTV" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="apGqk" id="7qLyWzwtrPX">
    <property role="3GE5qa" value="extensions" />
    <property role="TrG5h" value="ListExtensions" />
    <node concept="ATzpf" id="7qLyWzwttmB" role="a7sos">
      <property role="TrG5h" value="forEachDuplicateValue" />
      <node concept="37vLTG" id="7qLyWzwttDa" role="3clF46">
        <property role="TrG5h" value="valueProvider" />
        <node concept="1ajhzC" id="7qLyWzwttEM" role="1tU5fm">
          <node concept="16syzq" id="7qLyWzwttHM" role="1ajw0F">
            <ref role="16sUi3" node="7qLyWzwttz$" resolve="K" />
          </node>
          <node concept="16syzq" id="7qLyWzwttIQ" role="1ajl9A">
            <ref role="16sUi3" node="7qLyWzwttFB" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7qLyWzwttLx" role="3clF46">
        <property role="TrG5h" value="callback" />
        <node concept="1ajhzC" id="7qLyWzwttNd" role="1tU5fm">
          <node concept="3cqZAl" id="7qLyWzwttSj" role="1ajl9A" />
          <node concept="16syzq" id="7qLyWzwttOF" role="1ajw0F">
            <ref role="16sUi3" node="7qLyWzwttz$" resolve="K" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qLyWzwttmC" role="1B3o_S" />
      <node concept="3cqZAl" id="7qLyWzwttBB" role="3clF45" />
      <node concept="3clFbS" id="7qLyWzwttmE" role="3clF47">
        <node concept="3clFbJ" id="7qLyWzwtu4j" role="3cqZAp">
          <node concept="3clFbS" id="7qLyWzwtu4k" role="3clFbx">
            <node concept="3cpWs6" id="7qLyWzwtu4l" role="3cqZAp" />
          </node>
          <node concept="3eOVzh" id="7qLyWzwtu4m" role="3clFbw">
            <node concept="2OqwBi" id="7qLyWzwtu4n" role="3uHU7B">
              <node concept="2V_BSl" id="7qLyWzwtu4o" role="2Oq$k0" />
              <node concept="34oBXx" id="7qLyWzwtu4p" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="7qLyWzwtu4q" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qLyWzwtu4r" role="3cqZAp" />
        <node concept="3cpWs8" id="7qLyWzwtu4s" role="3cqZAp">
          <node concept="3cpWsn" id="7qLyWzwtu4t" role="3cpWs9">
            <property role="TrG5h" value="valueIndexMap" />
            <node concept="3rvAFt" id="7qLyWzwtu4u" role="1tU5fm">
              <node concept="16syzq" id="7qLyWzwtuQQ" role="3rvQeY">
                <ref role="16sUi3" node="7qLyWzwttFB" resolve="V" />
              </node>
              <node concept="10Oyi0" id="7qLyWzwtu4w" role="3rvSg0" />
            </node>
            <node concept="2ShNRf" id="7qLyWzwtu4x" role="33vP2m">
              <node concept="3rGOSV" id="7qLyWzwtu4y" role="2ShVmc">
                <node concept="16syzq" id="7qLyWzwtvaF" role="3rHrn6">
                  <ref role="16sUi3" node="7qLyWzwttFB" resolve="V" />
                </node>
                <node concept="10Oyi0" id="7qLyWzwtu4$" role="3rHtpV" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7qLyWzwtu4_" role="3cqZAp">
          <node concept="3cpWsn" id="7qLyWzwtu4A" role="3cpWs9">
            <property role="TrG5h" value="keys" />
            <node concept="_YKpA" id="7qLyWzwtu4B" role="1tU5fm">
              <node concept="16syzq" id="7qLyWzwtuHJ" role="_ZDj9">
                <ref role="16sUi3" node="7qLyWzwttz$" resolve="K" />
              </node>
            </node>
            <node concept="2OqwBi" id="7qLyWzwtu4D" role="33vP2m">
              <node concept="2V_BSl" id="7qLyWzwtu4E" role="2Oq$k0" />
              <node concept="ANE8D" id="7qLyWzwtu4F" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qLyWzwtu4G" role="3cqZAp" />
        <node concept="1Dw8fO" id="7qLyWzwtu4H" role="3cqZAp">
          <node concept="3clFbS" id="7qLyWzwtu4I" role="2LFqv$">
            <node concept="3cpWs8" id="7qLyWzwtu4J" role="3cqZAp">
              <node concept="3cpWsn" id="7qLyWzwtu4K" role="3cpWs9">
                <property role="TrG5h" value="key" />
                <node concept="1y4W85" id="7qLyWzwtu4M" role="33vP2m">
                  <node concept="37vLTw" id="7qLyWzwtu4N" role="1y58nS">
                    <ref role="3cqZAo" node="7qLyWzwtu5y" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="7qLyWzwtu4O" role="1y566C">
                    <ref role="3cqZAo" node="7qLyWzwtu4A" resolve="keys" />
                  </node>
                </node>
                <node concept="16syzq" id="7qLyWzwtvHj" role="1tU5fm">
                  <ref role="16sUi3" node="7qLyWzwttz$" resolve="K" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7qLyWzwtyWR" role="3cqZAp">
              <node concept="3cpWsn" id="7qLyWzwtyWS" role="3cpWs9">
                <property role="TrG5h" value="value" />
                <node concept="16syzq" id="7qLyWzwtyVg" role="1tU5fm">
                  <ref role="16sUi3" node="7qLyWzwttFB" resolve="V" />
                </node>
                <node concept="2OqwBi" id="7qLyWzwtyWT" role="33vP2m">
                  <node concept="37vLTw" id="7qLyWzwtyWU" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qLyWzwttDa" resolve="valueProvider" />
                  </node>
                  <node concept="1Bd96e" id="7qLyWzwtyWV" role="2OqNvi">
                    <node concept="37vLTw" id="7qLyWzwtyWW" role="1BdPVh">
                      <ref role="3cqZAo" node="7qLyWzwtu4K" resolve="key" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7qLyWzwtw$g" role="3cqZAp" />
            <node concept="3clFbJ" id="7qLyWzwtu4Q" role="3cqZAp">
              <node concept="3clFbS" id="7qLyWzwtu4R" role="3clFbx">
                <node concept="3N13vt" id="7qLyWzwtu4S" role="3cqZAp" />
              </node>
              <node concept="17R0WA" id="7qLyWzwtzOu" role="3clFbw">
                <node concept="37vLTw" id="7qLyWzwtu4W" role="3uHU7B">
                  <ref role="3cqZAo" node="7qLyWzwtyWS" resolve="value" />
                </node>
                <node concept="10Nm6u" id="7qLyWzwtu4U" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbH" id="7qLyWzwtu4Y" role="3cqZAp" />
            <node concept="3clFbJ" id="7qLyWzwtu4Z" role="3cqZAp">
              <node concept="3clFbS" id="7qLyWzwtu50" role="3clFbx">
                <node concept="3clFbF" id="7qLyWzwtu51" role="3cqZAp">
                  <node concept="37vLTI" id="7qLyWzwtu52" role="3clFbG">
                    <node concept="3EllGN" id="7qLyWzwtu53" role="37vLTJ">
                      <node concept="37vLTw" id="7qLyWzwtu56" role="3ElVtu">
                        <ref role="3cqZAo" node="7qLyWzwtyWS" resolve="value" />
                      </node>
                      <node concept="37vLTw" id="7qLyWzwtu57" role="3ElQJh">
                        <ref role="3cqZAo" node="7qLyWzwtu4t" resolve="valueIndexMap" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7qLyWzwtu58" role="37vLTx">
                      <ref role="3cqZAo" node="7qLyWzwtu5y" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7qLyWzwtu59" role="3clFbw">
                <node concept="2OqwBi" id="7qLyWzwtu5a" role="3fr31v">
                  <node concept="37vLTw" id="7qLyWzwtu5b" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qLyWzwtu4t" resolve="valueIndexMap" />
                  </node>
                  <node concept="2Nt0df" id="7qLyWzwtu5c" role="2OqNvi">
                    <node concept="37vLTw" id="7qLyWzwt$f2" role="38cxEo">
                      <ref role="3cqZAo" node="7qLyWzwtyWS" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7qLyWzwtu5g" role="9aQIa">
                <node concept="3clFbS" id="7qLyWzwtu5h" role="9aQI4">
                  <node concept="3clFbF" id="7qLyWzwtu5i" role="3cqZAp">
                    <node concept="2OqwBi" id="7qLyWzwtu5j" role="3clFbG">
                      <node concept="37vLTw" id="7qLyWzwtu5k" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qLyWzwttLx" resolve="callback" />
                      </node>
                      <node concept="1Bd96e" id="7qLyWzwtu5l" role="2OqNvi">
                        <node concept="37vLTw" id="7qLyWzwtu5m" role="1BdPVh">
                          <ref role="3cqZAo" node="7qLyWzwtu4K" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7qLyWzwtu5n" role="3cqZAp">
                    <node concept="2OqwBi" id="7qLyWzwtu5o" role="3clFbG">
                      <node concept="37vLTw" id="7qLyWzwtu5p" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qLyWzwttLx" resolve="callback" />
                      </node>
                      <node concept="1Bd96e" id="7qLyWzwtu5q" role="2OqNvi">
                        <node concept="1y4W85" id="7qLyWzwtu5r" role="1BdPVh">
                          <node concept="37vLTw" id="7qLyWzwtu5s" role="1y566C">
                            <ref role="3cqZAo" node="7qLyWzwtu4A" resolve="keys" />
                          </node>
                          <node concept="3EllGN" id="7qLyWzwtu5t" role="1y58nS">
                            <node concept="37vLTw" id="7qLyWzwtu5v" role="3ElVtu">
                              <ref role="3cqZAo" node="7qLyWzwtyWS" resolve="value" />
                            </node>
                            <node concept="37vLTw" id="7qLyWzwtu5x" role="3ElQJh">
                              <ref role="3cqZAo" node="7qLyWzwtu4t" resolve="valueIndexMap" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7qLyWzwtu5y" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7qLyWzwtu5z" role="1tU5fm" />
            <node concept="3cmrfG" id="7qLyWzwtu5$" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7qLyWzwtu5_" role="1Dwp0S">
            <node concept="2OqwBi" id="7qLyWzwtu5A" role="3uHU7w">
              <node concept="2V_BSl" id="7qLyWzwtu5B" role="2Oq$k0" />
              <node concept="34oBXx" id="7qLyWzwtu5C" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7qLyWzwtu5D" role="3uHU7B">
              <ref role="3cqZAo" node="7qLyWzwtu5y" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="7qLyWzwtu5E" role="1Dwrff">
            <node concept="37vLTw" id="7qLyWzwtu5F" role="2$L3a6">
              <ref role="3cqZAo" node="7qLyWzwtu5y" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="7qLyWzwtF7W" role="aoRGl">
        <node concept="16syzq" id="7qLyWzwtF7Y" role="A3Ik2">
          <ref role="16sUi3" node="7qLyWzwttz$" resolve="K" />
        </node>
      </node>
      <node concept="16euLQ" id="7qLyWzwttz$" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
      <node concept="16euLQ" id="7qLyWzwttFB" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7qLyWzwtrPY" role="1B3o_S" />
  </node>
  <node concept="18kY7G" id="1ZO4_LamCuT">
    <property role="TrG5h" value="check_Dto_FlattenedVariableUniqueness" />
    <property role="3GE5qa" value="dto" />
    <node concept="3clFbS" id="1ZO4_LamCuU" role="18ibNy">
      <node concept="3clFbJ" id="1ZO4_LamDrQ" role="3cqZAp">
        <node concept="3clFbS" id="1ZO4_LamDrS" role="3clFbx">
          <node concept="3cpWs6" id="1ZO4_LamQo3" role="3cqZAp" />
        </node>
        <node concept="3fqX7Q" id="1ZO4_LamQkr" role="3clFbw">
          <node concept="2OqwBi" id="1ZO4_LamQkt" role="3fr31v">
            <node concept="1YBJjd" id="1ZO4_LamQku" role="2Oq$k0">
              <ref role="1YBMHb" node="1ZO4_LamCuW" resolve="dto" />
            </node>
            <node concept="2qgKlT" id="1ZO4_LamQkv" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3NXs7yomeLh" resolve="isDerived" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1ZO4_LamDpj" role="3cqZAp" />
      <node concept="3cpWs8" id="1ZO4_LamQoa" role="3cqZAp">
        <node concept="3cpWsn" id="1ZO4_LamQob" role="3cpWs9">
          <property role="TrG5h" value="wrappers" />
          <node concept="A3Dl8" id="1ZO4_LamQl9" role="1tU5fm">
            <node concept="3uibUv" id="1ZO4_LamQlc" role="A3Ik2">
              <ref role="3uigEE" to="4d66:1vyzkEMtuLJ" resolve="VariableWrapper" />
            </node>
          </node>
          <node concept="2OqwBi" id="1ZO4_LamQoc" role="33vP2m">
            <node concept="1YBJjd" id="1ZO4_LamQod" role="2Oq$k0">
              <ref role="1YBMHb" node="1ZO4_LamCuW" resolve="dto" />
            </node>
            <node concept="2qgKlT" id="1ZO4_LamQoe" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:1vyzkEMwXLH" resolve="getUsedVariableWrappers" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1ZO4_LamQAv" role="3cqZAp" />
      <node concept="3clFbF" id="1ZO4_LamRyH" role="3cqZAp">
        <node concept="2YIFZM" id="1ZO4_LamRDi" role="3clFbG">
          <ref role="37wK5l" to="7ztp:1ZO4_L9R$vV" resolve="forEachDuplicateValue" />
          <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
          <node concept="37vLTw" id="1ZO4_LamRKH" role="37wK5m">
            <ref role="3cqZAo" node="1ZO4_LamQob" resolve="wrappers" />
          </node>
          <node concept="1bVj0M" id="1ZO4_LamRR4" role="37wK5m">
            <property role="3yWfEV" value="true" />
            <node concept="37vLTG" id="1ZO4_LamRUq" role="1bW2Oz">
              <property role="TrG5h" value="wrapper" />
              <node concept="3uibUv" id="1ZO4_LamRZg" role="1tU5fm">
                <ref role="3uigEE" to="4d66:1vyzkEMtuLJ" resolve="VariableWrapper" />
              </node>
            </node>
            <node concept="3clFbS" id="1ZO4_LamRR6" role="1bW5cS">
              <node concept="3clFbF" id="1ZO4_LamScQ" role="3cqZAp">
                <node concept="2OqwBi" id="1ZO4_LamSly" role="3clFbG">
                  <node concept="37vLTw" id="1ZO4_LamScP" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ZO4_LamRUq" resolve="wrapper" />
                  </node>
                  <node concept="liA8E" id="1ZO4_LamS_b" role="2OqNvi">
                    <ref role="37wK5l" to="4d66:1vyzkEMtwwP" resolve="getVariableName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1bVj0M" id="1ZO4_LamSQi" role="37wK5m">
            <property role="3yWfEV" value="true" />
            <node concept="37vLTG" id="1ZO4_LamSVA" role="1bW2Oz">
              <property role="TrG5h" value="wrapper" />
              <node concept="3uibUv" id="1ZO4_LamT0O" role="1tU5fm">
                <ref role="3uigEE" to="4d66:1vyzkEMtuLJ" resolve="VariableWrapper" />
              </node>
            </node>
            <node concept="3clFbS" id="1ZO4_LamSQk" role="1bW5cS">
              <node concept="3clFbJ" id="1ZO4_LamTBk" role="3cqZAp">
                <node concept="2ZW3vV" id="1ZO4_LamUoU" role="3clFbw">
                  <node concept="3uibUv" id="1ZO4_LamUwW" role="2ZW6by">
                    <ref role="3uigEE" to="4d66:1vyzkEMs91R" resolve="DerivedVariableWrapper" />
                  </node>
                  <node concept="37vLTw" id="1ZO4_LamTFV" role="2ZW6bz">
                    <ref role="3cqZAo" node="1ZO4_LamSVA" resolve="wrapper" />
                  </node>
                </node>
                <node concept="3clFbS" id="1ZO4_LamTBm" role="3clFbx">
                  <node concept="3cpWs8" id="1ZO4_LanrLw" role="3cqZAp">
                    <node concept="3cpWsn" id="1ZO4_LanrLx" role="3cpWs9">
                      <property role="TrG5h" value="derivedWrapper" />
                      <node concept="3uibUv" id="1ZO4_Lanryz" role="1tU5fm">
                        <ref role="3uigEE" to="4d66:1vyzkEMs91R" resolve="DerivedVariableWrapper" />
                      </node>
                      <node concept="0kSF2" id="1ZO4_LanrLy" role="33vP2m">
                        <node concept="3uibUv" id="1ZO4_LanrLz" role="0kSFW">
                          <ref role="3uigEE" to="4d66:1vyzkEMs91R" resolve="DerivedVariableWrapper" />
                        </node>
                        <node concept="37vLTw" id="1ZO4_LanrL$" role="0kSFX">
                          <ref role="3cqZAo" node="1ZO4_LamSVA" resolve="wrapper" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1ZO4_Lao255" role="3cqZAp">
                    <node concept="3cpWsn" id="1ZO4_Lao256" role="3cpWs9">
                      <property role="TrG5h" value="dtoDerivable" />
                      <node concept="3Tqbb2" id="1ZO4_Lao1PS" role="1tU5fm">
                        <ref role="ehGHo" to="3nll:4LpUh3T0rQI" resolve="IDtoDerivable" />
                      </node>
                      <node concept="2OqwBi" id="1ZO4_Lao257" role="33vP2m">
                        <node concept="37vLTw" id="1ZO4_Lao258" role="2Oq$k0">
                          <ref role="3cqZAo" node="1ZO4_LanrLx" resolve="derivedWrapper" />
                        </node>
                        <node concept="liA8E" id="1ZO4_Lao259" role="2OqNvi">
                          <ref role="37wK5l" to="4d66:1ZO4_Lanc$t" resolve="findVariableOrigin" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2MkqsV" id="1ZO4_LamV4S" role="3cqZAp">
                    <node concept="3cpWs3" id="1ZO4_LaA6mX" role="2MkJ7o">
                      <node concept="Xl_RD" id="1ZO4_LaA6uG" role="3uHU7w">
                        <property role="Xl_RC" value="' or ignore said variable." />
                      </node>
                      <node concept="3cpWs3" id="1ZO4_Lao4w5" role="3uHU7B">
                        <node concept="3cpWs3" id="1ZO4_LamYiF" role="3uHU7B">
                          <node concept="3cpWs3" id="1ZO4_LamXkG" role="3uHU7B">
                            <node concept="Xl_RD" id="1ZO4_LamV9D" role="3uHU7B">
                              <property role="Xl_RC" value="Dto is already defining derived parameters with the name: " />
                            </node>
                            <node concept="2OqwBi" id="1ZO4_LamXKl" role="3uHU7w">
                              <node concept="37vLTw" id="1ZO4_LamXwb" role="2Oq$k0">
                                <ref role="3cqZAo" node="1ZO4_LamSVA" resolve="wrapper" />
                              </node>
                              <node concept="liA8E" id="1ZO4_LamY5V" role="2OqNvi">
                                <ref role="37wK5l" to="4d66:1vyzkEMtwwP" resolve="getVariableName" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="1ZO4_LamYps" role="3uHU7w">
                            <property role="Xl_RC" value=".\nConsider using a 'suffix' or 'prefix' for flattening rules involving '" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1ZO4_Lao4Xk" role="3uHU7w">
                          <node concept="37vLTw" id="1ZO4_Lao4Bp" role="2Oq$k0">
                            <ref role="3cqZAo" node="1ZO4_Lao256" resolve="dtoDerivable" />
                          </node>
                          <node concept="3TrcHB" id="1ZO4_Lao5vw" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1YBJjd" id="1ZO4_LamWKe" role="1urrMF">
                      <ref role="1YBMHb" node="1ZO4_LamCuW" resolve="dto" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1ZO4_LamRs8" role="3cqZAp" />
      <node concept="3clFbH" id="1ZO4_LamRsq" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="1ZO4_LamCuW" role="1YuTPh">
      <property role="TrG5h" value="dto" />
      <ref role="1YaFvo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    </node>
  </node>
  <node concept="18kY7G" id="3PtG$LHAarg">
    <property role="TrG5h" value="check_BoundedContext_DuplicateCommandHandlerWithSameAggregateReference" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3PtG$LHAarh" role="18ibNy">
      <node concept="3cpWs8" id="3PtG$LHAcWl" role="3cqZAp">
        <node concept="3cpWsn" id="3PtG$LHAcWm" role="3cpWs9">
          <property role="TrG5h" value="commandHandler" />
          <node concept="A3Dl8" id="3PtG$LHAcOk" role="1tU5fm">
            <node concept="3Tqbb2" id="3PtG$LHAcOn" role="A3Ik2">
              <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
            </node>
          </node>
          <node concept="2OqwBi" id="3PtG$LHAcWn" role="33vP2m">
            <node concept="2OqwBi" id="3PtG$LHAcWo" role="2Oq$k0">
              <node concept="1YBJjd" id="3PtG$LHAcWp" role="2Oq$k0">
                <ref role="1YBMHb" node="3PtG$LHAarj" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3PtG$LHAcWq" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:awtshknSQ0" resolve="commandContainers" />
              </node>
            </node>
            <node concept="3zZkjj" id="3PtG$LHAcWr" role="2OqNvi">
              <node concept="1bVj0M" id="3PtG$LHAcWs" role="23t8la">
                <node concept="3clFbS" id="3PtG$LHAcWt" role="1bW5cS">
                  <node concept="3clFbF" id="3PtG$LHAcWu" role="3cqZAp">
                    <node concept="2OqwBi" id="3PtG$LHAcWv" role="3clFbG">
                      <node concept="37vLTw" id="3PtG$LHAcWw" role="2Oq$k0">
                        <ref role="3cqZAo" node="3PtG$LHAcWy" resolve="it" />
                      </node>
                      <node concept="2qgKlT" id="3PtG$LHAcWx" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:51Z40V$BJAY" resolve="isAggregateCommandHandler" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3PtG$LHAcWy" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3PtG$LHAcWz" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="3PtG$LHAwer" role="3cqZAp">
        <node concept="3cpWsn" id="3PtG$LHAwes" role="3cpWs9">
          <property role="TrG5h" value="grouping" />
          <node concept="3rvAFt" id="3PtG$LHAwd3" role="1tU5fm">
            <node concept="_YKpA" id="3PtG$LHAwdc" role="3rvSg0">
              <node concept="3Tqbb2" id="3PtG$LHAwdd" role="_ZDj9">
                <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
              </node>
            </node>
            <node concept="3Tqbb2" id="3PtG$LHAwde" role="3rvQeY">
              <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
            </node>
          </node>
          <node concept="2YIFZM" id="3PtG$LHAwet" role="33vP2m">
            <ref role="37wK5l" to="7ztp:7qLyWzvP_Ik" resolve="groupBy" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
            <node concept="37vLTw" id="3PtG$LHAweu" role="37wK5m">
              <ref role="3cqZAo" node="3PtG$LHAcWm" resolve="commandHandler" />
            </node>
            <node concept="1bVj0M" id="3PtG$LHAwev" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="3PtG$LHAwew" role="1bW2Oz">
                <property role="TrG5h" value="container" />
                <node concept="3Tqbb2" id="3PtG$LHAwex" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
                </node>
              </node>
              <node concept="3clFbS" id="3PtG$LHAwey" role="1bW5cS">
                <node concept="3clFbF" id="3PtG$LHAwez" role="3cqZAp">
                  <node concept="2OqwBi" id="3PtG$LHAwe$" role="3clFbG">
                    <node concept="37vLTw" id="3PtG$LHAwe_" role="2Oq$k0">
                      <ref role="3cqZAo" node="3PtG$LHAwew" resolve="container" />
                    </node>
                    <node concept="2qgKlT" id="3PtG$LHAweA" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3PtG$LHuKCW" resolve="getReferencedAggregate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3PtG$LHAarp" role="3cqZAp" />
      <node concept="1DcWWT" id="3PtG$LHAoHj" role="3cqZAp">
        <node concept="3clFbS" id="3PtG$LHAoHk" role="2LFqv$">
          <node concept="3cpWs8" id="3PtG$LHAoHy" role="3cqZAp">
            <node concept="3cpWsn" id="3PtG$LHAoHz" role="3cpWs9">
              <property role="TrG5h" value="container" />
              <node concept="3EllGN" id="3PtG$LHAoHA" role="33vP2m">
                <node concept="37vLTw" id="3PtG$LHAoHB" role="3ElVtu">
                  <ref role="3cqZAo" node="3PtG$LHAoI1" resolve="key" />
                </node>
                <node concept="37vLTw" id="3PtG$LHAoHC" role="3ElQJh">
                  <ref role="3cqZAo" node="3PtG$LHAwes" resolve="grouping" />
                </node>
              </node>
              <node concept="_YKpA" id="3PtG$LHA_Ga" role="1tU5fm">
                <node concept="3Tqbb2" id="3PtG$LHA_Gb" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3PtG$LHA$u0" role="3cqZAp" />
          <node concept="3clFbJ" id="3PtG$LHAoHD" role="3cqZAp">
            <node concept="3clFbS" id="3PtG$LHAoHE" role="3clFbx">
              <node concept="3clFbF" id="3PtG$LHAoHF" role="3cqZAp">
                <node concept="2OqwBi" id="3PtG$LHAoHG" role="3clFbG">
                  <node concept="37vLTw" id="3PtG$LHAoHH" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LHAoHz" resolve="container" />
                  </node>
                  <node concept="2es0OD" id="3PtG$LHAoHI" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LHAoHJ" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LHAoHK" role="1bW5cS">
                        <node concept="2MkqsV" id="3PtG$LHAoHL" role="3cqZAp">
                          <node concept="3cpWs3" id="3PtG$LHAoHM" role="2MkJ7o">
                            <node concept="Xl_RD" id="3PtG$LHAoHN" role="3uHU7w">
                              <property role="Xl_RC" value="'" />
                            </node>
                            <node concept="3cpWs3" id="3PtG$LHAoHO" role="3uHU7B">
                              <node concept="Xl_RD" id="3PtG$LHAoHP" role="3uHU7B">
                                <property role="Xl_RC" value="Another command block/container is already referencing '" />
                              </node>
                              <node concept="2OqwBi" id="3PtG$LHABNB" role="3uHU7w">
                                <node concept="37vLTw" id="3PtG$LHABy5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3PtG$LHAoI1" resolve="key" />
                                </node>
                                <node concept="3TrcHB" id="3PtG$LHACuv" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3PtG$LHAoHT" role="1urrMF">
                            <ref role="3cqZAo" node="3PtG$LHAoHU" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LHAoHU" role="1bW2Oz">
                        <property role="TrG5h" value="component" />
                        <node concept="2jxLKc" id="3PtG$LHAoHV" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3PtG$LI7v$n" role="3clFbw">
              <node concept="3eOSWO" id="3PtG$LHAoHW" role="3uHU7B">
                <node concept="2OqwBi" id="3PtG$LHAoHY" role="3uHU7B">
                  <node concept="37vLTw" id="3PtG$LHAoHZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LHAoHz" resolve="container" />
                  </node>
                  <node concept="34oBXx" id="3PtG$LHAoI0" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="3PtG$LHAoHX" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="17QLQc" id="3PtG$LI7vGY" role="3uHU7w">
                <node concept="10Nm6u" id="3PtG$LI7vGZ" role="3uHU7w" />
                <node concept="37vLTw" id="3PtG$LI7vH0" role="3uHU7B">
                  <ref role="3cqZAo" node="3PtG$LHAoI1" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="3PtG$LHAoI1" role="1Duv9x">
          <property role="TrG5h" value="key" />
          <node concept="3Tqbb2" id="3PtG$LHAywI" role="1tU5fm">
            <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
          </node>
        </node>
        <node concept="2OqwBi" id="3PtG$LHAoI3" role="1DdaDG">
          <node concept="37vLTw" id="3PtG$LHAoI4" role="2Oq$k0">
            <ref role="3cqZAo" node="3PtG$LHAwes" resolve="grouping" />
          </node>
          <node concept="3lbrtF" id="3PtG$LHAoI5" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3PtG$LHAarj" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="3PtG$LHOOpJ">
    <property role="TrG5h" value="check_BoundedContext_DuplicateEventHandlerWithSameAggregateReference" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3PtG$LHOOpK" role="18ibNy">
      <node concept="3cpWs8" id="3PtG$LHOQt0" role="3cqZAp">
        <node concept="3cpWsn" id="3PtG$LHOQt1" role="3cpWs9">
          <property role="TrG5h" value="grouping" />
          <node concept="3rvAFt" id="3PtG$LHOQt2" role="1tU5fm">
            <node concept="_YKpA" id="3PtG$LHOQt3" role="3rvSg0">
              <node concept="3Tqbb2" id="3PtG$LHOQt4" role="_ZDj9">
                <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
              </node>
            </node>
            <node concept="3Tqbb2" id="3PtG$LHOQt5" role="3rvQeY">
              <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
            </node>
          </node>
          <node concept="2YIFZM" id="3PtG$LHOQt6" role="33vP2m">
            <ref role="37wK5l" to="7ztp:7qLyWzvP_Ik" resolve="groupBy" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
            <node concept="2OqwBi" id="3PtG$LHP3OC" role="37wK5m">
              <node concept="1YBJjd" id="3PtG$LHP3OD" role="2Oq$k0">
                <ref role="1YBMHb" node="3PtG$LHOOpM" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3PtG$LHP3OE" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:awtshki2N9" resolve="eventContainers" />
              </node>
            </node>
            <node concept="1bVj0M" id="3PtG$LHOQt8" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="3PtG$LHOQt9" role="1bW2Oz">
                <property role="TrG5h" value="container" />
                <node concept="3Tqbb2" id="3PtG$LHOQta" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                </node>
              </node>
              <node concept="3clFbS" id="3PtG$LHOQtb" role="1bW5cS">
                <node concept="3clFbF" id="3PtG$LHOQtc" role="3cqZAp">
                  <node concept="2OqwBi" id="3PtG$LHP8lv" role="3clFbG">
                    <node concept="2OqwBi" id="3PtG$LHOQtd" role="2Oq$k0">
                      <node concept="37vLTw" id="3PtG$LHOQte" role="2Oq$k0">
                        <ref role="3cqZAo" node="3PtG$LHOQt9" resolve="container" />
                      </node>
                      <node concept="3TrEf2" id="3PtG$LHP7o6" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:1jrq3noTPfl" resolve="aggregateReference" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="3PtG$LHP9xb" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3PtG$LHOQtg" role="3cqZAp" />
      <node concept="1DcWWT" id="3PtG$LHOQth" role="3cqZAp">
        <node concept="3clFbS" id="3PtG$LHOQti" role="2LFqv$">
          <node concept="3cpWs8" id="3PtG$LHOQtj" role="3cqZAp">
            <node concept="3cpWsn" id="3PtG$LHOQtk" role="3cpWs9">
              <property role="TrG5h" value="container" />
              <node concept="3EllGN" id="3PtG$LHOQtl" role="33vP2m">
                <node concept="37vLTw" id="3PtG$LHOQtm" role="3ElVtu">
                  <ref role="3cqZAo" node="3PtG$LHOQtN" resolve="key" />
                </node>
                <node concept="37vLTw" id="3PtG$LHOQtn" role="3ElQJh">
                  <ref role="3cqZAo" node="3PtG$LHOQt1" resolve="grouping" />
                </node>
              </node>
              <node concept="_YKpA" id="3PtG$LHOQto" role="1tU5fm">
                <node concept="3Tqbb2" id="3PtG$LHOQtp" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3PtG$LHOQtq" role="3cqZAp" />
          <node concept="3clFbJ" id="3PtG$LHOQtr" role="3cqZAp">
            <node concept="3clFbS" id="3PtG$LHOQts" role="3clFbx">
              <node concept="3clFbF" id="3PtG$LHOQtt" role="3cqZAp">
                <node concept="2OqwBi" id="3PtG$LHOQtu" role="3clFbG">
                  <node concept="37vLTw" id="3PtG$LHOQtv" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LHOQtk" resolve="container" />
                  </node>
                  <node concept="2es0OD" id="3PtG$LHOQtw" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LHOQtx" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LHOQty" role="1bW5cS">
                        <node concept="2MkqsV" id="3PtG$LHOQtz" role="3cqZAp">
                          <node concept="3cpWs3" id="3PtG$LHOQt$" role="2MkJ7o">
                            <node concept="Xl_RD" id="3PtG$LHOQt_" role="3uHU7w">
                              <property role="Xl_RC" value="'" />
                            </node>
                            <node concept="3cpWs3" id="3PtG$LHOQtA" role="3uHU7B">
                              <node concept="Xl_RD" id="3PtG$LHOQtB" role="3uHU7B">
                                <property role="Xl_RC" value="Another event block/container is already referencing '" />
                              </node>
                              <node concept="2OqwBi" id="3PtG$LHOQtC" role="3uHU7w">
                                <node concept="37vLTw" id="3PtG$LHOQtD" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3PtG$LHOQtN" resolve="key" />
                                </node>
                                <node concept="3TrcHB" id="3PtG$LHOQtE" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3PtG$LHOQtF" role="1urrMF">
                            <ref role="3cqZAo" node="3PtG$LHOQtG" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LHOQtG" role="1bW2Oz">
                        <property role="TrG5h" value="component" />
                        <node concept="2jxLKc" id="3PtG$LHOQtH" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3PtG$LI7xR3" role="3clFbw">
              <node concept="3eOSWO" id="3PtG$LHOQtI" role="3uHU7B">
                <node concept="2OqwBi" id="3PtG$LHOQtK" role="3uHU7B">
                  <node concept="37vLTw" id="3PtG$LHOQtL" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LHOQtk" resolve="container" />
                  </node>
                  <node concept="34oBXx" id="3PtG$LHOQtM" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="3PtG$LHOQtJ" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="17QLQc" id="3PtG$LI7xZE" role="3uHU7w">
                <node concept="10Nm6u" id="3PtG$LI7xZF" role="3uHU7w" />
                <node concept="37vLTw" id="3PtG$LI7xZG" role="3uHU7B">
                  <ref role="3cqZAo" node="3PtG$LHOQtN" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="3PtG$LHOQtN" role="1Duv9x">
          <property role="TrG5h" value="key" />
          <node concept="3Tqbb2" id="3PtG$LHOQtO" role="1tU5fm">
            <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
          </node>
        </node>
        <node concept="2OqwBi" id="3PtG$LHOQtP" role="1DdaDG">
          <node concept="37vLTw" id="3PtG$LHOQtQ" role="2Oq$k0">
            <ref role="3cqZAo" node="3PtG$LHOQt1" resolve="grouping" />
          </node>
          <node concept="3lbrtF" id="3PtG$LHOQtR" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3PtG$LHOOpM" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="3PtG$LHSEQb">
    <property role="TrG5h" value="check_BoundedContext_DuplicateAggregateRepositoriesWithSameAggregateReference" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3PtG$LHSEQc" role="18ibNy">
      <node concept="3cpWs8" id="3PtG$LHSG84" role="3cqZAp">
        <node concept="3cpWsn" id="3PtG$LHSG85" role="3cpWs9">
          <property role="TrG5h" value="grouping" />
          <node concept="3rvAFt" id="3PtG$LHSG86" role="1tU5fm">
            <node concept="_YKpA" id="3PtG$LHSG87" role="3rvSg0">
              <node concept="3Tqbb2" id="3PtG$LHSG88" role="_ZDj9">
                <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
              </node>
            </node>
            <node concept="3Tqbb2" id="3PtG$LHSG89" role="3rvQeY">
              <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
            </node>
          </node>
          <node concept="2YIFZM" id="3PtG$LHSG8a" role="33vP2m">
            <ref role="37wK5l" to="7ztp:7qLyWzvP_Ik" resolve="groupBy" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
            <node concept="2OqwBi" id="3PtG$LHSG8b" role="37wK5m">
              <node concept="1YBJjd" id="3PtG$LHSG8c" role="2Oq$k0">
                <ref role="1YBMHb" node="3PtG$LHSEQe" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3PtG$LHSG8d" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:awtshklq0$" resolve="aggregateRootRepositories" />
              </node>
            </node>
            <node concept="1bVj0M" id="3PtG$LHSG8e" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="3PtG$LHSG8f" role="1bW2Oz">
                <property role="TrG5h" value="repository" />
                <node concept="3Tqbb2" id="3PtG$LHSG8g" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
                </node>
              </node>
              <node concept="3clFbS" id="3PtG$LHSG8h" role="1bW5cS">
                <node concept="3clFbF" id="3PtG$LHSG8i" role="3cqZAp">
                  <node concept="2OqwBi" id="3PtG$LHSG8j" role="3clFbG">
                    <node concept="2OqwBi" id="3PtG$LHSG8k" role="2Oq$k0">
                      <node concept="37vLTw" id="3PtG$LHSG8l" role="2Oq$k0">
                        <ref role="3cqZAo" node="3PtG$LHSG8f" resolve="repository" />
                      </node>
                      <node concept="3TrEf2" id="3PtG$LHSG8m" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:5SyewC9Zz9D" resolve="aggregateReference" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="3PtG$LHSG8n" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3PtG$LHSG8o" role="3cqZAp" />
      <node concept="1DcWWT" id="3PtG$LHSG8p" role="3cqZAp">
        <node concept="3clFbS" id="3PtG$LHSG8q" role="2LFqv$">
          <node concept="3cpWs8" id="3PtG$LHSG8r" role="3cqZAp">
            <node concept="3cpWsn" id="3PtG$LHSG8s" role="3cpWs9">
              <property role="TrG5h" value="repositories" />
              <node concept="3EllGN" id="3PtG$LHSG8t" role="33vP2m">
                <node concept="37vLTw" id="3PtG$LHSG8u" role="3ElVtu">
                  <ref role="3cqZAo" node="3PtG$LHSG8V" resolve="key" />
                </node>
                <node concept="37vLTw" id="3PtG$LHSG8v" role="3ElQJh">
                  <ref role="3cqZAo" node="3PtG$LHSG85" resolve="grouping" />
                </node>
              </node>
              <node concept="_YKpA" id="3PtG$LHSG8w" role="1tU5fm">
                <node concept="3Tqbb2" id="3PtG$LHSG8x" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3PtG$LHSG8y" role="3cqZAp" />
          <node concept="3clFbJ" id="3PtG$LHSG8z" role="3cqZAp">
            <node concept="3clFbS" id="3PtG$LHSG8$" role="3clFbx">
              <node concept="3clFbF" id="3PtG$LHSG8_" role="3cqZAp">
                <node concept="2OqwBi" id="3PtG$LHSG8A" role="3clFbG">
                  <node concept="37vLTw" id="3PtG$LHSG8B" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LHSG8s" resolve="repositories" />
                  </node>
                  <node concept="2es0OD" id="3PtG$LHSG8C" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LHSG8D" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LHSG8E" role="1bW5cS">
                        <node concept="2MkqsV" id="3PtG$LHSG8F" role="3cqZAp">
                          <node concept="3cpWs3" id="3PtG$LHSG8G" role="2MkJ7o">
                            <node concept="Xl_RD" id="3PtG$LHSG8H" role="3uHU7w">
                              <property role="Xl_RC" value="'" />
                            </node>
                            <node concept="3cpWs3" id="3PtG$LHSG8I" role="3uHU7B">
                              <node concept="Xl_RD" id="3PtG$LHSG8J" role="3uHU7B">
                                <property role="Xl_RC" value="Another aggregate repository is already referencing '" />
                              </node>
                              <node concept="2OqwBi" id="3PtG$LHSG8K" role="3uHU7w">
                                <node concept="37vLTw" id="3PtG$LHSG8L" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3PtG$LHSG8V" resolve="key" />
                                </node>
                                <node concept="3TrcHB" id="3PtG$LHSG8M" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3PtG$LHSG8N" role="1urrMF">
                            <ref role="3cqZAo" node="3PtG$LHSG8O" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LHSG8O" role="1bW2Oz">
                        <property role="TrG5h" value="component" />
                        <node concept="2jxLKc" id="3PtG$LHSG8P" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3PtG$LI7tkc" role="3clFbw">
              <node concept="3eOSWO" id="3PtG$LHSG8Q" role="3uHU7B">
                <node concept="2OqwBi" id="3PtG$LHSG8S" role="3uHU7B">
                  <node concept="37vLTw" id="3PtG$LHSG8T" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LHSG8s" resolve="repositories" />
                  </node>
                  <node concept="34oBXx" id="3PtG$LHSG8U" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="3PtG$LHSG8R" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="17QLQc" id="3PtG$LI7tlV" role="3uHU7w">
                <node concept="10Nm6u" id="3PtG$LI7tlW" role="3uHU7w" />
                <node concept="37vLTw" id="3PtG$LI7tlX" role="3uHU7B">
                  <ref role="3cqZAo" node="3PtG$LHSG8V" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="3PtG$LHSG8V" role="1Duv9x">
          <property role="TrG5h" value="key" />
          <node concept="3Tqbb2" id="3PtG$LHSG8W" role="1tU5fm">
            <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
          </node>
        </node>
        <node concept="2OqwBi" id="3PtG$LHSG8X" role="1DdaDG">
          <node concept="37vLTw" id="3PtG$LHSG8Y" role="2Oq$k0">
            <ref role="3cqZAo" node="3PtG$LHSG85" resolve="grouping" />
          </node>
          <node concept="3lbrtF" id="3PtG$LHSG8Z" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3PtG$LHSEQe" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="3PtG$LHZVoH">
    <property role="TrG5h" value="check_BoundedContext_DuplicateDtoRepositoriesWithSameDtoReference" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3PtG$LHZVoI" role="18ibNy">
      <node concept="3cpWs8" id="3PtG$LHZWDi" role="3cqZAp">
        <node concept="3cpWsn" id="3PtG$LHZWDj" role="3cpWs9">
          <property role="TrG5h" value="grouping" />
          <node concept="3rvAFt" id="3PtG$LHZWDk" role="1tU5fm">
            <node concept="_YKpA" id="3PtG$LHZWDl" role="3rvSg0">
              <node concept="3Tqbb2" id="3PtG$LHZWDm" role="_ZDj9">
                <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
              </node>
            </node>
            <node concept="3Tqbb2" id="3PtG$LHZWDn" role="3rvQeY">
              <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            </node>
          </node>
          <node concept="2YIFZM" id="3PtG$LHZWDo" role="33vP2m">
            <ref role="37wK5l" to="7ztp:7qLyWzvP_Ik" resolve="groupBy" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
            <node concept="2OqwBi" id="3PtG$LHZWDp" role="37wK5m">
              <node concept="1YBJjd" id="3PtG$LHZWDq" role="2Oq$k0">
                <ref role="1YBMHb" node="3PtG$LHZVoK" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3PtG$LHZWDr" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1WhJCpUS1If" resolve="dtoRepositories" />
              </node>
            </node>
            <node concept="1bVj0M" id="3PtG$LHZWDs" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="3PtG$LHZWDt" role="1bW2Oz">
                <property role="TrG5h" value="repository" />
                <node concept="3Tqbb2" id="3PtG$LHZWDu" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
                </node>
              </node>
              <node concept="3clFbS" id="3PtG$LHZWDv" role="1bW5cS">
                <node concept="3clFbF" id="3PtG$LHZWDw" role="3cqZAp">
                  <node concept="2OqwBi" id="3PtG$LI07AO" role="3clFbG">
                    <node concept="2OqwBi" id="3PtG$LHZWDy" role="2Oq$k0">
                      <node concept="37vLTw" id="3PtG$LHZWDz" role="2Oq$k0">
                        <ref role="3cqZAo" node="3PtG$LHZWDt" resolve="repository" />
                      </node>
                      <node concept="3TrEf2" id="3PtG$LI06rm" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="3PtG$LI08W5" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:4Wa3rAG5J$7" resolve="dto" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3PtG$LHZWDA" role="3cqZAp" />
      <node concept="1DcWWT" id="3PtG$LHZWDB" role="3cqZAp">
        <node concept="3clFbS" id="3PtG$LHZWDC" role="2LFqv$">
          <node concept="3cpWs8" id="3PtG$LHZWDD" role="3cqZAp">
            <node concept="3cpWsn" id="3PtG$LHZWDE" role="3cpWs9">
              <property role="TrG5h" value="repositories" />
              <node concept="3EllGN" id="3PtG$LHZWDF" role="33vP2m">
                <node concept="37vLTw" id="3PtG$LHZWDG" role="3ElVtu">
                  <ref role="3cqZAo" node="3PtG$LHZWE9" resolve="key" />
                </node>
                <node concept="37vLTw" id="3PtG$LHZWDH" role="3ElQJh">
                  <ref role="3cqZAo" node="3PtG$LHZWDj" resolve="grouping" />
                </node>
              </node>
              <node concept="_YKpA" id="3PtG$LHZWDI" role="1tU5fm">
                <node concept="3Tqbb2" id="3PtG$LHZWDJ" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3PtG$LHZWDK" role="3cqZAp" />
          <node concept="3clFbJ" id="3PtG$LHZWDL" role="3cqZAp">
            <node concept="3clFbS" id="3PtG$LHZWDM" role="3clFbx">
              <node concept="3clFbF" id="3PtG$LHZWDN" role="3cqZAp">
                <node concept="2OqwBi" id="3PtG$LHZWDO" role="3clFbG">
                  <node concept="37vLTw" id="3PtG$LHZWDP" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LHZWDE" resolve="repositories" />
                  </node>
                  <node concept="2es0OD" id="3PtG$LHZWDQ" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LHZWDR" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LHZWDS" role="1bW5cS">
                        <node concept="2MkqsV" id="3PtG$LHZWDT" role="3cqZAp">
                          <node concept="3cpWs3" id="3PtG$LHZWDU" role="2MkJ7o">
                            <node concept="Xl_RD" id="3PtG$LHZWDV" role="3uHU7w">
                              <property role="Xl_RC" value="'" />
                            </node>
                            <node concept="3cpWs3" id="3PtG$LHZWDW" role="3uHU7B">
                              <node concept="Xl_RD" id="3PtG$LHZWDX" role="3uHU7B">
                                <property role="Xl_RC" value="Another dto repository is already referencing '" />
                              </node>
                              <node concept="2OqwBi" id="3PtG$LHZWDY" role="3uHU7w">
                                <node concept="37vLTw" id="3PtG$LHZWDZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3PtG$LHZWE9" resolve="key" />
                                </node>
                                <node concept="3TrcHB" id="3PtG$LHZWE0" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3PtG$LHZWE1" role="1urrMF">
                            <ref role="3cqZAo" node="3PtG$LHZWE2" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LHZWE2" role="1bW2Oz">
                        <property role="TrG5h" value="component" />
                        <node concept="2jxLKc" id="3PtG$LHZWE3" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3PtG$LI3QfP" role="3clFbw">
              <node concept="17QLQc" id="3PtG$LI3QDA" role="3uHU7w">
                <node concept="10Nm6u" id="3PtG$LI3QHa" role="3uHU7w" />
                <node concept="37vLTw" id="3PtG$LI3Qor" role="3uHU7B">
                  <ref role="3cqZAo" node="3PtG$LHZWE9" resolve="key" />
                </node>
              </node>
              <node concept="3eOSWO" id="3PtG$LHZWE4" role="3uHU7B">
                <node concept="2OqwBi" id="3PtG$LHZWE6" role="3uHU7B">
                  <node concept="37vLTw" id="3PtG$LHZWE7" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LHZWDE" resolve="repositories" />
                  </node>
                  <node concept="34oBXx" id="3PtG$LHZWE8" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="3PtG$LHZWE5" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="3PtG$LHZWE9" role="1Duv9x">
          <property role="TrG5h" value="key" />
          <node concept="3Tqbb2" id="3PtG$LHZWEa" role="1tU5fm">
            <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          </node>
        </node>
        <node concept="2OqwBi" id="3PtG$LHZWEb" role="1DdaDG">
          <node concept="37vLTw" id="3PtG$LHZWEc" role="2Oq$k0">
            <ref role="3cqZAo" node="3PtG$LHZWDj" resolve="grouping" />
          </node>
          <node concept="3lbrtF" id="3PtG$LHZWEd" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3PtG$LHZVoK" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="3PtG$LI7$nr">
    <property role="TrG5h" value="check_BoundedContext_DuplicateDtoRepositoriesWithSameName" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3PtG$LI7$ns" role="18ibNy">
      <node concept="3cpWs8" id="3PtG$LI7DKo" role="3cqZAp">
        <node concept="3cpWsn" id="3PtG$LI7DKp" role="3cpWs9">
          <property role="TrG5h" value="grouping" />
          <node concept="3rvAFt" id="3PtG$LI7DKq" role="1tU5fm">
            <node concept="_YKpA" id="3PtG$LI7DKr" role="3rvSg0">
              <node concept="3Tqbb2" id="3PtG$LI7DKs" role="_ZDj9">
                <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
              </node>
            </node>
            <node concept="17QB3L" id="3PtG$LI7GCh" role="3rvQeY" />
          </node>
          <node concept="2YIFZM" id="3PtG$LI7DKu" role="33vP2m">
            <ref role="37wK5l" to="7ztp:7qLyWzvP_Ik" resolve="groupBy" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
            <node concept="2OqwBi" id="3PtG$LI7DKv" role="37wK5m">
              <node concept="1YBJjd" id="3PtG$LI7DKw" role="2Oq$k0">
                <ref role="1YBMHb" node="3PtG$LI7$nu" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3PtG$LI7DKx" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1WhJCpUS1If" resolve="dtoRepositories" />
              </node>
            </node>
            <node concept="1bVj0M" id="3PtG$LI7DKy" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="3PtG$LI7DKz" role="1bW2Oz">
                <property role="TrG5h" value="repository" />
                <node concept="3Tqbb2" id="3PtG$LI7DK$" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
                </node>
              </node>
              <node concept="3clFbS" id="3PtG$LI7DK_" role="1bW5cS">
                <node concept="3clFbF" id="3PtG$LI7JHN" role="3cqZAp">
                  <node concept="2OqwBi" id="3PtG$LI7KNY" role="3clFbG">
                    <node concept="37vLTw" id="3PtG$LI7JHM" role="2Oq$k0">
                      <ref role="3cqZAo" node="3PtG$LI7DKz" resolve="repository" />
                    </node>
                    <node concept="2qgKlT" id="3PtG$LI7LMN" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3PtG$LI7DKG" role="3cqZAp" />
      <node concept="1DcWWT" id="3PtG$LI7DKH" role="3cqZAp">
        <node concept="3clFbS" id="3PtG$LI7DKI" role="2LFqv$">
          <node concept="3cpWs8" id="3PtG$LI7DKJ" role="3cqZAp">
            <node concept="3cpWsn" id="3PtG$LI7DKK" role="3cpWs9">
              <property role="TrG5h" value="repositories" />
              <node concept="3EllGN" id="3PtG$LI7DKL" role="33vP2m">
                <node concept="37vLTw" id="3PtG$LI7DKM" role="3ElVtu">
                  <ref role="3cqZAo" node="3PtG$LI7DLj" resolve="key" />
                </node>
                <node concept="37vLTw" id="3PtG$LI7DKN" role="3ElQJh">
                  <ref role="3cqZAo" node="3PtG$LI7DKp" resolve="grouping" />
                </node>
              </node>
              <node concept="_YKpA" id="3PtG$LI7DKO" role="1tU5fm">
                <node concept="3Tqbb2" id="3PtG$LI7DKP" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3PtG$LI7DKQ" role="3cqZAp" />
          <node concept="3clFbJ" id="3PtG$LI7DKR" role="3cqZAp">
            <node concept="3clFbS" id="3PtG$LI7DKS" role="3clFbx">
              <node concept="3clFbF" id="3PtG$LI7DKT" role="3cqZAp">
                <node concept="2OqwBi" id="3PtG$LI7DKU" role="3clFbG">
                  <node concept="37vLTw" id="3PtG$LI7DKV" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LI7DKK" resolve="repositories" />
                  </node>
                  <node concept="2es0OD" id="3PtG$LI7DKW" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LI7DKX" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LI7DKY" role="1bW5cS">
                        <node concept="2MkqsV" id="3PtG$LI7DKZ" role="3cqZAp">
                          <node concept="3cpWs3" id="3PtG$LI7DL0" role="2MkJ7o">
                            <node concept="Xl_RD" id="3PtG$LI7DL1" role="3uHU7w">
                              <property role="Xl_RC" value="' is already defined" />
                            </node>
                            <node concept="3cpWs3" id="3PtG$LI7DL2" role="3uHU7B">
                              <node concept="Xl_RD" id="3PtG$LI7DL3" role="3uHU7B">
                                <property role="Xl_RC" value="Another dto repository with name '" />
                              </node>
                              <node concept="37vLTw" id="3PtG$LI7DL5" role="3uHU7w">
                                <ref role="3cqZAo" node="3PtG$LI7DLj" resolve="key" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3PtG$LI7DL7" role="1urrMF">
                            <ref role="3cqZAo" node="3PtG$LI7DL8" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LI7DL8" role="1bW2Oz">
                        <property role="TrG5h" value="component" />
                        <node concept="2jxLKc" id="3PtG$LI7DL9" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3PtG$LI7DLa" role="3clFbw">
              <node concept="17QLQc" id="3PtG$LI7DLb" role="3uHU7w">
                <node concept="10Nm6u" id="3PtG$LI7DLc" role="3uHU7w" />
                <node concept="37vLTw" id="3PtG$LI7DLd" role="3uHU7B">
                  <ref role="3cqZAo" node="3PtG$LI7DLj" resolve="key" />
                </node>
              </node>
              <node concept="3eOSWO" id="3PtG$LI7DLe" role="3uHU7B">
                <node concept="2OqwBi" id="3PtG$LI7DLf" role="3uHU7B">
                  <node concept="37vLTw" id="3PtG$LI7DLg" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LI7DKK" resolve="repositories" />
                  </node>
                  <node concept="34oBXx" id="3PtG$LI7DLh" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="3PtG$LI7DLi" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="3PtG$LI7DLj" role="1Duv9x">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="3PtG$LI7N5M" role="1tU5fm" />
        </node>
        <node concept="2OqwBi" id="3PtG$LI7DLl" role="1DdaDG">
          <node concept="37vLTw" id="3PtG$LI7DLm" role="2Oq$k0">
            <ref role="3cqZAo" node="3PtG$LI7DKp" resolve="grouping" />
          </node>
          <node concept="3lbrtF" id="3PtG$LI7DLn" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3PtG$LI7$nu" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="3PtG$LIf7VM">
    <property role="TrG5h" value="check_BoundedContext_DuplicateAggregateRepositoriesWithSameName" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3PtG$LIf7VN" role="18ibNy">
      <node concept="3cpWs8" id="3PtG$LIf90r" role="3cqZAp">
        <node concept="3cpWsn" id="3PtG$LIf90s" role="3cpWs9">
          <property role="TrG5h" value="grouping" />
          <node concept="3rvAFt" id="3PtG$LIf90t" role="1tU5fm">
            <node concept="_YKpA" id="3PtG$LIf90u" role="3rvSg0">
              <node concept="3Tqbb2" id="3PtG$LIf90v" role="_ZDj9">
                <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
              </node>
            </node>
            <node concept="17QB3L" id="3PtG$LIf90w" role="3rvQeY" />
          </node>
          <node concept="2YIFZM" id="3PtG$LIf90x" role="33vP2m">
            <ref role="37wK5l" to="7ztp:7qLyWzvP_Ik" resolve="groupBy" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
            <node concept="2OqwBi" id="3PtG$LIf90y" role="37wK5m">
              <node concept="1YBJjd" id="3PtG$LIf90z" role="2Oq$k0">
                <ref role="1YBMHb" node="3PtG$LIf7VP" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3PtG$LIf90$" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
              </node>
            </node>
            <node concept="1bVj0M" id="3PtG$LIf90_" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="3PtG$LIf90A" role="1bW2Oz">
                <property role="TrG5h" value="aggregateRoot" />
                <node concept="3Tqbb2" id="3PtG$LIf90B" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                </node>
              </node>
              <node concept="3clFbS" id="3PtG$LIf90C" role="1bW5cS">
                <node concept="3clFbF" id="3PtG$LIf90D" role="3cqZAp">
                  <node concept="2OqwBi" id="3PtG$LIf90E" role="3clFbG">
                    <node concept="37vLTw" id="3PtG$LIf90F" role="2Oq$k0">
                      <ref role="3cqZAo" node="3PtG$LIf90A" resolve="aggregateRoot" />
                    </node>
                    <node concept="2qgKlT" id="3PtG$LIf90G" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3PtG$LIf90H" role="3cqZAp" />
      <node concept="1DcWWT" id="3PtG$LIf90I" role="3cqZAp">
        <node concept="3clFbS" id="3PtG$LIf90J" role="2LFqv$">
          <node concept="3cpWs8" id="3PtG$LIf90K" role="3cqZAp">
            <node concept="3cpWsn" id="3PtG$LIf90L" role="3cpWs9">
              <property role="TrG5h" value="repositories" />
              <node concept="3EllGN" id="3PtG$LIf90M" role="33vP2m">
                <node concept="37vLTw" id="3PtG$LIf90N" role="3ElVtu">
                  <ref role="3cqZAo" node="3PtG$LIf91i" resolve="key" />
                </node>
                <node concept="37vLTw" id="3PtG$LIf90O" role="3ElQJh">
                  <ref role="3cqZAo" node="3PtG$LIf90s" resolve="grouping" />
                </node>
              </node>
              <node concept="_YKpA" id="3PtG$LIf90P" role="1tU5fm">
                <node concept="3Tqbb2" id="3PtG$LIf90Q" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3PtG$LIjxC6" role="3cqZAp" />
          <node concept="3clFbJ" id="3PtG$LIf90S" role="3cqZAp">
            <node concept="3clFbS" id="3PtG$LIf90T" role="3clFbx">
              <node concept="3clFbF" id="3PtG$LIf90U" role="3cqZAp">
                <node concept="2OqwBi" id="3PtG$LIf90V" role="3clFbG">
                  <node concept="37vLTw" id="3PtG$LIf90W" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LIf90L" resolve="repositories" />
                  </node>
                  <node concept="2es0OD" id="3PtG$LIf90X" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LIf90Y" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LIf90Z" role="1bW5cS">
                        <node concept="3clFbJ" id="3PtG$LInbvR" role="3cqZAp">
                          <node concept="3clFbS" id="3PtG$LInbvT" role="3clFbx">
                            <node concept="2MkqsV" id="3PtG$LIf910" role="3cqZAp">
                              <node concept="3cpWs3" id="3PtG$LIf911" role="2MkJ7o">
                                <node concept="Xl_RD" id="3PtG$LIf912" role="3uHU7w">
                                  <property role="Xl_RC" value="' is already defined" />
                                </node>
                                <node concept="3cpWs3" id="3PtG$LIf913" role="3uHU7B">
                                  <node concept="Xl_RD" id="3PtG$LIf914" role="3uHU7B">
                                    <property role="Xl_RC" value="Another aggregate repository with name '" />
                                  </node>
                                  <node concept="37vLTw" id="3PtG$LIf915" role="3uHU7w">
                                    <ref role="3cqZAo" node="3PtG$LIf91i" resolve="key" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="3PtG$LIfGix" role="1urrMF">
                                <node concept="37vLTw" id="3PtG$LIf916" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3PtG$LIf917" resolve="component" />
                                </node>
                                <node concept="2qgKlT" id="3PtG$LIfGFp" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:3AwzpICw894" resolve="repository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3PtG$LInc9A" role="3clFbw">
                            <node concept="37vLTw" id="3PtG$LInbJB" role="2Oq$k0">
                              <ref role="3cqZAo" node="3PtG$LIf917" resolve="component" />
                            </node>
                            <node concept="2qgKlT" id="3PtG$LIncON" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:2Bsub$KTQ$T" resolve="hasDefinedRepository" />
                            </node>
                          </node>
                          <node concept="9aQIb" id="3PtG$LIncSa" role="9aQIa">
                            <node concept="3clFbS" id="3PtG$LIncSb" role="9aQI4">
                              <node concept="2MkqsV" id="3PtG$LIndfo" role="3cqZAp">
                                <node concept="3cpWs3" id="3PtG$LIneVT" role="2MkJ7o">
                                  <node concept="Xl_RD" id="3PtG$LInfd9" role="3uHU7w">
                                    <property role="Xl_RC" value="' of this aggregate is already explicitly defined" />
                                  </node>
                                  <node concept="3cpWs3" id="3PtG$LIndZF" role="3uHU7B">
                                    <node concept="Xl_RD" id="3PtG$LIndiQ" role="3uHU7B">
                                      <property role="Xl_RC" value="The derived repository name '" />
                                    </node>
                                    <node concept="37vLTw" id="3PtG$LInehc" role="3uHU7w">
                                      <ref role="3cqZAo" node="3PtG$LIf91i" resolve="key" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="3PtG$LIngg7" role="1urrMF">
                                  <ref role="3cqZAo" node="3PtG$LIf917" resolve="component" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LIf917" role="1bW2Oz">
                        <property role="TrG5h" value="component" />
                        <node concept="2jxLKc" id="3PtG$LIf918" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3PtG$LIf919" role="3clFbw">
              <node concept="17QLQc" id="3PtG$LIf91a" role="3uHU7w">
                <node concept="10Nm6u" id="3PtG$LIf91b" role="3uHU7w" />
                <node concept="37vLTw" id="3PtG$LIf91c" role="3uHU7B">
                  <ref role="3cqZAo" node="3PtG$LIf91i" resolve="key" />
                </node>
              </node>
              <node concept="3eOSWO" id="3PtG$LIf91d" role="3uHU7B">
                <node concept="2OqwBi" id="3PtG$LIf91e" role="3uHU7B">
                  <node concept="37vLTw" id="3PtG$LIf91f" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LIf90L" resolve="repositories" />
                  </node>
                  <node concept="34oBXx" id="3PtG$LIf91g" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="3PtG$LIf91h" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="3PtG$LIf91i" role="1Duv9x">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="3PtG$LIf91j" role="1tU5fm" />
        </node>
        <node concept="2OqwBi" id="3PtG$LIf91k" role="1DdaDG">
          <node concept="37vLTw" id="3PtG$LIf91l" role="2Oq$k0">
            <ref role="3cqZAo" node="3PtG$LIf90s" resolve="grouping" />
          </node>
          <node concept="3lbrtF" id="3PtG$LIf91m" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3PtG$LIf7VP" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="3PtG$LIqRgv">
    <property role="TrG5h" value="check_BoundedContext_DuplicateCommandHandlerName" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3PtG$LIqRgw" role="18ibNy">
      <node concept="3cpWs8" id="3PtG$LIqTH3" role="3cqZAp">
        <node concept="3cpWsn" id="3PtG$LIqTH4" role="3cpWs9">
          <property role="TrG5h" value="grouping" />
          <node concept="3rvAFt" id="3PtG$LIqTH5" role="1tU5fm">
            <node concept="_YKpA" id="3PtG$LIqTH6" role="3rvSg0">
              <node concept="3Tqbb2" id="3PtG$LIqTH7" role="_ZDj9">
                <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
              </node>
            </node>
            <node concept="17QB3L" id="3PtG$LIqTH8" role="3rvQeY" />
          </node>
          <node concept="2YIFZM" id="3PtG$LIqTH9" role="33vP2m">
            <ref role="37wK5l" to="7ztp:7qLyWzvP_Ik" resolve="groupBy" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
            <node concept="2OqwBi" id="3PtG$LIqTHa" role="37wK5m">
              <node concept="1YBJjd" id="3PtG$LIqTHb" role="2Oq$k0">
                <ref role="1YBMHb" node="3PtG$LIqRgy" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3PtG$LIqTHc" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3fVLq_owmYf" resolve="commandHandlers" />
              </node>
            </node>
            <node concept="1bVj0M" id="3PtG$LIqTHd" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="3PtG$LIqTHe" role="1bW2Oz">
                <property role="TrG5h" value="container" />
                <node concept="3Tqbb2" id="3PtG$LIqTHf" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
                </node>
              </node>
              <node concept="3clFbS" id="3PtG$LIqTHg" role="1bW5cS">
                <node concept="3clFbF" id="3PtG$LIqTHh" role="3cqZAp">
                  <node concept="2OqwBi" id="3PtG$LIqTHi" role="3clFbG">
                    <node concept="37vLTw" id="3PtG$LIqTHj" role="2Oq$k0">
                      <ref role="3cqZAo" node="3PtG$LIqTHe" resolve="container" />
                    </node>
                    <node concept="2qgKlT" id="3PtG$LIqTHk" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:51Z40Vzx6GO" resolve="getCommandContainerName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3PtG$LIqTHl" role="3cqZAp" />
      <node concept="1DcWWT" id="3PtG$LIqTHm" role="3cqZAp">
        <node concept="3clFbS" id="3PtG$LIqTHn" role="2LFqv$">
          <node concept="3cpWs8" id="3PtG$LIqTHo" role="3cqZAp">
            <node concept="3cpWsn" id="3PtG$LIqTHp" role="3cpWs9">
              <property role="TrG5h" value="container" />
              <node concept="3EllGN" id="3PtG$LIqTHq" role="33vP2m">
                <node concept="37vLTw" id="3PtG$LIqTHr" role="3ElVtu">
                  <ref role="3cqZAo" node="3PtG$LIqTHU" resolve="key" />
                </node>
                <node concept="37vLTw" id="3PtG$LIqTHs" role="3ElQJh">
                  <ref role="3cqZAo" node="3PtG$LIqTH4" resolve="grouping" />
                </node>
              </node>
              <node concept="_YKpA" id="3PtG$LIqTHt" role="1tU5fm">
                <node concept="3Tqbb2" id="3PtG$LIqTHu" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3PtG$LIqTHv" role="3cqZAp" />
          <node concept="3clFbJ" id="3PtG$LIqTHw" role="3cqZAp">
            <node concept="3clFbS" id="3PtG$LIqTHx" role="3clFbx">
              <node concept="3clFbF" id="3PtG$LIqTHy" role="3cqZAp">
                <node concept="2OqwBi" id="3PtG$LIqTHz" role="3clFbG">
                  <node concept="37vLTw" id="3PtG$LIqTH$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LIqTHp" resolve="container" />
                  </node>
                  <node concept="2es0OD" id="3PtG$LIqTH_" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LIqTHA" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LIqTHB" role="1bW5cS">
                        <node concept="2MkqsV" id="3PtG$LIqTHC" role="3cqZAp">
                          <node concept="3cpWs3" id="3PtG$LIqTHD" role="2MkJ7o">
                            <node concept="Xl_RD" id="3PtG$LIqTHE" role="3uHU7w">
                              <property role="Xl_RC" value="' is already defined" />
                            </node>
                            <node concept="3cpWs3" id="3PtG$LIqTHF" role="3uHU7B">
                              <node concept="Xl_RD" id="3PtG$LIqTHG" role="3uHU7B">
                                <property role="Xl_RC" value="Another command handler with name '" />
                              </node>
                              <node concept="37vLTw" id="3PtG$LIqTHH" role="3uHU7w">
                                <ref role="3cqZAo" node="3PtG$LIqTHU" resolve="key" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3PtG$LIqTHI" role="1urrMF">
                            <ref role="3cqZAo" node="3PtG$LIqTHJ" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LIqTHJ" role="1bW2Oz">
                        <property role="TrG5h" value="component" />
                        <node concept="2jxLKc" id="3PtG$LIqTHK" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3PtG$LIqTHL" role="3clFbw">
              <node concept="17QLQc" id="3PtG$LIqTHM" role="3uHU7w">
                <node concept="10Nm6u" id="3PtG$LIqTHN" role="3uHU7w" />
                <node concept="37vLTw" id="3PtG$LIqTHO" role="3uHU7B">
                  <ref role="3cqZAo" node="3PtG$LIqTHU" resolve="key" />
                </node>
              </node>
              <node concept="3eOSWO" id="3PtG$LIqTHP" role="3uHU7B">
                <node concept="2OqwBi" id="3PtG$LIqTHQ" role="3uHU7B">
                  <node concept="37vLTw" id="3PtG$LIqTHR" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LIqTHp" resolve="container" />
                  </node>
                  <node concept="34oBXx" id="3PtG$LIqTHS" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="3PtG$LIqTHT" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="3PtG$LIqTHU" role="1Duv9x">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="3PtG$LIqTHV" role="1tU5fm" />
        </node>
        <node concept="2OqwBi" id="3PtG$LIqTHW" role="1DdaDG">
          <node concept="37vLTw" id="3PtG$LIqTHX" role="2Oq$k0">
            <ref role="3cqZAo" node="3PtG$LIqTH4" resolve="grouping" />
          </node>
          <node concept="3lbrtF" id="3PtG$LIqTHY" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3PtG$LIqRgy" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="3PtG$LIuMYB">
    <property role="TrG5h" value="check_BoundedContext_DuplicateEventHandlerName" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3PtG$LIuMYC" role="18ibNy">
      <node concept="3cpWs8" id="3PtG$LIuPdJ" role="3cqZAp">
        <node concept="3cpWsn" id="3PtG$LIuPdK" role="3cpWs9">
          <property role="TrG5h" value="grouping" />
          <node concept="3rvAFt" id="3PtG$LIuPdL" role="1tU5fm">
            <node concept="_YKpA" id="3PtG$LIuPdM" role="3rvSg0">
              <node concept="3Tqbb2" id="3PtG$LIuPdN" role="_ZDj9">
                <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
              </node>
            </node>
            <node concept="17QB3L" id="3PtG$LIuPdO" role="3rvQeY" />
          </node>
          <node concept="2YIFZM" id="3PtG$LIuPdP" role="33vP2m">
            <ref role="37wK5l" to="7ztp:7qLyWzvP_Ik" resolve="groupBy" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
            <node concept="2OqwBi" id="3PtG$LIuPdQ" role="37wK5m">
              <node concept="1YBJjd" id="3PtG$LIuPdR" role="2Oq$k0">
                <ref role="1YBMHb" node="3PtG$LIuMYE" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3PtG$LIuPdS" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3fVLq_o$tMg" resolve="eventHandler" />
              </node>
            </node>
            <node concept="1bVj0M" id="3PtG$LIuPdT" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="3PtG$LIuPdU" role="1bW2Oz">
                <property role="TrG5h" value="container" />
                <node concept="3Tqbb2" id="3PtG$LIuPdV" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                </node>
              </node>
              <node concept="3clFbS" id="3PtG$LIuPdW" role="1bW5cS">
                <node concept="3clFbF" id="3PtG$LIuPdX" role="3cqZAp">
                  <node concept="2OqwBi" id="3PtG$LIuPdY" role="3clFbG">
                    <node concept="37vLTw" id="3PtG$LIuPdZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3PtG$LIuPdU" resolve="container" />
                    </node>
                    <node concept="2qgKlT" id="3PtG$LIuPe0" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:5jZDGTdpgfc" resolve="getEventContainerName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3PtG$LIuPe1" role="3cqZAp" />
      <node concept="1DcWWT" id="3PtG$LIuPe2" role="3cqZAp">
        <node concept="3clFbS" id="3PtG$LIuPe3" role="2LFqv$">
          <node concept="3cpWs8" id="3PtG$LIuPe4" role="3cqZAp">
            <node concept="3cpWsn" id="3PtG$LIuPe5" role="3cpWs9">
              <property role="TrG5h" value="container" />
              <node concept="3EllGN" id="3PtG$LIuPe6" role="33vP2m">
                <node concept="37vLTw" id="3PtG$LIuPe7" role="3ElVtu">
                  <ref role="3cqZAo" node="3PtG$LIuPeA" resolve="key" />
                </node>
                <node concept="37vLTw" id="3PtG$LIuPe8" role="3ElQJh">
                  <ref role="3cqZAo" node="3PtG$LIuPdK" resolve="grouping" />
                </node>
              </node>
              <node concept="_YKpA" id="3PtG$LIuPe9" role="1tU5fm">
                <node concept="3Tqbb2" id="3PtG$LIuPea" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3PtG$LIuPeb" role="3cqZAp" />
          <node concept="3clFbJ" id="3PtG$LIuPec" role="3cqZAp">
            <node concept="3clFbS" id="3PtG$LIuPed" role="3clFbx">
              <node concept="3clFbF" id="3PtG$LIuPee" role="3cqZAp">
                <node concept="2OqwBi" id="3PtG$LIuPef" role="3clFbG">
                  <node concept="37vLTw" id="3PtG$LIuPeg" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LIuPe5" resolve="container" />
                  </node>
                  <node concept="2es0OD" id="3PtG$LIuPeh" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LIuPei" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LIuPej" role="1bW5cS">
                        <node concept="2MkqsV" id="3PtG$LIuPek" role="3cqZAp">
                          <node concept="3cpWs3" id="3PtG$LIuPel" role="2MkJ7o">
                            <node concept="Xl_RD" id="3PtG$LIuPem" role="3uHU7w">
                              <property role="Xl_RC" value="' is already defined" />
                            </node>
                            <node concept="3cpWs3" id="3PtG$LIuPen" role="3uHU7B">
                              <node concept="Xl_RD" id="3PtG$LIuPeo" role="3uHU7B">
                                <property role="Xl_RC" value="Another event handler with name '" />
                              </node>
                              <node concept="37vLTw" id="3PtG$LIuPep" role="3uHU7w">
                                <ref role="3cqZAo" node="3PtG$LIuPeA" resolve="key" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3PtG$LIuPeq" role="1urrMF">
                            <ref role="3cqZAo" node="3PtG$LIuPer" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LIuPer" role="1bW2Oz">
                        <property role="TrG5h" value="component" />
                        <node concept="2jxLKc" id="3PtG$LIuPes" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3PtG$LIuPet" role="3clFbw">
              <node concept="17QLQc" id="3PtG$LIuPeu" role="3uHU7w">
                <node concept="10Nm6u" id="3PtG$LIuPev" role="3uHU7w" />
                <node concept="37vLTw" id="3PtG$LIuPew" role="3uHU7B">
                  <ref role="3cqZAo" node="3PtG$LIuPeA" resolve="key" />
                </node>
              </node>
              <node concept="3eOSWO" id="3PtG$LIuPex" role="3uHU7B">
                <node concept="2OqwBi" id="3PtG$LIuPey" role="3uHU7B">
                  <node concept="37vLTw" id="3PtG$LIuPez" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LIuPe5" resolve="container" />
                  </node>
                  <node concept="34oBXx" id="3PtG$LIuPe$" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="3PtG$LIuPe_" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="3PtG$LIuPeA" role="1Duv9x">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="3PtG$LIuPeB" role="1tU5fm" />
        </node>
        <node concept="2OqwBi" id="3PtG$LIuPeC" role="1DdaDG">
          <node concept="37vLTw" id="3PtG$LIuPeD" role="2Oq$k0">
            <ref role="3cqZAo" node="3PtG$LIuPdK" resolve="grouping" />
          </node>
          <node concept="3lbrtF" id="3PtG$LIuPeE" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3PtG$LIuMYE" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="18kY7G" id="3PtG$LIyEs5">
    <property role="TrG5h" value="check_BoundedContext_DuplicateQueryContainerName" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="3clFbS" id="3PtG$LIyEs6" role="18ibNy">
      <node concept="3cpWs8" id="3PtG$LIyHz7" role="3cqZAp">
        <node concept="3cpWsn" id="3PtG$LIyHz8" role="3cpWs9">
          <property role="TrG5h" value="grouping" />
          <node concept="3rvAFt" id="3PtG$LIyHz9" role="1tU5fm">
            <node concept="_YKpA" id="3PtG$LIyHza" role="3rvSg0">
              <node concept="3Tqbb2" id="3PtG$LIyHzb" role="_ZDj9">
                <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
              </node>
            </node>
            <node concept="17QB3L" id="3PtG$LIyHzc" role="3rvQeY" />
          </node>
          <node concept="2YIFZM" id="3PtG$LIyHzd" role="33vP2m">
            <ref role="37wK5l" to="7ztp:7qLyWzvP_Ik" resolve="groupBy" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
            <node concept="2OqwBi" id="3PtG$LIyHze" role="37wK5m">
              <node concept="1YBJjd" id="3PtG$LIyHzf" role="2Oq$k0">
                <ref role="1YBMHb" node="3PtG$LIyEs8" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3PtG$LIyHzg" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3DbZR$O3FhA" resolve="queryContainers" />
              </node>
            </node>
            <node concept="1bVj0M" id="3PtG$LIyHzh" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="3PtG$LIyHzi" role="1bW2Oz">
                <property role="TrG5h" value="container" />
                <node concept="3Tqbb2" id="3PtG$LIyHzj" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
                </node>
              </node>
              <node concept="3clFbS" id="3PtG$LIyHzk" role="1bW5cS">
                <node concept="3clFbF" id="3PtG$LIyHzl" role="3cqZAp">
                  <node concept="2OqwBi" id="3PtG$LIyHzm" role="3clFbG">
                    <node concept="37vLTw" id="3PtG$LIyHzn" role="2Oq$k0">
                      <ref role="3cqZAo" node="3PtG$LIyHzi" resolve="container" />
                    </node>
                    <node concept="2qgKlT" id="3PtG$LIyHzo" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:2RbvdOKU0GT" resolve="getQueryContainerName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3PtG$LIyHzp" role="3cqZAp" />
      <node concept="1DcWWT" id="3PtG$LIyHzq" role="3cqZAp">
        <node concept="3clFbS" id="3PtG$LIyHzr" role="2LFqv$">
          <node concept="3cpWs8" id="3PtG$LIyHzs" role="3cqZAp">
            <node concept="3cpWsn" id="3PtG$LIyHzt" role="3cpWs9">
              <property role="TrG5h" value="container" />
              <node concept="3EllGN" id="3PtG$LIyHzu" role="33vP2m">
                <node concept="37vLTw" id="3PtG$LIyHzv" role="3ElVtu">
                  <ref role="3cqZAo" node="3PtG$LIyHzY" resolve="key" />
                </node>
                <node concept="37vLTw" id="3PtG$LIyHzw" role="3ElQJh">
                  <ref role="3cqZAo" node="3PtG$LIyHz8" resolve="grouping" />
                </node>
              </node>
              <node concept="_YKpA" id="3PtG$LIyHzx" role="1tU5fm">
                <node concept="3Tqbb2" id="3PtG$LIyHzy" role="_ZDj9">
                  <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3PtG$LIyHzz" role="3cqZAp" />
          <node concept="3clFbJ" id="3PtG$LIyHz$" role="3cqZAp">
            <node concept="3clFbS" id="3PtG$LIyHz_" role="3clFbx">
              <node concept="3clFbF" id="3PtG$LIyHzA" role="3cqZAp">
                <node concept="2OqwBi" id="3PtG$LIyHzB" role="3clFbG">
                  <node concept="37vLTw" id="3PtG$LIyHzC" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LIyHzt" resolve="container" />
                  </node>
                  <node concept="2es0OD" id="3PtG$LIyHzD" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LIyHzE" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LIyHzF" role="1bW5cS">
                        <node concept="2MkqsV" id="3PtG$LIyHzG" role="3cqZAp">
                          <node concept="3cpWs3" id="3PtG$LIyHzH" role="2MkJ7o">
                            <node concept="Xl_RD" id="3PtG$LIyHzI" role="3uHU7w">
                              <property role="Xl_RC" value="' is already defined" />
                            </node>
                            <node concept="3cpWs3" id="3PtG$LIyHzJ" role="3uHU7B">
                              <node concept="Xl_RD" id="3PtG$LIyHzK" role="3uHU7B">
                                <property role="Xl_RC" value="Another query block/handler/service with name '" />
                              </node>
                              <node concept="37vLTw" id="3PtG$LIyHzL" role="3uHU7w">
                                <ref role="3cqZAo" node="3PtG$LIyHzY" resolve="key" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3PtG$LIyHzM" role="1urrMF">
                            <ref role="3cqZAo" node="3PtG$LIyHzN" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LIyHzN" role="1bW2Oz">
                        <property role="TrG5h" value="component" />
                        <node concept="2jxLKc" id="3PtG$LIyHzO" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3PtG$LIyHzP" role="3clFbw">
              <node concept="17QLQc" id="3PtG$LIyHzQ" role="3uHU7w">
                <node concept="10Nm6u" id="3PtG$LIyHzR" role="3uHU7w" />
                <node concept="37vLTw" id="3PtG$LIyHzS" role="3uHU7B">
                  <ref role="3cqZAo" node="3PtG$LIyHzY" resolve="key" />
                </node>
              </node>
              <node concept="3eOSWO" id="3PtG$LIyHzT" role="3uHU7B">
                <node concept="2OqwBi" id="3PtG$LIyHzU" role="3uHU7B">
                  <node concept="37vLTw" id="3PtG$LIyHzV" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PtG$LIyHzt" resolve="container" />
                  </node>
                  <node concept="34oBXx" id="3PtG$LIyHzW" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="3PtG$LIyHzX" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsn" id="3PtG$LIyHzY" role="1Duv9x">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="3PtG$LIyHzZ" role="1tU5fm" />
        </node>
        <node concept="2OqwBi" id="3PtG$LIyH$0" role="1DdaDG">
          <node concept="37vLTw" id="3PtG$LIyH$1" role="2Oq$k0">
            <ref role="3cqZAo" node="3PtG$LIyHz8" resolve="grouping" />
          </node>
          <node concept="3lbrtF" id="3PtG$LIyH$2" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3PtG$LIyEs8" role="1YuTPh">
      <property role="TrG5h" value="boundedContext" />
      <ref role="1YaFvo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
</model>

