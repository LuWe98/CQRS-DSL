<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="7ztp" ref="r:3eb3aafd-620b-4947-940a-c9f6d272b651(CQRS.util)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="4d66" ref="r:960662d9-c1ee-48af-b5a5-518d2ac1ca55(CQRS.helper)" />
    <import index="sx7w" ref="r:dc830b23-b722-4fd1-8178-0431aafe57ef(CQRS.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
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
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
        <child id="1152963095733" name="propertySetter" index="1LXaQT" />
      </concept>
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="5564765827938108528" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_containmentLink" flags="ng" index="3dgs5T" />
      <concept id="8401916545537438642" name="jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory" flags="ng" index="1dDu$B">
        <reference id="8401916545537438643" name="kind" index="1dDu$A" />
      </concept>
      <concept id="1159285995602" name="jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope" flags="ng" index="3EP7_v">
        <child id="1159286114227" name="searchScopeFactory" index="3EP$qY" />
      </concept>
      <concept id="1152959968041" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertySetter" flags="in" index="1LLf8_" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <reference id="1213106917431" name="defaultConcreteConcept" index="1MND4H" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213101058038" name="defaultScope" index="1MtirG" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
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
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumerationMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="1M2fIO" id="7Vh9qpGhyr9">
    <property role="3GE5qa" value="valueObjects" />
    <ref role="1M2myG" to="3nll:4Wa3rAG5JzU" resolve="ValueObjectReference" />
    <node concept="3EP7_v" id="7fqk8p3L7Th" role="1MtirG">
      <node concept="1dDu$B" id="7fqk8p3L7Ve" role="3EP$qY">
        <ref role="1dDu$A" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="101Kr4o_yNc">
    <property role="3GE5qa" value="aggregates" />
    <ref role="1M2myG" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
    <node concept="2XrIbr" id="awtshklmyR" role="32lrUH">
      <property role="TrG5h" value="provideAggregateRepositoryScope" />
      <node concept="37vLTG" id="awtshklmQk" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3Tqbb2" id="awtshklmRP" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="awtshklmSI" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="awtshklmTN" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="awtshklmMJ" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="awtshklmyT" role="3clF47">
        <node concept="3clFbJ" id="awtshkln3f" role="3cqZAp">
          <node concept="3clFbS" id="awtshkln3h" role="3clFbx">
            <node concept="3cpWs8" id="awtshkloRI" role="3cqZAp">
              <node concept="3cpWsn" id="awtshkloRJ" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <node concept="3Tqbb2" id="awtshkloIr" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                </node>
                <node concept="2OqwBi" id="awtshkloRK" role="33vP2m">
                  <node concept="37vLTw" id="awtshkloRL" role="2Oq$k0">
                    <ref role="3cqZAo" node="awtshklmQk" resolve="repository" />
                  </node>
                  <node concept="2qgKlT" id="awtshkloRM" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="awtshklxjW" role="3cqZAp">
              <node concept="3cpWsn" id="awtshklxjX" role="3cpWs9">
                <property role="TrG5h" value="referencedAggregateRoots" />
                <node concept="A3Dl8" id="awtshklx8W" role="1tU5fm">
                  <node concept="3Tqbb2" id="awtshklx8Z" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5SyewCa0OEg" role="33vP2m">
                  <node concept="2OqwBi" id="awtshkl$LI" role="2Oq$k0">
                    <node concept="2OqwBi" id="awtshklxjY" role="2Oq$k0">
                      <node concept="2OqwBi" id="awtshklxjZ" role="2Oq$k0">
                        <node concept="37vLTw" id="awtshklxk0" role="2Oq$k0">
                          <ref role="3cqZAo" node="awtshkloRJ" resolve="boundedContext" />
                        </node>
                        <node concept="2qgKlT" id="awtshklxk1" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:awtshklq0$" resolve="aggregateRootRepositories" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="awtshklxk2" role="2OqNvi">
                        <node concept="1bVj0M" id="awtshklxk3" role="23t8la">
                          <node concept="3clFbS" id="awtshklxk4" role="1bW5cS">
                            <node concept="3clFbF" id="awtshklxk5" role="3cqZAp">
                              <node concept="3y3z36" id="awtshklxk6" role="3clFbG">
                                <node concept="37vLTw" id="awtshklxk7" role="3uHU7w">
                                  <ref role="3cqZAo" node="awtshklmQk" resolve="repository" />
                                </node>
                                <node concept="37vLTw" id="awtshklxk8" role="3uHU7B">
                                  <ref role="3cqZAo" node="awtshklxk9" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="awtshklxk9" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="awtshklxka" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="13MTOL" id="awtshkl_aQ" role="2OqNvi">
                      <ref role="13MTZf" to="3nll:5SyewC9Zz9D" resolve="aggregateReference" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="5SyewCa0P0A" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="awtshkl_rf" role="3cqZAp">
              <node concept="3cpWsn" id="awtshkl_rg" role="3cpWs9">
                <property role="TrG5h" value="nodes" />
                <node concept="A3Dl8" id="awtshkl_p1" role="1tU5fm">
                  <node concept="3Tqbb2" id="awtshkl_p4" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                  </node>
                </node>
                <node concept="2OqwBi" id="awtshkl_rh" role="33vP2m">
                  <node concept="2OqwBi" id="awtshkl_ri" role="2Oq$k0">
                    <node concept="37vLTw" id="awtshkl_rj" role="2Oq$k0">
                      <ref role="3cqZAo" node="awtshkloRJ" resolve="boundedContext" />
                    </node>
                    <node concept="2qgKlT" id="awtshkl_rk" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="awtshkl_rl" role="2OqNvi">
                    <node concept="1bVj0M" id="awtshkl_rm" role="23t8la">
                      <node concept="3clFbS" id="awtshkl_rn" role="1bW5cS">
                        <node concept="3clFbF" id="awtshkl_ro" role="3cqZAp">
                          <node concept="3fqX7Q" id="awtshkl_rp" role="3clFbG">
                            <node concept="2OqwBi" id="awtshkl_rq" role="3fr31v">
                              <node concept="37vLTw" id="awtshkl_rr" role="2Oq$k0">
                                <ref role="3cqZAo" node="awtshklxjX" resolve="referencedAggregateRoots" />
                              </node>
                              <node concept="3JPx81" id="awtshkl_rs" role="2OqNvi">
                                <node concept="37vLTw" id="awtshkl_rt" role="25WWJ7">
                                  <ref role="3cqZAo" node="awtshkl_ru" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="awtshkl_ru" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="awtshkl_rv" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="awtshkl_ZX" role="3cqZAp">
              <node concept="2YIFZM" id="awtshklAsR" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="37vLTw" id="awtshklACm" role="37wK5m">
                  <ref role="3cqZAo" node="awtshkl_rg" resolve="nodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7mYw4uWz33b" role="3clFbw">
            <node concept="37vLTw" id="7mYw4uWz3eq" role="3uHU7w">
              <ref role="3cqZAo" node="awtshklmSI" resolve="contextNode" />
            </node>
            <node concept="37vLTw" id="7mYw4uWz2Iu" role="3uHU7B">
              <ref role="3cqZAo" node="awtshklmQk" resolve="repository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="awtshkln1X" role="3cqZAp" />
        <node concept="3clFbF" id="4LpUh3TDm0s" role="3cqZAp">
          <node concept="2YIFZM" id="3VGLvhEOvcX" role="3clFbG">
            <ref role="37wK5l" to="7ztp:3VGLvhEMgV6" resolve="ofElements" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEMgQj" resolve="ScopeUtils" />
            <node concept="2OqwBi" id="3VGLvhEOvoy" role="37wK5m">
              <node concept="2OqwBi" id="3VGLvhEOvoz" role="2Oq$k0">
                <node concept="37vLTw" id="3VGLvhEOvo$" role="2Oq$k0">
                  <ref role="3cqZAo" node="awtshklmQk" resolve="repository" />
                </node>
                <node concept="3TrEf2" id="3VGLvhEOvo_" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:5SyewC9Zz9D" resolve="aggregateReference" />
                </node>
              </node>
              <node concept="3TrEf2" id="3VGLvhEOvoA" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="awtshklmyU" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="awtshkjDUm" role="32lrUH">
      <property role="TrG5h" value="provideEventConatinerScope" />
      <node concept="37vLTG" id="awtshkjEei" role="3clF46">
        <property role="TrG5h" value="eventContainer" />
        <node concept="3Tqbb2" id="awtshkjEgZ" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="awtshkjEis" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="awtshkjElS" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="awtshkjDX5" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="awtshkjDUo" role="3clF47">
        <node concept="3clFbJ" id="awtshkjOoV" role="3cqZAp">
          <node concept="3clFbS" id="awtshkjOoX" role="3clFbx">
            <node concept="3cpWs8" id="awtshkjS8Y" role="3cqZAp">
              <node concept="3cpWsn" id="awtshkjS8Z" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <node concept="3Tqbb2" id="awtshkjS1J" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                </node>
                <node concept="2OqwBi" id="awtshkjS90" role="33vP2m">
                  <node concept="37vLTw" id="awtshkjS91" role="2Oq$k0">
                    <ref role="3cqZAo" node="awtshkjEei" resolve="eventContainer" />
                  </node>
                  <node concept="2qgKlT" id="awtshkjS92" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="awtshkjEqm" role="3cqZAp">
              <node concept="3cpWsn" id="awtshkjEqn" role="3cpWs9">
                <property role="TrG5h" value="referencedAggregateRoots" />
                <node concept="A3Dl8" id="awtshkjEqo" role="1tU5fm">
                  <node concept="3Tqbb2" id="awtshkjEqp" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1jrq3noTSvp" role="33vP2m">
                  <node concept="2OqwBi" id="awtshkkE8T" role="2Oq$k0">
                    <node concept="2OqwBi" id="awtshkjEqq" role="2Oq$k0">
                      <node concept="2OqwBi" id="awtshkjEqr" role="2Oq$k0">
                        <node concept="2qgKlT" id="awtshkjEqt" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:awtshki2N9" resolve="eventContainers" />
                        </node>
                        <node concept="37vLTw" id="awtshkjSXL" role="2Oq$k0">
                          <ref role="3cqZAo" node="awtshkjS8Z" resolve="boundedContext" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="awtshkkCFu" role="2OqNvi">
                        <node concept="1bVj0M" id="awtshkkCFw" role="23t8la">
                          <node concept="3clFbS" id="awtshkkCFx" role="1bW5cS">
                            <node concept="3clFbF" id="awtshkkCUd" role="3cqZAp">
                              <node concept="3y3z36" id="awtshkkDlI" role="3clFbG">
                                <node concept="37vLTw" id="awtshkkCUc" role="3uHU7B">
                                  <ref role="3cqZAo" node="awtshkkCFy" resolve="it" />
                                </node>
                                <node concept="37vLTw" id="4LpUh3TP7rl" role="3uHU7w">
                                  <ref role="3cqZAo" node="awtshkjEei" resolve="eventContainer" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="awtshkkCFy" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="awtshkkCFz" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="13MTOL" id="5SyewCartjn" role="2OqNvi">
                      <ref role="13MTZf" to="3nll:1jrq3noTPfl" resolve="aggregateReference" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="1jrq3noTSOO" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="awtshkjEqv" role="3cqZAp">
              <node concept="3cpWsn" id="awtshkjEqw" role="3cpWs9">
                <property role="TrG5h" value="nodes" />
                <node concept="A3Dl8" id="awtshkjEqx" role="1tU5fm">
                  <node concept="3Tqbb2" id="awtshkjEqy" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                  </node>
                </node>
                <node concept="2OqwBi" id="awtshkjEqz" role="33vP2m">
                  <node concept="2OqwBi" id="awtshkjEq$" role="2Oq$k0">
                    <node concept="2qgKlT" id="awtshkjEqA" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                    </node>
                    <node concept="37vLTw" id="awtshkjTJa" role="2Oq$k0">
                      <ref role="3cqZAo" node="awtshkjS8Z" resolve="boundedContext" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="awtshkjEqB" role="2OqNvi">
                    <node concept="1bVj0M" id="awtshkjEqC" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="awtshkjEqD" role="1bW5cS">
                        <node concept="3clFbF" id="awtshkjEqE" role="3cqZAp">
                          <node concept="22lmx$" id="3PtG$LHLhVN" role="3clFbG">
                            <node concept="3clFbC" id="3PtG$LHLl4z" role="3uHU7B">
                              <node concept="37vLTw" id="3PtG$LHLlg3" role="3uHU7w">
                                <ref role="3cqZAo" node="awtshkjEqJ" resolve="it" />
                              </node>
                              <node concept="2OqwBi" id="3PtG$LHLj5x" role="3uHU7B">
                                <node concept="1PxgMI" id="3PtG$LHLivF" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="3PtG$LHLiJB" role="3oSUPX">
                                    <ref role="cht4Q" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
                                  </node>
                                  <node concept="37vLTw" id="3PtG$LHLi6x" role="1m5AlR">
                                    <ref role="3cqZAo" node="awtshkjEis" resolve="contextNode" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="3PtG$LHLjv0" role="2OqNvi">
                                  <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="awtshkjUlb" role="3uHU7w">
                              <node concept="2OqwBi" id="awtshkjUld" role="3fr31v">
                                <node concept="37vLTw" id="awtshkjUle" role="2Oq$k0">
                                  <ref role="3cqZAo" node="awtshkjEqn" resolve="referencedAggregateRoots" />
                                </node>
                                <node concept="3JPx81" id="awtshkjUlf" role="2OqNvi">
                                  <node concept="37vLTw" id="awtshkjUlg" role="25WWJ7">
                                    <ref role="3cqZAo" node="awtshkjEqJ" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="awtshkjEqJ" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="awtshkjEqK" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="awtshkjEqL" role="3cqZAp">
              <node concept="2YIFZM" id="awtshkjEqM" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="37vLTw" id="awtshkjEqN" role="37wK5m">
                  <ref role="3cqZAo" node="awtshkjEqw" resolve="nodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4LpUh3TFKwq" role="3clFbw">
            <node concept="3clFbC" id="1jrq3noSgQm" role="3uHU7B">
              <node concept="37vLTw" id="1jrq3noSfnw" role="3uHU7B">
                <ref role="3cqZAo" node="awtshkjEei" resolve="eventContainer" />
              </node>
              <node concept="37vLTw" id="1jrq3noSh0S" role="3uHU7w">
                <ref role="3cqZAo" node="awtshkjEis" resolve="contextNode" />
              </node>
            </node>
            <node concept="17R0WA" id="4LpUh3TR_aY" role="3uHU7w">
              <node concept="359W_D" id="4LpUh3TR_lF" role="3uHU7w">
                <ref role="359W_E" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                <ref role="359W_F" to="3nll:1jrq3noTPfl" resolve="aggregateReference" />
              </node>
              <node concept="2OqwBi" id="4LpUh3TRxLc" role="3uHU7B">
                <node concept="37vLTw" id="4LpUh3TRxqx" role="2Oq$k0">
                  <ref role="3cqZAo" node="awtshkjEis" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="4LpUh3TRy30" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4LpUh3TDlsp" role="3cqZAp" />
        <node concept="3clFbF" id="4LpUh3TDkCE" role="3cqZAp">
          <node concept="2ShNRf" id="4LpUh3TDkCA" role="3clFbG">
            <node concept="1pGfFk" id="4LpUh3TDkTB" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1jrq3noTVm7" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="awtshkmlVD" role="32lrUH">
      <property role="TrG5h" value="provideCommandContainerScope" />
      <node concept="3uibUv" id="awtshkmm6e" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="awtshkmlVF" role="3clF47">
        <node concept="3cpWs8" id="awtshknQM8" role="3cqZAp">
          <node concept="3cpWsn" id="awtshknQM9" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="awtshknQMa" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="awtshknQMb" role="33vP2m">
              <node concept="37vLTw" id="awtshknQMc" role="2Oq$k0">
                <ref role="3cqZAo" node="awtshkmmgn" resolve="commandContainer" />
              </node>
              <node concept="2qgKlT" id="awtshknQMd" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3PtG$LGYHuk" role="3cqZAp" />
        <node concept="3clFbJ" id="3PtG$LH2iCA" role="3cqZAp">
          <node concept="3clFbS" id="3PtG$LH2iCC" role="3clFbx">
            <node concept="3cpWs8" id="awtshknQMe" role="3cqZAp">
              <node concept="3cpWsn" id="awtshknQMf" role="3cpWs9">
                <property role="TrG5h" value="referencedAggregateRoots" />
                <node concept="A3Dl8" id="awtshknQMg" role="1tU5fm">
                  <node concept="3Tqbb2" id="awtshknQMh" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                  </node>
                </node>
                <node concept="2OqwBi" id="awtshknQMi" role="33vP2m">
                  <node concept="2OqwBi" id="awtshknQMj" role="2Oq$k0">
                    <node concept="2OqwBi" id="awtshknQMk" role="2Oq$k0">
                      <node concept="37vLTw" id="awtshknQMl" role="2Oq$k0">
                        <ref role="3cqZAo" node="awtshknQM9" resolve="boundedContext" />
                      </node>
                      <node concept="2qgKlT" id="awtshknQMm" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:awtshknSQ0" resolve="commandContainers" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="awtshknQMn" role="2OqNvi">
                      <node concept="1bVj0M" id="awtshknQMo" role="23t8la">
                        <property role="3yWfEV" value="true" />
                        <node concept="3clFbS" id="awtshknQMp" role="1bW5cS">
                          <node concept="3clFbF" id="awtshknQMq" role="3cqZAp">
                            <node concept="1Wc70l" id="3PtG$LHuNPZ" role="3clFbG">
                              <node concept="2OqwBi" id="3PtG$LHuOCa" role="3uHU7w">
                                <node concept="37vLTw" id="3PtG$LHuO3V" role="2Oq$k0">
                                  <ref role="3cqZAo" node="awtshknQMu" resolve="it" />
                                </node>
                                <node concept="2qgKlT" id="3PtG$LHuPHZ" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:51Z40V$BJAY" resolve="isAggregateCommandHandler" />
                                </node>
                              </node>
                              <node concept="3y3z36" id="awtshknQMr" role="3uHU7B">
                                <node concept="37vLTw" id="awtshknQMt" role="3uHU7B">
                                  <ref role="3cqZAo" node="awtshknQMu" resolve="it" />
                                </node>
                                <node concept="37vLTw" id="awtshknQMs" role="3uHU7w">
                                  <ref role="3cqZAo" node="awtshkmmgn" resolve="commandContainer" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="awtshknQMu" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="awtshknQMv" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="3PtG$LHuRaG" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LHuRaI" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LHuRaJ" role="1bW5cS">
                        <node concept="3clFbF" id="3PtG$LHuRaK" role="3cqZAp">
                          <node concept="2OqwBi" id="3PtG$LHuRaL" role="3clFbG">
                            <node concept="37vLTw" id="3PtG$LHuRaM" role="2Oq$k0">
                              <ref role="3cqZAo" node="3PtG$LHuRaO" resolve="it" />
                            </node>
                            <node concept="2qgKlT" id="3PtG$LHuRaN" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:3PtG$LHuKCW" resolve="getReferencedAggregate" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LHuRaO" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3PtG$LHuRaP" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3PtG$LHuFNd" role="3cqZAp" />
            <node concept="3cpWs8" id="3PtG$LHv15U" role="3cqZAp">
              <node concept="3cpWsn" id="3PtG$LHv15V" role="3cpWs9">
                <property role="TrG5h" value="validAggregates" />
                <node concept="A3Dl8" id="3PtG$LHv12n" role="1tU5fm">
                  <node concept="3Tqbb2" id="3PtG$LHv12q" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3PtG$LHv15W" role="33vP2m">
                  <node concept="2OqwBi" id="3PtG$LHv15X" role="2Oq$k0">
                    <node concept="37vLTw" id="3PtG$LHv15Y" role="2Oq$k0">
                      <ref role="3cqZAo" node="awtshknQM9" resolve="boundedContext" />
                    </node>
                    <node concept="2qgKlT" id="3PtG$LHv15Z" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="3PtG$LHv160" role="2OqNvi">
                    <node concept="1bVj0M" id="3PtG$LHv161" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3PtG$LHv162" role="1bW5cS">
                        <node concept="3clFbF" id="3PtG$LHv163" role="3cqZAp">
                          <node concept="22lmx$" id="3PtG$LHv164" role="3clFbG">
                            <node concept="3fqX7Q" id="3PtG$LHv165" role="3uHU7w">
                              <node concept="2OqwBi" id="3PtG$LHv166" role="3fr31v">
                                <node concept="37vLTw" id="3PtG$LHv167" role="2Oq$k0">
                                  <ref role="3cqZAo" node="awtshknQMf" resolve="referencedAggregateRoots" />
                                </node>
                                <node concept="3JPx81" id="3PtG$LHv168" role="2OqNvi">
                                  <node concept="37vLTw" id="3PtG$LHv169" role="25WWJ7">
                                    <ref role="3cqZAo" node="3PtG$LHv16f" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="17R0WA" id="3PtG$LHv16a" role="3uHU7B">
                              <node concept="2OqwBi" id="3PtG$LHv16b" role="3uHU7B">
                                <node concept="37vLTw" id="3PtG$LHv16c" role="2Oq$k0">
                                  <ref role="3cqZAo" node="awtshkmmgn" resolve="commandContainer" />
                                </node>
                                <node concept="2qgKlT" id="3PtG$LHv16d" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:3PtG$LHuKCW" resolve="getReferencedAggregate" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="3PtG$LHv16e" role="3uHU7w">
                                <ref role="3cqZAo" node="3PtG$LHv16f" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3PtG$LHv16f" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3PtG$LHv16g" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3PtG$LHuR$M" role="3cqZAp" />
            <node concept="3cpWs6" id="3PtG$LH2mOa" role="3cqZAp">
              <node concept="2YIFZM" id="3PtG$LHv4ge" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="37vLTw" id="3PtG$LHv4AB" role="37wK5m">
                  <ref role="3cqZAo" node="3PtG$LHv15V" resolve="validAggregates" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3PtG$LHgxFE" role="3clFbw">
            <node concept="17R0WA" id="3PtG$LHgyT8" role="3uHU7w">
              <node concept="37vLTw" id="3PtG$LHgylw" role="3uHU7B">
                <ref role="3cqZAo" node="3PtG$LGRCRg" resolve="link" />
              </node>
              <node concept="359W_D" id="3PtG$LHyD35" role="3uHU7w">
                <ref role="359W_E" to="3nll:awtshkmllB" resolve="CommandContainer" />
                <ref role="359W_F" to="3nll:7x9oRL8vqaW" resolve="aggregateReference" />
              </node>
            </node>
            <node concept="17R0WA" id="3PtG$LH2kVD" role="3uHU7B">
              <node concept="2OqwBi" id="3PtG$LH2jr6" role="3uHU7B">
                <node concept="37vLTw" id="3PtG$LH2iUI" role="2Oq$k0">
                  <ref role="3cqZAo" node="awtshkmmiu" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="3PtG$LH2jLR" role="2OqNvi" />
              </node>
              <node concept="359W_D" id="3PtG$LHyCL4" role="3uHU7w">
                <ref role="359W_E" to="3nll:awtshkmllB" resolve="CommandContainer" />
                <ref role="359W_F" to="3nll:7x9oRL8vqaW" resolve="aggregateReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3PtG$LH2hTX" role="3cqZAp" />
        <node concept="3clFbJ" id="awtshkmmnk" role="3cqZAp">
          <node concept="3clFbS" id="awtshkmmnm" role="3clFbx">
            <node concept="3cpWs8" id="awtshknQMx" role="3cqZAp">
              <node concept="3cpWsn" id="awtshknQMy" role="3cpWs9">
                <property role="TrG5h" value="nodes" />
                <node concept="A3Dl8" id="awtshknQMz" role="1tU5fm">
                  <node concept="3Tqbb2" id="awtshknQM$" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                  </node>
                </node>
                <node concept="2OqwBi" id="awtshknQM_" role="33vP2m">
                  <node concept="2OqwBi" id="awtshknQMA" role="2Oq$k0">
                    <node concept="37vLTw" id="awtshknQMB" role="2Oq$k0">
                      <ref role="3cqZAo" node="awtshknQM9" resolve="boundedContext" />
                    </node>
                    <node concept="2qgKlT" id="awtshknQMC" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="awtshknQMD" role="2OqNvi">
                    <node concept="1bVj0M" id="awtshknQME" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="awtshknQMF" role="1bW5cS">
                        <node concept="3clFbF" id="awtshknQMG" role="3cqZAp">
                          <node concept="22lmx$" id="3PtG$LHnCP2" role="3clFbG">
                            <node concept="3clFbC" id="3PtG$LHnE0h" role="3uHU7B">
                              <node concept="2OqwBi" id="3PtG$LHraUq" role="3uHU7w">
                                <node concept="1PxgMI" id="3PtG$LHr9yf" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="3PtG$LHranE" role="3oSUPX">
                                    <ref role="cht4Q" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
                                  </node>
                                  <node concept="37vLTw" id="3PtG$LHnErp" role="1m5AlR">
                                    <ref role="3cqZAo" node="awtshkmmiu" resolve="contextNode" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="3PtG$LHrb_A" role="2OqNvi">
                                  <ref role="3Tt5mk" to="3nll:5$Oa65a7pgL" resolve="aggregate" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="3PtG$LHnDyv" role="3uHU7B">
                                <ref role="3cqZAo" node="awtshknQMM" resolve="it" />
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="awtshknQMH" role="3uHU7w">
                              <node concept="2OqwBi" id="awtshknQMI" role="3fr31v">
                                <node concept="37vLTw" id="awtshknQMJ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="awtshkmmgn" resolve="commandContainer" />
                                </node>
                                <node concept="2qgKlT" id="3PtG$LHk8ii" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                                  <node concept="37vLTw" id="3PtG$LHk8yC" role="37wK5m">
                                    <ref role="3cqZAo" node="awtshknQMM" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="awtshknQMM" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="awtshknQMN" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="awtshkn6Vj" role="3cqZAp">
              <node concept="2YIFZM" id="awtshkn78C" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="37vLTw" id="awtshko7ZW" role="37wK5m">
                  <ref role="3cqZAo" node="awtshknQMy" resolve="nodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3PtG$LHcZIW" role="3clFbw">
            <node concept="17R0WA" id="3PtG$LHd3o$" role="3uHU7w">
              <node concept="359W_D" id="3PtG$LHd3BD" role="3uHU7w">
                <ref role="359W_E" to="3nll:awtshkmllB" resolve="CommandContainer" />
                <ref role="359W_F" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
              </node>
              <node concept="2OqwBi" id="3PtG$LHd2qA" role="3uHU7B">
                <node concept="37vLTw" id="3PtG$LHd1_1" role="2Oq$k0">
                  <ref role="3cqZAo" node="awtshkmmiu" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="3PtG$LHd2K_" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="awtshkmopu" role="3uHU7B">
              <node concept="37vLTw" id="awtshkmodz" role="3uHU7B">
                <ref role="3cqZAo" node="awtshkmmgn" resolve="commandContainer" />
              </node>
              <node concept="37vLTw" id="awtshkmoxm" role="3uHU7w">
                <ref role="3cqZAo" node="awtshkmmiu" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3AwzpICDSnC" role="3cqZAp" />
        <node concept="3clFbF" id="3PtG$LH9x0$" role="3cqZAp">
          <node concept="2ShNRf" id="3PtG$LH9x0w" role="3clFbG">
            <node concept="1pGfFk" id="3PtG$LH9xl_" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="awtshkmlVG" role="1B3o_S" />
      <node concept="37vLTG" id="awtshkmmgn" role="3clF46">
        <property role="TrG5h" value="commandContainer" />
        <node concept="3Tqbb2" id="awtshkmmgm" role="1tU5fm">
          <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="awtshkmmiu" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="awtshkmmku" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3PtG$LGRCRg" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="3PtG$LGRDy5" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="1jrq3npqOtG" role="32lrUH">
      <property role="TrG5h" value="provideCommandScope" />
      <node concept="37vLTG" id="1jrq3npqOMk" role="3clF46">
        <property role="TrG5h" value="command" />
        <node concept="3Tqbb2" id="1jrq3npqOOy" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p43ygY" resolve="Command" />
        </node>
      </node>
      <node concept="37vLTG" id="1jrq3npqOPr" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="1jrq3npqORF" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1jrq3npqOFE" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="1jrq3npqOtI" role="3clF47">
        <node concept="3SKdUt" id="1jrq3npqP8Y" role="3cqZAp">
          <node concept="1PaTwC" id="1jrq3npqP8Z" role="1aUNEU">
            <node concept="3oM_SD" id="1jrq3npqYy4" role="1PaTwD">
              <property role="3oM_SC" value="Aggregate" />
            </node>
            <node concept="3oM_SD" id="1jrq3npqYy6" role="1PaTwD">
              <property role="3oM_SC" value="Roots" />
            </node>
            <node concept="3oM_SD" id="4LpUh3TWgqy" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="4LpUh3TWgqQ" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="4LpUh3TWgqV" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="4LpUh3TWgrh" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="4LpUh3TWgrC" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4LpUh3TWgs0" role="1PaTwD">
              <property role="3oM_SC" value="repositoryReference" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4LpUh3TTTl6" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="4LpUh3TTTl8" role="3clFbx">
            <node concept="3cpWs6" id="4LpUh3TWePw" role="3cqZAp">
              <node concept="2ShNRf" id="4LpUh3TWeXw" role="3cqZAk">
                <node concept="1pGfFk" id="4LpUh3TWfbb" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="4LpUh3TWeyC" role="3clFbw">
            <node concept="2OqwBi" id="4LpUh3TTUty" role="3uHU7B">
              <node concept="37vLTw" id="4LpUh3TTTvA" role="2Oq$k0">
                <ref role="3cqZAo" node="1jrq3npqOPr" resolve="contextNode" />
              </node>
              <node concept="2NL2c5" id="4LpUh3TTUGM" role="2OqNvi" />
            </node>
            <node concept="359W_D" id="4LpUh3TTVB5" role="3uHU7w">
              <ref role="359W_E" to="3nll:7fqk8p43ygY" resolve="Command" />
              <ref role="359W_F" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4LpUh3TTWxA" role="3cqZAp" />
        <node concept="3cpWs8" id="1jrq3npr2du" role="3cqZAp">
          <node concept="3cpWsn" id="1jrq3npr2dv" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="1jrq3npr29j" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="1jrq3npr2dw" role="33vP2m">
              <node concept="37vLTw" id="1jrq3npr2dx" role="2Oq$k0">
                <ref role="3cqZAo" node="1jrq3npqOMk" resolve="command" />
              </node>
              <node concept="2qgKlT" id="1jrq3npyDtI" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1jrq3npsCcN" role="3cqZAp" />
        <node concept="3SKdUt" id="3VGLvhF1KZG" role="3cqZAp">
          <node concept="1PaTwC" id="3VGLvhF1KZH" role="1aUNEU">
            <node concept="3oM_SD" id="3VGLvhF1Ld2" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Ldb" role="1PaTwD">
              <property role="3oM_SC" value="Hier" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Lde" role="1PaTwD">
              <property role="3oM_SC" value="steht," />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Ldi" role="1PaTwD">
              <property role="3oM_SC" value="wie" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Ldn" role="1PaTwD">
              <property role="3oM_SC" value="man" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Ldt" role="1PaTwD">
              <property role="3oM_SC" value="das" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Ld$" role="1PaTwD">
              <property role="3oM_SC" value="mit" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1LdZ" role="1PaTwD">
              <property role="3oM_SC" value="den" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Let" role="1PaTwD">
              <property role="3oM_SC" value="referenzen" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1LeB" role="1PaTwD">
              <property role="3oM_SC" value="machen" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1LeM" role="1PaTwD">
              <property role="3oM_SC" value="kann," />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1LeY" role="1PaTwD">
              <property role="3oM_SC" value="welche" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Lfb" role="1PaTwD">
              <property role="3oM_SC" value="Aggregate" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Lfp" role="1PaTwD">
              <property role="3oM_SC" value="man" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1LfC" role="1PaTwD">
              <property role="3oM_SC" value="dann" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1LfS" role="1PaTwD">
              <property role="3oM_SC" value="auch" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Lg9" role="1PaTwD">
              <property role="3oM_SC" value="verwenden" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Lgr" role="1PaTwD">
              <property role="3oM_SC" value="kann" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1LgI" role="1PaTwD">
              <property role="3oM_SC" value="/" />
            </node>
            <node concept="3oM_SD" id="3VGLvhF1Lh2" role="1PaTwD">
              <property role="3oM_SC" value="darf" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jrq3npqTlx" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="1jrq3npqTlz" role="3clFbx">
            <node concept="3cpWs6" id="4LpUh3UREth" role="3cqZAp">
              <node concept="2YIFZM" id="1jrq3npqWQ9" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="1jrq3npsBl9" role="37wK5m">
                  <node concept="37vLTw" id="1jrq3npqWQa" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jrq3npr2dv" resolve="boundedContext" />
                  </node>
                  <node concept="2qgKlT" id="1jrq3npsBK0" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4LpUh3URDij" role="3clFbw">
            <node concept="2OqwBi" id="4LpUh3URDil" role="3fr31v">
              <node concept="37vLTw" id="4LpUh3URDim" role="2Oq$k0">
                <ref role="3cqZAo" node="1jrq3npqOMk" resolve="command" />
              </node>
              <node concept="2qgKlT" id="4LpUh3URDin" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1jrq3npy$dZ" resolve="isInsideCommandContainer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1jrq3npsCKf" role="3cqZAp" />
        <node concept="3clFbF" id="4LpUh3URFRh" role="3cqZAp">
          <node concept="2YIFZM" id="1jrq3npu8dP" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="1jrq3npu96o" role="37wK5m">
              <node concept="2OqwBi" id="1jrq3npu8dQ" role="2Oq$k0">
                <node concept="37vLTw" id="1jrq3npu8dR" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jrq3npr2dv" resolve="boundedContext" />
                </node>
                <node concept="2qgKlT" id="1jrq3npu8dS" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                </node>
              </node>
              <node concept="3zZkjj" id="1jrq3npu9ye" role="2OqNvi">
                <node concept="1bVj0M" id="1jrq3npu9yg" role="23t8la">
                  <property role="3yWfEV" value="true" />
                  <node concept="3clFbS" id="1jrq3npu9yh" role="1bW5cS">
                    <node concept="3clFbF" id="omljbwOtYM" role="3cqZAp">
                      <node concept="3fqX7Q" id="omljbwOtYI" role="3clFbG">
                        <node concept="2OqwBi" id="omljbwOvMy" role="3fr31v">
                          <node concept="2OqwBi" id="omljbwOuKE" role="2Oq$k0">
                            <node concept="37vLTw" id="omljbwOugi" role="2Oq$k0">
                              <ref role="3cqZAo" node="1jrq3npqOMk" resolve="command" />
                            </node>
                            <node concept="2qgKlT" id="omljbwOvt6" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:5$Oa659Yq3n" resolve="getCommandContainer" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="omljbwOwkA" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                            <node concept="37vLTw" id="omljbwOwxO" role="37wK5m">
                              <ref role="3cqZAo" node="1jrq3npu9yi" resolve="aggregate" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1jrq3npu9yi" role="1bW2Oz">
                    <property role="TrG5h" value="aggregate" />
                    <node concept="2jxLKc" id="1jrq3npu9yj" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1jrq3npqOtJ" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="4LpUh3TY_9R" role="32lrUH">
      <property role="TrG5h" value="provideDtoScope" />
      <node concept="37vLTG" id="4LpUh3TY_9S" role="3clF46">
        <property role="TrG5h" value="dto" />
        <node concept="3Tqbb2" id="4LpUh3TY_9T" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
        </node>
      </node>
      <node concept="37vLTG" id="4LpUh3TY_9U" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="4LpUh3TY_9V" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4LpUh3TY_9W" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="4LpUh3TY_9X" role="3clF47">
        <node concept="3clFbJ" id="4LpUh3TY_9Y" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="4LpUh3TY_9Z" role="3clFbx">
            <node concept="3cpWs8" id="3NXs7yozRHZ" role="3cqZAp">
              <node concept="3cpWsn" id="3NXs7yozRI0" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <node concept="3Tqbb2" id="3NXs7yozRE8" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                </node>
                <node concept="2OqwBi" id="3NXs7yozRI1" role="33vP2m">
                  <node concept="37vLTw" id="3NXs7yozRI2" role="2Oq$k0">
                    <ref role="3cqZAo" node="4LpUh3TY_9S" resolve="dto" />
                  </node>
                  <node concept="2qgKlT" id="3NXs7yozRI3" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="4Bg9wDFsrMh" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs6" id="4Bg9wDFsrlq" role="8Wnug">
                <node concept="2YIFZM" id="4Bg9wDFsrlr" role="3cqZAk">
                  <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="2OqwBi" id="4Bg9wDFsrls" role="37wK5m">
                    <node concept="2qgKlT" id="4Bg9wDFsrlt" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3NXs7yo7EMe" resolve="findUnusedDtoDerivablesIncluding" />
                      <node concept="2OqwBi" id="4Bg9wDFsrlu" role="37wK5m">
                        <node concept="2OqwBi" id="4Bg9wDFsrlv" role="2Oq$k0">
                          <node concept="37vLTw" id="4Bg9wDFsrlw" role="2Oq$k0">
                            <ref role="3cqZAo" node="4LpUh3TY_9S" resolve="dto" />
                          </node>
                          <node concept="3TrEf2" id="4Bg9wDFsrlx" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="4Bg9wDFsrly" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:4LpUh3T0tIy" resolve="getDtoDerivable" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4Bg9wDFsrlz" role="2Oq$k0">
                      <ref role="3cqZAo" node="3NXs7yozRI0" resolve="boundedContext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4Bg9wDFsqYi" role="3cqZAp" />
            <node concept="3cpWs6" id="3NXs7yo7VkW" role="3cqZAp">
              <node concept="2YIFZM" id="3NXs7yo7VI3" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="3NXs7yo7XlC" role="37wK5m">
                  <node concept="37vLTw" id="3NXs7yozSb7" role="2Oq$k0">
                    <ref role="3cqZAo" node="3NXs7yozRI0" resolve="boundedContext" />
                  </node>
                  <node concept="2qgKlT" id="4Bg9wDFssfT" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4LpUh3U3bp1" role="3clFbw">
            <node concept="17R0WA" id="4LpUh3U3dH6" role="3uHU7w">
              <node concept="359W_D" id="4LpUh3U3dN9" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
              </node>
              <node concept="2OqwBi" id="4LpUh3U3c9x" role="3uHU7B">
                <node concept="37vLTw" id="4LpUh3U3bVD" role="2Oq$k0">
                  <ref role="3cqZAo" node="4LpUh3TY_9U" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="4LpUh3U3cMv" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="4LpUh3TY_af" role="3uHU7B">
              <node concept="37vLTw" id="4LpUh3TY_ag" role="3uHU7B">
                <ref role="3cqZAo" node="4LpUh3TY_9U" resolve="contextNode" />
              </node>
              <node concept="37vLTw" id="4LpUh3TY_ah" role="3uHU7w">
                <ref role="3cqZAo" node="4LpUh3TY_9S" resolve="dto" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4LpUh3TY_ai" role="3cqZAp">
          <node concept="2ShNRf" id="4LpUh3TY_aj" role="3clFbG">
            <node concept="1pGfFk" id="4LpUh3TY_ak" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4LpUh3TY_al" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3NXs7yo8fQX" role="32lrUH">
      <property role="TrG5h" value="provideDtoFlatteningRuleScope" />
      <node concept="37vLTG" id="3NXs7yo8fQY" role="3clF46">
        <property role="TrG5h" value="flatteningRuleContainer" />
        <node concept="3Tqbb2" id="3NXs7yo8fQZ" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="3NXs7yo8fR0" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="3NXs7yo8fR1" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3NXs7yo8fR2" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="3NXs7yo8fR3" role="3clF47">
        <node concept="3cpWs8" id="3L7_qKKSKsj" role="3cqZAp">
          <node concept="3cpWsn" id="3L7_qKKSKsk" role="3cpWs9">
            <property role="TrG5h" value="flatteningRule" />
            <node concept="3Tqbb2" id="3L7_qKKSKsl" role="1tU5fm">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
            </node>
            <node concept="2OqwBi" id="3L7_qKKSKsm" role="33vP2m">
              <node concept="37vLTw" id="3L7_qKKSKsn" role="2Oq$k0">
                <ref role="3cqZAo" node="3NXs7yo8fR0" resolve="contextNode" />
              </node>
              <node concept="2Xjw5R" id="3L7_qKKSKso" role="2OqNvi">
                <node concept="1xMEDy" id="3L7_qKKSKsp" role="1xVPHs">
                  <node concept="chp4Y" id="3L7_qKKSKsq" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
                <node concept="1xIGOp" id="3L7_qKKSKsr" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3L7_qKKSK7O" role="3cqZAp" />
        <node concept="3clFbJ" id="3NXs7yo8fR4" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="3NXs7yo8fR5" role="3clFbx">
            <node concept="3cpWs8" id="3NXs7yozQiA" role="3cqZAp">
              <node concept="3cpWsn" id="3NXs7yozQiB" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <node concept="3Tqbb2" id="3NXs7yozQfs" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                </node>
                <node concept="2OqwBi" id="3NXs7yozQiC" role="33vP2m">
                  <node concept="37vLTw" id="3NXs7yozQiD" role="2Oq$k0">
                    <ref role="3cqZAo" node="3NXs7yo8fQY" resolve="flatteningRuleContainer" />
                  </node>
                  <node concept="2qgKlT" id="3NXs7yozQiE" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3NXs7yo8fR6" role="3cqZAp">
              <node concept="2YIFZM" id="3NXs7yo8fR7" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="3NXs7yo8fR8" role="37wK5m">
                  <node concept="2qgKlT" id="3NXs7yo8fRc" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yowktH" resolve="findUnusedDtoDerivablesForFlatteningRulesIncluding" />
                    <node concept="2OqwBi" id="3NXs7yozPBi" role="37wK5m">
                      <node concept="37vLTw" id="3NXs7yo8fRe" role="2Oq$k0">
                        <ref role="3cqZAo" node="3L7_qKKSKsk" resolve="flatteningRule" />
                      </node>
                      <node concept="2qgKlT" id="3NXs7yozPQ5" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3NXs7yozQWF" role="2Oq$k0">
                    <ref role="3cqZAo" node="3NXs7yozQiB" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3NXs7yo8fRh" role="3clFbw">
            <node concept="17R0WA" id="3NXs7yo8fRi" role="3uHU7w">
              <node concept="359W_D" id="3NXs7yo8fRj" role="3uHU7w">
                <ref role="359W_E" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
              </node>
              <node concept="2OqwBi" id="3NXs7yo8fRk" role="3uHU7B">
                <node concept="37vLTw" id="3NXs7yo8fRl" role="2Oq$k0">
                  <ref role="3cqZAo" node="3NXs7yo8fR0" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="3NXs7yo8fRm" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="3NXs7yo8fRn" role="3uHU7B">
              <node concept="37vLTw" id="3NXs7yo8fRo" role="3uHU7B">
                <ref role="3cqZAo" node="3NXs7yo8fR0" resolve="contextNode" />
              </node>
              <node concept="37vLTw" id="3NXs7yo8fRp" role="3uHU7w">
                <ref role="3cqZAo" node="3L7_qKKSKsk" resolve="flatteningRule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3NXs7yo8fRq" role="3cqZAp" />
        <node concept="3clFbF" id="3NXs7yo8fRr" role="3cqZAp">
          <node concept="2ShNRf" id="3NXs7yo8fRs" role="3clFbG">
            <node concept="1pGfFk" id="3NXs7yo8fRt" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3NXs7yo8fRu" role="1B3o_S" />
    </node>
    <node concept="3EP7_v" id="7fqk8p44MPr" role="1MtirG">
      <node concept="3dgokm" id="7fqk8p44MPv" role="3EP$qY">
        <node concept="3clFbS" id="7fqk8p44MPx" role="2VODD2">
          <node concept="3cpWs8" id="7fqk8p44NDJ" role="3cqZAp">
            <node concept="3cpWsn" id="7fqk8p44NDK" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3Tqbb2" id="7fqk8p44NDL" role="1tU5fm">
                <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
              </node>
              <node concept="2OqwBi" id="7fqk8p44NDM" role="33vP2m">
                <node concept="2rP1CM" id="7fqk8p44NDN" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7fqk8p44NDO" role="2OqNvi">
                  <node concept="1xMEDy" id="7fqk8p44NDP" role="1xVPHs">
                    <node concept="chp4Y" id="7fqk8p44NDQ" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7fqk8p44NDR" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1jrq3npqPYD" role="3cqZAp" />
          <node concept="Jncv_" id="4LpUh3TWh02" role="3cqZAp">
            <ref role="JncvD" to="3nll:7fqk8p43ygY" resolve="Command" />
            <node concept="37vLTw" id="4LpUh3TWh6l" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p44NDK" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3TWh06" role="Jncv$">
              <node concept="3cpWs6" id="1jrq3npqMVK" role="3cqZAp">
                <node concept="2OqwBi" id="1jrq3npqPAl" role="3cqZAk">
                  <node concept="2WthIp" id="1jrq3npqPjY" role="2Oq$k0" />
                  <node concept="2XshWL" id="1jrq3npqPIx" role="2OqNvi">
                    <ref role="2WH_rO" node="1jrq3npqOtG" resolve="provideCommandScope" />
                    <node concept="Jnkvi" id="4LpUh3TWhdE" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3TWh08" resolve="command" />
                    </node>
                    <node concept="2rP1CM" id="1jrq3npqQtz" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3TWh08" role="JncvA">
              <property role="TrG5h" value="command" />
              <node concept="2jxLKc" id="4LpUh3TWh09" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="4LpUh3TWgzW" role="3cqZAp" />
          <node concept="Jncv_" id="4LpUh3TDnzz" role="3cqZAp">
            <ref role="JncvD" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
            <node concept="37vLTw" id="4LpUh3TDnAF" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p44NDK" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3TDnzB" role="Jncv$">
              <node concept="3cpWs6" id="awtshklnAj" role="3cqZAp">
                <node concept="2OqwBi" id="awtshklnS7" role="3cqZAk">
                  <node concept="2WthIp" id="awtshklnCi" role="2Oq$k0" />
                  <node concept="2XshWL" id="awtshklnW0" role="2OqNvi">
                    <ref role="2WH_rO" node="awtshklmyR" resolve="provideAggregateRepositoryScope" />
                    <node concept="Jnkvi" id="4LpUh3TDo9K" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3TDnzD" resolve="repository" />
                    </node>
                    <node concept="2rP1CM" id="4LpUh3TDo34" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3TDnzD" role="JncvA">
              <property role="TrG5h" value="repository" />
              <node concept="2jxLKc" id="4LpUh3TDnzE" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="4LpUh3TDnv0" role="3cqZAp" />
          <node concept="Jncv_" id="4LpUh3TDoiD" role="3cqZAp">
            <ref role="JncvD" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
            <node concept="37vLTw" id="4LpUh3TDolI" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p44NDK" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3TDoiH" role="Jncv$">
              <node concept="3cpWs6" id="awtshkjFji" role="3cqZAp">
                <node concept="2OqwBi" id="awtshkjFCG" role="3cqZAk">
                  <node concept="2WthIp" id="awtshkjFCJ" role="2Oq$k0" />
                  <node concept="2XshWL" id="awtshkjFCL" role="2OqNvi">
                    <ref role="2WH_rO" node="awtshkjDUm" resolve="provideEventConatinerScope" />
                    <node concept="Jnkvi" id="4LpUh3TDoGq" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3TDoiJ" resolve="eventContainer" />
                    </node>
                    <node concept="2rP1CM" id="awtshkjG_J" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3TDoiJ" role="JncvA">
              <property role="TrG5h" value="eventContainer" />
              <node concept="2jxLKc" id="4LpUh3TDoiK" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="1jrq3npphjw" role="3cqZAp" />
          <node concept="Jncv_" id="4LpUh3TDoMy" role="3cqZAp">
            <ref role="JncvD" to="3nll:awtshkmllB" resolve="CommandContainer" />
            <node concept="37vLTw" id="4LpUh3TDoSl" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p44NDK" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3TDoMA" role="Jncv$">
              <node concept="3cpWs6" id="awtshkmns1" role="3cqZAp">
                <node concept="2OqwBi" id="awtshkmnIt" role="3cqZAk">
                  <node concept="2WthIp" id="awtshkmnur" role="2Oq$k0" />
                  <node concept="2XshWL" id="awtshkmnMz" role="2OqNvi">
                    <ref role="2WH_rO" node="awtshkmlVD" resolve="provideCommandContainerScope" />
                    <node concept="Jnkvi" id="4LpUh3TDpka" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3TDoMC" resolve="commandContainer" />
                    </node>
                    <node concept="2rP1CM" id="awtshkmnWk" role="2XxRq1" />
                    <node concept="3dgs5T" id="3PtG$LGRCOV" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3TDoMC" role="JncvA">
              <property role="TrG5h" value="commandContainer" />
              <node concept="2jxLKc" id="4LpUh3TDoMD" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="4LpUh3TYzjF" role="3cqZAp" />
          <node concept="Jncv_" id="4LpUh3TYzoV" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            <node concept="37vLTw" id="4LpUh3TYzrK" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p44NDK" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3TYzoZ" role="Jncv$">
              <node concept="3cpWs6" id="4LpUh3U0RJg" role="3cqZAp">
                <node concept="2OqwBi" id="4LpUh3U0S9w" role="3cqZAk">
                  <node concept="2WthIp" id="4LpUh3U0RPW" role="2Oq$k0" />
                  <node concept="2XshWL" id="4LpUh3U0Se0" role="2OqNvi">
                    <ref role="2WH_rO" node="4LpUh3TY_9R" resolve="provideDtoScope" />
                    <node concept="Jnkvi" id="4LpUh3U0Sg1" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3TYzp1" resolve="dto" />
                    </node>
                    <node concept="2rP1CM" id="4LpUh3U0Sk6" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3TYzp1" role="JncvA">
              <property role="TrG5h" value="dto" />
              <node concept="2jxLKc" id="4LpUh3TYzp2" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="3NXs7yo8j3f" role="3cqZAp" />
          <node concept="Jncv_" id="3NXs7yo8j5C" role="3cqZAp">
            <ref role="JncvD" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
            <node concept="37vLTw" id="3NXs7yo8j5D" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p44NDK" resolve="component" />
            </node>
            <node concept="3clFbS" id="3NXs7yo8j5E" role="Jncv$">
              <node concept="3cpWs6" id="3NXs7yo8j5F" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7yo8j5G" role="3cqZAk">
                  <node concept="2WthIp" id="3NXs7yo8j5H" role="2Oq$k0" />
                  <node concept="2XshWL" id="3NXs7yo8j5I" role="2OqNvi">
                    <ref role="2WH_rO" node="3NXs7yo8fQX" resolve="provideDtoFlatteningRuleScope" />
                    <node concept="Jnkvi" id="3NXs7yo8j5J" role="2XxRq1">
                      <ref role="1M0zk5" node="3NXs7yo8j5L" resolve="flatteningRuleContainer" />
                    </node>
                    <node concept="2rP1CM" id="3NXs7yo8j5K" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3NXs7yo8j5L" role="JncvA">
              <property role="TrG5h" value="flatteningRuleContainer" />
              <node concept="2jxLKc" id="3NXs7yo8j5M" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="7fqk8p48m5H" role="3cqZAp" />
          <node concept="3clFbF" id="4LpUh3TDnmL" role="3cqZAp">
            <node concept="2ShNRf" id="7fqk8p44MWd" role="3clFbG">
              <node concept="1pGfFk" id="7fqk8p44N0w" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7fqk8p3JV7a">
    <property role="3GE5qa" value="valueObjects" />
    <ref role="1M2myG" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
    <node concept="2XrIbr" id="5SyewCatWxF" role="32lrUH">
      <property role="TrG5h" value="provideValueObjectScope" />
      <node concept="37vLTG" id="5SyewCatWHD" role="3clF46">
        <property role="TrG5h" value="valueObject" />
        <node concept="3Tqbb2" id="5SyewCatWIq" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
        </node>
      </node>
      <node concept="3uibUv" id="5SyewCatWDM" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="5SyewCatWxH" role="3clF47">
        <node concept="1X3_iC" id="7a9d0UA4lYg" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="5SyewCatWJ_" role="8Wnug">
            <node concept="3cpWsn" id="5SyewCatWJA" role="3cpWs9">
              <property role="TrG5h" value="nodes" />
              <node concept="2OqwBi" id="5SyewCatWJB" role="33vP2m">
                <node concept="2OqwBi" id="5SyewCatWJC" role="2Oq$k0">
                  <node concept="2OqwBi" id="5SyewCatXjp" role="2Oq$k0">
                    <node concept="37vLTw" id="5SyewCatWJD" role="2Oq$k0">
                      <ref role="3cqZAo" node="5SyewCatWHD" resolve="valueObject" />
                    </node>
                    <node concept="2qgKlT" id="5SyewCatX_8" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="5SyewCatWJE" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
                  </node>
                </node>
                <node concept="3zZkjj" id="5SyewCatWJF" role="2OqNvi">
                  <node concept="1bVj0M" id="5SyewCatWJG" role="23t8la">
                    <node concept="3clFbS" id="5SyewCatWJH" role="1bW5cS">
                      <node concept="3clFbF" id="5SyewCatWJI" role="3cqZAp">
                        <node concept="3y3z36" id="5SyewCatWJJ" role="3clFbG">
                          <node concept="37vLTw" id="5SyewCatWJN" role="3uHU7B">
                            <ref role="3cqZAo" node="5SyewCatWJO" resolve="it" />
                          </node>
                          <node concept="37vLTw" id="5SyewCatYin" role="3uHU7w">
                            <ref role="3cqZAo" node="5SyewCatWHD" resolve="valueObject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5SyewCatWJO" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5SyewCatWJP" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="A3Dl8" id="5SyewCatWJQ" role="1tU5fm">
                <node concept="3Tqbb2" id="5SyewCatWJR" role="A3Ik2">
                  <ref role="ehGHo" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4LpUh3T36oH" role="3cqZAp">
          <node concept="2YIFZM" id="5SyewCatWJT" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="7a9d0UA4lxY" role="37wK5m">
              <node concept="2OqwBi" id="7a9d0UA4lxZ" role="2Oq$k0">
                <node concept="37vLTw" id="7a9d0UA4ly0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SyewCatWHD" resolve="valueObject" />
                </node>
                <node concept="2qgKlT" id="7a9d0UA4ly1" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="7a9d0UA4ly2" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SyewCatWxI" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5SyewCatU_a" role="32lrUH">
      <property role="TrG5h" value="provideEntityScope" />
      <node concept="37vLTG" id="5SyewCatUGA" role="3clF46">
        <property role="TrG5h" value="entity" />
        <node concept="3Tqbb2" id="5SyewCatUIC" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
        </node>
      </node>
      <node concept="3uibUv" id="5SyewCatUCP" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="5SyewCatU_c" role="3clF47">
        <node concept="3clFbF" id="4LpUh3T36PH" role="3cqZAp">
          <node concept="2YIFZM" id="5SyewCatUJO" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="5SyewCatVFc" role="37wK5m">
              <node concept="2OqwBi" id="5SyewCatV9H" role="2Oq$k0">
                <node concept="37vLTw" id="5SyewCatUJQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SyewCatUGA" resolve="entity" />
                </node>
                <node concept="2qgKlT" id="5SyewCatVqo" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="5SyewCatVTk" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SyewCatU_d" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5SyewCatW3o" role="32lrUH">
      <property role="TrG5h" value="provideAggregateRootScope" />
      <node concept="37vLTG" id="5SyewCatWaB" role="3clF46">
        <property role="TrG5h" value="aggregateRoot" />
        <node concept="3Tqbb2" id="5SyewCatWcD" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
        </node>
      </node>
      <node concept="3uibUv" id="5SyewCatW7L" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="5SyewCatW3q" role="3clF47">
        <node concept="3clFbF" id="4LpUh3T372c" role="3cqZAp">
          <node concept="2YIFZM" id="5SyewCatWe7" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="5SyewCatWe8" role="37wK5m">
              <node concept="2OqwBi" id="5SyewCatWe9" role="2Oq$k0">
                <node concept="37vLTw" id="5SyewCatWea" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SyewCatWaB" resolve="aggregateRoot" />
                </node>
                <node concept="2qgKlT" id="5SyewCatWeb" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="5SyewCatWec" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SyewCatW3r" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5SyewCau2jI" role="32lrUH">
      <property role="TrG5h" value="provideAggregateRootRepositoryScope" />
      <node concept="3uibUv" id="5SyewCau2tK" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="5SyewCau2jK" role="3clF47">
        <node concept="3clFbF" id="4LpUh3T37f3" role="3cqZAp">
          <node concept="2YIFZM" id="5SyewCau3Qd" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="5SyewCau3Qe" role="37wK5m">
              <node concept="2OqwBi" id="5SyewCau3Qf" role="2Oq$k0">
                <node concept="37vLTw" id="5SyewCau3Qg" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SyewCau3OI" resolve="repository" />
                </node>
                <node concept="2qgKlT" id="5SyewCau3Qh" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="5SyewCau3Qi" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SyewCau2jL" role="1B3o_S" />
      <node concept="37vLTG" id="5SyewCau3OI" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3Tqbb2" id="5SyewCau3OH" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="4LpUh3T365f" role="32lrUH">
      <property role="TrG5h" value="provideDtoScope" />
      <node concept="37vLTG" id="4LpUh3T36i5" role="3clF46">
        <property role="TrG5h" value="dto" />
        <node concept="3Tqbb2" id="4LpUh3T36kd" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
        </node>
      </node>
      <node concept="37vLTG" id="4LpUh3T36lo" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="4LpUh3T36ny" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4LpUh3T36ee" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="4LpUh3T365h" role="3clF47">
        <node concept="3clFbJ" id="4LpUh3T37Zc" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="4LpUh3T37Ze" role="3clFbx">
            <node concept="3cpWs8" id="3NXs7yo$0ME" role="3cqZAp">
              <node concept="3cpWsn" id="3NXs7yo$0MF" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <node concept="3Tqbb2" id="3NXs7yo$0MG" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                </node>
                <node concept="2OqwBi" id="3NXs7yo$0MH" role="33vP2m">
                  <node concept="37vLTw" id="3NXs7yo$0MI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4LpUh3T36i5" resolve="dto" />
                  </node>
                  <node concept="2qgKlT" id="3NXs7yo$0MJ" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3NXs7yo83P1" role="3cqZAp">
              <node concept="2YIFZM" id="3NXs7yo83P2" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="3NXs7yo83P3" role="37wK5m">
                  <node concept="2qgKlT" id="3NXs7yo83P7" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yo7EMe" resolve="findUnusedDtoDerivablesIncluding" />
                    <node concept="2OqwBi" id="3NXs7yo$2c2" role="37wK5m">
                      <node concept="2OqwBi" id="3NXs7yo83P9" role="2Oq$k0">
                        <node concept="37vLTw" id="3NXs7yo83Pa" role="2Oq$k0">
                          <ref role="3cqZAo" node="4LpUh3T36i5" resolve="dto" />
                        </node>
                        <node concept="3TrEf2" id="3NXs7yo83Pb" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="3NXs7yo$2Ff" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:4LpUh3T0tIy" resolve="getDtoDerivable" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3NXs7yo$1id" role="2Oq$k0">
                    <ref role="3cqZAo" node="3NXs7yo$0MF" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4LpUh3Tj2Wp" role="3clFbw">
            <node concept="3clFbC" id="4LpUh3T9XAa" role="3uHU7B">
              <node concept="37vLTw" id="4LpUh3T9Xr5" role="3uHU7B">
                <ref role="3cqZAo" node="4LpUh3T36lo" resolve="contextNode" />
              </node>
              <node concept="37vLTw" id="4LpUh3T9XI0" role="3uHU7w">
                <ref role="3cqZAo" node="4LpUh3T36i5" resolve="dto" />
              </node>
            </node>
            <node concept="17R0WA" id="4LpUh3U5zZc" role="3uHU7w">
              <node concept="359W_D" id="4LpUh3U5zZd" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
              </node>
              <node concept="2OqwBi" id="4LpUh3U5zZe" role="3uHU7B">
                <node concept="37vLTw" id="4LpUh3U5zZf" role="2Oq$k0">
                  <ref role="3cqZAo" node="4LpUh3T36lo" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="4LpUh3U5zZg" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3NXs7yo$7iu" role="3cqZAp" />
        <node concept="3clFbF" id="4LpUh3T39zD" role="3cqZAp">
          <node concept="2ShNRf" id="4LpUh3T39zB" role="3clFbG">
            <node concept="1pGfFk" id="4LpUh3T39Q6" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4LpUh3T365i" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3NXs7yo7wXH" role="32lrUH">
      <property role="TrG5h" value="provideDtoFlatteningRuleScope" />
      <node concept="37vLTG" id="3NXs7yo7xbX" role="3clF46">
        <property role="TrG5h" value="flatteningRuleContainer" />
        <node concept="3Tqbb2" id="3NXs7yo7xe8" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="3NXs7yo7xfj" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="3NXs7yo7xhw" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3NXs7yo7x75" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="3NXs7yo7wXJ" role="3clF47">
        <node concept="3cpWs8" id="3L7_qKKSz3I" role="3cqZAp">
          <node concept="3cpWsn" id="3L7_qKKSz3J" role="3cpWs9">
            <property role="TrG5h" value="flatteningRule" />
            <node concept="3Tqbb2" id="3L7_qKKSz26" role="1tU5fm">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
            </node>
            <node concept="2OqwBi" id="3L7_qKKSz3K" role="33vP2m">
              <node concept="37vLTw" id="3L7_qKKSz3L" role="2Oq$k0">
                <ref role="3cqZAo" node="3NXs7yo7xfj" resolve="contextNode" />
              </node>
              <node concept="2Xjw5R" id="3L7_qKKSz3M" role="2OqNvi">
                <node concept="1xMEDy" id="3L7_qKKSz3N" role="1xVPHs">
                  <node concept="chp4Y" id="3L7_qKKSz3O" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
                <node concept="1xIGOp" id="3L7_qKKSz3P" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3L7_qKKSyfU" role="3cqZAp" />
        <node concept="3clFbJ" id="3NXs7yo7yIf" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="3NXs7yo7yIh" role="3clFbx">
            <node concept="3cpWs8" id="3NXs7yo$3G4" role="3cqZAp">
              <node concept="3cpWsn" id="3NXs7yo$3G5" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <node concept="3Tqbb2" id="3NXs7yo$3Dg" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                </node>
                <node concept="2OqwBi" id="3NXs7yo$3G6" role="33vP2m">
                  <node concept="37vLTw" id="3NXs7yo$3G7" role="2Oq$k0">
                    <ref role="3cqZAo" node="3NXs7yo7xbX" resolve="flatteningRuleContainer" />
                  </node>
                  <node concept="2qgKlT" id="3NXs7yo$3G8" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3NXs7yo7$j5" role="3cqZAp">
              <node concept="2YIFZM" id="3NXs7yo7$qX" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="3NXs7yo85Hl" role="37wK5m">
                  <node concept="2qgKlT" id="3NXs7yo85X4" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yowktH" resolve="findUnusedDtoDerivablesForFlatteningRulesIncluding" />
                    <node concept="2OqwBi" id="3NXs7yo8633" role="37wK5m">
                      <node concept="37vLTw" id="3NXs7yo85Zv" role="2Oq$k0">
                        <ref role="3cqZAo" node="3L7_qKKSz3J" resolve="flatteningRule" />
                      </node>
                      <node concept="2qgKlT" id="3L7_qKKS$uA" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3NXs7yo$4B6" role="2Oq$k0">
                    <ref role="3cqZAo" node="3NXs7yo$3G5" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3NXs7yo7zla" role="3clFbw">
            <node concept="17R0WA" id="3NXs7yo7$3Z" role="3uHU7w">
              <node concept="359W_D" id="3NXs7yo7$5e" role="3uHU7w">
                <ref role="359W_E" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
              </node>
              <node concept="2OqwBi" id="3NXs7yo7zxH" role="3uHU7B">
                <node concept="37vLTw" id="3NXs7yo7zmf" role="2Oq$k0">
                  <ref role="3cqZAo" node="3NXs7yo7xfj" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="3NXs7yo7zDQ" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="3L7_qKKSzEk" role="3uHU7B">
              <node concept="37vLTw" id="3L7_qKKSzOl" role="3uHU7w">
                <ref role="3cqZAo" node="3L7_qKKSz3J" resolve="flatteningRule" />
              </node>
              <node concept="37vLTw" id="3NXs7yo7yIX" role="3uHU7B">
                <ref role="3cqZAo" node="3NXs7yo7xfj" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3NXs7yo7yFS" role="3cqZAp" />
        <node concept="3clFbF" id="3NXs7yo7xl9" role="3cqZAp">
          <node concept="2ShNRf" id="3NXs7yo7xl5" role="3clFbG">
            <node concept="1pGfFk" id="3NXs7yo7yEb" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3NXs7yo7wXK" role="1B3o_S" />
    </node>
    <node concept="3EP7_v" id="7fqk8p3L7Vh" role="1MtirG">
      <node concept="3dgokm" id="7fqk8p3L7Vl" role="3EP$qY">
        <node concept="3clFbS" id="7fqk8p3L7Vn" role="2VODD2">
          <node concept="3cpWs8" id="7fqk8p3Tb2K" role="3cqZAp">
            <node concept="3cpWsn" id="7fqk8p3Tb2N" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3Tqbb2" id="7fqk8p3Tb2I" role="1tU5fm">
                <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
              </node>
              <node concept="2OqwBi" id="7fqk8p3TbW1" role="33vP2m">
                <property role="hSjvv" value="true" />
                <node concept="2rP1CM" id="7fqk8p3TbB4" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7fqk8p3Tc81" role="2OqNvi">
                  <node concept="1xMEDy" id="7fqk8p3Tc83" role="1xVPHs">
                    <node concept="chp4Y" id="7fqk8p3TceP" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7fqk8p3TvmA" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="Jncv_" id="4LpUh3T33FX" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
            <node concept="37vLTw" id="4LpUh3T33LG" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p3Tb2N" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3T33G1" role="Jncv$">
              <node concept="3cpWs6" id="5SyewCau26k" role="3cqZAp">
                <node concept="2OqwBi" id="5SyewCau29L" role="3cqZAk">
                  <node concept="2WthIp" id="5SyewCau29O" role="2Oq$k0" />
                  <node concept="2XshWL" id="5SyewCau29Q" role="2OqNvi">
                    <ref role="2WH_rO" node="5SyewCatWxF" resolve="provideValueObjectScope" />
                    <node concept="Jnkvi" id="4LpUh3T347o" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3T33G3" resolve="valueObject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3T33G3" role="JncvA">
              <property role="TrG5h" value="valueObject" />
              <node concept="2jxLKc" id="4LpUh3T33G4" role="1tU5fm" />
            </node>
          </node>
          <node concept="Jncv_" id="4LpUh3T34fO" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
            <node concept="37vLTw" id="4LpUh3T34iI" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p3Tb2N" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3T34fS" role="Jncv$">
              <node concept="3cpWs6" id="5SyewCau0Wk" role="3cqZAp">
                <node concept="2OqwBi" id="5SyewCau17A" role="3cqZAk">
                  <node concept="2WthIp" id="5SyewCau17D" role="2Oq$k0" />
                  <node concept="2XshWL" id="5SyewCau17F" role="2OqNvi">
                    <ref role="2WH_rO" node="5SyewCatU_a" resolve="provideEntityScope" />
                    <node concept="Jnkvi" id="4LpUh3T34OY" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3T34fU" resolve="entity" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3T34fU" role="JncvA">
              <property role="TrG5h" value="entity" />
              <node concept="2jxLKc" id="4LpUh3T34fV" role="1tU5fm" />
            </node>
          </node>
          <node concept="Jncv_" id="4LpUh3T34X$" role="3cqZAp">
            <ref role="JncvD" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
            <node concept="37vLTw" id="4LpUh3T350r" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p3Tb2N" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3T34XC" role="Jncv$">
              <node concept="3cpWs6" id="5SyewCatZ$c" role="3cqZAp">
                <node concept="2OqwBi" id="5SyewCatZOC" role="3cqZAk">
                  <node concept="2WthIp" id="5SyewCatZOF" role="2Oq$k0" />
                  <node concept="2XshWL" id="5SyewCatZOH" role="2OqNvi">
                    <ref role="2WH_rO" node="5SyewCatW3o" resolve="provideAggregateRootScope" />
                    <node concept="Jnkvi" id="4LpUh3T35iF" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3T34XE" resolve="aggregateRoot" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3T34XE" role="JncvA">
              <property role="TrG5h" value="aggregateRoot" />
              <node concept="2jxLKc" id="4LpUh3T34XF" role="1tU5fm" />
            </node>
          </node>
          <node concept="Jncv_" id="4LpUh3T35x6" role="3cqZAp">
            <ref role="JncvD" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
            <node concept="37vLTw" id="4LpUh3T35zU" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p3Tb2N" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3T35xa" role="Jncv$">
              <node concept="3cpWs6" id="5SyewCau5w0" role="3cqZAp">
                <node concept="2OqwBi" id="5SyewCau5N3" role="3cqZAk">
                  <node concept="2WthIp" id="5SyewCau5zQ" role="2Oq$k0" />
                  <node concept="2XshWL" id="5SyewCau5RR" role="2OqNvi">
                    <ref role="2WH_rO" node="5SyewCau2jI" resolve="provideAggregateRootRepositoryScope" />
                    <node concept="Jnkvi" id="4LpUh3T35Pq" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3T35xc" resolve="repository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3T35xc" role="JncvA">
              <property role="TrG5h" value="repository" />
              <node concept="2jxLKc" id="4LpUh3T35xd" role="1tU5fm" />
            </node>
          </node>
          <node concept="Jncv_" id="4LpUh3T35X$" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            <node concept="37vLTw" id="4LpUh3T360l" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p3Tb2N" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3T35XC" role="Jncv$">
              <node concept="3cpWs6" id="4LpUh3T37zf" role="3cqZAp">
                <node concept="2OqwBi" id="4LpUh3T37zh" role="3cqZAk">
                  <node concept="2WthIp" id="4LpUh3T37zi" role="2Oq$k0" />
                  <node concept="2XshWL" id="4LpUh3T37zj" role="2OqNvi">
                    <ref role="2WH_rO" node="4LpUh3T365f" resolve="provideDtoScope" />
                    <node concept="Jnkvi" id="4LpUh3T37Kq" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3T35XE" resolve="dto" />
                    </node>
                    <node concept="2rP1CM" id="4LpUh3T$cFn" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3T35XE" role="JncvA">
              <property role="TrG5h" value="dto" />
              <node concept="2jxLKc" id="4LpUh3T35XF" role="1tU5fm" />
            </node>
          </node>
          <node concept="Jncv_" id="3NXs7yo8eQv" role="3cqZAp">
            <ref role="JncvD" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
            <node concept="37vLTw" id="3NXs7yo8eTD" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p3Tb2N" resolve="component" />
            </node>
            <node concept="3clFbS" id="3NXs7yo8eQz" role="Jncv$">
              <node concept="3cpWs6" id="3NXs7yo8f5k" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7yo8foy" role="3cqZAk">
                  <node concept="2WthIp" id="3NXs7yo8f8V" role="2Oq$k0" />
                  <node concept="2XshWL" id="3NXs7yo8ftf" role="2OqNvi">
                    <ref role="2WH_rO" node="3NXs7yo7wXH" resolve="provideDtoFlatteningRuleScope" />
                    <node concept="Jnkvi" id="3NXs7yo8fvt" role="2XxRq1">
                      <ref role="1M0zk5" node="3NXs7yo8eQ_" resolve="flatteningRuleContainer" />
                    </node>
                    <node concept="2rP1CM" id="3NXs7yo8fzH" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3NXs7yo8eQ_" role="JncvA">
              <property role="TrG5h" value="flatteningRuleContainer" />
              <node concept="2jxLKc" id="3NXs7yo8eQA" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="3NXs7yo8eLR" role="3cqZAp" />
          <node concept="3cpWs6" id="7fqk8p43Cwh" role="3cqZAp">
            <node concept="2ShNRf" id="7fqk8p43D0n" role="3cqZAk">
              <node concept="1pGfFk" id="7fqk8p43DfW" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7fqk8p3QkJY">
    <property role="3GE5qa" value="boundedContext" />
    <ref role="1M2myG" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="7fqk8p3W565">
    <property role="3GE5qa" value="entity" />
    <ref role="1M2myG" to="3nll:7fqk8p3VKtM" resolve="IEntityComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="7fqk8p3WI5q">
    <property role="3GE5qa" value="entity" />
    <ref role="1M2myG" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
    <node concept="2XrIbr" id="5SyewC9XpHp" role="32lrUH">
      <property role="TrG5h" value="provideEntityScope" />
      <node concept="37vLTG" id="5SyewC9Xrne" role="3clF46">
        <property role="TrG5h" value="entity" />
        <node concept="3Tqbb2" id="5SyewC9XroP" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
        </node>
      </node>
      <node concept="37vLTG" id="5SyewC9Xrq0" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="5SyewC9Xrs4" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5SyewC9Xrff" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="5SyewC9XpHr" role="3clF47">
        <node concept="3clFbJ" id="4LpUh3U5_CB" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="4LpUh3U5_CC" role="3clFbx">
            <node concept="3cpWs6" id="4LpUh3U5_CD" role="3cqZAp">
              <node concept="2ShNRf" id="4LpUh3U5_CE" role="3cqZAk">
                <node concept="1pGfFk" id="4LpUh3U5_CF" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4LpUh3U5_CG" role="3clFbw">
            <node concept="3clFbC" id="4LpUh3U5_CH" role="3uHU7B">
              <node concept="37vLTw" id="4LpUh3U5_CI" role="3uHU7B">
                <ref role="3cqZAo" node="5SyewC9Xrne" resolve="entity" />
              </node>
              <node concept="37vLTw" id="4LpUh3U5_CJ" role="3uHU7w">
                <ref role="3cqZAo" node="5SyewC9Xrq0" resolve="contextNode" />
              </node>
            </node>
            <node concept="17R0WA" id="3NXs7yncN17" role="3uHU7w">
              <node concept="2OqwBi" id="4LpUh3U5_CL" role="3uHU7B">
                <node concept="37vLTw" id="4LpUh3U5_CM" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SyewC9Xrq0" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="4LpUh3U5Ags" role="2OqNvi" />
              </node>
              <node concept="359W_D" id="4LpUh3U5AQK" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
                <ref role="359W_F" to="3nll:7fqk8p3V868" resolve="idType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4LpUh3U5_dM" role="3cqZAp" />
        <node concept="3clFbF" id="4LpUh3T$fhH" role="3cqZAp">
          <node concept="2YIFZM" id="5SyewC9XziY" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="5SyewC9XziZ" role="37wK5m">
              <node concept="2OqwBi" id="5SyewC9Xzj0" role="2Oq$k0">
                <node concept="2OqwBi" id="5SyewC9X$6S" role="2Oq$k0">
                  <node concept="37vLTw" id="5SyewC9Xzj1" role="2Oq$k0">
                    <ref role="3cqZAo" node="5SyewC9Xrne" resolve="entity" />
                  </node>
                  <node concept="2qgKlT" id="5SyewC9X$zo" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
                <node concept="2qgKlT" id="5SyewC9Xzj2" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:7fqk8p41AIx" resolve="entities" />
                </node>
              </node>
              <node concept="3zZkjj" id="5SyewC9Xzj3" role="2OqNvi">
                <node concept="1bVj0M" id="5SyewC9Xzj4" role="23t8la">
                  <node concept="3clFbS" id="5SyewC9Xzj5" role="1bW5cS">
                    <node concept="3clFbF" id="5SyewC9Xzj6" role="3cqZAp">
                      <node concept="3y3z36" id="5SyewC9Xzj7" role="3clFbG">
                        <node concept="37vLTw" id="5SyewC9Xzjb" role="3uHU7B">
                          <ref role="3cqZAo" node="5SyewC9Xzjc" resolve="it" />
                        </node>
                        <node concept="37vLTw" id="5SyewC9X_k7" role="3uHU7w">
                          <ref role="3cqZAo" node="5SyewC9Xrne" resolve="entity" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5SyewC9Xzjc" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5SyewC9Xzjd" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SyewC9XpHs" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5SyewC9Xrh$" role="32lrUH">
      <property role="TrG5h" value="provideAggregateRootScope" />
      <node concept="37vLTG" id="5SyewC9Xrtf" role="3clF46">
        <property role="TrG5h" value="aggregateRoot" />
        <node concept="3Tqbb2" id="5SyewC9Xrvh" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
        </node>
      </node>
      <node concept="37vLTG" id="5SyewC9Xrws" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="5SyewC9Xryw" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5SyewC9XrkT" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="5SyewC9XrhA" role="3clF47">
        <node concept="3clFbJ" id="5SyewC9X_ZZ" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="5SyewC9XA01" role="3clFbx">
            <node concept="3cpWs6" id="5SyewC9XBMw" role="3cqZAp">
              <node concept="2ShNRf" id="5SyewC9XBN5" role="3cqZAk">
                <node concept="1pGfFk" id="5SyewC9XBSG" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5SyewC9XACL" role="3clFbw">
            <node concept="17R0WA" id="3NXs7ynfZtQ" role="3uHU7w">
              <node concept="2OqwBi" id="5SyewC9XAHw" role="3uHU7B">
                <node concept="37vLTw" id="5SyewC9XADT" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SyewC9Xrws" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="4LpUh3U7U2F" role="2OqNvi" />
              </node>
              <node concept="359W_D" id="4LpUh3U7UXy" role="3uHU7w">
                <ref role="359W_E" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                <ref role="359W_F" to="3nll:4NUTY$DwDN6" resolve="idType" />
              </node>
            </node>
            <node concept="3clFbC" id="5SyewC9XAdq" role="3uHU7B">
              <node concept="37vLTw" id="5SyewC9XA0K" role="3uHU7B">
                <ref role="3cqZAo" node="5SyewC9Xrtf" resolve="aggregateRoot" />
              </node>
              <node concept="37vLTw" id="5SyewC9XAkN" role="3uHU7w">
                <ref role="3cqZAo" node="5SyewC9Xrws" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3NXs7ynfZYY" role="3cqZAp" />
        <node concept="3clFbF" id="4LpUh3T$fpQ" role="3cqZAp">
          <node concept="2YIFZM" id="5SyewC9XBUY" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="5SyewC9XBUZ" role="37wK5m">
              <node concept="2OqwBi" id="5SyewC9XCsF" role="2Oq$k0">
                <node concept="37vLTw" id="5SyewC9XBV0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SyewC9Xrtf" resolve="aggregateRoot" />
                </node>
                <node concept="2qgKlT" id="5SyewC9XCHy" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="5SyewC9XBV1" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p41AIx" resolve="entities" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SyewC9XrhB" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="4LpUh3T$fvm" role="32lrUH">
      <property role="TrG5h" value="provideDtoScope" />
      <node concept="37vLTG" id="4LpUh3T$fBB" role="3clF46">
        <property role="TrG5h" value="dto" />
        <node concept="3Tqbb2" id="4LpUh3T$fDJ" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
        </node>
      </node>
      <node concept="37vLTG" id="4LpUh3T$fEC" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="4LpUh3T$fGM" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4LpUh3T$f_y" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="4LpUh3T$fvo" role="3clF47">
        <node concept="3clFbJ" id="4LpUh3T$k3x" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="4LpUh3T$k3y" role="3clFbx">
            <node concept="3cpWs8" id="3NXs7yozU4R" role="3cqZAp">
              <node concept="3cpWsn" id="3NXs7yozU4S" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <node concept="3Tqbb2" id="3NXs7yozU4T" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                </node>
                <node concept="2OqwBi" id="3NXs7yozU4U" role="33vP2m">
                  <node concept="37vLTw" id="3NXs7yozU4V" role="2Oq$k0">
                    <ref role="3cqZAo" node="4LpUh3T$fBB" resolve="dto" />
                  </node>
                  <node concept="2qgKlT" id="3NXs7yozU4W" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3NXs7youGzg" role="3cqZAp">
              <node concept="2YIFZM" id="3NXs7youGzh" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="3NXs7youGzi" role="37wK5m">
                  <node concept="2qgKlT" id="3NXs7youGzm" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yo7EMe" resolve="findUnusedDtoDerivablesIncluding" />
                    <node concept="2OqwBi" id="3NXs7yozVV2" role="37wK5m">
                      <node concept="2OqwBi" id="3NXs7youGzn" role="2Oq$k0">
                        <node concept="37vLTw" id="3NXs7youGzo" role="2Oq$k0">
                          <ref role="3cqZAo" node="4LpUh3T$fBB" resolve="dto" />
                        </node>
                        <node concept="3TrEf2" id="3NXs7youGzp" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="3NXs7yozWcl" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:4LpUh3T0tIy" resolve="getDtoDerivable" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3NXs7yozVe8" role="2Oq$k0">
                    <ref role="3cqZAo" node="3NXs7yozU4S" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4LpUh3T$k4f" role="3clFbw">
            <node concept="3clFbC" id="4LpUh3T$k4k" role="3uHU7B">
              <node concept="37vLTw" id="4LpUh3T$k4l" role="3uHU7B">
                <ref role="3cqZAo" node="4LpUh3T$fEC" resolve="contextNode" />
              </node>
              <node concept="37vLTw" id="4LpUh3T$k4m" role="3uHU7w">
                <ref role="3cqZAo" node="4LpUh3T$fBB" resolve="dto" />
              </node>
            </node>
            <node concept="17R0WA" id="4LpUh3U5yjh" role="3uHU7w">
              <node concept="359W_D" id="4LpUh3U5yji" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
              </node>
              <node concept="2OqwBi" id="4LpUh3U5yjj" role="3uHU7B">
                <node concept="37vLTw" id="4LpUh3U5yjk" role="2Oq$k0">
                  <ref role="3cqZAo" node="4LpUh3T$fEC" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="4LpUh3U5yjl" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3NXs7yo$6X1" role="3cqZAp" />
        <node concept="3clFbF" id="4LpUh3T$k4n" role="3cqZAp">
          <node concept="2ShNRf" id="4LpUh3T$k4o" role="3clFbG">
            <node concept="1pGfFk" id="4LpUh3T$k4p" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4LpUh3T$fvp" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3NXs7yo8kqM" role="32lrUH">
      <property role="TrG5h" value="provideDtoFlatteningRuleScope" />
      <node concept="37vLTG" id="3NXs7yo8kqN" role="3clF46">
        <property role="TrG5h" value="flatteningRuleContainer" />
        <node concept="3Tqbb2" id="3NXs7yo8kqO" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="3NXs7yo8kqP" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="3NXs7yo8kqQ" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3NXs7yo8kqR" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="3NXs7yo8kqS" role="3clF47">
        <node concept="3cpWs8" id="3L7_qKKSDEX" role="3cqZAp">
          <node concept="3cpWsn" id="3L7_qKKSDEY" role="3cpWs9">
            <property role="TrG5h" value="flatteningRule" />
            <node concept="3Tqbb2" id="3L7_qKKSDEZ" role="1tU5fm">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
            </node>
            <node concept="2OqwBi" id="3L7_qKKSDF0" role="33vP2m">
              <node concept="37vLTw" id="3L7_qKKSDF1" role="2Oq$k0">
                <ref role="3cqZAo" node="3NXs7yo8kqP" resolve="contextNode" />
              </node>
              <node concept="2Xjw5R" id="3L7_qKKSDF2" role="2OqNvi">
                <node concept="1xMEDy" id="3L7_qKKSDF3" role="1xVPHs">
                  <node concept="chp4Y" id="3L7_qKKSDF4" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
                <node concept="1xIGOp" id="3L7_qKKSDF5" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3L7_qKKSDmS" role="3cqZAp" />
        <node concept="3clFbJ" id="3NXs7yo8kqT" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="3NXs7yo8kqU" role="3clFbx">
            <node concept="3cpWs8" id="3NXs7yozXaB" role="3cqZAp">
              <node concept="3cpWsn" id="3NXs7yozXaC" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <node concept="3Tqbb2" id="3NXs7yozX83" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                </node>
                <node concept="2OqwBi" id="3NXs7yozXaD" role="33vP2m">
                  <node concept="37vLTw" id="3NXs7yozXaE" role="2Oq$k0">
                    <ref role="3cqZAo" node="3NXs7yo8kqN" resolve="flatteningRuleContainer" />
                  </node>
                  <node concept="2qgKlT" id="3NXs7yozXaF" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3NXs7yo8kqV" role="3cqZAp">
              <node concept="2YIFZM" id="3NXs7yo8kqW" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="3NXs7yo8kqX" role="37wK5m">
                  <node concept="2qgKlT" id="3NXs7yo8kr1" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yo7EMe" resolve="findUnusedDtoDerivablesIncluding" />
                    <node concept="2OqwBi" id="3NXs7yozYyV" role="37wK5m">
                      <node concept="37vLTw" id="3NXs7yo8kr3" role="2Oq$k0">
                        <ref role="3cqZAo" node="3L7_qKKSDEY" resolve="flatteningRule" />
                      </node>
                      <node concept="2qgKlT" id="3NXs7yozYLs" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3NXs7yozXPo" role="2Oq$k0">
                    <ref role="3cqZAo" node="3NXs7yozXaC" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3NXs7yo8kr6" role="3clFbw">
            <node concept="17R0WA" id="3NXs7yo8kr7" role="3uHU7w">
              <node concept="359W_D" id="3NXs7yo8kr8" role="3uHU7w">
                <ref role="359W_E" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
              </node>
              <node concept="2OqwBi" id="3NXs7yo8kr9" role="3uHU7B">
                <node concept="37vLTw" id="3NXs7yo8kra" role="2Oq$k0">
                  <ref role="3cqZAo" node="3NXs7yo8kqP" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="3NXs7yo8krb" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="3NXs7yo8krc" role="3uHU7B">
              <node concept="37vLTw" id="3NXs7yo8krd" role="3uHU7B">
                <ref role="3cqZAo" node="3NXs7yo8kqP" resolve="contextNode" />
              </node>
              <node concept="37vLTw" id="3NXs7yo8kre" role="3uHU7w">
                <ref role="3cqZAo" node="3L7_qKKSDEY" resolve="flatteningRule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3NXs7yo8krf" role="3cqZAp" />
        <node concept="3clFbF" id="3NXs7yo8krg" role="3cqZAp">
          <node concept="2ShNRf" id="3NXs7yo8krh" role="3clFbG">
            <node concept="1pGfFk" id="3NXs7yo8kri" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3NXs7yo8krj" role="1B3o_S" />
    </node>
    <node concept="3EP7_v" id="7fqk8p3WI5r" role="1MtirG">
      <node concept="3dgokm" id="7fqk8p3WI5v" role="3EP$qY">
        <node concept="3clFbS" id="7fqk8p3WI5x" role="2VODD2">
          <node concept="3cpWs8" id="7fqk8p41_yC" role="3cqZAp">
            <node concept="3cpWsn" id="7fqk8p41_yD" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3Tqbb2" id="7fqk8p41_yE" role="1tU5fm">
                <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
              </node>
              <node concept="2OqwBi" id="7fqk8p41_yF" role="33vP2m">
                <node concept="2rP1CM" id="7fqk8p41_yG" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7fqk8p41_yH" role="2OqNvi">
                  <node concept="1xMEDy" id="7fqk8p41_yI" role="1xVPHs">
                    <node concept="chp4Y" id="7fqk8p41_yJ" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7fqk8p41_yK" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5SyewCaMaTq" role="3cqZAp" />
          <node concept="Jncv_" id="4LpUh3T$dK$" role="3cqZAp">
            <ref role="JncvD" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
            <node concept="37vLTw" id="4LpUh3T$dMH" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p41_yD" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3T$dKC" role="Jncv$">
              <node concept="3cpWs6" id="7fqk8p41_W6" role="3cqZAp">
                <node concept="2OqwBi" id="5SyewC9XEFR" role="3cqZAk">
                  <node concept="2WthIp" id="5SyewC9XEFU" role="2Oq$k0" />
                  <node concept="2XshWL" id="5SyewC9XEFW" role="2OqNvi">
                    <ref role="2WH_rO" node="5SyewC9Xrh$" resolve="provideAggregateRootScope" />
                    <node concept="Jnkvi" id="4LpUh3T$egX" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3T$dKE" resolve="aggregateRoot" />
                    </node>
                    <node concept="2rP1CM" id="4LpUh3T$eet" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3T$dKE" role="JncvA">
              <property role="TrG5h" value="aggregateRoot" />
              <node concept="2jxLKc" id="4LpUh3T$dKF" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="4LpUh3T$dH0" role="3cqZAp" />
          <node concept="Jncv_" id="4LpUh3T$elJ" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
            <node concept="37vLTw" id="4LpUh3T$enO" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p41_yD" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3T$elN" role="Jncv$">
              <node concept="3cpWs6" id="5SyewC9XFGZ" role="3cqZAp">
                <node concept="2OqwBi" id="5SyewC9XG30" role="3cqZAk">
                  <node concept="2WthIp" id="5SyewC9XFK1" role="2Oq$k0" />
                  <node concept="2XshWL" id="5SyewC9XGaT" role="2OqNvi">
                    <ref role="2WH_rO" node="5SyewC9XpHp" resolve="provideEntityScope" />
                    <node concept="Jnkvi" id="4LpUh3T$eDE" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3T$elP" resolve="entity" />
                    </node>
                    <node concept="2rP1CM" id="4LpUh3T$eK1" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3T$elP" role="JncvA">
              <property role="TrG5h" value="entity" />
              <node concept="2jxLKc" id="4LpUh3T$elQ" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="4LpUh3T$fHX" role="3cqZAp" />
          <node concept="Jncv_" id="4LpUh3T$fU4" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            <node concept="37vLTw" id="4LpUh3T$fW7" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p41_yD" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3T$fU8" role="Jncv$">
              <node concept="3cpWs6" id="4LpUh3T$g0C" role="3cqZAp">
                <node concept="2OqwBi" id="4LpUh3T$g33" role="3cqZAk">
                  <node concept="2WthIp" id="4LpUh3T$g36" role="2Oq$k0" />
                  <node concept="2XshWL" id="4LpUh3T$g38" role="2OqNvi">
                    <ref role="2WH_rO" node="4LpUh3T$fvm" resolve="provideDtoScope" />
                    <node concept="Jnkvi" id="4LpUh3T$g4J" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3T$fUa" resolve="dto" />
                    </node>
                    <node concept="2rP1CM" id="4LpUh3T$g7L" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3T$fUa" role="JncvA">
              <property role="TrG5h" value="dto" />
              <node concept="2jxLKc" id="4LpUh3T$fUb" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="3NXs7yo8jQJ" role="3cqZAp" />
          <node concept="Jncv_" id="3NXs7yo8jWq" role="3cqZAp">
            <ref role="JncvD" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
            <node concept="37vLTw" id="3NXs7yo8jWr" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p41_yD" resolve="component" />
            </node>
            <node concept="3clFbS" id="3NXs7yo8jWs" role="Jncv$">
              <node concept="3cpWs6" id="3NXs7yo8jWt" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7yo8jWu" role="3cqZAk">
                  <node concept="2WthIp" id="3NXs7yo8jWv" role="2Oq$k0" />
                  <node concept="2XshWL" id="3NXs7yo8jWw" role="2OqNvi">
                    <ref role="2WH_rO" node="3NXs7yo8kqM" resolve="provideDtoFlatteningRuleScope" />
                    <node concept="Jnkvi" id="3NXs7yo8jWx" role="2XxRq1">
                      <ref role="1M0zk5" node="3NXs7yo8jWz" resolve="flatteningRuleCcontainer" />
                    </node>
                    <node concept="2rP1CM" id="3NXs7yo8jWy" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3NXs7yo8jWz" role="JncvA">
              <property role="TrG5h" value="flatteningRuleCcontainer" />
              <node concept="2jxLKc" id="3NXs7yo8jW$" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="7fqk8p42KHe" role="3cqZAp" />
          <node concept="3clFbF" id="4LpUh3URB3f" role="3cqZAp">
            <node concept="2ShNRf" id="7fqk8p442FI" role="3clFbG">
              <node concept="1pGfFk" id="7fqk8p442SW" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7fqk8p3WIpo">
    <property role="3GE5qa" value="entity" />
    <ref role="1M2myG" to="3nll:4Wa3rAG5J$0" resolve="EntityReference" />
    <node concept="3EP7_v" id="7fqk8p3WIpp" role="1MtirG">
      <node concept="1dDu$B" id="7fqk8p3WIpt" role="3EP$qY">
        <ref role="1dDu$A" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7fqk8p44MPj">
    <property role="3GE5qa" value="aggregates" />
    <ref role="1M2myG" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
    <node concept="3EP7_v" id="2QCVoC6J1Wn" role="1MtirG">
      <node concept="1dDu$B" id="2QCVoC6J1Wr" role="3EP$qY">
        <ref role="1dDu$A" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7fqk8p45BY6">
    <property role="3GE5qa" value="eventContainer" />
    <ref role="1M2myG" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
    <node concept="3EP7_v" id="5SyewCac2g2" role="1MtirG">
      <node concept="1dDu$B" id="5SyewCac2iH" role="3EP$qY">
        <ref role="1dDu$A" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
      </node>
    </node>
    <node concept="EnEH3" id="51Z40VxhFCY" role="1MhHOB">
      <ref role="EomxK" to="3nll:5jZDGTd5UEc" resolve="type" />
      <node concept="1LLf8_" id="51Z40VxhFD0" role="1LXaQT">
        <node concept="3clFbS" id="51Z40VxhFD1" role="2VODD2">
          <node concept="3clFbF" id="51Z40VxhFGA" role="3cqZAp">
            <node concept="2OqwBi" id="51Z40VxhGnq" role="3clFbG">
              <node concept="2OqwBi" id="51Z40VxhFUz" role="2Oq$k0">
                <node concept="EsrRn" id="51Z40VxhFG_" role="2Oq$k0" />
                <node concept="3TrcHB" id="51Z40VxhGdS" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
                </node>
              </node>
              <node concept="tyxLq" id="51Z40VxhGz5" role="2OqNvi">
                <node concept="1Wqviy" id="51Z40VxhGzQ" role="tz02z" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="51Z40VxhG$z" role="3cqZAp" />
          <node concept="3clFbJ" id="51Z40VxhGDm" role="3cqZAp">
            <node concept="3clFbS" id="51Z40VxhGDo" role="3clFbx">
              <node concept="3clFbF" id="51Z40VxhGKB" role="3cqZAp">
                <node concept="2OqwBi" id="51Z40VxhGY$" role="3clFbG">
                  <node concept="EsrRn" id="51Z40VxhGKA" role="2Oq$k0" />
                  <node concept="2qgKlT" id="51Z40VxhHhR" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:d$u27T68WS" resolve="resetAndMergeChildRepositoryReferences" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="51Z40VxhGG0" role="3clFbw">
              <node concept="1Wqviy" id="51Z40VxhGEm" role="2Oq$k0" />
              <node concept="21noJN" id="51Z40VxhGHD" role="2OqNvi">
                <node concept="21nZrQ" id="51Z40VxhGHF" role="21noJM">
                  <ref role="21nZrZ" to="3nll:3VGLvhFnWdB" resolve="EventHandler" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7fqk8p4cFLQ">
    <property role="3GE5qa" value="dto" />
    <ref role="1M2myG" to="3nll:4Wa3rAG5J$6" resolve="DtoReference" />
    <node concept="3EP7_v" id="7fqk8p4cFLR" role="1MtirG">
      <node concept="1dDu$B" id="7fqk8p4cFLV" role="3EP$qY">
        <ref role="1dDu$A" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7fqk8p4cFLY">
    <property role="3GE5qa" value="dto" />
    <ref role="1M2myG" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    <node concept="2XrIbr" id="3DbZR$O3vVS" role="32lrUH">
      <property role="TrG5h" value="provideDtoScope" />
      <node concept="3uibUv" id="3DbZR$O3vZ3" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="3DbZR$O3vVU" role="3clF47">
        <node concept="3clFbF" id="3VGLvhFlvPv" role="3cqZAp">
          <node concept="2YIFZM" id="3DbZR$O3xq0" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="3NXs7yomi2e" role="37wK5m">
              <node concept="2OqwBi" id="3NXs7yomi2f" role="2Oq$k0">
                <node concept="2qgKlT" id="3NXs7yomi2g" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
                </node>
                <node concept="2OqwBi" id="3NXs7yomi2h" role="2Oq$k0">
                  <node concept="37vLTw" id="3NXs7yomi2i" role="2Oq$k0">
                    <ref role="3cqZAo" node="3DbZR$O3wit" resolve="dto" />
                  </node>
                  <node concept="2qgKlT" id="3NXs7yomi2j" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="3NXs7yomi2k" role="2OqNvi">
                <node concept="1bVj0M" id="3NXs7yomi2l" role="23t8la">
                  <node concept="3clFbS" id="3NXs7yomi2m" role="1bW5cS">
                    <node concept="3clFbF" id="3NXs7yomi2n" role="3cqZAp">
                      <node concept="3y3z36" id="3NXs7yomi2o" role="3clFbG">
                        <node concept="37vLTw" id="3NXs7yomi2p" role="3uHU7w">
                          <ref role="3cqZAo" node="3DbZR$O3wit" resolve="dto" />
                        </node>
                        <node concept="37vLTw" id="3NXs7yomi2q" role="3uHU7B">
                          <ref role="3cqZAo" node="3NXs7yomi2r" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3NXs7yomi2r" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3NXs7yomi2s" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3DbZR$O3vVV" role="1B3o_S" />
      <node concept="37vLTG" id="3DbZR$O3wit" role="3clF46">
        <property role="TrG5h" value="dto" />
        <node concept="3Tqbb2" id="3DbZR$O3wis" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
        </node>
      </node>
      <node concept="37vLTG" id="3DbZR$O3wjn" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="3DbZR$O3xnM" role="1tU5fm" />
      </node>
    </node>
    <node concept="2XrIbr" id="3DbZR$O3zKC" role="32lrUH">
      <property role="TrG5h" value="provideQueryContainerScope" />
      <node concept="3uibUv" id="3DbZR$O3zOP" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="3DbZR$O3zKE" role="3clF47">
        <node concept="3SKdUt" id="3VGLvhFr0cC" role="3cqZAp">
          <node concept="1PaTwC" id="3VGLvhFr0cD" role="1aUNEU">
            <node concept="3oM_SD" id="3VGLvhFr0cP" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="3VGLvhFr0sH" role="1PaTwD">
              <property role="3oM_SC" value="Das" />
            </node>
            <node concept="3oM_SD" id="3VGLvhFr0t0" role="1PaTwD">
              <property role="3oM_SC" value="kann" />
            </node>
            <node concept="3oM_SD" id="3VGLvhFr0tk" role="1PaTwD">
              <property role="3oM_SC" value="vllt" />
            </node>
            <node concept="3oM_SD" id="3VGLvhFr0tD" role="1PaTwD">
              <property role="3oM_SC" value="noch" />
            </node>
            <node concept="3oM_SD" id="3VGLvhFr0tJ" role="1PaTwD">
              <property role="3oM_SC" value="entfernt" />
            </node>
            <node concept="3oM_SD" id="3VGLvhFr0tQ" role="1PaTwD">
              <property role="3oM_SC" value="werden" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3VGLvhFlu_q" role="3cqZAp">
          <node concept="2YIFZM" id="3VGLvhFqYtF" role="3clFbG">
            <ref role="37wK5l" to="7ztp:3VGLvhFqcEm" resolve="ofElements" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEMgQj" resolve="ScopeUtils" />
            <node concept="2OqwBi" id="3VGLvhFqYtG" role="37wK5m">
              <node concept="2OqwBi" id="3VGLvhFqYtH" role="2Oq$k0">
                <node concept="37vLTw" id="3VGLvhFqYtI" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DbZR$O3zRs" resolve="queryContainer" />
                </node>
                <node concept="2qgKlT" id="3VGLvhFqYtJ" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="3VGLvhFqYtK" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3DbZR$O3zKF" role="1B3o_S" />
      <node concept="37vLTG" id="3DbZR$O3zRs" role="3clF46">
        <property role="TrG5h" value="queryContainer" />
        <node concept="3Tqbb2" id="3DbZR$O3zRr" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="3DbZR$O3zSU" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="3DbZR$O3zUk" role="1tU5fm" />
      </node>
    </node>
    <node concept="2XrIbr" id="2Bsub$LvGgN" role="32lrUH">
      <property role="TrG5h" value="provideQueryScope" />
      <node concept="37vLTG" id="2Bsub$LvGri" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="3Tqbb2" id="2Bsub$LvGrj" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
        </node>
      </node>
      <node concept="37vLTG" id="2Bsub$LvGrk" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="2Bsub$LvGrl" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2Bsub$LvGpc" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="2Bsub$LvGgP" role="3clF47">
        <node concept="3clFbH" id="5jZDGTgSILf" role="3cqZAp" />
        <node concept="3SKdUt" id="5jZDGTgSJ$m" role="3cqZAp">
          <node concept="1PaTwC" id="5jZDGTgSJ$n" role="1aUNEU">
            <node concept="3oM_SD" id="5jZDGTgSJXt" role="1PaTwD">
              <property role="3oM_SC" value="DTOs" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJXv" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJXy" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJXA" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJXF" role="1PaTwD">
              <property role="3oM_SC" value="allowed" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJXL" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJXS" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJY0" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJY9" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJYj" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJYu" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJYE" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJYR" role="1PaTwD">
              <property role="3oM_SC" value="Parameter" />
            </node>
            <node concept="3oM_SD" id="5jZDGTgSJZ5" role="1PaTwD">
              <property role="3oM_SC" value="types" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jZDGTgSEqV" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="5jZDGTgSEqX" role="3clFbx">
            <node concept="3cpWs6" id="5jZDGTgSHLI" role="3cqZAp">
              <node concept="2ShNRf" id="5jZDGTgSHXG" role="3cqZAk">
                <node concept="1pGfFk" id="5jZDGTgSIoR" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5jZDGTgSGKO" role="3clFbw">
            <node concept="2OqwBi" id="5jZDGTgSF8q" role="2Oq$k0">
              <node concept="37vLTw" id="5jZDGTgSENL" role="2Oq$k0">
                <ref role="3cqZAo" node="2Bsub$LvGrk" resolve="contextNode" />
              </node>
              <node concept="2Xjw5R" id="5jZDGTgSFsk" role="2OqNvi">
                <node concept="1xMEDy" id="5jZDGTgSFsm" role="1xVPHs">
                  <node concept="chp4Y" id="5jZDGTgSFE9" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                  </node>
                </node>
                <node concept="1xIGOp" id="5jZDGTgSGs8" role="1xVPHs" />
              </node>
            </node>
            <node concept="3x8VRR" id="5jZDGTgSHvw" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTgSE0I" role="3cqZAp" />
        <node concept="3clFbJ" id="2Bsub$LxhaU" role="3cqZAp">
          <node concept="3clFbS" id="2Bsub$LxhaW" role="3clFbx">
            <node concept="3clFbJ" id="3VGLvhFpQkZ" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <node concept="3clFbS" id="3VGLvhFpQl1" role="3clFbx">
                <node concept="3cpWs6" id="3VGLvhFq98$" role="3cqZAp">
                  <node concept="2YIFZM" id="3VGLvhFq86X" role="3cqZAk">
                    <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                    <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <node concept="2OqwBi" id="3VGLvhFq86Y" role="37wK5m">
                      <node concept="2qgKlT" id="3VGLvhFq86Z" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
                      </node>
                      <node concept="2OqwBi" id="3VGLvhFq870" role="2Oq$k0">
                        <node concept="37vLTw" id="3VGLvhFq871" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Bsub$LvGri" resolve="query" />
                        </node>
                        <node concept="2qgKlT" id="3VGLvhFq872" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3VGLvhFq7RM" role="3clFbw">
                <node concept="2OqwBi" id="3VGLvhFq7RO" role="3fr31v">
                  <node concept="37vLTw" id="3VGLvhFq7RP" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Bsub$LvGri" resolve="query" />
                  </node>
                  <node concept="2qgKlT" id="3VGLvhFq7RQ" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5jZDGTikSOr" resolve="hasReferences" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3VGLvhFqqdz" role="3cqZAp">
              <node concept="2YIFZM" id="3VGLvhFqq_y" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="omljbwDh1Z" role="37wK5m">
                  <node concept="2OqwBi" id="omljbwDgcz" role="2Oq$k0">
                    <node concept="2OqwBi" id="omljbwDffT" role="2Oq$k0">
                      <node concept="37vLTw" id="omljbwDerz" role="2Oq$k0">
                        <ref role="3cqZAo" node="2Bsub$LvGri" resolve="query" />
                      </node>
                      <node concept="2qgKlT" id="omljbwDfOy" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:omljbwDa_r" resolve="dtoRepositories" />
                      </node>
                    </node>
                    <node concept="13MTOL" id="omljbwDg$R" role="2OqNvi">
                      <ref role="13MTZf" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="omljbwDhpR" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:4Wa3rAG5J$7" resolve="dto" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3VGLvhFqoYS" role="3clFbw">
            <node concept="2OqwBi" id="3VGLvhFqoYU" role="3fr31v">
              <node concept="37vLTw" id="3VGLvhFqoYV" role="2Oq$k0">
                <ref role="3cqZAo" node="2Bsub$LvGri" resolve="query" />
              </node>
              <node concept="2qgKlT" id="3VGLvhFqoYW" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:2Bsub$Lr4Li" resolve="isInsideQueryContainer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3VGLvhFqzaC" role="3cqZAp" />
        <node concept="3cpWs8" id="3VGLvhFqFhC" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhFqFhD" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <node concept="_YKpA" id="5jZDGThG2uB" role="1tU5fm">
              <node concept="3Tqbb2" id="5jZDGThG2uD" role="_ZDj9">
                <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
              </node>
            </node>
            <node concept="2YIFZM" id="5jZDGThG1Jx" role="33vP2m">
              <ref role="37wK5l" to="7ztp:5jZDGTh$T4u" resolve="merge" />
              <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
              <node concept="2OqwBi" id="5jZDGThG1Jz" role="37wK5m">
                <node concept="2OqwBi" id="5jZDGThG1J$" role="2Oq$k0">
                  <node concept="37vLTw" id="5jZDGThG1J_" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Bsub$LvGri" resolve="query" />
                  </node>
                  <node concept="2qgKlT" id="5jZDGThG1JA" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:6gxxZVrXJ64" resolve="getQueryContainer" />
                  </node>
                </node>
                <node concept="2qgKlT" id="omljbwDp2v" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:omljbwDa_r" resolve="dtoRepositories" />
                </node>
              </node>
              <node concept="2OqwBi" id="omljbwDreG" role="37wK5m">
                <node concept="37vLTw" id="5jZDGThG1JF" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Bsub$LvGri" resolve="query" />
                </node>
                <node concept="2qgKlT" id="omljbwDs$d" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:omljbwDa_r" resolve="dtoRepositories" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3VGLvhFqMCq" role="3cqZAp" />
        <node concept="3clFbJ" id="3VGLvhFqNm_" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="3VGLvhFqNmB" role="3clFbx">
            <node concept="3cpWs6" id="3VGLvhFqQFN" role="3cqZAp">
              <node concept="2YIFZM" id="3VGLvhFqRR1" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="3VGLvhFqUsZ" role="37wK5m">
                  <node concept="2OqwBi" id="3VGLvhFqTb1" role="2Oq$k0">
                    <node concept="37vLTw" id="3VGLvhFqS6d" role="2Oq$k0">
                      <ref role="3cqZAo" node="3VGLvhFqFhD" resolve="references" />
                    </node>
                    <node concept="13MTOL" id="3VGLvhFqU2p" role="2OqNvi">
                      <ref role="13MTZf" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="3VGLvhFqUPC" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:4Wa3rAG5J$7" resolve="dto" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3VGLvhFqORY" role="3clFbw">
            <node concept="37vLTw" id="3VGLvhFqNGx" role="2Oq$k0">
              <ref role="3cqZAo" node="3VGLvhFqFhD" resolve="references" />
            </node>
            <node concept="3GX2aA" id="3VGLvhFqPHQ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="3VGLvhFqMD$" role="3cqZAp" />
        <node concept="3clFbF" id="3VGLvhFlv3_" role="3cqZAp">
          <node concept="2YIFZM" id="2Bsub$LvHZZ" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="2Bsub$LvHpq" role="37wK5m">
              <node concept="2qgKlT" id="2Bsub$LvHAu" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
              </node>
              <node concept="2OqwBi" id="3VGLvhFlvbL" role="2Oq$k0">
                <node concept="37vLTw" id="3VGLvhFlvbM" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Bsub$LvGri" resolve="query" />
                </node>
                <node concept="2qgKlT" id="3VGLvhFlvbN" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2Bsub$LvGgQ" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="1WhJCpURUqR" role="32lrUH">
      <property role="TrG5h" value="provideDtoRepositoryScope" />
      <node concept="3uibUv" id="1WhJCpURUBs" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="1WhJCpURUqT" role="3clF47">
        <node concept="3clFbJ" id="1WhJCpURWrF" role="3cqZAp">
          <node concept="3clFbS" id="1WhJCpURWrH" role="3clFbx">
            <node concept="3cpWs8" id="1WhJCpURXze" role="3cqZAp">
              <node concept="3cpWsn" id="1WhJCpURXzf" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <node concept="3Tqbb2" id="1WhJCpURXrz" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                </node>
                <node concept="2OqwBi" id="1WhJCpURXzg" role="33vP2m">
                  <node concept="37vLTw" id="1WhJCpURXzh" role="2Oq$k0">
                    <ref role="3cqZAo" node="1WhJCpURUG1" resolve="repository" />
                  </node>
                  <node concept="2qgKlT" id="1WhJCpURXzi" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1WhJCpUSc9t" role="3cqZAp">
              <node concept="3cpWsn" id="1WhJCpUSc9u" role="3cpWs9">
                <property role="TrG5h" value="referencedDtos" />
                <node concept="A3Dl8" id="1WhJCpUSc6U" role="1tU5fm">
                  <node concept="3Tqbb2" id="1WhJCpUSc6X" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1WhJCpUSc9v" role="33vP2m">
                  <node concept="2OqwBi" id="1WhJCpUSc9w" role="2Oq$k0">
                    <node concept="2OqwBi" id="1WhJCpUSc9x" role="2Oq$k0">
                      <node concept="2OqwBi" id="1WhJCpUSc9y" role="2Oq$k0">
                        <node concept="37vLTw" id="1WhJCpUSc9z" role="2Oq$k0">
                          <ref role="3cqZAo" node="1WhJCpURXzf" resolve="boundedContext" />
                        </node>
                        <node concept="2qgKlT" id="1WhJCpUSc9$" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:1WhJCpUS1If" resolve="dtoRepositories" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="1WhJCpUSc9_" role="2OqNvi">
                        <node concept="1bVj0M" id="1WhJCpUSc9A" role="23t8la">
                          <node concept="3clFbS" id="1WhJCpUSc9B" role="1bW5cS">
                            <node concept="3clFbF" id="1WhJCpUSc9C" role="3cqZAp">
                              <node concept="3y3z36" id="1WhJCpUSc9D" role="3clFbG">
                                <node concept="37vLTw" id="1WhJCpUSc9E" role="3uHU7w">
                                  <ref role="3cqZAo" node="1WhJCpURUG1" resolve="repository" />
                                </node>
                                <node concept="37vLTw" id="1WhJCpUSc9F" role="3uHU7B">
                                  <ref role="3cqZAo" node="1WhJCpUSc9G" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="1WhJCpUSc9G" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1WhJCpUSc9H" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="13MTOL" id="1WhJCpUSc9I" role="2OqNvi">
                      <ref role="13MTZf" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="1WhJCpUSc9J" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:4Wa3rAG5J$7" resolve="dto" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1WhJCpUScUD" role="3cqZAp">
              <node concept="3cpWsn" id="1WhJCpUScUE" role="3cpWs9">
                <property role="TrG5h" value="nodes" />
                <node concept="A3Dl8" id="1WhJCpUScUF" role="1tU5fm">
                  <node concept="3Tqbb2" id="1WhJCpUScUG" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1WhJCpUScUH" role="33vP2m">
                  <node concept="2OqwBi" id="1WhJCpUScUI" role="2Oq$k0">
                    <node concept="37vLTw" id="1WhJCpUScUJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="1WhJCpURXzf" resolve="boundedContext" />
                    </node>
                    <node concept="2qgKlT" id="1WhJCpUScUK" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="1WhJCpUScUL" role="2OqNvi">
                    <node concept="1bVj0M" id="1WhJCpUScUM" role="23t8la">
                      <node concept="3clFbS" id="1WhJCpUScUN" role="1bW5cS">
                        <node concept="3clFbF" id="1WhJCpUScUO" role="3cqZAp">
                          <node concept="3fqX7Q" id="1WhJCpUScUP" role="3clFbG">
                            <node concept="2OqwBi" id="1WhJCpUScUQ" role="3fr31v">
                              <node concept="37vLTw" id="1WhJCpUScUR" role="2Oq$k0">
                                <ref role="3cqZAo" node="1WhJCpUSc9u" resolve="referencedDtos" />
                              </node>
                              <node concept="3JPx81" id="1WhJCpUScUS" role="2OqNvi">
                                <node concept="37vLTw" id="1WhJCpUScUT" role="25WWJ7">
                                  <ref role="3cqZAo" node="1WhJCpUScUU" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="1WhJCpUScUU" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="1WhJCpUScUV" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1WhJCpUSde7" role="3cqZAp">
              <node concept="2YIFZM" id="1WhJCpUSde8" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="37vLTw" id="1WhJCpUSde9" role="37wK5m">
                  <ref role="3cqZAo" node="1WhJCpUScUE" resolve="nodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1WhJCpURWF1" role="3clFbw">
            <node concept="37vLTw" id="1WhJCpURWO0" role="3uHU7w">
              <ref role="3cqZAo" node="1WhJCpURUHL" resolve="contextNode" />
            </node>
            <node concept="37vLTw" id="1WhJCpURWtZ" role="3uHU7B">
              <ref role="3cqZAo" node="1WhJCpURUG1" resolve="repository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3VGLvhFt6d0" role="3cqZAp" />
        <node concept="3clFbF" id="3VGLvhFltvb" role="3cqZAp">
          <node concept="2YIFZM" id="3VGLvhFltG7" role="3clFbG">
            <ref role="37wK5l" to="7ztp:3VGLvhEMgV6" resolve="ofElements" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEMgQj" resolve="ScopeUtils" />
            <node concept="2OqwBi" id="1WhJCpURZx6" role="37wK5m">
              <node concept="2OqwBi" id="1WhJCpURYv0" role="2Oq$k0">
                <node concept="37vLTw" id="1WhJCpURYv1" role="2Oq$k0">
                  <ref role="3cqZAo" node="1WhJCpURUG1" resolve="repository" />
                </node>
                <node concept="3TrEf2" id="1WhJCpURZa$" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                </node>
              </node>
              <node concept="3TrEf2" id="1WhJCpURZN2" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5J$7" resolve="dto" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1WhJCpURUqU" role="1B3o_S" />
      <node concept="37vLTG" id="1WhJCpURUG1" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3Tqbb2" id="1WhJCpURUG0" role="1tU5fm">
          <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="1WhJCpURUHL" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="1WhJCpURUJA" role="1tU5fm" />
      </node>
    </node>
    <node concept="3EP7_v" id="7fqk8p4cFLZ" role="1MtirG">
      <node concept="3dgokm" id="7fqk8p4cFM3" role="3EP$qY">
        <node concept="3clFbS" id="7fqk8p4cFM5" role="2VODD2">
          <node concept="3cpWs8" id="7fqk8p4cGCC" role="3cqZAp">
            <node concept="3cpWsn" id="7fqk8p4cGCF" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3Tqbb2" id="7fqk8p4cGCA" role="1tU5fm">
                <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
              </node>
              <node concept="2OqwBi" id="7fqk8p4cGIh" role="33vP2m">
                <node concept="2rP1CM" id="7fqk8p4cGG2" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7fqk8p4cGKU" role="2OqNvi">
                  <node concept="1xMEDy" id="7fqk8p4cGKW" role="1xVPHs">
                    <node concept="chp4Y" id="7fqk8p4cGNA" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7fqk8p4cGPF" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7fqk8p4cG_C" role="3cqZAp" />
          <node concept="Jncv_" id="3VGLvhF$X__" role="3cqZAp">
            <ref role="JncvD" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
            <node concept="37vLTw" id="3VGLvhF$XCC" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p4cGCF" resolve="component" />
            </node>
            <node concept="3clFbS" id="3VGLvhF$X_D" role="Jncv$">
              <node concept="3cpWs6" id="3VGLvhF$XKa" role="3cqZAp">
                <node concept="2OqwBi" id="3VGLvhF$XKb" role="3cqZAk">
                  <node concept="2WthIp" id="3VGLvhF$XKc" role="2Oq$k0" />
                  <node concept="2XshWL" id="3VGLvhF$XKd" role="2OqNvi">
                    <ref role="2WH_rO" node="1WhJCpURUqR" resolve="provideDtoRepositoryScope" />
                    <node concept="Jnkvi" id="3VGLvhF$Y3n" role="2XxRq1">
                      <ref role="1M0zk5" node="3VGLvhF$X_F" resolve="repository" />
                    </node>
                    <node concept="2rP1CM" id="3VGLvhF$XKh" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3VGLvhF$X_F" role="JncvA">
              <property role="TrG5h" value="repository" />
              <node concept="2jxLKc" id="3VGLvhF$X_G" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="3VGLvhF$Xxm" role="3cqZAp" />
          <node concept="Jncv_" id="3VGLvhF$Yo6" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            <node concept="37vLTw" id="3VGLvhF$Yu$" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p4cGCF" resolve="component" />
            </node>
            <node concept="3clFbS" id="3VGLvhF$Yoa" role="Jncv$">
              <node concept="3cpWs6" id="3VGLvhF$YFx" role="3cqZAp">
                <node concept="2OqwBi" id="3VGLvhF$YFy" role="3cqZAk">
                  <node concept="2WthIp" id="3VGLvhF$YFz" role="2Oq$k0" />
                  <node concept="2XshWL" id="3VGLvhF$YF$" role="2OqNvi">
                    <ref role="2WH_rO" node="3DbZR$O3vVS" resolve="provideDtoScope" />
                    <node concept="Jnkvi" id="3VGLvhF$YVu" role="2XxRq1">
                      <ref role="1M0zk5" node="3VGLvhF$Yoc" resolve="dto" />
                    </node>
                    <node concept="2rP1CM" id="3VGLvhF$YFC" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3VGLvhF$Yoc" role="JncvA">
              <property role="TrG5h" value="dto" />
              <node concept="2jxLKc" id="3VGLvhF$Yod" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="1WhJCpURULt" role="3cqZAp" />
          <node concept="Jncv_" id="3VGLvhF$Z5E" role="3cqZAp">
            <ref role="JncvD" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
            <node concept="37vLTw" id="3VGLvhF$Z8A" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p4cGCF" resolve="component" />
            </node>
            <node concept="3clFbS" id="3VGLvhF$Z5I" role="Jncv$">
              <node concept="3cpWs6" id="3VGLvhF$Zej" role="3cqZAp">
                <node concept="2OqwBi" id="3VGLvhF$Zek" role="3cqZAk">
                  <node concept="2WthIp" id="3VGLvhF$Zel" role="2Oq$k0" />
                  <node concept="2XshWL" id="3VGLvhF$Zem" role="2OqNvi">
                    <ref role="2WH_rO" node="3DbZR$O3zKC" resolve="provideQueryContainerScope" />
                    <node concept="Jnkvi" id="3VGLvhF$Zrl" role="2XxRq1">
                      <ref role="1M0zk5" node="3VGLvhF$Z5K" resolve="container" />
                    </node>
                    <node concept="2rP1CM" id="3VGLvhF$Zeq" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3VGLvhF$Z5K" role="JncvA">
              <property role="TrG5h" value="container" />
              <node concept="2jxLKc" id="3VGLvhF$Z5L" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="3DbZR$O3zdL" role="3cqZAp" />
          <node concept="Jncv_" id="3VGLvhF$ZGI" role="3cqZAp">
            <ref role="JncvD" to="3nll:7fqk8p43yh4" resolve="Query" />
            <node concept="37vLTw" id="3VGLvhF$ZJB" role="JncvB">
              <ref role="3cqZAo" node="7fqk8p4cGCF" resolve="component" />
            </node>
            <node concept="3clFbS" id="3VGLvhF$ZGM" role="Jncv$">
              <node concept="3cpWs6" id="3VGLvhF$ZOD" role="3cqZAp">
                <node concept="2OqwBi" id="3VGLvhF$ZOE" role="3cqZAk">
                  <node concept="2WthIp" id="3VGLvhF$ZOF" role="2Oq$k0" />
                  <node concept="2XshWL" id="3VGLvhF$ZOG" role="2OqNvi">
                    <ref role="2WH_rO" node="2Bsub$LvGgN" resolve="provideQueryScope" />
                    <node concept="Jnkvi" id="3VGLvhF_044" role="2XxRq1">
                      <ref role="1M0zk5" node="3VGLvhF$ZGO" resolve="query" />
                    </node>
                    <node concept="2rP1CM" id="3VGLvhF$ZOK" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3VGLvhF$ZGO" role="JncvA">
              <property role="TrG5h" value="query" />
              <node concept="2jxLKc" id="3VGLvhF$ZGP" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="2Bsub$LvF9s" role="3cqZAp" />
          <node concept="3clFbF" id="3VGLvhFlvJb" role="3cqZAp">
            <node concept="2ShNRf" id="7fqk8p4cFR4" role="3clFbG">
              <node concept="1pGfFk" id="7fqk8p4cFVn" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="awtshkttTq">
    <property role="3GE5qa" value="commandContainer" />
    <ref role="1M2myG" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="EnEH3" id="51Z40Vx0ny4" role="1MhHOB">
      <ref role="EomxK" to="3nll:1LTEHzOdBW" resolve="type" />
      <node concept="1LLf8_" id="51Z40Vx0nzq" role="1LXaQT">
        <node concept="3clFbS" id="51Z40Vx0nzr" role="2VODD2">
          <node concept="3cpWs8" id="51Z40Vy89UH" role="3cqZAp">
            <node concept="3cpWsn" id="51Z40Vy89UI" role="3cpWs9">
              <property role="TrG5h" value="previousValue" />
              <node concept="2ZThk1" id="51Z40Vy89Um" role="1tU5fm">
                <ref role="2ZWj4r" to="3nll:1LTEHzOdy1" resolve="CommandContainerType" />
              </node>
              <node concept="2OqwBi" id="51Z40Vy89UJ" role="33vP2m">
                <node concept="EsrRn" id="51Z40Vy89UK" role="2Oq$k0" />
                <node concept="3TrcHB" id="51Z40Vy89UL" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="51Z40Vx0nCF" role="3cqZAp">
            <node concept="2OqwBi" id="51Z40Vx0olT" role="3clFbG">
              <node concept="2OqwBi" id="51Z40Vx0nRq" role="2Oq$k0">
                <node concept="EsrRn" id="51Z40Vx0nCE" role="2Oq$k0" />
                <node concept="3TrcHB" id="51Z40Vx0ocn" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                </node>
              </node>
              <node concept="tyxLq" id="51Z40Vx0oxG" role="2OqNvi">
                <node concept="1Wqviy" id="51Z40Vx0oyt" role="tz02z" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="51Z40VxaBkd" role="3cqZAp" />
          <node concept="3clFbJ" id="51Z40VySqIQ" role="3cqZAp">
            <node concept="3clFbS" id="51Z40VySqIS" role="3clFbx">
              <node concept="3cpWs6" id="51Z40VySre1" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="51Z40VySqZn" role="3clFbw">
              <node concept="1Wqviy" id="51Z40VySr9v" role="3uHU7w" />
              <node concept="37vLTw" id="51Z40VySqKW" role="3uHU7B">
                <ref role="3cqZAo" node="51Z40Vy89UI" resolve="previousValue" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="51Z40VySqDN" role="3cqZAp" />
          <node concept="3clFbJ" id="51Z40Vx0oEF" role="3cqZAp">
            <node concept="3clFbS" id="51Z40Vx0oEH" role="3clFbx">
              <node concept="3clFbF" id="51Z40Vx0oLW" role="3cqZAp">
                <node concept="2OqwBi" id="51Z40Vx0p0F" role="3clFbG">
                  <node concept="EsrRn" id="51Z40Vx0oLV" role="2Oq$k0" />
                  <node concept="2qgKlT" id="51Z40Vx0plA" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:d$u27T68WS" resolve="resetAndMergeChildRepositoryReferences" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="51Z40VySq46" role="3cqZAp">
                <node concept="3clFbS" id="51Z40VySq48" role="3clFbx">
                  <node concept="3clFbF" id="51Z40VySsGU" role="3cqZAp">
                    <node concept="2OqwBi" id="51Z40VySsUR" role="3clFbG">
                      <node concept="EsrRn" id="51Z40VySsGT" role="2Oq$k0" />
                      <node concept="2qgKlT" id="51Z40VyStea" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:2RbvdOMpYd2" resolve="setName" />
                        <node concept="10Nm6u" id="51Z40VyStje" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="51Z40VyVQE3" role="3clFbw">
                  <node concept="3fqX7Q" id="51Z40VyVRkn" role="3uHU7w">
                    <node concept="2OqwBi" id="51Z40VyVRkp" role="3fr31v">
                      <node concept="EsrRn" id="51Z40VyVRkq" role="2Oq$k0" />
                      <node concept="3TrcHB" id="51Z40VyVRkr" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="51Z40VySsDz" role="3uHU7B">
                    <node concept="2OqwBi" id="51Z40VySqiP" role="3uHU7B">
                      <node concept="EsrRn" id="51Z40VySq4X" role="2Oq$k0" />
                      <node concept="3TrEf2" id="51Z40VySs1C" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="51Z40VySsEm" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="51Z40Vx0oHl" role="3clFbw">
              <node concept="1Wqviy" id="51Z40Vx0oFF" role="2Oq$k0" />
              <node concept="21noJN" id="51Z40Vx0oIY" role="2OqNvi">
                <node concept="21nZrQ" id="51Z40Vx0oJ0" role="21noJM">
                  <ref role="21nZrZ" to="3nll:1LTEHzOdy3" resolve="CommandHandler" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="51Z40VySreq" role="3cqZAp" />
          <node concept="3clFbJ" id="51Z40VySrli" role="3cqZAp">
            <node concept="3clFbS" id="51Z40VySrlk" role="3clFbx">
              <node concept="3clFbJ" id="51Z40VyStjS" role="3cqZAp">
                <node concept="3clFbS" id="51Z40VyStjT" role="3clFbx">
                  <node concept="3clFbF" id="51Z40VyStLA" role="3cqZAp">
                    <node concept="2OqwBi" id="51Z40VyStQ2" role="3clFbG">
                      <node concept="2OqwBi" id="51Z40VyStLW" role="2Oq$k0">
                        <node concept="EsrRn" id="51Z40VyStL_" role="2Oq$k0" />
                        <node concept="3TrEf2" id="51Z40VyStN8" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                        </node>
                      </node>
                      <node concept="3YRAZt" id="51Z40VyStRA" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="17QLQc" id="51Z40Vz4da6" role="3clFbw">
                  <node concept="10Nm6u" id="51Z40Vz4dbc" role="3uHU7w" />
                  <node concept="2OqwBi" id="51Z40VyStk1" role="3uHU7B">
                    <node concept="EsrRn" id="51Z40VyStk2" role="2Oq$k0" />
                    <node concept="3TrEf2" id="51Z40VyStk3" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="51Z40VySrwc" role="3clFbw">
              <node concept="1Wqviy" id="51Z40VySrsB" role="2Oq$k0" />
              <node concept="21noJN" id="51Z40VySrD9" role="2OqNvi">
                <node concept="21nZrQ" id="51Z40VySrDb" role="21noJM">
                  <ref role="21nZrZ" to="3nll:1LTEHzOdy2" resolve="CommandsBlock" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="awtshkx08H">
    <property role="3GE5qa" value="aggregateRepository" />
    <ref role="1M2myG" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
  </node>
  <node concept="1M2fIO" id="awtshk_L0M">
    <property role="3GE5qa" value="aggregates" />
    <ref role="1M2myG" to="3nll:awtshk_L0H" resolve="IAggregateRootComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="7mYw4uW6toT">
    <property role="3GE5qa" value="eventContainer" />
    <ref role="1M2myG" to="3nll:7mYw4uW6toN" resolve="IEventContainerComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="7mYw4uWwq4o">
    <property role="3GE5qa" value="commandContainer" />
    <ref role="1M2myG" to="3nll:7mYw4uWwq43" resolve="ICommandContainerComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="7mYw4uWx4U5">
    <property role="3GE5qa" value="aggregateRepository" />
    <ref role="1M2myG" to="3nll:7mYw4uWx3au" resolve="IAggregateRootRepositoryComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="3DbZR$O1TZV">
    <property role="3GE5qa" value="queryContainer" />
    <ref role="1M2myG" to="3nll:3DbZR$O1TZR" resolve="IQueryContainerComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="3DbZR$PiaEB">
    <property role="3GE5qa" value="typing" />
    <ref role="1M2myG" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
  </node>
  <node concept="1M2fIO" id="oGImgMSoY2">
    <property role="3GE5qa" value="general.identifier" />
    <ref role="1M2myG" to="3nll:oGImgMSoXZ" resolve="IOptionalValidIdentifier" />
    <node concept="EnEH3" id="oGImgMSoY3" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="oGImgMSoYU" role="QCWH9">
        <node concept="3clFbS" id="oGImgMSoYV" role="2VODD2">
          <node concept="3clFbJ" id="oGImgMSpls" role="3cqZAp">
            <node concept="3clFbS" id="oGImgMSplu" role="3clFbx">
              <node concept="3cpWs6" id="oGImgMSqHG" role="3cqZAp">
                <node concept="3clFbT" id="oGImgMSqLM" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="oGImgMSq5B" role="3clFbw">
              <node concept="1Wqviy" id="oGImgMSpuZ" role="2Oq$k0" />
              <node concept="17RlXB" id="oGImgMSqEC" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="1aRcFPNFkGq" role="3cqZAp">
            <node concept="2YIFZM" id="1aRcFPNFkIP" role="3clFbG">
              <ref role="37wK5l" to="4d66:1aRcFPNFjL5" resolve="isValidKeyword" />
              <ref role="1Pybhc" to="4d66:1aRcFPNFjIB" resolve="KeywordUtil" />
              <node concept="1Wqviy" id="1aRcFPNFkTd" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="oGImgMUb_z">
    <property role="3GE5qa" value="variable.property" />
    <ref role="1M2myG" to="3nll:7fqk8p3V6WN" resolve="Property" />
  </node>
  <node concept="1M2fIO" id="oGImgN2kt7">
    <property role="3GE5qa" value="valueObjects" />
    <ref role="1M2myG" to="3nll:oGImgN2ksO" resolve="IValueObjectComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="oGImgOv72t">
    <property role="3GE5qa" value="dto" />
    <ref role="1M2myG" to="3nll:oGImgOv72s" resolve="IDtoComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="5SyewCa$$pS">
    <property role="3GE5qa" value="variable.parameter" />
    <ref role="1M2myG" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
  </node>
  <node concept="1M2fIO" id="5SyewCciVqH">
    <property role="3GE5qa" value="import" />
    <ref role="1M2myG" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
  </node>
  <node concept="1M2fIO" id="1jrq3noYw5d">
    <property role="3GE5qa" value="command" />
    <ref role="1M2myG" to="3nll:7fqk8p43ygY" resolve="Command" />
    <node concept="2XrIbr" id="4Bg9wDFnJDP" role="32lrUH">
      <property role="TrG5h" value="provideAggregateRootScope" />
      <node concept="37vLTG" id="4Bg9wDFnJJD" role="3clF46">
        <property role="TrG5h" value="aggregateRoot" />
        <node concept="3Tqbb2" id="4Bg9wDFnJMr" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
        </node>
      </node>
      <node concept="37vLTG" id="4Bg9wDFnJNS" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="4Bg9wDFnJPu" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4Bg9wDFnJHA" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="4Bg9wDFnJDR" role="3clF47">
        <node concept="3clFbJ" id="4Bg9wDFnKbA" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="2OqwBi" id="4Bg9wDFnKTd" role="3clFbw">
            <node concept="2OqwBi" id="4Bg9wDFnKqN" role="2Oq$k0">
              <node concept="37vLTw" id="4Bg9wDFnKdd" role="2Oq$k0">
                <ref role="3cqZAo" node="4Bg9wDFnJNS" resolve="contextNode" />
              </node>
              <node concept="2Xjw5R" id="4Bg9wDFnKz$" role="2OqNvi">
                <node concept="1xMEDy" id="4Bg9wDFnKzA" role="1xVPHs">
                  <node concept="chp4Y" id="4Bg9wDFnKAX" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                  </node>
                </node>
                <node concept="1xIGOp" id="4Bg9wDFnKHt" role="1xVPHs" />
              </node>
            </node>
            <node concept="3x8VRR" id="4Bg9wDFnLbq" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="4Bg9wDFnKbC" role="3clFbx">
            <node concept="3cpWs6" id="4Bg9wDFnOvE" role="3cqZAp">
              <node concept="2YIFZM" id="4Bg9wDFnOI6" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="4Bg9wDFnNGL" role="37wK5m">
                  <node concept="2OqwBi" id="4Bg9wDFnN5b" role="2Oq$k0">
                    <node concept="37vLTw" id="4Bg9wDFnMOm" role="2Oq$k0">
                      <ref role="3cqZAo" node="4Bg9wDFnJJD" resolve="aggregateRoot" />
                    </node>
                    <node concept="2qgKlT" id="4Bg9wDFnNsy" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="4Bg9wDFnO8n" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:34BkNnblMem" resolve="commands" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4Bg9wDFnLi3" role="3cqZAp" />
        <node concept="3clFbF" id="4Bg9wDFnLl9" role="3cqZAp">
          <node concept="2ShNRf" id="4Bg9wDFnLl5" role="3clFbG">
            <node concept="1pGfFk" id="4Bg9wDFnMLv" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4Bg9wDFnJDS" role="1B3o_S" />
    </node>
    <node concept="3EP7_v" id="7IRUqbcgy23" role="1MtirG">
      <node concept="3dgokm" id="7IRUqbcgy27" role="3EP$qY">
        <node concept="3clFbS" id="7IRUqbcgy29" role="2VODD2">
          <node concept="3cpWs8" id="4Bg9wDFnJuo" role="3cqZAp">
            <node concept="3cpWsn" id="4Bg9wDFnJup" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3Tqbb2" id="4Bg9wDFnJtZ" role="1tU5fm">
                <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
              </node>
              <node concept="2OqwBi" id="4Bg9wDFnJuq" role="33vP2m">
                <node concept="2rP1CM" id="4Bg9wDFnJur" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4Bg9wDFnJus" role="2OqNvi">
                  <node concept="1xMEDy" id="4Bg9wDFnJut" role="1xVPHs">
                    <node concept="chp4Y" id="4Bg9wDFnJuu" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4Bg9wDFnJuv" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4Bg9wDFnJ56" role="3cqZAp" />
          <node concept="Jncv_" id="4Bg9wDFnJ11" role="3cqZAp">
            <ref role="JncvD" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
            <node concept="37vLTw" id="4Bg9wDFnJxI" role="JncvB">
              <ref role="3cqZAo" node="4Bg9wDFnJup" resolve="component" />
            </node>
            <node concept="3clFbS" id="4Bg9wDFnJ15" role="Jncv$">
              <node concept="3cpWs6" id="4Bg9wDFnJT5" role="3cqZAp">
                <node concept="2OqwBi" id="4Bg9wDFnJYM" role="3cqZAk">
                  <node concept="2WthIp" id="4Bg9wDFnJYP" role="2Oq$k0" />
                  <node concept="2XshWL" id="4Bg9wDFnJYR" role="2OqNvi">
                    <ref role="2WH_rO" node="4Bg9wDFnJDP" resolve="provideAggregateRootScope" />
                    <node concept="Jnkvi" id="4Bg9wDFnK0L" role="2XxRq1">
                      <ref role="1M0zk5" node="4Bg9wDFnJ17" resolve="aggregateRoot" />
                    </node>
                    <node concept="2rP1CM" id="4Bg9wDFnK41" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4Bg9wDFnJ17" role="JncvA">
              <property role="TrG5h" value="aggregateRoot" />
              <node concept="2jxLKc" id="4Bg9wDFnJ18" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="4Bg9wDFnIXe" role="3cqZAp" />
          <node concept="3clFbF" id="7IRUqbcgy4H" role="3cqZAp">
            <node concept="2ShNRf" id="7IRUqbcgy4I" role="3clFbG">
              <node concept="1pGfFk" id="7IRUqbcgy4J" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1WhJCpUQsa8">
    <property role="3GE5qa" value="dtoRepository" />
    <ref role="1M2myG" to="3nll:1WhJCpUQqV4" resolve="IDtoRepositoryComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="2RbvdOKicKM">
    <property role="3GE5qa" value="queryContainer" />
    <ref role="1M2myG" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    <node concept="EnEH3" id="51Z40VxhHzw" role="1MhHOB">
      <ref role="EomxK" to="3nll:1WhJCpUOLrJ" resolve="type" />
      <node concept="1LLf8_" id="51Z40VxhHzy" role="1LXaQT">
        <node concept="3clFbS" id="51Z40VxhHzz" role="2VODD2">
          <node concept="3clFbF" id="51Z40VxhH_U" role="3cqZAp">
            <node concept="2OqwBi" id="51Z40VxhIgI" role="3clFbG">
              <node concept="2OqwBi" id="51Z40VxhHNR" role="2Oq$k0">
                <node concept="EsrRn" id="51Z40VxhH_T" role="2Oq$k0" />
                <node concept="3TrcHB" id="51Z40VxhI7c" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                </node>
              </node>
              <node concept="tyxLq" id="51Z40VxhIsp" role="2OqNvi">
                <node concept="1Wqviy" id="51Z40VxhIta" role="tz02z" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="51Z40VxhItR" role="3cqZAp" />
          <node concept="3clFbJ" id="51Z40VxhIy0" role="3cqZAp">
            <node concept="3clFbS" id="51Z40VxhIy2" role="3clFbx">
              <node concept="3clFbF" id="51Z40VxhISn" role="3cqZAp">
                <node concept="2OqwBi" id="51Z40VxhJ6k" role="3clFbG">
                  <node concept="EsrRn" id="51Z40VxhISm" role="2Oq$k0" />
                  <node concept="2qgKlT" id="51Z40VxhJpB" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:d$u27T68WS" resolve="resetAndMergeChildRepositoryReferences" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="51Z40VxhIPJ" role="3clFbw">
              <node concept="2OqwBi" id="51Z40VxhIPL" role="3fr31v">
                <node concept="1Wqviy" id="51Z40VxhIPM" role="2Oq$k0" />
                <node concept="21noJN" id="51Z40VxhIPN" role="2OqNvi">
                  <node concept="21nZrQ" id="51Z40VxhIPO" role="21noJM">
                    <ref role="21nZrZ" to="3nll:1WhJCpUOLrB" resolve="QueryBlock" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3VGLvhEe$5e">
    <property role="3GE5qa" value="query" />
    <ref role="1M2myG" to="3nll:7fqk8p43yh4" resolve="Query" />
    <node concept="2XrIbr" id="7IRUqbcgzl4" role="32lrUH">
      <property role="TrG5h" value="provideQueryMethodsScope" />
      <node concept="37vLTG" id="7IRUqbcgzpj" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7IRUqbcgzqg" role="1tU5fm">
          <ref role="ehGHo" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
        </node>
      </node>
      <node concept="37vLTG" id="7IRUqbcgzr9" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="7IRUqbcgztZ" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7IRUqbcgzoe" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="7IRUqbcgzl6" role="3clF47">
        <node concept="3cpWs8" id="3VGLvhF3V9A" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhF3V9B" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="3VGLvhF3V8o" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="3VGLvhF3V9C" role="33vP2m">
              <node concept="37vLTw" id="3VGLvhF3V9D" role="2Oq$k0">
                <ref role="3cqZAo" node="7IRUqbcgzpj" resolve="node" />
              </node>
              <node concept="2qgKlT" id="3VGLvhF3V9E" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3aCsR_cED1W" role="3cqZAp">
          <node concept="3cpWsn" id="3aCsR_cED1X" role="3cpWs9">
            <property role="TrG5h" value="allowedDto" />
            <node concept="3Tqbb2" id="3aCsR_cED00" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            </node>
            <node concept="2OqwBi" id="3aCsR_cEKqd" role="33vP2m">
              <node concept="2OqwBi" id="3aCsR_cEK64" role="2Oq$k0">
                <node concept="2OqwBi" id="3aCsR_cED1Y" role="2Oq$k0">
                  <node concept="37vLTw" id="3aCsR_cED1Z" role="2Oq$k0">
                    <ref role="3cqZAo" node="7IRUqbcgzpj" resolve="node" />
                  </node>
                  <node concept="2qgKlT" id="3aCsR_cED20" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5A5sGroI1gZ" resolve="dtoRepository" />
                  </node>
                </node>
                <node concept="3TrEf2" id="3aCsR_cEKfX" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                </node>
              </node>
              <node concept="3TrEf2" id="3aCsR_cEK$e" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5J$7" resolve="dto" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3VGLvhF3VP1" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhF3VP2" role="3cpWs9">
            <property role="TrG5h" value="queries" />
            <node concept="A3Dl8" id="3VGLvhF3VNL" role="1tU5fm">
              <node concept="3Tqbb2" id="3VGLvhF3VNO" role="A3Ik2">
                <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
              </node>
            </node>
            <node concept="2OqwBi" id="3VGLvhF3VP3" role="33vP2m">
              <node concept="37vLTw" id="3VGLvhF3VP4" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhF3V9B" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3VGLvhF3VP5" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEjcqo" resolve="queries" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3VGLvhF3TVm" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhF3TVn" role="3cpWs9">
            <property role="TrG5h" value="referencedQueries" />
            <node concept="A3Dl8" id="3aCsR_cH6Ox" role="1tU5fm">
              <node concept="3Tqbb2" id="3aCsR_cH6Oz" role="A3Ik2">
                <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
              </node>
            </node>
            <node concept="2OqwBi" id="3VGLvhF3TVo" role="33vP2m">
              <node concept="2qgKlT" id="3VGLvhF3TVs" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhF3LIJ" resolve="findReferencedQueriesInDtoRepositories" />
              </node>
              <node concept="37vLTw" id="3VGLvhF3WaV" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhF3V9B" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_cH2Gu" role="3cqZAp" />
        <node concept="3cpWs8" id="7IRUqbcgBYO" role="3cqZAp">
          <node concept="3cpWsn" id="7IRUqbcgBYR" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="A3Dl8" id="7IRUqbcgBYL" role="1tU5fm">
              <node concept="3Tqbb2" id="7IRUqbcgC2M" role="A3Ik2">
                <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
              </node>
            </node>
            <node concept="2OqwBi" id="3VGLvhF3WNp" role="33vP2m">
              <node concept="37vLTw" id="3VGLvhF3Wxk" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhF3VP2" resolve="queries" />
              </node>
              <node concept="3zZkjj" id="3VGLvhF3X2u" role="2OqNvi">
                <node concept="1bVj0M" id="3VGLvhF3X2w" role="23t8la">
                  <property role="3yWfEV" value="true" />
                  <node concept="3clFbS" id="3VGLvhF3X2x" role="1bW5cS">
                    <node concept="3clFbF" id="3VGLvhF3XbE" role="3cqZAp">
                      <node concept="22lmx$" id="3VGLvhF3Yyk" role="3clFbG">
                        <node concept="3clFbC" id="3VGLvhF3XyV" role="3uHU7B">
                          <node concept="37vLTw" id="3VGLvhF3XbD" role="3uHU7B">
                            <ref role="3cqZAo" node="3VGLvhF3X2y" resolve="query" />
                          </node>
                          <node concept="2OqwBi" id="3VGLvhF3Yan" role="3uHU7w">
                            <node concept="1PxgMI" id="7IRUqbcgAH1" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="7IRUqbcgANr" role="3oSUPX">
                                <ref role="cht4Q" to="3nll:7fqk8p43yh7" resolve="QueryReference" />
                              </node>
                              <node concept="37vLTw" id="3VGLvhF3XPm" role="1m5AlR">
                                <ref role="3cqZAo" node="7IRUqbcgzr9" resolve="contextNode" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3VGLvhF3Ypp" role="2OqNvi">
                              <ref role="3Tt5mk" to="3nll:7fqk8p43yh8" resolve="query" />
                            </node>
                          </node>
                        </node>
                        <node concept="1eOMI4" id="3aCsR_cEGej" role="3uHU7w">
                          <node concept="1Wc70l" id="3aCsR_cEGNr" role="1eOMHV">
                            <node concept="2OqwBi" id="3aCsR_cEHlN" role="3uHU7w">
                              <node concept="37vLTw" id="3aCsR_cEGW5" role="2Oq$k0">
                                <ref role="3cqZAo" node="3VGLvhF3X2y" resolve="query" />
                              </node>
                              <node concept="2qgKlT" id="3aCsR_cEIdG" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:3aCsR_csrN7" resolve="areOnlyValidDtoReferencesUsed" />
                                <node concept="37vLTw" id="3aCsR_cEIs2" role="37wK5m">
                                  <ref role="3cqZAo" node="3aCsR_cED1X" resolve="allowedDto" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="3VGLvhF40JM" role="3uHU7B">
                              <node concept="2OqwBi" id="3VGLvhF40JO" role="3fr31v">
                                <node concept="37vLTw" id="3VGLvhF40JP" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3VGLvhF3TVn" resolve="referencedQueries" />
                                </node>
                                <node concept="3JPx81" id="3VGLvhF40JQ" role="2OqNvi">
                                  <node concept="37vLTw" id="3VGLvhF40JR" role="25WWJ7">
                                    <ref role="3cqZAo" node="3VGLvhF3X2y" resolve="query" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3VGLvhF3X2y" role="1bW2Oz">
                    <property role="TrG5h" value="query" />
                    <node concept="2jxLKc" id="3VGLvhF3X2z" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7IRUqbcgC_c" role="3cqZAp" />
        <node concept="3clFbF" id="7IRUqbcgCIj" role="3cqZAp">
          <node concept="2YIFZM" id="7IRUqbcgCUp" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="37vLTw" id="7IRUqbcgDtt" role="37wK5m">
              <ref role="3cqZAo" node="7IRUqbcgBYR" resolve="result" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7IRUqbcgzl7" role="1B3o_S" />
    </node>
    <node concept="3EP7_v" id="7IRUqbcgy5t" role="1MtirG">
      <node concept="3dgokm" id="7IRUqbcgy5x" role="3EP$qY">
        <node concept="3clFbS" id="7IRUqbcgy5z" role="2VODD2">
          <node concept="3cpWs8" id="7IRUqbcgyBk" role="3cqZAp">
            <node concept="3cpWsn" id="7IRUqbcgyBl" role="3cpWs9">
              <property role="TrG5h" value="queryMethods" />
              <node concept="3Tqbb2" id="7IRUqbcgyAW" role="1tU5fm">
                <ref role="ehGHo" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
              </node>
              <node concept="2OqwBi" id="7IRUqbcgyBm" role="33vP2m">
                <node concept="2rP1CM" id="7IRUqbcgyBn" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7IRUqbcgyBo" role="2OqNvi">
                  <node concept="1xMEDy" id="7IRUqbcgyBp" role="1xVPHs">
                    <node concept="chp4Y" id="7IRUqbcgyBq" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7IRUqbcgyBr" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7IRUqbcgydb" role="3cqZAp" />
          <node concept="3clFbJ" id="7IRUqbcgyOo" role="3cqZAp">
            <node concept="3clFbS" id="7IRUqbcgyOq" role="3clFbx">
              <node concept="3cpWs6" id="7IRUqbcgEyD" role="3cqZAp">
                <node concept="2OqwBi" id="7IRUqbcgEB1" role="3cqZAk">
                  <node concept="2WthIp" id="7IRUqbcgEB4" role="2Oq$k0" />
                  <node concept="2XshWL" id="7IRUqbcgEB6" role="2OqNvi">
                    <ref role="2WH_rO" node="7IRUqbcgzl4" resolve="provideQueryMethodsScope" />
                    <node concept="37vLTw" id="7IRUqbcgEDg" role="2XxRq1">
                      <ref role="3cqZAo" node="7IRUqbcgyBl" resolve="queryMethods" />
                    </node>
                    <node concept="2rP1CM" id="7IRUqbcgEFk" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7IRUqbcgz3b" role="3clFbw">
              <node concept="37vLTw" id="7IRUqbcgyPv" role="2Oq$k0">
                <ref role="3cqZAo" node="7IRUqbcgyBl" resolve="queryMethods" />
              </node>
              <node concept="3x8VRR" id="7IRUqbcgzg7" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="7IRUqbcgyEt" role="3cqZAp" />
          <node concept="3clFbF" id="7IRUqbcgyFk" role="3cqZAp">
            <node concept="2ShNRf" id="7IRUqbcgyFl" role="3clFbG">
              <node concept="1pGfFk" id="7IRUqbcgyFm" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="omljbyVz8S">
    <property role="3GE5qa" value="generationSettings" />
    <ref role="1M2myG" to="3nll:omljbyVy$R" resolve="IGeneratorSettingsComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="omljbzWVxz">
    <property role="3GE5qa" value="generationSettings.query" />
    <ref role="1M2myG" to="3nll:omljbyVy_1" resolve="QueryGenerationSettings" />
  </node>
  <node concept="1M2fIO" id="5qxF18EC3$_">
    <property role="3GE5qa" value="generationSettings.event" />
    <ref role="1M2myG" to="3nll:5qxF18EuQW9" resolve="IEventGenerationSettingsComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="5qxF18ELq6m">
    <property role="3GE5qa" value="generationSettings.command" />
    <ref role="1M2myG" to="3nll:5qxF18ELp99" resolve="ICommandGenerationSettingsComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="5qxF18ENHI4">
    <property role="3GE5qa" value="generationSettings.query" />
    <ref role="1M2myG" to="3nll:5qxF18ELp98" resolve="IQueryGenerationSettingsComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="4LpUh3V3NVY">
    <property role="3GE5qa" value="variable" />
    <ref role="1M2myG" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
    <node concept="2XrIbr" id="4LpUh3V3OYg" role="32lrUH">
      <property role="TrG5h" value="provideDtoScope" />
      <node concept="37vLTG" id="4LpUh3V3P2v" role="3clF46">
        <property role="TrG5h" value="dto" />
        <node concept="3Tqbb2" id="4LpUh3V3P4E" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
        </node>
      </node>
      <node concept="37vLTG" id="4LpUh3V3P5h" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="4LpUh3V3P7B" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4LpUh3V3P1q" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="4LpUh3V3OYi" role="3clF47">
        <node concept="3clFbJ" id="4LpUh3V68tb" role="3cqZAp">
          <node concept="3clFbS" id="4LpUh3V68td" role="3clFbx">
            <node concept="3clFbH" id="4LpUh3XhMSc" role="3cqZAp" />
            <node concept="3SKdUt" id="4LpUh3XJxM4" role="3cqZAp">
              <node concept="1PaTwC" id="4LpUh3XJxM5" role="1aUNEU">
                <node concept="3oM_SD" id="4LpUh3XJxUa" role="1PaTwD">
                  <property role="3oM_SC" value="TODO" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxUj" role="1PaTwD">
                  <property role="3oM_SC" value="Das" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxUm" role="1PaTwD">
                  <property role="3oM_SC" value="noch" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxUq" role="1PaTwD">
                  <property role="3oM_SC" value="fixen," />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxUv" role="1PaTwD">
                  <property role="3oM_SC" value="dass" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxU_" role="1PaTwD">
                  <property role="3oM_SC" value="die" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxUG" role="1PaTwD">
                  <property role="3oM_SC" value="ausgewählte" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxUO" role="1PaTwD">
                  <property role="3oM_SC" value="Variable" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxUX" role="1PaTwD">
                  <property role="3oM_SC" value="nicht" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxV7" role="1PaTwD">
                  <property role="3oM_SC" value="angezeigt" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxVi" role="1PaTwD">
                  <property role="3oM_SC" value="wird" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxVu" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxVF" role="1PaTwD">
                  <property role="3oM_SC" value="dem" />
                </node>
                <node concept="3oM_SD" id="4LpUh3XJxVT" role="1PaTwD">
                  <property role="3oM_SC" value="popup" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4LpUh3V6pb1" role="3cqZAp">
              <node concept="3cpWsn" id="4LpUh3V6pb2" role="3cpWs9">
                <property role="TrG5h" value="variables" />
                <node concept="A3Dl8" id="4LpUh3V6p9Z" role="1tU5fm">
                  <node concept="3Tqbb2" id="4LpUh3V6pa2" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4LpUh3V6pb5" role="33vP2m">
                  <node concept="37vLTw" id="4LpUh3V6pb6" role="2Oq$k0">
                    <ref role="3cqZAo" node="4LpUh3V3P2v" resolve="dto" />
                  </node>
                  <node concept="2qgKlT" id="3NXs7yp5YH9" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yp5UST" resolve="getAvailableVariables" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4LpUh3V6uNe" role="3cqZAp">
              <node concept="3cpWsn" id="4LpUh3V6uNf" role="3cpWs9">
                <property role="TrG5h" value="ignoredVariables" />
                <node concept="A3Dl8" id="4LpUh3V6uJM" role="1tU5fm">
                  <node concept="3Tqbb2" id="4LpUh3V6uJP" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4LpUh3V6$Fb" role="33vP2m">
                  <node concept="2OqwBi" id="4LpUh3Vi_dz" role="2Oq$k0">
                    <node concept="2OqwBi" id="4LpUh3V6uNh" role="2Oq$k0">
                      <node concept="37vLTw" id="4LpUh3V6uNi" role="2Oq$k0">
                        <ref role="3cqZAo" node="4LpUh3V3P2v" resolve="dto" />
                      </node>
                      <node concept="3Tsc0h" id="4LpUh3V6uNj" role="2OqNvi">
                        <ref role="3TtcxE" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="4LpUh3V6uNk" role="2OqNvi">
                      <node concept="1bVj0M" id="4LpUh3V6uNl" role="23t8la">
                        <property role="3yWfEV" value="true" />
                        <node concept="3clFbS" id="4LpUh3V6uNm" role="1bW5cS">
                          <node concept="3clFbF" id="4LpUh3V6uNn" role="3cqZAp">
                            <node concept="3y3z36" id="4LpUh3V6uNo" role="3clFbG">
                              <node concept="37vLTw" id="4LpUh3V6uNq" role="3uHU7B">
                                <ref role="3cqZAo" node="4LpUh3V6uNr" resolve="variableReference" />
                              </node>
                              <node concept="37vLTw" id="4LpUh3XEAfs" role="3uHU7w">
                                <ref role="3cqZAo" node="4LpUh3V3P5h" resolve="contextNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="4LpUh3V6uNr" role="1bW2Oz">
                          <property role="TrG5h" value="variableReference" />
                          <node concept="2jxLKc" id="4LpUh3V6uNs" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="4LpUh3V6AXS" role="2OqNvi">
                    <node concept="1bVj0M" id="4LpUh3V6AXU" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="4LpUh3V6AXV" role="1bW5cS">
                        <node concept="3clFbF" id="4LpUh3V6BiP" role="3cqZAp">
                          <node concept="2OqwBi" id="4LpUh3V6BEz" role="3clFbG">
                            <node concept="37vLTw" id="4LpUh3V6BiO" role="2Oq$k0">
                              <ref role="3cqZAo" node="4LpUh3V6AXW" resolve="variableReference" />
                            </node>
                            <node concept="2qgKlT" id="4LpUh3V6BYx" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:4LpUh3V3HC0" resolve="getReferencedVariable" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4LpUh3V6AXW" role="1bW2Oz">
                        <property role="TrG5h" value="variableReference" />
                        <node concept="2jxLKc" id="4LpUh3V6AXX" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4LpUh3V6pmn" role="3cqZAp">
              <node concept="2YIFZM" id="4LpUh3V6pzR" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="4LpUh3XJws$" role="37wK5m">
                  <node concept="37vLTw" id="4LpUh3XJws_" role="2Oq$k0">
                    <ref role="3cqZAo" node="4LpUh3V6pb2" resolve="variables" />
                  </node>
                  <node concept="3zZkjj" id="4LpUh3XJwsA" role="2OqNvi">
                    <node concept="1bVj0M" id="4LpUh3XJwsB" role="23t8la">
                      <node concept="3clFbS" id="4LpUh3XJwsC" role="1bW5cS">
                        <node concept="3clFbF" id="4LpUh3XJwsD" role="3cqZAp">
                          <node concept="3fqX7Q" id="4LpUh3XJwsE" role="3clFbG">
                            <node concept="2OqwBi" id="4LpUh3XJwsF" role="3fr31v">
                              <node concept="37vLTw" id="4LpUh3XJwsG" role="2Oq$k0">
                                <ref role="3cqZAo" node="4LpUh3V6uNf" resolve="ignoredVariables" />
                              </node>
                              <node concept="3JPx81" id="4LpUh3XJwsH" role="2OqNvi">
                                <node concept="37vLTw" id="4LpUh3XJwsI" role="25WWJ7">
                                  <ref role="3cqZAo" node="4LpUh3XJwsJ" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4LpUh3XJwsJ" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="4LpUh3XJwsK" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4LpUh3V69iK" role="3clFbw">
            <node concept="17R0WA" id="4LpUh3V6a0$" role="3uHU7w">
              <node concept="359W_D" id="4LpUh3V6a2Y" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                <ref role="359W_F" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
              </node>
              <node concept="2OqwBi" id="4LpUh3V69rW" role="3uHU7B">
                <node concept="37vLTw" id="4LpUh3V69l0" role="2Oq$k0">
                  <ref role="3cqZAo" node="4LpUh3V3P5h" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="4LpUh3V69_g" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="4LpUh3V68HD" role="3uHU7B">
              <node concept="37vLTw" id="4LpUh3V68v5" role="3uHU7B">
                <ref role="3cqZAo" node="4LpUh3V3P2v" resolve="dto" />
              </node>
              <node concept="37vLTw" id="4LpUh3V68Ug" role="3uHU7w">
                <ref role="3cqZAo" node="4LpUh3V3P5h" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4LpUh3V67Gh" role="3cqZAp" />
        <node concept="3clFbF" id="4LpUh3V3Pbd" role="3cqZAp">
          <node concept="2ShNRf" id="4LpUh3V3Pbb" role="3clFbG">
            <node concept="1pGfFk" id="4LpUh3V3Ps0" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4LpUh3V3OYj" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3NXs7yp2unK" role="32lrUH">
      <property role="TrG5h" value="provideDtoFlatteningRuleScope" />
      <node concept="37vLTG" id="3NXs7yp2unL" role="3clF46">
        <property role="TrG5h" value="flatteningRuleContainer" />
        <node concept="3Tqbb2" id="3NXs7yp2unM" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="3NXs7yp2unN" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="3NXs7yp2unO" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3NXs7yp2unR" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="3NXs7yp2unS" role="3clF47">
        <node concept="3cpWs8" id="3L7_qKLqM0S" role="3cqZAp">
          <node concept="3cpWsn" id="3L7_qKLqM0V" role="3cpWs9">
            <property role="TrG5h" value="flatteningRule" />
            <node concept="3Tqbb2" id="3L7_qKLqM0Q" role="1tU5fm">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
            </node>
            <node concept="2OqwBi" id="3L7_qKLqOii" role="33vP2m">
              <node concept="37vLTw" id="3L7_qKLqNVq" role="2Oq$k0">
                <ref role="3cqZAo" node="3NXs7yp2unN" resolve="contextNode" />
              </node>
              <node concept="2Xjw5R" id="3L7_qKLqO_h" role="2OqNvi">
                <node concept="1xMEDy" id="3L7_qKLqO_j" role="1xVPHs">
                  <node concept="chp4Y" id="3L7_qKLqOMg" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
                <node concept="1xIGOp" id="3L7_qKLqP9c" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3L7_qKLqLPl" role="3cqZAp" />
        <node concept="3clFbJ" id="3NXs7yp2unT" role="3cqZAp">
          <node concept="3clFbS" id="3NXs7yp2unU" role="3clFbx">
            <node concept="3clFbH" id="3NXs7yp2unV" role="3cqZAp" />
            <node concept="3SKdUt" id="3NXs7yp2unW" role="3cqZAp">
              <node concept="1PaTwC" id="3NXs7yp2unX" role="1aUNEU">
                <node concept="3oM_SD" id="3NXs7yp2unY" role="1PaTwD">
                  <property role="3oM_SC" value="TODO" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2unZ" role="1PaTwD">
                  <property role="3oM_SC" value="Das" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uo0" role="1PaTwD">
                  <property role="3oM_SC" value="noch" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uo1" role="1PaTwD">
                  <property role="3oM_SC" value="fixen," />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uo2" role="1PaTwD">
                  <property role="3oM_SC" value="dass" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uo3" role="1PaTwD">
                  <property role="3oM_SC" value="die" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uo4" role="1PaTwD">
                  <property role="3oM_SC" value="ausgewählte" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uo5" role="1PaTwD">
                  <property role="3oM_SC" value="Variable" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uo6" role="1PaTwD">
                  <property role="3oM_SC" value="nicht" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uo7" role="1PaTwD">
                  <property role="3oM_SC" value="angezeigt" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uo8" role="1PaTwD">
                  <property role="3oM_SC" value="wird" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uo9" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uoa" role="1PaTwD">
                  <property role="3oM_SC" value="dem" />
                </node>
                <node concept="3oM_SD" id="3NXs7yp2uob" role="1PaTwD">
                  <property role="3oM_SC" value="popup" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3NXs7yp2uoc" role="3cqZAp">
              <node concept="3cpWsn" id="3NXs7yp2uod" role="3cpWs9">
                <property role="TrG5h" value="variables" />
                <node concept="A3Dl8" id="3NXs7yp2uoe" role="1tU5fm">
                  <node concept="3Tqbb2" id="3NXs7yp2uof" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3NXs7yp2uoi" role="33vP2m">
                  <node concept="37vLTw" id="3NXs7yp2uoj" role="2Oq$k0">
                    <ref role="3cqZAo" node="3L7_qKLqM0V" resolve="flatteningRule" />
                  </node>
                  <node concept="2qgKlT" id="3NXs7yp5Zxm" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yp5UST" resolve="getAvailableVariables" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3NXs7yp2uon" role="3cqZAp">
              <node concept="3cpWsn" id="3NXs7yp2uoo" role="3cpWs9">
                <property role="TrG5h" value="ignoredVariables" />
                <node concept="A3Dl8" id="3NXs7yp2uop" role="1tU5fm">
                  <node concept="3Tqbb2" id="3NXs7yp2uoq" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3NXs7yp2uor" role="33vP2m">
                  <node concept="2OqwBi" id="3NXs7yp2uos" role="2Oq$k0">
                    <node concept="2OqwBi" id="3NXs7yp2uot" role="2Oq$k0">
                      <node concept="37vLTw" id="3NXs7yp2uou" role="2Oq$k0">
                        <ref role="3cqZAo" node="3L7_qKLqM0V" resolve="flatteningRule" />
                      </node>
                      <node concept="3Tsc0h" id="3NXs7yp2uov" role="2OqNvi">
                        <ref role="3TtcxE" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="3NXs7yp2uow" role="2OqNvi">
                      <node concept="1bVj0M" id="3NXs7yp2uox" role="23t8la">
                        <property role="3yWfEV" value="true" />
                        <node concept="3clFbS" id="3NXs7yp2uoy" role="1bW5cS">
                          <node concept="3clFbF" id="3NXs7yp2uoz" role="3cqZAp">
                            <node concept="3y3z36" id="3NXs7yp2uo$" role="3clFbG">
                              <node concept="37vLTw" id="3NXs7yp2uo_" role="3uHU7B">
                                <ref role="3cqZAo" node="3NXs7yp2uoB" resolve="variableReference" />
                              </node>
                              <node concept="37vLTw" id="3NXs7yp2uoA" role="3uHU7w">
                                <ref role="3cqZAo" node="3NXs7yp2unN" resolve="contextNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="3NXs7yp2uoB" role="1bW2Oz">
                          <property role="TrG5h" value="variableReference" />
                          <node concept="2jxLKc" id="3NXs7yp2uoC" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="3NXs7yp2uoD" role="2OqNvi">
                    <node concept="1bVj0M" id="3NXs7yp2uoE" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="3NXs7yp2uoF" role="1bW5cS">
                        <node concept="3clFbF" id="3NXs7yp2uoG" role="3cqZAp">
                          <node concept="2OqwBi" id="3NXs7yp2uoH" role="3clFbG">
                            <node concept="37vLTw" id="3NXs7yp2uoI" role="2Oq$k0">
                              <ref role="3cqZAo" node="3NXs7yp2uoK" resolve="variableReference" />
                            </node>
                            <node concept="2qgKlT" id="3NXs7yp2uoJ" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:4LpUh3V3HC0" resolve="getReferencedVariable" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3NXs7yp2uoK" role="1bW2Oz">
                        <property role="TrG5h" value="variableReference" />
                        <node concept="2jxLKc" id="3NXs7yp2uoL" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3L7_qKLqQPe" role="3cqZAp" />
            <node concept="3cpWs6" id="3NXs7yp2uoM" role="3cqZAp">
              <node concept="2YIFZM" id="3NXs7yp2uoN" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="3NXs7yp2uoO" role="37wK5m">
                  <node concept="37vLTw" id="3NXs7yp2uoP" role="2Oq$k0">
                    <ref role="3cqZAo" node="3NXs7yp2uod" resolve="variables" />
                  </node>
                  <node concept="3zZkjj" id="3NXs7yp2uoQ" role="2OqNvi">
                    <node concept="1bVj0M" id="3NXs7yp2uoR" role="23t8la">
                      <node concept="3clFbS" id="3NXs7yp2uoS" role="1bW5cS">
                        <node concept="3clFbF" id="3NXs7yp2uoT" role="3cqZAp">
                          <node concept="3fqX7Q" id="3NXs7yp2uoU" role="3clFbG">
                            <node concept="2OqwBi" id="3NXs7yp2uoV" role="3fr31v">
                              <node concept="37vLTw" id="3NXs7yp2uoW" role="2Oq$k0">
                                <ref role="3cqZAo" node="3NXs7yp2uoo" resolve="ignoredVariables" />
                              </node>
                              <node concept="3JPx81" id="3NXs7yp2uoX" role="2OqNvi">
                                <node concept="37vLTw" id="3NXs7yp2uoY" role="25WWJ7">
                                  <ref role="3cqZAo" node="3NXs7yp2uoZ" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3NXs7yp2uoZ" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3NXs7yp2up0" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3NXs7yp2up1" role="3clFbw">
            <node concept="17R0WA" id="3NXs7yp2up2" role="3uHU7w">
              <node concept="359W_D" id="3NXs7yp2up3" role="3uHU7w">
                <ref role="359W_E" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                <ref role="359W_F" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
              </node>
              <node concept="2OqwBi" id="3NXs7yp2up4" role="3uHU7B">
                <node concept="37vLTw" id="3NXs7yp2up5" role="2Oq$k0">
                  <ref role="3cqZAo" node="3NXs7yp2unN" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="3NXs7yp2up6" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="3NXs7yp2up7" role="3uHU7B">
              <node concept="37vLTw" id="3NXs7yp2up8" role="3uHU7B">
                <ref role="3cqZAo" node="3L7_qKLqM0V" resolve="flatteningRule" />
              </node>
              <node concept="37vLTw" id="3NXs7yp2up9" role="3uHU7w">
                <ref role="3cqZAo" node="3NXs7yp2unN" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3NXs7yp2upa" role="3cqZAp" />
        <node concept="3clFbF" id="3NXs7yp2upb" role="3cqZAp">
          <node concept="2ShNRf" id="3NXs7yp2upc" role="3clFbG">
            <node concept="1pGfFk" id="3NXs7yp2upd" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3NXs7yp2upe" role="1B3o_S" />
    </node>
    <node concept="3EP7_v" id="4LpUh3V3NVZ" role="1MtirG">
      <node concept="3dgokm" id="4LpUh3V3NW3" role="3EP$qY">
        <node concept="3clFbS" id="4LpUh3V3NW5" role="2VODD2">
          <node concept="3cpWs8" id="4LpUh3V3OME" role="3cqZAp">
            <node concept="3cpWsn" id="4LpUh3V3OMF" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3Tqbb2" id="4LpUh3V3OMb" role="1tU5fm">
                <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
              </node>
              <node concept="2OqwBi" id="4LpUh3V3OMG" role="33vP2m">
                <node concept="2rP1CM" id="4LpUh3V3OMH" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4LpUh3V3OMI" role="2OqNvi">
                  <node concept="1xMEDy" id="4LpUh3V3OMJ" role="1xVPHs">
                    <node concept="chp4Y" id="4LpUh3V3OMK" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4LpUh3V3OML" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4LpUh3WIoHR" role="3cqZAp" />
          <node concept="Jncv_" id="4LpUh3V3OUi" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            <node concept="37vLTw" id="4LpUh3V3OVz" role="JncvB">
              <ref role="3cqZAo" node="4LpUh3V3OMF" resolve="component" />
            </node>
            <node concept="3clFbS" id="4LpUh3V3OUm" role="Jncv$">
              <node concept="3cpWs6" id="4LpUh3V3PvT" role="3cqZAp">
                <node concept="2OqwBi" id="4LpUh3V3PQj" role="3cqZAk">
                  <node concept="2WthIp" id="4LpUh3V3Pzz" role="2Oq$k0" />
                  <node concept="2XshWL" id="4LpUh3V3PTZ" role="2OqNvi">
                    <ref role="2WH_rO" node="4LpUh3V3OYg" resolve="provideDtoScope" />
                    <node concept="Jnkvi" id="4LpUh3V3PVT" role="2XxRq1">
                      <ref role="1M0zk5" node="4LpUh3V3OUo" resolve="dto" />
                    </node>
                    <node concept="2rP1CM" id="4LpUh3V3Q0N" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4LpUh3V3OUo" role="JncvA">
              <property role="TrG5h" value="dto" />
              <node concept="2jxLKc" id="4LpUh3V3OUp" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="4LpUh3V3NYG" role="3cqZAp" />
          <node concept="Jncv_" id="3NXs7yp2xbT" role="3cqZAp">
            <ref role="JncvD" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
            <node concept="37vLTw" id="3NXs7yp2xdT" role="JncvB">
              <ref role="3cqZAo" node="4LpUh3V3OMF" resolve="component" />
            </node>
            <node concept="3clFbS" id="3NXs7yp2xbX" role="Jncv$">
              <node concept="3cpWs6" id="3NXs7yp2xCV" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7yp2xXL" role="3cqZAk">
                  <node concept="2WthIp" id="3NXs7yp2xFE" role="2Oq$k0" />
                  <node concept="2XshWL" id="3NXs7yp2y1Z" role="2OqNvi">
                    <ref role="2WH_rO" node="3NXs7yp2unK" resolve="provideDtoFlatteningRuleScope" />
                    <node concept="Jnkvi" id="3NXs7yp2y5b" role="2XxRq1">
                      <ref role="1M0zk5" node="3NXs7yp2xbZ" resolve="flatteningRuleContainer" />
                    </node>
                    <node concept="2rP1CM" id="3NXs7yp2y8t" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3NXs7yp2xbZ" role="JncvA">
              <property role="TrG5h" value="flatteningRuleContainer" />
              <node concept="2jxLKc" id="3NXs7yp2xc0" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="3NXs7yp2x6N" role="3cqZAp" />
          <node concept="3clFbF" id="4LpUh3V3Oxw" role="3cqZAp">
            <node concept="2ShNRf" id="4LpUh3V3Oxs" role="3clFbG">
              <node concept="1pGfFk" id="4LpUh3V3OCD" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3NXs7yra5nW">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <ref role="1M2myG" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
    <node concept="2XrIbr" id="1pnQbpDKupR" role="32lrUH">
      <property role="TrG5h" value="provideDtoFlatDerivationRuleScope" />
      <node concept="37vLTG" id="1pnQbpDKuwN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1pnQbpDKuzD" role="1tU5fm">
          <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
        </node>
      </node>
      <node concept="37vLTG" id="1pnQbpDKu_6" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="1pnQbpDKuAK" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1pnQbpDKutI" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="1pnQbpDKupT" role="3clF47">
        <node concept="3clFbJ" id="1pnQbpDKvUs" role="3cqZAp">
          <node concept="3clFbS" id="1pnQbpDKvUu" role="3clFbx">
            <node concept="3clFbF" id="5YqiGT0_Pp7" role="3cqZAp">
              <node concept="2OqwBi" id="5YqiGT0_PMb" role="3clFbG">
                <node concept="37vLTw" id="5YqiGT0_Pp5" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pnQbpDKuwN" resolve="node" />
                </node>
                <node concept="2qgKlT" id="5YqiGT0_QbM" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5YqiGT0qq9q" resolve="usedDerivationRules" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YqiGT0_Qkz" role="3cqZAp" />
            <node concept="3cpWs8" id="1pnQbpDKz2F" role="3cqZAp">
              <node concept="3cpWsn" id="1pnQbpDKz2G" role="3cpWs9">
                <property role="TrG5h" value="dtoFlattteningRules" />
                <node concept="A3Dl8" id="1pnQbpDKyWB" role="1tU5fm">
                  <node concept="3Tqbb2" id="1pnQbpDKyWE" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1pnQbpDKz2H" role="33vP2m">
                  <node concept="2OqwBi" id="1pnQbpDKz2I" role="2Oq$k0">
                    <node concept="37vLTw" id="1pnQbpDKz2J" role="2Oq$k0">
                      <ref role="3cqZAo" node="1pnQbpDKuwN" resolve="node" />
                    </node>
                    <node concept="2qgKlT" id="1pnQbpDKz2K" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="1pnQbpDKz2L" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:E4RYE8KrhY" resolve="dtoExplicitFlattteningRules" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1pnQbpDKA8u" role="3cqZAp">
              <node concept="3cpWsn" id="1pnQbpDKA8v" role="3cpWs9">
                <property role="TrG5h" value="usedFlatteningRules" />
                <node concept="A3Dl8" id="1pnQbpDKA6l" role="1tU5fm">
                  <node concept="3Tqbb2" id="1pnQbpDKA6o" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1pnQbpDKA8w" role="33vP2m">
                  <node concept="37vLTw" id="1pnQbpDKA8x" role="2Oq$k0">
                    <ref role="3cqZAo" node="1pnQbpDKuwN" resolve="node" />
                  </node>
                  <node concept="2qgKlT" id="1pnQbpDKA8y" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5QsWOhW8P2M" resolve="findUsedFlatteningRules" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1pnQbpDKEql" role="3cqZAp">
              <node concept="3cpWsn" id="1pnQbpDKEqm" role="3cpWs9">
                <property role="TrG5h" value="resultFlatteningRules" />
                <node concept="A3Dl8" id="1pnQbpDKEoB" role="1tU5fm">
                  <node concept="3Tqbb2" id="1pnQbpDKEoE" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1pnQbpDKEqn" role="33vP2m">
                  <node concept="37vLTw" id="1pnQbpDKEqo" role="2Oq$k0">
                    <ref role="3cqZAo" node="1pnQbpDKz2G" resolve="dtoFlattteningRules" />
                  </node>
                  <node concept="3zZkjj" id="1pnQbpDKEqp" role="2OqNvi">
                    <node concept="1bVj0M" id="1pnQbpDKEqq" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="1pnQbpDKEqr" role="1bW5cS">
                        <node concept="3clFbF" id="E4RYE8K$4o" role="3cqZAp">
                          <node concept="22lmx$" id="E4RYE8K$4p" role="3clFbG">
                            <node concept="3clFbC" id="E4RYE8K$4q" role="3uHU7B">
                              <node concept="37vLTw" id="E4RYE8K$4r" role="3uHU7B">
                                <ref role="3cqZAo" node="1pnQbpDKEqJ" resolve="it" />
                              </node>
                              <node concept="2OqwBi" id="E4RYE8K$4s" role="3uHU7w">
                                <node concept="1PxgMI" id="E4RYE8K$4t" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="E4RYE8K$4u" role="3oSUPX">
                                    <ref role="cht4Q" to="3nll:5YqiGT0mxNQ" resolve="IDtoDerivationRuleReference" />
                                  </node>
                                  <node concept="37vLTw" id="E4RYE8K$4v" role="1m5AlR">
                                    <ref role="3cqZAo" node="1pnQbpDKu_6" resolve="contextNode" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="E4RYE8K$4w" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:5YqiGT0mxXR" resolve="getReferencedRule" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="E4RYE8K$4x" role="3uHU7w">
                              <node concept="2OqwBi" id="E4RYE8K$4y" role="3fr31v">
                                <node concept="37vLTw" id="E4RYE8K$4z" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1pnQbpDKA8v" resolve="usedFlatteningRules" />
                                </node>
                                <node concept="3JPx81" id="E4RYE8K$4$" role="2OqNvi">
                                  <node concept="37vLTw" id="E4RYE8K$4_" role="25WWJ7">
                                    <ref role="3cqZAo" node="1pnQbpDKEqJ" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="1pnQbpDKEqJ" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="1pnQbpDKEqK" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1pnQbpDKFrk" role="3cqZAp" />
            <node concept="3cpWs6" id="1pnQbpDKFPs" role="3cqZAp">
              <node concept="2YIFZM" id="1pnQbpDKGKw" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="37vLTw" id="1pnQbpDKGTC" role="37wK5m">
                  <ref role="3cqZAo" node="1pnQbpDKEqm" resolve="resultFlatteningRules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1pnQbpDKwwU" role="3clFbw">
            <node concept="17R0WA" id="1pnQbpDKxid" role="3uHU7w">
              <node concept="359W_D" id="1pnQbpDKxkw" role="3uHU7w">
                <ref role="359W_E" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                <ref role="359W_F" to="3nll:5QsWOhW8vfl" resolve="derivationRuleReferences" />
              </node>
              <node concept="2OqwBi" id="1pnQbpDKwDc" role="3uHU7B">
                <node concept="37vLTw" id="1pnQbpDKwz3" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pnQbpDKu_6" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="1pnQbpDKwMp" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="1pnQbpDKwaN" role="3uHU7B">
              <node concept="37vLTw" id="1pnQbpDKvWf" role="3uHU7B">
                <ref role="3cqZAo" node="1pnQbpDKuwN" resolve="node" />
              </node>
              <node concept="37vLTw" id="1pnQbpDKwjC" role="3uHU7w">
                <ref role="3cqZAo" node="1pnQbpDKu_6" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1pnQbpDKvQX" role="3cqZAp" />
        <node concept="3clFbF" id="1pnQbpDKvCb" role="3cqZAp">
          <node concept="2ShNRf" id="1pnQbpDKvC7" role="3clFbG">
            <node concept="1pGfFk" id="1pnQbpDKvPl" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1pnQbpDKupU" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5YqiGT0_S8n" role="32lrUH">
      <property role="TrG5h" value="provideDtoRuleScope" />
      <node concept="37vLTG" id="5YqiGT0_S8o" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5YqiGT0_S8p" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
        </node>
      </node>
      <node concept="37vLTG" id="5YqiGT0_S8q" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="5YqiGT0_S8r" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5YqiGT0_S8s" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="5YqiGT0_S8t" role="3clF47">
        <node concept="3clFbJ" id="5YqiGT0_S8u" role="3cqZAp">
          <node concept="3clFbS" id="5YqiGT0_S8v" role="3clFbx">
            <node concept="3clFbF" id="5YqiGT0_S8w" role="3cqZAp">
              <node concept="2OqwBi" id="5YqiGT0_S8x" role="3clFbG">
                <node concept="37vLTw" id="5YqiGT0_S8y" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YqiGT0_S8o" resolve="node" />
                </node>
                <node concept="2qgKlT" id="5YqiGT0_S8z" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5YqiGT0qq9q" resolve="usedDerivationRules" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YqiGT0_S8$" role="3cqZAp" />
            <node concept="3cpWs8" id="5YqiGT0_S8_" role="3cqZAp">
              <node concept="3cpWsn" id="5YqiGT0_S8A" role="3cpWs9">
                <property role="TrG5h" value="dtoFlattteningRules" />
                <node concept="A3Dl8" id="5YqiGT0_S8B" role="1tU5fm">
                  <node concept="3Tqbb2" id="5YqiGT0_S8C" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5YqiGT0_S8D" role="33vP2m">
                  <node concept="2OqwBi" id="5YqiGT0_S8E" role="2Oq$k0">
                    <node concept="37vLTw" id="5YqiGT0_S8F" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YqiGT0_S8o" resolve="node" />
                    </node>
                    <node concept="2qgKlT" id="5YqiGT0_S8G" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="5YqiGT0_S8H" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:E4RYE8KrhY" resolve="dtoExplicitFlattteningRules" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YqiGT0_S8I" role="3cqZAp">
              <node concept="3cpWsn" id="5YqiGT0_S8J" role="3cpWs9">
                <property role="TrG5h" value="usedFlatteningRules" />
                <node concept="A3Dl8" id="5YqiGT0_S8K" role="1tU5fm">
                  <node concept="3Tqbb2" id="5YqiGT0_S8L" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5YqiGT0_S8M" role="33vP2m">
                  <node concept="37vLTw" id="5YqiGT0_S8N" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YqiGT0_S8o" resolve="node" />
                  </node>
                  <node concept="2qgKlT" id="5YqiGT0_S8O" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5QsWOhW8P2M" resolve="findUsedFlatteningRules" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YqiGT0_S8P" role="3cqZAp">
              <node concept="3cpWsn" id="5YqiGT0_S8Q" role="3cpWs9">
                <property role="TrG5h" value="resultFlatteningRules" />
                <node concept="A3Dl8" id="5YqiGT0_S8R" role="1tU5fm">
                  <node concept="3Tqbb2" id="5YqiGT0_S8S" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5YqiGT0_S8T" role="33vP2m">
                  <node concept="37vLTw" id="5YqiGT0_S8U" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YqiGT0_S8A" resolve="dtoFlattteningRules" />
                  </node>
                  <node concept="3zZkjj" id="5YqiGT0_S8V" role="2OqNvi">
                    <node concept="1bVj0M" id="5YqiGT0_S8W" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="5YqiGT0_S8X" role="1bW5cS">
                        <node concept="3clFbF" id="5YqiGT0_S8Y" role="3cqZAp">
                          <node concept="22lmx$" id="5YqiGT0DxbW" role="3clFbG">
                            <node concept="3clFbC" id="5YqiGT0_S99" role="3uHU7B">
                              <node concept="37vLTw" id="5YqiGT0_S9a" role="3uHU7B">
                                <ref role="3cqZAo" node="5YqiGT0_S9h" resolve="it" />
                              </node>
                              <node concept="2OqwBi" id="5YqiGT0HcAU" role="3uHU7w">
                                <node concept="1PxgMI" id="5YqiGT0HbLf" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="5YqiGT0Hciw" role="3oSUPX">
                                    <ref role="cht4Q" to="3nll:5YqiGT0mxNQ" resolve="IDtoDerivationRuleReference" />
                                  </node>
                                  <node concept="37vLTw" id="5YqiGT0_S9b" role="1m5AlR">
                                    <ref role="3cqZAo" node="5YqiGT0_S8q" resolve="contextNode" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="5YqiGT0HcSZ" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:5YqiGT0mxXR" resolve="getReferencedRule" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="5YqiGT0_S9c" role="3uHU7w">
                              <node concept="2OqwBi" id="5YqiGT0_S9d" role="3fr31v">
                                <node concept="37vLTw" id="5YqiGT0_S9e" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5YqiGT0_S8J" resolve="usedFlatteningRules" />
                                </node>
                                <node concept="3JPx81" id="5YqiGT0_S9f" role="2OqNvi">
                                  <node concept="37vLTw" id="5YqiGT0_S9g" role="25WWJ7">
                                    <ref role="3cqZAo" node="5YqiGT0_S9h" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5YqiGT0_S9h" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5YqiGT0_S9i" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YqiGT0_S9m" role="3cqZAp" />
            <node concept="3cpWs6" id="5YqiGT0_S9n" role="3cqZAp">
              <node concept="2YIFZM" id="5YqiGT0_S9o" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="37vLTw" id="5YqiGT0_S9p" role="37wK5m">
                  <ref role="3cqZAo" node="5YqiGT0_S8Q" resolve="resultFlatteningRules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5YqiGT0_S9q" role="3clFbw">
            <node concept="17R0WA" id="5YqiGT0_S9r" role="3uHU7w">
              <node concept="359W_D" id="5YqiGT0_S9s" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                <ref role="359W_F" to="3nll:5QsWOhW8vfl" resolve="derivationRuleReferences" />
              </node>
              <node concept="2OqwBi" id="5YqiGT0_S9t" role="3uHU7B">
                <node concept="37vLTw" id="5YqiGT0_S9u" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YqiGT0_S8q" resolve="contextNode" />
                </node>
                <node concept="2NL2c5" id="5YqiGT0_S9v" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="5YqiGT0_S9w" role="3uHU7B">
              <node concept="37vLTw" id="5YqiGT0_S9x" role="3uHU7B">
                <ref role="3cqZAo" node="5YqiGT0_S8o" resolve="node" />
              </node>
              <node concept="37vLTw" id="5YqiGT0_S9y" role="3uHU7w">
                <ref role="3cqZAo" node="5YqiGT0_S8q" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YqiGT0_S9z" role="3cqZAp" />
        <node concept="3clFbF" id="5YqiGT0_S9$" role="3cqZAp">
          <node concept="2ShNRf" id="5YqiGT0_S9_" role="3clFbG">
            <node concept="1pGfFk" id="5YqiGT0_S9A" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5YqiGT0_S9B" role="1B3o_S" />
    </node>
    <node concept="EnEH3" id="3NXs7yra5nX" role="1MhHOB">
      <ref role="EomxK" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
      <node concept="1LLf8_" id="3NXs7yra5pg" role="1LXaQT">
        <node concept="3clFbS" id="3NXs7yra5ph" role="2VODD2">
          <node concept="3clFbJ" id="3NXs7yra6rK" role="3cqZAp">
            <node concept="3clFbS" id="3NXs7yra6rM" role="3clFbx">
              <node concept="3clFbF" id="3NXs7yra6zx" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7yra72G" role="3clFbG">
                  <node concept="2OqwBi" id="3NXs7yra6zR" role="2Oq$k0">
                    <node concept="EsrRn" id="3NXs7yra6zw" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3NXs7yra6Rm" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                    </node>
                  </node>
                  <node concept="3YRAZt" id="3NXs7yra7k0" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3NXs7yra6uL" role="3clFbw">
              <node concept="1Wqviy" id="3NXs7yra6sL" role="2Oq$k0" />
              <node concept="21noJN" id="3NXs7yra6ws" role="2OqNvi">
                <node concept="21nZrQ" id="3NXs7yra6wu" role="21noJM">
                  <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3NXs7yra5td" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7yra65B" role="3clFbG">
              <node concept="2OqwBi" id="3NXs7yra5Eo" role="2Oq$k0">
                <node concept="EsrRn" id="3NXs7yra5tc" role="2Oq$k0" />
                <node concept="3TrcHB" id="3NXs7yra5W5" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
                </node>
              </node>
              <node concept="tyxLq" id="3NXs7yra6hw" role="2OqNvi">
                <node concept="1Wqviy" id="3NXs7yra6n5" role="tz02z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EP7_v" id="1pnQbpDKujW" role="1MtirG">
      <node concept="3dgokm" id="1pnQbpDKukX" role="3EP$qY">
        <node concept="3clFbS" id="1pnQbpDKukZ" role="2VODD2">
          <node concept="3cpWs8" id="1pnQbpDKvgu" role="3cqZAp">
            <node concept="3cpWsn" id="1pnQbpDKvgv" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3Tqbb2" id="1pnQbpDKvg3" role="1tU5fm">
                <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
              </node>
              <node concept="2OqwBi" id="1pnQbpDKvgw" role="33vP2m">
                <node concept="2rP1CM" id="1pnQbpDKvgx" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1pnQbpDKvgy" role="2OqNvi">
                  <node concept="1xMEDy" id="1pnQbpDKvgz" role="1xVPHs">
                    <node concept="chp4Y" id="1pnQbpDKvg$" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="1pnQbpDKvg_" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1pnQbpDKvoS" role="3cqZAp" />
          <node concept="Jncv_" id="1pnQbpDKuP3" role="3cqZAp">
            <ref role="JncvD" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
            <node concept="37vLTw" id="1pnQbpDKvjM" role="JncvB">
              <ref role="3cqZAo" node="1pnQbpDKvgv" resolve="component" />
            </node>
            <node concept="3clFbS" id="1pnQbpDKuP7" role="Jncv$">
              <node concept="3cpWs6" id="5YqiGT0_S66" role="3cqZAp">
                <node concept="2OqwBi" id="1pnQbpDKvqu" role="3cqZAk">
                  <node concept="2WthIp" id="1pnQbpDKvqx" role="2Oq$k0" />
                  <node concept="2XshWL" id="1pnQbpDKvqz" role="2OqNvi">
                    <ref role="2WH_rO" node="1pnQbpDKupR" resolve="provideDtoFlatDerivationRuleScope" />
                    <node concept="Jnkvi" id="1pnQbpDKvuu" role="2XxRq1">
                      <ref role="1M0zk5" node="1pnQbpDKuP9" resolve="flatRule" />
                    </node>
                    <node concept="2rP1CM" id="1pnQbpDKvwH" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="1pnQbpDKuP9" role="JncvA">
              <property role="TrG5h" value="flatRule" />
              <node concept="2jxLKc" id="1pnQbpDKuPa" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="5YqiGT0_RYa" role="3cqZAp" />
          <node concept="Jncv_" id="5YqiGT0_S1I" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            <node concept="37vLTw" id="5YqiGT0_S3j" role="JncvB">
              <ref role="3cqZAo" node="1pnQbpDKvgv" resolve="component" />
            </node>
            <node concept="3clFbS" id="5YqiGT0_S1M" role="Jncv$">
              <node concept="3cpWs6" id="5YqiGT0_U6Z" role="3cqZAp">
                <node concept="2OqwBi" id="5YqiGT0_Ucv" role="3cqZAk">
                  <node concept="2WthIp" id="5YqiGT0_Ucy" role="2Oq$k0" />
                  <node concept="2XshWL" id="5YqiGT0_Uc$" role="2OqNvi">
                    <ref role="2WH_rO" node="5YqiGT0_S8n" resolve="provideDtoRuleScope" />
                    <node concept="Jnkvi" id="5YqiGT0_Uef" role="2XxRq1">
                      <ref role="1M0zk5" node="5YqiGT0_S1O" resolve="dto" />
                    </node>
                    <node concept="2rP1CM" id="5YqiGT0_UhT" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="5YqiGT0_S1O" role="JncvA">
              <property role="TrG5h" value="dto" />
              <node concept="2jxLKc" id="5YqiGT0_S1P" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="1pnQbpDKuMr" role="3cqZAp" />
          <node concept="3clFbF" id="1pnQbpDKuE6" role="3cqZAp">
            <node concept="2ShNRf" id="1pnQbpDKuE2" role="3clFbG">
              <node concept="1pGfFk" id="1pnQbpDKuL1" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="E4RYE9akaY">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <ref role="1M2myG" to="3nll:E4RYE9aka5" resolve="IDtoFlatteningRuleContainerComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="E4RYE9akp8">
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <ref role="1M2myG" to="3nll:E4RYE9aka8" resolve="IDtoDataTypeRuleContainerComponent" />
    <ref role="1MND4H" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
  </node>
  <node concept="1M2fIO" id="7IRUqbcguXw">
    <property role="3GE5qa" value="event" />
    <ref role="1M2myG" to="3nll:7fqk8p43ygS" resolve="Event" />
    <node concept="3EP7_v" id="7IRUqbcguXx" role="1MtirG">
      <node concept="3dgokm" id="7IRUqbcguX_" role="3EP$qY">
        <node concept="3clFbS" id="7IRUqbcguXB" role="2VODD2">
          <node concept="3clFbF" id="7IRUqbcgvgG" role="3cqZAp">
            <node concept="2ShNRf" id="7IRUqbcgvgE" role="3clFbG">
              <node concept="1pGfFk" id="7IRUqbcgw_N" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

