<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="7ztp" ref="r:3eb3aafd-620b-4947-940a-c9f6d272b651(CQRS.util)" />
    <import index="sx7w" ref="r:dc830b23-b722-4fd1-8178-0431aafe57ef(CQRS.behavior)" implicit="true" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
    <import index="8pak" ref="r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="4323500428136740385" name="jetbrains.mps.lang.editor.structure.CellIdReferenceSelector" flags="ng" index="2TlHUq">
        <reference id="4323500428136742952" name="id" index="2TlMyj" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091385" name="isErrorIntention" index="2ZfUl3" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
        <child id="5764240145346688149" name="fieldDeclaration" index="1S$sla" />
      </concept>
      <concept id="1240316299033" name="jetbrains.mps.lang.intentions.structure.QueryBlock" flags="in" index="38BcoT">
        <child id="1240393479918" name="paramType" index="3ddBve" />
      </concept>
      <concept id="1240322627579" name="jetbrains.mps.lang.intentions.structure.IntentionParameter" flags="nn" index="38Zlrr" />
      <concept id="1240395258925" name="jetbrains.mps.lang.intentions.structure.ParameterizedIntentionDeclaration" flags="ig" index="3dkpOd">
        <child id="1240395532443" name="queryFunction" index="3dlsAV" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
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
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
      </concept>
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1966870290088668520" name="jetbrains.mps.lang.smodel.structure.Enum_MembersOperation" flags="ng" index="2ViDtN" />
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumerationMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
      <concept id="2453008993612717257" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCaseBody_StatementList" flags="ng" index="3X5gDB">
        <child id="2453008993612717258" name="statementList" index="3X5gD$" />
      </concept>
      <concept id="2453008993612717253" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCaseBody_Expression" flags="ng" index="3X5gDF">
        <child id="2453008993612717254" name="expression" index="3X5gDC" />
      </concept>
      <concept id="2453008993612559843" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCase" flags="ng" index="3X5Udd">
        <child id="2453008993612717146" name="body" index="3X5gFO" />
        <child id="2453008993612559844" name="members" index="3X5Uda" />
      </concept>
      <concept id="2453008993612559839" name="jetbrains.mps.lang.smodel.structure.EnumSwitchExpression" flags="ng" index="3X5UdL">
        <child id="2453008993612714935" name="cases" index="3X5gkp" />
        <child id="2453008993612559840" name="enumExpression" index="3X5Ude" />
      </concept>
      <concept id="5779574625832259537" name="jetbrains.mps.lang.smodel.structure.EnumMember_PresentationOperation" flags="ng" index="1XCIdh" />
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="2S6QgY" id="3FBObroht6I">
    <property role="3GE5qa" value="aggregates" />
    <property role="TrG5h" value="AggregateRootCommandContainerCreationIntention" />
    <ref role="2ZfgGC" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
    <node concept="2S6ZIM" id="3FBObroht6J" role="2ZfVej">
      <node concept="3clFbS" id="3FBObroht6K" role="2VODD2">
        <node concept="3clFbF" id="3FBObrohtdH" role="3cqZAp">
          <node concept="Xl_RD" id="3FBObrohtdG" role="3clFbG">
            <property role="Xl_RC" value="Create command block" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FBObroht6L" role="2ZfgGD">
      <node concept="3clFbS" id="3FBObroht6M" role="2VODD2">
        <node concept="3cpWs8" id="1jrq3noNyjR" role="3cqZAp">
          <node concept="3cpWsn" id="1jrq3noNyjS" role="3cpWs9">
            <property role="TrG5h" value="repositoryReference" />
            <node concept="3Tqbb2" id="1jrq3noNyhD" role="1tU5fm">
              <ref role="ehGHo" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
            </node>
            <node concept="2ShNRf" id="1jrq3noNyjT" role="33vP2m">
              <node concept="3zrR0B" id="1jrq3noNyjU" role="2ShVmc">
                <node concept="3Tqbb2" id="1jrq3noNyjV" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jrq3noNxRN" role="3cqZAp">
          <node concept="2OqwBi" id="1jrq3noNzF_" role="3clFbG">
            <node concept="2OqwBi" id="1jrq3noNzb8" role="2Oq$k0">
              <node concept="37vLTw" id="1jrq3noNyjW" role="2Oq$k0">
                <ref role="3cqZAo" node="1jrq3noNyjS" resolve="repositoryReference" />
              </node>
              <node concept="3TrEf2" id="1jrq3noNzsg" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:5$Oa65a7pgL" resolve="aggregate" />
              </node>
            </node>
            <node concept="2oxUTD" id="1jrq3noN$nF" role="2OqNvi">
              <node concept="2Sf5sV" id="1jrq3noN$pV" role="2oxUTC" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5qxF18G1My_" role="3cqZAp" />
        <node concept="3SKdUt" id="5qxF18G1MWa" role="3cqZAp">
          <node concept="1PaTwC" id="5qxF18G1MWb" role="1aUNEU">
            <node concept="3oM_SD" id="5qxF18G1N8y" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="5qxF18G1N8C" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="5qxF18G1N8H" role="1PaTwD">
              <property role="3oM_SC" value="Potentiell" />
            </node>
            <node concept="3oM_SD" id="5qxF18G1N8W" role="1PaTwD">
              <property role="3oM_SC" value="entfernen" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="5qxF18G9unD" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5qxF18G1Nn4" role="8Wnug">
            <node concept="2OqwBi" id="5qxF18G1Ow6" role="3clFbG">
              <node concept="2OqwBi" id="5qxF18G1NWP" role="2Oq$k0">
                <node concept="37vLTw" id="5qxF18G1Nn2" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jrq3noNyjS" resolve="repositoryReference" />
                </node>
                <node concept="3TrEf2" id="5qxF18G1OjX" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:5qxF18FZ9WI" resolve="aggregateRepository" />
                </node>
              </node>
              <node concept="2oxUTD" id="5qxF18G1OQz" role="2OqNvi">
                <node concept="2OqwBi" id="5qxF18G1Pbd" role="2oxUTC">
                  <node concept="2Sf5sV" id="5qxF18G1OSv" role="2Oq$k0" />
                  <node concept="2qgKlT" id="5qxF18G1PwB" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3AwzpICw894" resolve="repository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5qxF18G1PE_" role="3cqZAp" />
        <node concept="3cpWs8" id="3FBObroh$zu" role="3cqZAp">
          <node concept="3cpWsn" id="3FBObroh$zv" role="3cpWs9">
            <property role="TrG5h" value="commandContainer" />
            <node concept="3Tqbb2" id="3FBObroh$zw" role="1tU5fm">
              <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
            </node>
            <node concept="2ShNRf" id="3FBObroh$zx" role="33vP2m">
              <node concept="3zrR0B" id="3FBObroh$zy" role="2ShVmc">
                <node concept="3Tqbb2" id="3FBObroh$zz" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="omljbwQLgK" role="3cqZAp">
          <node concept="2OqwBi" id="omljbwQLFv" role="3clFbG">
            <node concept="37vLTw" id="omljbwQLgI" role="2Oq$k0">
              <ref role="3cqZAo" node="3FBObroh$zv" resolve="commandContainer" />
            </node>
            <node concept="2qgKlT" id="omljbwQM6n" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSQy" resolve="addReference" />
              <node concept="37vLTw" id="omljbwQMbL" role="37wK5m">
                <ref role="3cqZAo" node="1jrq3noNyjS" resolve="repositoryReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="omljbx0R2_" role="3cqZAp">
          <node concept="2OqwBi" id="omljbx0Tb9" role="3clFbG">
            <node concept="2OqwBi" id="omljbx0RNr" role="2Oq$k0">
              <node concept="37vLTw" id="omljbx0R2z" role="2Oq$k0">
                <ref role="3cqZAo" node="3FBObroh$zv" resolve="commandContainer" />
              </node>
              <node concept="3TrcHB" id="omljbx0SpT" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
            <node concept="tyxLq" id="omljbx0UnJ" role="2OqNvi">
              <node concept="3clFbT" id="omljbx0Uoo" role="tz02z">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1jrq3noN$IV" role="3cqZAp" />
        <node concept="3cpWs8" id="3VGLvhFlDVX" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhFlDVY" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="3VGLvhFlDVh" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="3VGLvhFlDVZ" role="33vP2m">
              <node concept="2Sf5sV" id="3VGLvhFlDW0" role="2Oq$k0" />
              <node concept="2qgKlT" id="3VGLvhFlDW1" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3FBObroh$zF" role="3cqZAp">
          <node concept="3cpWsn" id="3FBObroh$zG" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="3FBObroh$zH" role="1tU5fm" />
            <node concept="2OqwBi" id="3FBObrohTV7" role="33vP2m">
              <node concept="2qgKlT" id="3FBObrohUfj" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3FBObrohI14" resolve="indexOf" />
                <node concept="2Sf5sV" id="3FBObrohUnG" role="37wK5m" />
              </node>
              <node concept="37vLTw" id="3VGLvhFlED2" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhFlDVY" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3FBObroh$zR" role="3cqZAp">
          <node concept="2OqwBi" id="3FBObroh$zS" role="3clFbG">
            <node concept="2OqwBi" id="3FBObroh$zT" role="2Oq$k0">
              <node concept="3Tsc0h" id="3FBObroh$zX" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="3VGLvhFlF8n" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhFlDVY" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="3FBObroh$zY" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="3FBObroh$zZ" role="37wK5m">
                <node concept="3cmrfG" id="3FBObroh$$0" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="3FBObroh$$1" role="3uHU7B">
                  <ref role="3cqZAo" node="3FBObroh$zG" resolve="index" />
                </node>
              </node>
              <node concept="2ShNRf" id="3FBObroh$$2" role="37wK5m">
                <node concept="3zrR0B" id="3FBObroh$$3" role="2ShVmc">
                  <node concept="3Tqbb2" id="3FBObroh$$4" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3FBObroh$$5" role="3cqZAp">
          <node concept="2OqwBi" id="3FBObroh$$6" role="3clFbG">
            <node concept="2OqwBi" id="3FBObroh$$7" role="2Oq$k0">
              <node concept="3Tsc0h" id="3FBObroh$$b" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="3VGLvhFlFhB" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhFlDVY" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="3FBObroh$$c" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="3FBObroh$$d" role="37wK5m">
                <node concept="3cmrfG" id="3FBObroh$$e" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="3FBObroh$$f" role="3uHU7B">
                  <ref role="3cqZAo" node="3FBObroh$zG" resolve="index" />
                </node>
              </node>
              <node concept="37vLTw" id="3FBObroh$$g" role="37wK5m">
                <ref role="3cqZAo" node="3FBObroh$zv" resolve="commandContainer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3FBObrohtOz" role="2ZfVeh">
      <node concept="3clFbS" id="3FBObrohtO$" role="2VODD2">
        <node concept="3clFbF" id="3VGLvhFlGSg" role="3cqZAp">
          <node concept="3clFbT" id="3VGLvhFlGSf" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3FBObrojrv3">
    <property role="3GE5qa" value="variable.property" />
    <property role="TrG5h" value="PropertyGetterCreationIntention" />
    <ref role="2ZfgGC" to="3nll:7fqk8p3V6WN" resolve="Property" />
    <node concept="2S6ZIM" id="3FBObrojrv4" role="2ZfVej">
      <node concept="3clFbS" id="3FBObrojrv5" role="2VODD2">
        <node concept="3clFbF" id="3FBObrojsWP" role="3cqZAp">
          <node concept="3cpWs3" id="3FBObrojuBl" role="3clFbG">
            <node concept="Xl_RD" id="3FBObrojuCH" role="3uHU7w">
              <property role="Xl_RC" value=" getter" />
            </node>
            <node concept="1eOMI4" id="3FBObrojsWN" role="3uHU7B">
              <node concept="3K4zz7" id="3FBObrojtPs" role="1eOMHV">
                <node concept="Xl_RD" id="3FBObrojtQr" role="3K4E3e">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="Xl_RD" id="3FBObrojtSK" role="3K4GZi">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="2OqwBi" id="3FBObrojtaf" role="3K4Cdx">
                  <node concept="2Sf5sV" id="3FBObrojsXv" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3FBObrojtpE" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3DbZR$ObFWz" resolve="hasGetter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FBObrojrv6" role="2ZfgGD">
      <node concept="3clFbS" id="3FBObrojrv7" role="2VODD2">
        <node concept="3clFbF" id="3FBObrojuMl" role="3cqZAp">
          <node concept="2OqwBi" id="3FBObrojuVr" role="3clFbG">
            <node concept="2OqwBi" id="3FBObrojuOR" role="2Oq$k0">
              <node concept="2Sf5sV" id="3FBObrojuMk" role="2Oq$k0" />
              <node concept="3TrcHB" id="3FBObrojuQ5" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3DbZR$ObFWz" resolve="hasGetter" />
              </node>
            </node>
            <node concept="tyxLq" id="3FBObrojvg6" role="2OqNvi">
              <node concept="3fqX7Q" id="3FBObrojvnm" role="tz02z">
                <node concept="2OqwBi" id="3FBObrojvno" role="3fr31v">
                  <node concept="2Sf5sV" id="3FBObrojvnp" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3FBObrojvnq" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3DbZR$ObFWz" resolve="hasGetter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3FBObrokQ17">
    <property role="3GE5qa" value="method" />
    <property role="TrG5h" value="MethodChangeVisibilityIntention" />
    <ref role="2ZfgGC" to="3nll:7fqk8p3W55Y" resolve="Method" />
    <node concept="2S6ZIM" id="3FBObrokQ18" role="2ZfVej">
      <node concept="3clFbS" id="3FBObrokQ19" role="2VODD2">
        <node concept="3clFbF" id="3FBObrokQ82" role="3cqZAp">
          <node concept="3cpWs3" id="3FBObrokQNB" role="3clFbG">
            <node concept="1eOMI4" id="3FBObrokQOm" role="3uHU7w">
              <node concept="3K4zz7" id="3FBObrokSlF" role="1eOMHV">
                <node concept="Xl_RD" id="3FBObrokSmV" role="3K4E3e">
                  <property role="Xl_RC" value="private" />
                </node>
                <node concept="Xl_RD" id="3FBObrokSqx" role="3K4GZi">
                  <property role="Xl_RC" value="public" />
                </node>
                <node concept="2OqwBi" id="3FBObrokRFJ" role="3K4Cdx">
                  <node concept="2OqwBi" id="3FBObrokRdB" role="2Oq$k0">
                    <node concept="2Sf5sV" id="3FBObrokQP4" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3FBObrokRzj" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:awtshksDjo" resolve="modifier" />
                    </node>
                  </node>
                  <node concept="21noJN" id="3FBObrokRRN" role="2OqNvi">
                    <node concept="21nZrQ" id="3FBObrokRRP" role="21noJM">
                      <ref role="21nZrZ" to="3nll:awtshksDjd" resolve="public" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="3FBObrokQ81" role="3uHU7B">
              <property role="Xl_RC" value="Make " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FBObrokQ1a" role="2ZfgGD">
      <node concept="3clFbS" id="3FBObrokQ1b" role="2VODD2">
        <node concept="3clFbF" id="3FBObrokStj" role="3cqZAp">
          <node concept="2OqwBi" id="3FBObrokTbH" role="3clFbG">
            <node concept="2OqwBi" id="3FBObrokSGH" role="2Oq$k0">
              <node concept="2Sf5sV" id="3FBObrokSti" role="2Oq$k0" />
              <node concept="3TrcHB" id="3FBObrokT2b" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:awtshksDjo" resolve="modifier" />
              </node>
            </node>
            <node concept="tyxLq" id="3FBObrokTnz" role="2OqNvi">
              <node concept="3K4zz7" id="3FBObrokTYy" role="tz02z">
                <node concept="2OqwBi" id="3FBObrokUm$" role="3K4E3e">
                  <node concept="1XH99k" id="3FBObrokTZQ" role="2Oq$k0">
                    <ref role="1XH99l" to="3nll:awtshksDj1" resolve="MethodModifier" />
                  </node>
                  <node concept="2ViDtV" id="3FBObrokUCO" role="2OqNvi">
                    <ref role="2ViDtZ" to="3nll:awtshksDjf" resolve="private" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3FBObrokVxm" role="3K4GZi">
                  <node concept="1XH99k" id="3FBObrokUDV" role="2Oq$k0">
                    <ref role="1XH99l" to="3nll:awtshksDj1" resolve="MethodModifier" />
                  </node>
                  <node concept="2ViDtV" id="3FBObrokVzf" role="2OqNvi">
                    <ref role="2ViDtZ" to="3nll:awtshksDjd" resolve="public" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3FBObrokTvZ" role="3K4Cdx">
                  <node concept="2OqwBi" id="3FBObrokTti" role="2Oq$k0">
                    <node concept="2Sf5sV" id="3FBObrokTok" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3FBObrokTuM" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:awtshksDjo" resolve="modifier" />
                    </node>
                  </node>
                  <node concept="21noJN" id="3FBObrokTyg" role="2OqNvi">
                    <node concept="21nZrQ" id="3FBObrokTyi" role="21noJM">
                      <ref role="21nZrZ" to="3nll:awtshksDjd" resolve="public" />
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
  <node concept="2S6QgY" id="3FBObromjlw">
    <property role="3GE5qa" value="method" />
    <property role="TrG5h" value="MethodAddReturnValueIntention" />
    <ref role="2ZfgGC" to="3nll:7fqk8p3W55Y" resolve="Method" />
    <node concept="2S6ZIM" id="3FBObromjlx" role="2ZfVej">
      <node concept="3clFbS" id="3FBObromjly" role="2VODD2">
        <node concept="3clFbF" id="2Bsub$Lex1a" role="3cqZAp">
          <node concept="3cpWs3" id="2Bsub$Lezf4" role="3clFbG">
            <node concept="Xl_RD" id="2Bsub$LezgH" role="3uHU7w">
              <property role="Xl_RC" value=" return type" />
            </node>
            <node concept="1eOMI4" id="2Bsub$Lex16" role="3uHU7B">
              <node concept="3K4zz7" id="2Bsub$LeyFv" role="1eOMHV">
                <node concept="Xl_RD" id="2Bsub$LeyGJ" role="3K4E3e">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="Xl_RD" id="2Bsub$LeyIB" role="3K4GZi">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="2OqwBi" id="2Bsub$LexWF" role="3K4Cdx">
                  <node concept="2OqwBi" id="2Bsub$Lext2" role="2Oq$k0">
                    <node concept="2Sf5sV" id="2Bsub$Lex7G" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2Bsub$LexMH" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:7fqk8p40d8l" resolve="returnTypeWrapper" />
                    </node>
                  </node>
                  <node concept="3w_OXm" id="2Bsub$Leyc_" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FBObromjlz" role="2ZfgGD">
      <node concept="3clFbS" id="3FBObromjl$" role="2VODD2">
        <node concept="3clFbJ" id="2Bsub$Lez_M" role="3cqZAp">
          <node concept="3clFbS" id="2Bsub$Lez_O" role="3clFbx">
            <node concept="3clFbF" id="2Bsub$LevQK" role="3cqZAp">
              <node concept="2OqwBi" id="2Bsub$LewAy" role="3clFbG">
                <node concept="2OqwBi" id="2Bsub$Lew7i" role="2Oq$k0">
                  <node concept="2Sf5sV" id="2Bsub$LevQJ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2Bsub$LewsK" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7fqk8p40d8l" resolve="returnTypeWrapper" />
                  </node>
                </node>
                <node concept="zfrQC" id="2Bsub$LewLw" role="2OqNvi">
                  <ref role="1A9B2P" to="3nll:6ci4EVj$QUy" resolve="DataTypeWrapper" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2Bsub$LezHS" role="3clFbw">
            <node concept="2OqwBi" id="2Bsub$LezDZ" role="2Oq$k0">
              <node concept="2Sf5sV" id="2Bsub$LezB2" role="2Oq$k0" />
              <node concept="3TrEf2" id="2Bsub$LezFh" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:7fqk8p40d8l" resolve="returnTypeWrapper" />
              </node>
            </node>
            <node concept="3w_OXm" id="2Bsub$LezJy" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="2Bsub$LezKj" role="9aQIa">
            <node concept="3clFbS" id="2Bsub$LezKk" role="9aQI4">
              <node concept="3clFbF" id="2Bsub$LezOi" role="3cqZAp">
                <node concept="2OqwBi" id="2Bsub$LezVa" role="3clFbG">
                  <node concept="2OqwBi" id="2Bsub$LezRk" role="2Oq$k0">
                    <node concept="2Sf5sV" id="2Bsub$LezOh" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2Bsub$LezSw" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:7fqk8p40d8l" resolve="returnTypeWrapper" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="2Bsub$Le$a3" role="2OqNvi">
                    <node concept="10Nm6u" id="2Bsub$Le$bz" role="2oxUTC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3FBObrop922">
    <property role="TrG5h" value="ChangeParameterArrangementIntention" />
    <property role="3GE5qa" value="variable.parameter" />
    <ref role="2ZfgGC" to="3nll:oGImgNU0o$" resolve="IComponentWithParameters" />
    <node concept="2S6ZIM" id="3FBObrop923" role="2ZfVej">
      <node concept="3clFbS" id="3FBObrop924" role="2VODD2">
        <node concept="3cpWs8" id="1aRcFPNHsFP" role="3cqZAp">
          <node concept="3cpWsn" id="1aRcFPNHsFQ" role="3cpWs9">
            <property role="TrG5h" value="alignment" />
            <node concept="17QB3L" id="1aRcFPNHsFk" role="1tU5fm" />
            <node concept="3K4zz7" id="1aRcFPNHsFR" role="33vP2m">
              <node concept="Xl_RD" id="1aRcFPNHsFS" role="3K4E3e">
                <property role="Xl_RC" value="Horizontal" />
              </node>
              <node concept="Xl_RD" id="1aRcFPNHsFT" role="3K4GZi">
                <property role="Xl_RC" value="Vertical" />
              </node>
              <node concept="2OqwBi" id="1aRcFPNHsFU" role="3K4Cdx">
                <node concept="2Sf5sV" id="1aRcFPNHsFV" role="2Oq$k0" />
                <node concept="3TrcHB" id="1aRcFPNHsFW" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1aRcFPNHsUi" role="3cqZAp">
          <node concept="3cpWs3" id="1aRcFPNHtd_" role="3clFbG">
            <node concept="37vLTw" id="1aRcFPNHteP" role="3uHU7B">
              <ref role="3cqZAo" node="1aRcFPNHsFQ" resolve="alignment" />
            </node>
            <node concept="Xl_RD" id="3FBObropcvq" role="3uHU7w">
              <property role="Xl_RC" value=" parameter arrangement" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FBObrop925" role="2ZfgGD">
      <node concept="3clFbS" id="3FBObrop926" role="2VODD2">
        <node concept="3clFbF" id="3FBObropczP" role="3cqZAp">
          <node concept="2OqwBi" id="3FBObropdok" role="3clFbG">
            <node concept="2OqwBi" id="3FBObros1hG" role="2Oq$k0">
              <node concept="2Sf5sV" id="3FBObropczO" role="2Oq$k0" />
              <node concept="3TrcHB" id="3FBObros1j$" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
              </node>
            </node>
            <node concept="tyxLq" id="3FBObropdFD" role="2OqNvi">
              <node concept="3fqX7Q" id="3FBObropdGq" role="tz02z">
                <node concept="2OqwBi" id="3FBObros1px" role="3fr31v">
                  <node concept="2Sf5sV" id="3FBObropdHf" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3FBObros1r$" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3FBObrown4Y" role="2ZfVeh">
      <node concept="3clFbS" id="3FBObrown4Z" role="2VODD2">
        <node concept="3clFbF" id="3FBObrowncq" role="3cqZAp">
          <node concept="22lmx$" id="3FBObrowvbv" role="3clFbG">
            <node concept="2OqwBi" id="3FBObrowvxn" role="3uHU7w">
              <node concept="2Sf5sV" id="3FBObrowvjs" role="2Oq$k0" />
              <node concept="3TrcHB" id="3FBObrowvFm" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
              </node>
            </node>
            <node concept="2OqwBi" id="3FBObrowqn4" role="3uHU7B">
              <node concept="2OqwBi" id="3FBObrownrH" role="2Oq$k0">
                <node concept="2Sf5sV" id="3FBObrowncp" role="2Oq$k0" />
                <node concept="3Tsc0h" id="3FBObrown$B" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                </node>
              </node>
              <node concept="3GX2aA" id="3FBObrowsrB" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="2Bsub$LblBe">
    <property role="3GE5qa" value="valueObjects" />
    <property role="TrG5h" value="ValueObjectBodyIntentions" />
    <ref role="2ZfgGC" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
    <node concept="2S6ZIM" id="2Bsub$LblBf" role="2ZfVej">
      <node concept="3clFbS" id="2Bsub$LblBg" role="2VODD2">
        <node concept="3clFbF" id="2Bsub$Lj8VT" role="3cqZAp">
          <node concept="3cpWs3" id="2Bsub$Lj8Z7" role="3clFbG">
            <node concept="Xl_RD" id="2Bsub$Ljdf1" role="3uHU7w">
              <property role="Xl_RC" value=" Body" />
            </node>
            <node concept="1eOMI4" id="2Bsub$Lj8Y4" role="3uHU7B">
              <node concept="3K4zz7" id="2Bsub$LjcYA" role="1eOMHV">
                <node concept="Xl_RD" id="2Bsub$Ljd0i" role="3K4E3e">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="Xl_RD" id="2Bsub$LjdbI" role="3K4GZi">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="2OqwBi" id="2Bsub$LjaEx" role="3K4Cdx">
                  <node concept="2OqwBi" id="2Bsub$Lj9gH" role="2Oq$k0">
                    <node concept="2Sf5sV" id="2Bsub$Lj900" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="2Bsub$Lj9xQ" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgN2kvl" resolve="components" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="2Bsub$Ljcg2" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2Bsub$LblBh" role="2ZfgGD">
      <node concept="3clFbS" id="2Bsub$LblBi" role="2VODD2">
        <node concept="3clFbJ" id="2Bsub$LjdOu" role="3cqZAp">
          <node concept="3clFbS" id="2Bsub$LjdOw" role="3clFbx">
            <node concept="3clFbF" id="2Bsub$LbpIA" role="3cqZAp">
              <node concept="2OqwBi" id="2Bsub$Lbqfe" role="3clFbG">
                <node concept="2OqwBi" id="2Bsub$LbpIW" role="2Oq$k0">
                  <node concept="2Sf5sV" id="2Bsub$LbpI_" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2Bsub$LbpKa" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgN2kvl" resolve="components" />
                  </node>
                </node>
                <node concept="WFELt" id="2Bsub$LbqBi" role="2OqNvi">
                  <ref role="1A0vxQ" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2Bsub$LjfF5" role="3clFbw">
            <node concept="2OqwBi" id="2Bsub$Lje2I" role="2Oq$k0">
              <node concept="2Sf5sV" id="2Bsub$LjdPJ" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2Bsub$LjekH" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:oGImgN2kvl" resolve="components" />
              </node>
            </node>
            <node concept="1v1jN8" id="2Bsub$Ljh24" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="2Bsub$Ljh3a" role="9aQIa">
            <node concept="3clFbS" id="2Bsub$Ljh3b" role="9aQI4">
              <node concept="3clFbF" id="2Bsub$LjhaX" role="3cqZAp">
                <node concept="2OqwBi" id="2Bsub$LjhLd" role="3clFbG">
                  <node concept="2OqwBi" id="2Bsub$LjhdB" role="2Oq$k0">
                    <node concept="2Sf5sV" id="2Bsub$LjhaW" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="2Bsub$LjheN" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgN2kvl" resolve="components" />
                    </node>
                  </node>
                  <node concept="2Kehj3" id="2Bsub$LjiRx" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="2Bsub$LcW5z">
    <property role="3GE5qa" value="aggregateRepository" />
    <property role="TrG5h" value="AggregateRootRepositoryConvertRepositoryTypeIntention" />
    <ref role="2ZfgGC" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
    <node concept="2S6ZIM" id="2Bsub$LcW5$" role="2ZfVej">
      <node concept="3clFbS" id="2Bsub$LcW5_" role="2VODD2">
        <node concept="3clFbF" id="2Bsub$LcWcK" role="3cqZAp">
          <node concept="3cpWs3" id="2Bsub$LcX1I" role="3clFbG">
            <node concept="Xl_RD" id="2Bsub$LcX9U" role="3uHU7w">
              <property role="Xl_RC" value=" Repository" />
            </node>
            <node concept="3cpWs3" id="2Bsub$LcWZZ" role="3uHU7B">
              <node concept="Xl_RD" id="2Bsub$LcWcJ" role="3uHU7B">
                <property role="Xl_RC" value="Change to " />
              </node>
              <node concept="1eOMI4" id="2Bsub$LcX0I" role="3uHU7w">
                <node concept="3K4zz7" id="2Bsub$LcYac" role="1eOMHV">
                  <node concept="Xl_RD" id="2Bsub$LcYbl" role="3K4E3e">
                    <property role="Xl_RC" value="regular" />
                  </node>
                  <node concept="Xl_RD" id="2Bsub$LcYgd" role="3K4GZi">
                    <property role="Xl_RC" value="id" />
                  </node>
                  <node concept="2OqwBi" id="2Bsub$LcXy4" role="3K4Cdx">
                    <node concept="2Sf5sV" id="2Bsub$LcXcG" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2Bsub$LcXK6" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2Bsub$LcW5A" role="2ZfgGD">
      <node concept="3clFbS" id="2Bsub$LcW5B" role="2VODD2">
        <node concept="3clFbF" id="2Bsub$LcYra" role="3cqZAp">
          <node concept="2OqwBi" id="2Bsub$LcY$8" role="3clFbG">
            <node concept="2OqwBi" id="2Bsub$LcYt$" role="2Oq$k0">
              <node concept="2Sf5sV" id="2Bsub$LcYr9" role="2Oq$k0" />
              <node concept="3TrcHB" id="2Bsub$LcYuM" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
              </node>
            </node>
            <node concept="tyxLq" id="2Bsub$LcYSN" role="2OqNvi">
              <node concept="3fqX7Q" id="2Bsub$LcYT$" role="tz02z">
                <node concept="2OqwBi" id="2Bsub$LcYYt" role="3fr31v">
                  <node concept="2Sf5sV" id="2Bsub$LcYUp" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2Bsub$LcZ03" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4REBMItQ0EK">
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="CommandContainer_ToggleRequiredRepositories_Intention" />
    <ref role="2ZfgGC" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="2S6ZIM" id="4REBMItQ0EL" role="2ZfVej">
      <node concept="3clFbS" id="4REBMItQ0EM" role="2VODD2">
        <node concept="3clFbF" id="4REBMItQ0M2" role="3cqZAp">
          <node concept="3cpWs3" id="4REBMItQ2DC" role="3clFbG">
            <node concept="Xl_RD" id="4REBMItQ2F0" role="3uHU7w">
              <property role="Xl_RC" value=" 'requires' declaration" />
            </node>
            <node concept="1eOMI4" id="4REBMItQ0M0" role="3uHU7B">
              <node concept="3K4zz7" id="4REBMItQ1YD" role="1eOMHV">
                <node concept="Xl_RD" id="4REBMItQ1ZC" role="3K4E3e">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="Xl_RD" id="4REBMItQ29v" role="3K4GZi">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="2OqwBi" id="4REBMItQ14R" role="3K4Cdx">
                  <node concept="2Sf5sV" id="4REBMItQ0MG" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4REBMItQ1wm" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4REBMItQ0EN" role="2ZfgGD">
      <node concept="3clFbS" id="4REBMItQ0EO" role="2VODD2">
        <node concept="3clFbF" id="4REBMItQ2Zx" role="3cqZAp">
          <node concept="2OqwBi" id="4REBMItQ3QP" role="3clFbG">
            <node concept="2OqwBi" id="4REBMItQ3bN" role="2Oq$k0">
              <node concept="2Sf5sV" id="4REBMItQ2Zw" role="2Oq$k0" />
              <node concept="3TrcHB" id="4REBMItQ3r_" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
            <node concept="tyxLq" id="4REBMItQ4ab" role="2OqNvi">
              <node concept="3fqX7Q" id="4REBMItQ4aW" role="tz02z">
                <node concept="2OqwBi" id="4REBMItQ4fX" role="3fr31v">
                  <node concept="2Sf5sV" id="4REBMItQ4bL" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4REBMItQ4hz" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4REBMItQ4lc" role="3cqZAp">
          <node concept="3clFbS" id="4REBMItQ4le" role="3clFbx">
            <node concept="3clFbF" id="4REBMItU47x" role="3cqZAp">
              <node concept="2OqwBi" id="4REBMItU4v8" role="3clFbG">
                <node concept="2Sf5sV" id="4REBMItU47w" role="2Oq$k0" />
                <node concept="1OKiuA" id="4REBMItU4Fd" role="2OqNvi">
                  <node concept="1XNTG" id="4REBMItU4Gc" role="lBI5i" />
                  <node concept="2TlHUq" id="4V91Il3sRFN" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:4REBMItTLwj" resolve="repositoryReferenceListStartCellId" />
                  </node>
                  <node concept="3cmrfG" id="4REBMItU4Qv" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6gxxZVsp6yw" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4REBMItQ4mF" role="3clFbw">
            <node concept="2Sf5sV" id="4REBMItQ4mq" role="2Oq$k0" />
            <node concept="3TrcHB" id="4REBMItQ4BZ" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6gxxZVsp6n1" role="3cqZAp" />
        <node concept="3clFbF" id="4REBMItU2Hq" role="3cqZAp">
          <node concept="2OqwBi" id="4REBMItU2Ua" role="3clFbG">
            <node concept="2Sf5sV" id="4REBMItU2Hp" role="2Oq$k0" />
            <node concept="2qgKlT" id="4REBMItU42e" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSOJ" resolve="resetReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Qa18YGMaeD" role="3cqZAp" />
        <node concept="3clFbJ" id="5jZDGTfpyG_" role="3cqZAp">
          <node concept="3clFbS" id="5jZDGTfpyGB" role="3clFbx">
            <node concept="3cpWs6" id="5jZDGTfpyVv" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="5jZDGTfpyVZ" role="3clFbw">
            <node concept="2YIFZM" id="5jZDGTfpyW1" role="3fr31v">
              <ref role="37wK5l" to="7ztp:5jZDGTfesVy" resolve="isSelectedCellChildOf" />
              <ref role="1Pybhc" to="7ztp:5jZDGTfesU9" resolve="EditorContextUtils" />
              <node concept="1XNTG" id="5jZDGTfpyW2" role="37wK5m" />
              <node concept="Xl_RD" id="5jZDGTfpyW3" role="37wK5m">
                <property role="Xl_RC" value="requiresBlockCellId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfpyCo" role="3cqZAp" />
        <node concept="3clFbJ" id="51Z40VzoOBy" role="3cqZAp">
          <node concept="3clFbS" id="51Z40VzoOB$" role="3clFbx">
            <node concept="3clFbF" id="51Z40VzoPo6" role="3cqZAp">
              <node concept="2OqwBi" id="51Z40VzoPo7" role="3clFbG">
                <node concept="2Sf5sV" id="51Z40VzoPo8" role="2Oq$k0" />
                <node concept="1OKiuA" id="51Z40VzoPo9" role="2OqNvi">
                  <node concept="1XNTG" id="51Z40VzoPoa" role="lBI5i" />
                  <node concept="2TlHUq" id="51Z40VzoPob" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:51Z40VwF_aU" resolve="forAggregateBlockId" />
                  </node>
                  <node concept="3cmrfG" id="51Z40VzoPoc" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="51Z40VzoPod" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="51Z40VzoOUQ" role="3clFbw">
            <node concept="2Sf5sV" id="51Z40VzoOFe" role="2Oq$k0" />
            <node concept="3TrcHB" id="51Z40VzoPlr" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VzoOxV" role="3cqZAp" />
        <node concept="3clFbJ" id="6Qa18YGM9vN" role="3cqZAp">
          <node concept="3clFbS" id="6Qa18YGM9vP" role="3clFbx">
            <node concept="3clFbF" id="51Z40VzoPBI" role="3cqZAp">
              <node concept="2OqwBi" id="51Z40VzoPBJ" role="3clFbG">
                <node concept="2OqwBi" id="51Z40VzoPBK" role="2Oq$k0">
                  <node concept="2Sf5sV" id="51Z40VzoPBL" role="2Oq$k0" />
                  <node concept="3TrEf2" id="51Z40VzoPBM" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                  </node>
                </node>
                <node concept="1OKiuA" id="51Z40VzoPBN" role="2OqNvi">
                  <node concept="1XNTG" id="51Z40VzoPBO" role="lBI5i" />
                  <node concept="2TlHUq" id="51Z40VzoPBP" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:2RbvdOJ81o1" resolve="nameCellId" />
                  </node>
                  <node concept="3cmrfG" id="51Z40VzoPBQ" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6Qa18YGManj" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6Qa18YGM9TQ" role="3clFbw">
            <node concept="2OqwBi" id="6Qa18YGM9IG" role="2Oq$k0">
              <node concept="2Sf5sV" id="6Qa18YGM9y7" role="2Oq$k0" />
              <node concept="3TrcHB" id="6Qa18YGM9Kc" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
              </node>
            </node>
            <node concept="21noJN" id="6Qa18YGMacR" role="2OqNvi">
              <node concept="21nZrQ" id="6Qa18YGMacT" role="21noJM">
                <ref role="21nZrZ" to="3nll:1LTEHzOdy3" resolve="CommandHandler" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VzoQ00" role="3cqZAp" />
        <node concept="3clFbF" id="4REBMItQ6hN" role="3cqZAp">
          <node concept="2OqwBi" id="4REBMItQ6Jb" role="3clFbG">
            <node concept="2Sf5sV" id="4REBMItQ6yV" role="2Oq$k0" />
            <node concept="1OKiuA" id="4REBMItQ6YV" role="2OqNvi">
              <node concept="1XNTG" id="4REBMItQ6ZZ" role="lBI5i" />
              <node concept="2TlHUq" id="4REBMItQ78q" role="lGT1i">
                <ref role="2TlMyj" to="8pak:6Qa18YGLSVu" resolve="containerTypeCellId" />
              </node>
              <node concept="3cmrfG" id="4REBMItQ79R" role="3dN3m$">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4REBMItS1$e">
    <property role="3GE5qa" value="command" />
    <property role="TrG5h" value="CommandToggleRequiredRepositoriesIntention" />
    <ref role="2ZfgGC" to="3nll:7fqk8p43ygY" resolve="Command" />
    <node concept="2S6ZIM" id="4REBMItS1$f" role="2ZfVej">
      <node concept="3clFbS" id="4REBMItS1$g" role="2VODD2">
        <node concept="3clFbF" id="4REBMItS1LD" role="3cqZAp">
          <node concept="3cpWs3" id="4REBMItS1LE" role="3clFbG">
            <node concept="Xl_RD" id="4REBMItS1LF" role="3uHU7w">
              <property role="Xl_RC" value=" 'requires' declaration" />
            </node>
            <node concept="1eOMI4" id="4REBMItS1LG" role="3uHU7B">
              <node concept="3K4zz7" id="4REBMItS1LH" role="1eOMHV">
                <node concept="Xl_RD" id="4REBMItS1LI" role="3K4E3e">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="Xl_RD" id="4REBMItS1LJ" role="3K4GZi">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="2OqwBi" id="4REBMItS1LK" role="3K4Cdx">
                  <node concept="2Sf5sV" id="4REBMItS1LL" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4REBMItS1LM" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4REBMItS1$h" role="2ZfgGD">
      <node concept="3clFbS" id="4REBMItS1$i" role="2VODD2">
        <node concept="3clFbF" id="4REBMItS2kv" role="3cqZAp">
          <node concept="2OqwBi" id="4REBMItS2kw" role="3clFbG">
            <node concept="2OqwBi" id="4REBMItS2kx" role="2Oq$k0">
              <node concept="2Sf5sV" id="4REBMItS2ky" role="2Oq$k0" />
              <node concept="3TrcHB" id="4REBMItS2kz" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
            <node concept="tyxLq" id="4REBMItS2k$" role="2OqNvi">
              <node concept="3fqX7Q" id="4REBMItS2k_" role="tz02z">
                <node concept="2OqwBi" id="4REBMItS2kA" role="3fr31v">
                  <node concept="2Sf5sV" id="4REBMItS2kB" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4REBMItS2kC" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4REBMItS2kD" role="3cqZAp">
          <node concept="3clFbS" id="4REBMItS2kE" role="3clFbx">
            <node concept="3clFbF" id="4REBMItU1Xy" role="3cqZAp">
              <node concept="2OqwBi" id="4REBMItU29w" role="3clFbG">
                <node concept="2Sf5sV" id="4REBMItU1Xx" role="2Oq$k0" />
                <node concept="1OKiuA" id="4REBMItU2mh" role="2OqNvi">
                  <node concept="1XNTG" id="4REBMItU2ng" role="lBI5i" />
                  <node concept="2TlHUq" id="4V91Il3sSe5" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:4REBMItTLwj" resolve="repositoryReferenceListStartCellId" />
                  </node>
                  <node concept="3cmrfG" id="4REBMItU2yG" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1LTEH$0Ihu" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4REBMItS2kO" role="3clFbw">
            <node concept="2Sf5sV" id="4REBMItS2kP" role="2Oq$k0" />
            <node concept="3TrcHB" id="4REBMItS2kQ" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1LTEH$0I70" role="3cqZAp" />
        <node concept="3clFbF" id="4REBMItU1jN" role="3cqZAp">
          <node concept="2OqwBi" id="4REBMItU1yX" role="3clFbG">
            <node concept="2Sf5sV" id="4REBMItU1jM" role="2Oq$k0" />
            <node concept="2qgKlT" id="4REBMItU1RY" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSO_" resolve="clearReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4REBMItS2kZ" role="3cqZAp">
          <node concept="2OqwBi" id="4REBMItS2l0" role="3clFbG">
            <node concept="2Sf5sV" id="4REBMItS2l1" role="2Oq$k0" />
            <node concept="1OKiuA" id="4REBMItS2l2" role="2OqNvi">
              <node concept="1XNTG" id="4REBMItS2l3" role="lBI5i" />
              <node concept="2B6iha" id="4REBMItS2yj" role="lGT1i">
                <property role="1lyBwo" value="1S2pyLby17K/last" />
              </node>
              <node concept="3cmrfG" id="4REBMItS2l5" role="3dN3m$">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6gxxZVti0M4" role="2ZfVeh">
      <node concept="3clFbS" id="6gxxZVti0M5" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVti0UX" role="3cqZAp">
          <node concept="22lmx$" id="1LTEH$0I1b" role="3clFbG">
            <node concept="3fqX7Q" id="1LTEH$0HkG" role="3uHU7B">
              <node concept="2OqwBi" id="1LTEH$0HkI" role="3fr31v">
                <node concept="2Sf5sV" id="1LTEH$0HkJ" role="2Oq$k0" />
                <node concept="2qgKlT" id="1LTEH$0HkK" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:1jrq3npy$dZ" resolve="isInsideCommandContainer" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6gxxZVti3G$" role="3uHU7w">
              <node concept="2OqwBi" id="6gxxZVti3G_" role="2Oq$k0">
                <node concept="2Sf5sV" id="6gxxZVti3GA" role="2Oq$k0" />
                <node concept="2qgKlT" id="6gxxZVti3GB" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5$Oa659Yq3n" resolve="getCommandContainer" />
                </node>
              </node>
              <node concept="2qgKlT" id="1LTEH$0Gh4" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHzOe0y" resolve="isCommandsBlock" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="6gxxZVsgxjd">
    <property role="3GE5qa" value="queryContainer" />
    <property role="TrG5h" value="QueryContainerTypeTransformationIntention" />
    <ref role="2ZfgGC" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    <node concept="38BcoT" id="6gxxZVsgxje" role="3dlsAV">
      <node concept="3clFbS" id="6gxxZVsgxjg" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVsgxQ_" role="3cqZAp">
          <node concept="2OqwBi" id="6gxxZVsgypE" role="3clFbG">
            <node concept="1XH99k" id="6gxxZVsgxQ$" role="2Oq$k0">
              <ref role="1XH99l" to="3nll:1WhJCpUOLrA" resolve="QueryContainerType" />
            </node>
            <node concept="2ViDtN" id="6gxxZVsgyNN" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2ZThk1" id="6gxxZVsgOBt" role="3ddBve">
        <ref role="2ZWj4r" to="3nll:1WhJCpUOLrA" resolve="QueryContainerType" />
      </node>
    </node>
    <node concept="2S6ZIM" id="6gxxZVsgxjh" role="2ZfVej">
      <node concept="3clFbS" id="6gxxZVsgxji" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTdgro4" role="3cqZAp">
          <node concept="3cpWs3" id="5A5sGromqXA" role="3clFbG">
            <node concept="2OqwBi" id="5A5sGromrdu" role="3uHU7w">
              <node concept="38Zlrr" id="5A5sGromqZ9" role="2Oq$k0" />
              <node concept="1XCIdh" id="5A5sGromrn9" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="5A5sGromqp6" role="3uHU7B">
              <property role="Xl_RC" value="Transform to query " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6gxxZVsgxjj" role="2ZfgGD">
      <node concept="3clFbS" id="6gxxZVsgxjk" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVsgTiV" role="3cqZAp">
          <node concept="2OqwBi" id="6gxxZVsgTiW" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVsgTiX" role="2Oq$k0">
              <node concept="2Sf5sV" id="6gxxZVsgTiY" role="2Oq$k0" />
              <node concept="3TrcHB" id="6gxxZVsgTiZ" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
              </node>
            </node>
            <node concept="tyxLq" id="6gxxZVsgTj0" role="2OqNvi">
              <node concept="38Zlrr" id="6gxxZVsgTxB" role="tz02z" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTgx5vM" role="3cqZAp" />
        <node concept="3clFbJ" id="6gxxZVsgRi0" role="3cqZAp">
          <node concept="3clFbS" id="6gxxZVsgRi2" role="3clFbx">
            <node concept="3clFbJ" id="2RbvdOK5p7C" role="3cqZAp">
              <node concept="3clFbS" id="2RbvdOK5p7E" role="3clFbx">
                <node concept="3clFbF" id="2RbvdOKWtMr" role="3cqZAp">
                  <node concept="2OqwBi" id="2RbvdOKWut7" role="3clFbG">
                    <node concept="2OqwBi" id="2RbvdOKWtZF" role="2Oq$k0">
                      <node concept="2Sf5sV" id="2RbvdOKWtMq" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2RbvdOKWuhL" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                      </node>
                    </node>
                    <node concept="3YRAZt" id="2RbvdOKWuF_" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="2RbvdOKWvw7" role="3clFbw">
                <node concept="2OqwBi" id="2RbvdOKWvw9" role="3fr31v">
                  <node concept="2OqwBi" id="2RbvdOKWvwa" role="2Oq$k0">
                    <node concept="2Sf5sV" id="2RbvdOKWvwb" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2RbvdOKWvwc" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="2RbvdOKWvwd" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:2RbvdOKU7zU" resolve="isNameSet" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6gxxZVsh0JJ" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="1LTEHzOBza" role="3clFbw">
            <node concept="2Sf5sV" id="1LTEHzOBkF" role="2Oq$k0" />
            <node concept="2qgKlT" id="1LTEHzOBQN" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:6gxxZVtebNx" resolve="isQueriesBlock" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2RbvdOJN7yr" role="3cqZAp" />
        <node concept="3clFbJ" id="2RbvdOJN7DZ" role="3cqZAp">
          <node concept="3clFbS" id="2RbvdOJN7E1" role="3clFbx">
            <node concept="3clFbF" id="2RbvdOKWsPh" role="3cqZAp">
              <node concept="2OqwBi" id="2RbvdOKWttG" role="3clFbG">
                <node concept="2OqwBi" id="2RbvdOKWt2$" role="2Oq$k0">
                  <node concept="2Sf5sV" id="2RbvdOKWsPg" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2RbvdOKWtim" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                  </node>
                </node>
                <node concept="2DeJnY" id="2RbvdOKWtGa" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2RbvdOJN8um" role="3clFbw">
            <node concept="2OqwBi" id="2RbvdOJN7Wu" role="2Oq$k0">
              <node concept="2Sf5sV" id="2RbvdOJN7Hk" role="2Oq$k0" />
              <node concept="3TrEf2" id="2RbvdOJN8hE" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
              </node>
            </node>
            <node concept="3w_OXm" id="2RbvdOJN8J0" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="2RbvdOK5mly" role="3cqZAp" />
        <node concept="3clFbJ" id="2RbvdOK5mGY" role="3cqZAp">
          <node concept="3clFbS" id="2RbvdOK5mH0" role="3clFbx">
            <node concept="3clFbF" id="2RbvdOJZkHy" role="3cqZAp">
              <node concept="2OqwBi" id="2RbvdOJZkHz" role="3clFbG">
                <node concept="2OqwBi" id="2RbvdOJZkH$" role="2Oq$k0">
                  <node concept="2Sf5sV" id="2RbvdOJZkH_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2RbvdOJZkHA" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                  </node>
                </node>
                <node concept="1OKiuA" id="2RbvdOJZkHB" role="2OqNvi">
                  <node concept="1XNTG" id="2RbvdOJZkHC" role="lBI5i" />
                  <node concept="2TlHUq" id="2RbvdOJZkHD" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:2RbvdOJ81o1" resolve="nameCellId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2RbvdOKWvoK" role="3clFbw">
            <node concept="2OqwBi" id="2RbvdOKWvoM" role="3fr31v">
              <node concept="2OqwBi" id="2RbvdOKWvoN" role="2Oq$k0">
                <node concept="2Sf5sV" id="2RbvdOKWvoO" role="2Oq$k0" />
                <node concept="3TrEf2" id="2RbvdOKWvoP" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                </node>
              </node>
              <node concept="2qgKlT" id="2RbvdOKWvoQ" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:2RbvdOKU7zU" resolve="isNameSet" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6gxxZVsgCLi" role="2ZfVeh">
      <node concept="3clFbS" id="6gxxZVsgCLj" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVsgCRY" role="3cqZAp">
          <node concept="3fqX7Q" id="6gxxZVsgFFd" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVsgFFg" role="3fr31v">
              <node concept="2OqwBi" id="6gxxZVsgFFh" role="2Oq$k0">
                <node concept="2Sf5sV" id="6gxxZVsgFFi" role="2Oq$k0" />
                <node concept="3TrcHB" id="6gxxZVsgFFj" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                </node>
              </node>
              <node concept="liA8E" id="6gxxZVsgQRT" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="38Zlrr" id="6gxxZVsgR0c" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6gxxZVsoY7e">
    <property role="3GE5qa" value="queryContainer" />
    <property role="TrG5h" value="QueryContainerToggleRequiresRepositoryReferencesIntention" />
    <ref role="2ZfgGC" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    <node concept="2S6ZIM" id="6gxxZVsoY7f" role="2ZfVej">
      <node concept="3clFbS" id="6gxxZVsoY7g" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVsoYeC" role="3cqZAp">
          <node concept="3cpWs3" id="6gxxZVsp01B" role="3clFbG">
            <node concept="1eOMI4" id="6gxxZVsoYfT" role="3uHU7B">
              <node concept="3K4zz7" id="6gxxZVsoZuV" role="1eOMHV">
                <node concept="Xl_RD" id="6gxxZVsoZvU" role="3K4E3e">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="Xl_RD" id="6gxxZVsoZxu" role="3K4GZi">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="2OqwBi" id="6gxxZVsoYDk" role="3K4Cdx">
                  <node concept="2Sf5sV" id="6gxxZVsoYmn" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6gxxZVsoZ0D" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="6gxxZVsp0R8" role="3uHU7w">
              <property role="Xl_RC" value=" 'requires' declaration" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6gxxZVsoY7h" role="2ZfgGD">
      <node concept="3clFbS" id="6gxxZVsoY7i" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVsp30C" role="3cqZAp">
          <node concept="2OqwBi" id="6gxxZVsp3Qm" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVsp3dG" role="2Oq$k0">
              <node concept="2Sf5sV" id="6gxxZVsp30B" role="2Oq$k0" />
              <node concept="3TrcHB" id="6gxxZVsp3v6" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
            <node concept="tyxLq" id="6gxxZVsp49G" role="2OqNvi">
              <node concept="3fqX7Q" id="6gxxZVsp4x2" role="tz02z">
                <node concept="2OqwBi" id="6gxxZVsp4x4" role="3fr31v">
                  <node concept="2Sf5sV" id="6gxxZVsp4x5" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6gxxZVsp4x6" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6gxxZVsp4Iu" role="3cqZAp">
          <node concept="3clFbS" id="6gxxZVsp4Iw" role="3clFbx">
            <node concept="3clFbF" id="6gxxZVsp53V" role="3cqZAp">
              <node concept="2OqwBi" id="6gxxZVsp5B6" role="3clFbG">
                <node concept="2Sf5sV" id="6gxxZVsp53U" role="2Oq$k0" />
                <node concept="1OKiuA" id="6gxxZVsp5Nb" role="2OqNvi">
                  <node concept="1XNTG" id="6gxxZVsp5Oe" role="lBI5i" />
                  <node concept="2TlHUq" id="4V91Il3sOGc" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:6gxxZVrO$nU" resolve="repositoryReferenceListStartCellId" />
                  </node>
                  <node concept="3cmrfG" id="6gxxZVsp5Z4" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6gxxZVsp62e" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6gxxZVsp4JW" role="3clFbw">
            <node concept="2Sf5sV" id="6gxxZVsp4JF" role="2Oq$k0" />
            <node concept="3TrcHB" id="6gxxZVsp4Lc" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1LTEHz85jw" role="3cqZAp" />
        <node concept="3clFbF" id="6gxxZVsp6CG" role="3cqZAp">
          <node concept="2OqwBi" id="6gxxZVsp6CH" role="3clFbG">
            <node concept="2Sf5sV" id="6gxxZVsp6CI" role="2Oq$k0" />
            <node concept="2qgKlT" id="6gxxZVsp6CJ" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSO_" resolve="clearReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfl6h1" role="3cqZAp" />
        <node concept="3clFbJ" id="5jZDGTfl6e_" role="3cqZAp">
          <node concept="3clFbS" id="5jZDGTfl6eB" role="3clFbx">
            <node concept="3cpWs6" id="5jZDGTfl6SV" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="5jZDGTfl6Qf" role="3clFbw">
            <node concept="2YIFZM" id="5jZDGTfl6Qh" role="3fr31v">
              <ref role="37wK5l" to="7ztp:5jZDGTfesVy" resolve="isSelectedCellChildOf" />
              <ref role="1Pybhc" to="7ztp:5jZDGTfesU9" resolve="EditorContextUtils" />
              <node concept="1XNTG" id="5jZDGTfl6Qi" role="37wK5m" />
              <node concept="Xl_RD" id="5jZDGTfl6Qj" role="37wK5m">
                <property role="Xl_RC" value="requiresBlockCellId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfl66i" role="3cqZAp" />
        <node concept="3clFbJ" id="5jZDGTfl71Y" role="3cqZAp">
          <node concept="3clFbS" id="5jZDGTfl720" role="3clFbx">
            <node concept="3clFbF" id="2RbvdOJJ3mD" role="3cqZAp">
              <node concept="2OqwBi" id="2RbvdOJJ44K" role="3clFbG">
                <node concept="2OqwBi" id="2RbvdOJJ3A2" role="2Oq$k0">
                  <node concept="2Sf5sV" id="2RbvdOJJ3mC" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2RbvdOJJ3Tq" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                  </node>
                </node>
                <node concept="1OKiuA" id="2RbvdOJJ4ju" role="2OqNvi">
                  <node concept="1XNTG" id="2RbvdOJJ4kq" role="lBI5i" />
                  <node concept="2TlHUq" id="2RbvdOJJ4t3" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:2RbvdOJ81o1" resolve="nameCellId" />
                  </node>
                  <node concept="3cmrfG" id="2RbvdOJJ4uG" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5jZDGTfl7IX" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="5jZDGTfl7iJ" role="3clFbw">
            <node concept="2Sf5sV" id="5jZDGTfl754" role="2Oq$k0" />
            <node concept="2qgKlT" id="5jZDGTfl7$j" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:2RbvdOM0nGV" resolve="isNameSet" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfl6XB" role="3cqZAp" />
        <node concept="3clFbF" id="5jZDGTfl7Yy" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfl8dl" role="3clFbG">
            <node concept="2Sf5sV" id="5jZDGTfl7Yx" role="2Oq$k0" />
            <node concept="1OKiuA" id="5jZDGTfl8v9" role="2OqNvi">
              <node concept="1XNTG" id="5jZDGTfl8vU" role="lBI5i" />
              <node concept="2TlHUq" id="4V91Il3sOHJ" role="lGT1i">
                <ref role="2TlMyj" to="8pak:2RbvdOL$g4B" resolve="placeholderCellId" />
              </node>
              <node concept="3cmrfG" id="5jZDGTfl8yN" role="3dN3m$">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6gxxZVsMAyP">
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="QueryToggleRequiredRepositoriesIntention" />
    <ref role="2ZfgGC" to="3nll:7fqk8p43yh4" resolve="Query" />
    <node concept="2S6ZIM" id="6gxxZVsMAyQ" role="2ZfVej">
      <node concept="3clFbS" id="6gxxZVsMAyR" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVsMBuf" role="3cqZAp">
          <node concept="3cpWs3" id="6gxxZVsMCxY" role="3clFbG">
            <node concept="Xl_RD" id="6gxxZVsMCzj" role="3uHU7w">
              <property role="Xl_RC" value=" 'requires' declaration" />
            </node>
            <node concept="1eOMI4" id="6gxxZVsMBud" role="3uHU7B">
              <node concept="3K4zz7" id="6gxxZVsMBZi" role="1eOMHV">
                <node concept="Xl_RD" id="6gxxZVsMC0h" role="3K4E3e">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="Xl_RD" id="6gxxZVsMC1P" role="3K4GZi">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="2OqwBi" id="6gxxZVsMBvm" role="3K4Cdx">
                  <node concept="2Sf5sV" id="6gxxZVsMBuT" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6gxxZVsMBwH" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6gxxZVsMAyS" role="2ZfgGD">
      <node concept="3clFbS" id="6gxxZVsMAyT" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVsMH$a" role="3cqZAp">
          <node concept="2OqwBi" id="6gxxZVsMIz6" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVsMHMT" role="2Oq$k0">
              <node concept="2Sf5sV" id="6gxxZVsMH$9" role="2Oq$k0" />
              <node concept="3TrcHB" id="6gxxZVsMI7Q" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
            <node concept="tyxLq" id="6gxxZVsMJ9A" role="2OqNvi">
              <node concept="3fqX7Q" id="6gxxZVsMJan" role="tz02z">
                <node concept="2OqwBi" id="6gxxZVsMJfL" role="3fr31v">
                  <node concept="2Sf5sV" id="6gxxZVsMJbc" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6gxxZVsMJhn" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6gxxZVsMJku" role="3cqZAp">
          <node concept="3clFbS" id="6gxxZVsMJkw" role="3clFbx">
            <node concept="3clFbF" id="6gxxZVsMJoV" role="3cqZAp">
              <node concept="2OqwBi" id="6gxxZVsMJph" role="3clFbG">
                <node concept="2Sf5sV" id="6gxxZVsMJoU" role="2Oq$k0" />
                <node concept="1OKiuA" id="6gxxZVsMJqt" role="2OqNvi">
                  <node concept="1XNTG" id="6gxxZVsMJrc" role="lBI5i" />
                  <node concept="2TlHUq" id="4V91Il3sRh2" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:6gxxZVrO$nU" resolve="repositoryReferenceListStartCellId" />
                  </node>
                  <node concept="3cmrfG" id="6gxxZVsMJsD" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6gxxZVsMJvt" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6gxxZVsMJlW" role="3clFbw">
            <node concept="2Sf5sV" id="6gxxZVsMJlF" role="2Oq$k0" />
            <node concept="3TrcHB" id="6gxxZVsMJnc" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6gxxZVsMJw4" role="3cqZAp" />
        <node concept="3clFbF" id="6gxxZVsMJ$m" role="3cqZAp">
          <node concept="2OqwBi" id="6gxxZVsMJ_N" role="3clFbG">
            <node concept="2Sf5sV" id="6gxxZVsMJ$l" role="2Oq$k0" />
            <node concept="2qgKlT" id="6gxxZVsMJB8" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSO_" resolve="clearReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfnkzo" role="3cqZAp" />
        <node concept="3clFbJ" id="5jZDGTfnkDE" role="3cqZAp">
          <node concept="3clFbS" id="5jZDGTfnkDG" role="3clFbx">
            <node concept="3clFbF" id="6gxxZVsMJEM" role="3cqZAp">
              <node concept="2OqwBi" id="6gxxZVsMJGu" role="3clFbG">
                <node concept="2Sf5sV" id="6gxxZVsMJEL" role="2Oq$k0" />
                <node concept="1OKiuA" id="6gxxZVsMJI1" role="2OqNvi">
                  <node concept="1XNTG" id="6gxxZVsMJIM" role="lBI5i" />
                  <node concept="2B6iha" id="5jZDGTfnlme" role="lGT1i">
                    <property role="1lyBwo" value="1S2pyLby17K/last" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="5jZDGTfnkOL" role="3clFbw">
            <ref role="37wK5l" to="7ztp:5jZDGTfesVy" resolve="isSelectedCellChildOf" />
            <ref role="1Pybhc" to="7ztp:5jZDGTfesU9" resolve="EditorContextUtils" />
            <node concept="1XNTG" id="5jZDGTfnkOM" role="37wK5m" />
            <node concept="Xl_RD" id="5jZDGTfnkON" role="37wK5m">
              <property role="Xl_RC" value="requiresBlockCellId" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6gxxZVsMDNl" role="2ZfVeh">
      <node concept="3clFbS" id="6gxxZVsMDNm" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVsMDVi" role="3cqZAp">
          <node concept="22lmx$" id="E4RYEa2HLS" role="3clFbG">
            <node concept="3fqX7Q" id="E4RYEa2Izg" role="3uHU7B">
              <node concept="2OqwBi" id="E4RYEa2Izi" role="3fr31v">
                <node concept="2Sf5sV" id="E4RYEa2Izj" role="2Oq$k0" />
                <node concept="2qgKlT" id="E4RYEa2Izk" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:2Bsub$Lr4Li" resolve="isInsideQueryContainer" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6gxxZVsMHaa" role="3uHU7w">
              <node concept="2OqwBi" id="6gxxZVsMHab" role="2Oq$k0">
                <node concept="2Sf5sV" id="6gxxZVsMHac" role="2Oq$k0" />
                <node concept="2qgKlT" id="6gxxZVsMHad" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:6gxxZVrXJ64" resolve="getQueryContainer" />
                </node>
              </node>
              <node concept="2qgKlT" id="6gxxZVtgdLe" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:6gxxZVtebNx" resolve="isQueriesBlock" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6gxxZVtdWJk">
    <property role="3GE5qa" value="queryContainer" />
    <property role="TrG5h" value="QueryContainerRemoveRequiredRepositoriesVisibilityOfAllQueriesIntention" />
    <ref role="2ZfgGC" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    <node concept="2S6ZIM" id="6gxxZVtdWJl" role="2ZfVej">
      <node concept="3clFbS" id="6gxxZVtdWJm" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVte0eq" role="3cqZAp">
          <node concept="Xl_RD" id="6gxxZVte0es" role="3clFbG">
            <property role="Xl_RC" value="Remove 'requires' declaration from all queries" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6gxxZVtdWJn" role="2ZfgGD">
      <node concept="3clFbS" id="6gxxZVtdWJo" role="2VODD2">
        <node concept="3clFbF" id="1LTEHzBWGY" role="3cqZAp">
          <node concept="2OqwBi" id="1LTEHzBWWC" role="3clFbG">
            <node concept="2Sf5sV" id="1LTEHzBWGX" role="2Oq$k0" />
            <node concept="2qgKlT" id="1LTEHzBX$M" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:d$u27T68Vq" resolve="resetChildRepositoryReferences" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6gxxZVte0wX" role="2ZfVeh">
      <node concept="3clFbS" id="6gxxZVte0wY" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVte0B2" role="3cqZAp">
          <node concept="1Wc70l" id="6gxxZVtel$0" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVtelVo" role="3uHU7B">
              <node concept="2Sf5sV" id="6gxxZVtelBO" role="2Oq$k0" />
              <node concept="2qgKlT" id="6gxxZVtemfq" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:6gxxZVtebNx" resolve="isQueriesBlock" />
              </node>
            </node>
            <node concept="2OqwBi" id="6gxxZVte1ru" role="3uHU7w">
              <node concept="2OqwBi" id="6gxxZVte0UZ" role="2Oq$k0">
                <node concept="2Sf5sV" id="6gxxZVte0B1" role="2Oq$k0" />
                <node concept="2qgKlT" id="6gxxZVte1cv" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5SyewCaMpun" resolve="queries" />
                </node>
              </node>
              <node concept="2HwmR7" id="6gxxZVte1S_" role="2OqNvi">
                <node concept="1bVj0M" id="6gxxZVte1SB" role="23t8la">
                  <node concept="3clFbS" id="6gxxZVte1SC" role="1bW5cS">
                    <node concept="3clFbF" id="6gxxZVte1XS" role="3cqZAp">
                      <node concept="2OqwBi" id="6gxxZVte2hb" role="3clFbG">
                        <node concept="37vLTw" id="6gxxZVte1XR" role="2Oq$k0">
                          <ref role="3cqZAo" node="6gxxZVte1SD" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="6gxxZVte2EM" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6gxxZVte1SD" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6gxxZVte1SE" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6gxxZVte4sM">
    <property role="3GE5qa" value="queryContainer" />
    <property role="TrG5h" value="QueryContainerAddRequiredRepositoriesVisibilityOfAllQueriesIntention" />
    <ref role="2ZfgGC" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    <node concept="2S6ZIM" id="6gxxZVte4sN" role="2ZfVej">
      <node concept="3clFbS" id="6gxxZVte4sO" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVte87j" role="3cqZAp">
          <node concept="Xl_RD" id="6gxxZVte87k" role="3clFbG">
            <property role="Xl_RC" value="Add 'requires' declaration to all queries" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6gxxZVte4sP" role="2ZfgGD">
      <node concept="3clFbS" id="6gxxZVte4sQ" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVten7t" role="3cqZAp">
          <node concept="2OqwBi" id="6gxxZVtenMa" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVtenkx" role="2Oq$k0">
              <node concept="2Sf5sV" id="6gxxZVten7s" role="2Oq$k0" />
              <node concept="2qgKlT" id="6gxxZVten_V" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5SyewCaMpun" resolve="queries" />
              </node>
            </node>
            <node concept="2es0OD" id="6gxxZVtenZj" role="2OqNvi">
              <node concept="1bVj0M" id="6gxxZVtenZl" role="23t8la">
                <node concept="3clFbS" id="6gxxZVtenZm" role="1bW5cS">
                  <node concept="3clFbF" id="6gxxZVteo33" role="3cqZAp">
                    <node concept="2OqwBi" id="6gxxZVtepcH" role="3clFbG">
                      <node concept="2OqwBi" id="6gxxZVteojy" role="2Oq$k0">
                        <node concept="37vLTw" id="6gxxZVteo32" role="2Oq$k0">
                          <ref role="3cqZAo" node="6gxxZVtenZn" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="6gxxZVteoGJ" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                        </node>
                      </node>
                      <node concept="tyxLq" id="6gxxZVtepzl" role="2OqNvi">
                        <node concept="3clFbT" id="6gxxZVtepAc" role="tz02z">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6gxxZVtenZn" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6gxxZVtenZo" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6gxxZVte8er" role="2ZfVeh">
      <node concept="3clFbS" id="6gxxZVte8es" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVte8kA" role="3cqZAp">
          <node concept="1Wc70l" id="6gxxZVteaxj" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVteaBz" role="3uHU7B">
              <node concept="2Sf5sV" id="6gxxZVtea$Z" role="2Oq$k0" />
              <node concept="2qgKlT" id="6gxxZVtehq4" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:6gxxZVtebNx" resolve="isQueriesBlock" />
              </node>
            </node>
            <node concept="2OqwBi" id="6gxxZVte992" role="3uHU7w">
              <node concept="2OqwBi" id="6gxxZVte8Cz" role="2Oq$k0">
                <node concept="2Sf5sV" id="6gxxZVte8k_" role="2Oq$k0" />
                <node concept="2qgKlT" id="6gxxZVte8U3" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5SyewCaMpun" resolve="queries" />
                </node>
              </node>
              <node concept="2HwmR7" id="6gxxZVte9A9" role="2OqNvi">
                <node concept="1bVj0M" id="6gxxZVte9Ab" role="23t8la">
                  <node concept="3clFbS" id="6gxxZVte9Ac" role="1bW5cS">
                    <node concept="3clFbF" id="6gxxZVte9Fv" role="3cqZAp">
                      <node concept="3fqX7Q" id="6gxxZVteau9" role="3clFbG">
                        <node concept="2OqwBi" id="6gxxZVteaub" role="3fr31v">
                          <node concept="37vLTw" id="6gxxZVteauc" role="2Oq$k0">
                            <ref role="3cqZAo" node="6gxxZVte9Ad" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="6gxxZVteaud" role="2OqNvi">
                            <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6gxxZVte9Ad" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6gxxZVte9Ae" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6gxxZVti5m8">
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="CommandContainerAddRequiredRepositoriesToAllCommandsIntention" />
    <ref role="2ZfgGC" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="2S6ZIM" id="6gxxZVti5m9" role="2ZfVej">
      <node concept="3clFbS" id="6gxxZVti5ma" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVti6wf" role="3cqZAp">
          <node concept="Xl_RD" id="6gxxZVti6wg" role="3clFbG">
            <property role="Xl_RC" value="Add 'requires' declaration to all commands" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6gxxZVti5mb" role="2ZfgGD">
      <node concept="3clFbS" id="6gxxZVti5mc" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVti9$B" role="3cqZAp">
          <node concept="2OqwBi" id="6gxxZVti9B5" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVti9$X" role="2Oq$k0">
              <node concept="2Sf5sV" id="6gxxZVti9$A" role="2Oq$k0" />
              <node concept="2qgKlT" id="6gxxZVti9Ab" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:oGImgOKxc1" resolve="commands" />
              </node>
            </node>
            <node concept="2es0OD" id="6gxxZVti9Hr" role="2OqNvi">
              <node concept="1bVj0M" id="6gxxZVti9Ht" role="23t8la">
                <node concept="3clFbS" id="6gxxZVti9Hu" role="1bW5cS">
                  <node concept="3clFbF" id="6gxxZVti9Le" role="3cqZAp">
                    <node concept="2OqwBi" id="6gxxZVti9Yu" role="3clFbG">
                      <node concept="2OqwBi" id="6gxxZVti9Nk" role="2Oq$k0">
                        <node concept="37vLTw" id="6gxxZVti9Ld" role="2Oq$k0">
                          <ref role="3cqZAo" node="6gxxZVti9Hv" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="6gxxZVti9SM" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                        </node>
                      </node>
                      <node concept="tyxLq" id="6gxxZVtial6" role="2OqNvi">
                        <node concept="3clFbT" id="6gxxZVtianX" role="tz02z">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6gxxZVti9Hv" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6gxxZVti9Hw" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6gxxZVti6HK" role="2ZfVeh">
      <node concept="3clFbS" id="6gxxZVti6HL" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVti6Nz" role="3cqZAp">
          <node concept="1Wc70l" id="6gxxZVti7Sq" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVti8bf" role="3uHU7w">
              <node concept="2OqwBi" id="6gxxZVti7Uy" role="2Oq$k0">
                <node concept="2Sf5sV" id="6gxxZVti7TG" role="2Oq$k0" />
                <node concept="2qgKlT" id="6gxxZVti7Wm" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:oGImgOKxc1" resolve="commands" />
                </node>
              </node>
              <node concept="2HwmR7" id="6gxxZVti8Am" role="2OqNvi">
                <node concept="1bVj0M" id="6gxxZVti8Ao" role="23t8la">
                  <node concept="3clFbS" id="6gxxZVti8Ap" role="1bW5cS">
                    <node concept="3clFbF" id="6gxxZVti8G7" role="3cqZAp">
                      <node concept="3fqX7Q" id="6gxxZVti9vQ" role="3clFbG">
                        <node concept="2OqwBi" id="6gxxZVti9vS" role="3fr31v">
                          <node concept="37vLTw" id="6gxxZVti9vT" role="2Oq$k0">
                            <ref role="3cqZAo" node="6gxxZVti8Aq" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="6gxxZVti9vU" role="2OqNvi">
                            <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6gxxZVti8Aq" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6gxxZVti8Ar" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1LTEHzOnLO" role="3uHU7B">
              <node concept="2Sf5sV" id="1LTEHzOnua" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHzOo5X" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHzOe0y" resolve="isCommandsBlock" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6gxxZVtiaqK">
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="CommandContainerRemoveRequiredRepositoriesToAllCommandsIntention" />
    <ref role="2ZfgGC" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="2S6ZIM" id="6gxxZVtiaqL" role="2ZfVej">
      <node concept="3clFbS" id="6gxxZVtiaqM" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVtib8k" role="3cqZAp">
          <node concept="Xl_RD" id="6gxxZVtib8l" role="3clFbG">
            <property role="Xl_RC" value="Remove 'requires' declaration from all commands" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6gxxZVtiaqN" role="2ZfgGD">
      <node concept="3clFbS" id="6gxxZVtiaqO" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVtidfv" role="3cqZAp">
          <node concept="2OqwBi" id="6gxxZVtidfw" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVtidfx" role="2Oq$k0">
              <node concept="2Sf5sV" id="6gxxZVtidfy" role="2Oq$k0" />
              <node concept="2qgKlT" id="6gxxZVtidfz" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:oGImgOKxc1" resolve="commands" />
              </node>
            </node>
            <node concept="2es0OD" id="6gxxZVtidf$" role="2OqNvi">
              <node concept="1bVj0M" id="6gxxZVtidf_" role="23t8la">
                <node concept="3clFbS" id="6gxxZVtidfA" role="1bW5cS">
                  <node concept="3clFbF" id="6gxxZVtidfB" role="3cqZAp">
                    <node concept="2OqwBi" id="6gxxZVtidfC" role="3clFbG">
                      <node concept="2OqwBi" id="6gxxZVtidfD" role="2Oq$k0">
                        <node concept="37vLTw" id="6gxxZVtidfE" role="2Oq$k0">
                          <ref role="3cqZAo" node="6gxxZVtidfI" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="6gxxZVtidfF" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                        </node>
                      </node>
                      <node concept="tyxLq" id="6gxxZVtidfG" role="2OqNvi">
                        <node concept="3clFbT" id="6gxxZVtidnh" role="tz02z" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6gxxZVtidfI" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6gxxZVtidfJ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6gxxZVtibJN" role="2ZfVeh">
      <node concept="3clFbS" id="6gxxZVtibJO" role="2VODD2">
        <node concept="3clFbF" id="6gxxZVtibOG" role="3cqZAp">
          <node concept="1Wc70l" id="6gxxZVtibOH" role="3clFbG">
            <node concept="2OqwBi" id="6gxxZVtibOI" role="3uHU7w">
              <node concept="2OqwBi" id="6gxxZVtibOJ" role="2Oq$k0">
                <node concept="2Sf5sV" id="6gxxZVtibOK" role="2Oq$k0" />
                <node concept="2qgKlT" id="6gxxZVtibOL" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:oGImgOKxc1" resolve="commands" />
                </node>
              </node>
              <node concept="2HwmR7" id="6gxxZVtibOM" role="2OqNvi">
                <node concept="1bVj0M" id="6gxxZVtibON" role="23t8la">
                  <node concept="3clFbS" id="6gxxZVtibOO" role="1bW5cS">
                    <node concept="3clFbF" id="6gxxZVtibOP" role="3cqZAp">
                      <node concept="2OqwBi" id="6gxxZVtibOR" role="3clFbG">
                        <node concept="37vLTw" id="6gxxZVtibOS" role="2Oq$k0">
                          <ref role="3cqZAo" node="6gxxZVtibOU" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="6gxxZVtibOT" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6gxxZVtibOU" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6gxxZVtibOV" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1LTEHzOpbC" role="3uHU7B">
              <node concept="2Sf5sV" id="1LTEHzOoS4" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHzOpvE" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHzOe0y" resolve="isCommandsBlock" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="1LTEHzOvTl">
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="CommandContainerTypeTransformationIntention" />
    <ref role="2ZfgGC" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="38BcoT" id="1LTEHzOvTm" role="3dlsAV">
      <node concept="2ZThk1" id="1LTEHzOwa7" role="3ddBve">
        <ref role="2ZWj4r" to="3nll:1LTEHzOdy1" resolve="CommandContainerType" />
      </node>
      <node concept="3clFbS" id="1LTEHzOvTo" role="2VODD2">
        <node concept="3clFbF" id="1LTEHzOwsZ" role="3cqZAp">
          <node concept="2OqwBi" id="1LTEHzOxbX" role="3clFbG">
            <node concept="1XH99k" id="1LTEHzOwsY" role="2Oq$k0">
              <ref role="1XH99l" to="3nll:1LTEHzOdy1" resolve="CommandContainerType" />
            </node>
            <node concept="2ViDtN" id="1LTEHzOxtT" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2S6ZIM" id="1LTEHzOvTp" role="2ZfVej">
      <node concept="3clFbS" id="1LTEHzOvTq" role="2VODD2">
        <node concept="3cpWs6" id="5A5sGromrB2" role="3cqZAp">
          <node concept="3cpWs3" id="5A5sGroms48" role="3cqZAk">
            <node concept="2OqwBi" id="5A5sGromsjG" role="3uHU7w">
              <node concept="38Zlrr" id="5A5sGroms5w" role="2Oq$k0" />
              <node concept="1XCIdh" id="5A5sGromstc" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="5A5sGromrCn" role="3uHU7B">
              <property role="Xl_RC" value="Transform to command " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1LTEHzOvTr" role="2ZfgGD">
      <node concept="3clFbS" id="1LTEHzOvTs" role="2VODD2">
        <node concept="3clFbF" id="1LTEHzO$8e" role="3cqZAp">
          <node concept="2OqwBi" id="1LTEHzO$Kf" role="3clFbG">
            <node concept="2OqwBi" id="1LTEHzO$lj" role="2Oq$k0">
              <node concept="2Sf5sV" id="1LTEHzO$8d" role="2Oq$k0" />
              <node concept="3TrcHB" id="1LTEHzO$AH" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
              </node>
            </node>
            <node concept="tyxLq" id="1LTEHzO_5G" role="2OqNvi">
              <node concept="38Zlrr" id="1LTEHzO_6t" role="tz02z" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTgwl4E" role="3cqZAp" />
        <node concept="3clFbJ" id="1LTEHzOAuL" role="3cqZAp">
          <node concept="3clFbS" id="1LTEHzOAuM" role="3clFbx">
            <node concept="3clFbF" id="1LTEHzOAv9" role="3cqZAp">
              <node concept="2OqwBi" id="1LTEHzOAva" role="3clFbG">
                <node concept="2Sf5sV" id="1LTEHzOAvb" role="2Oq$k0" />
                <node concept="1OKiuA" id="1LTEHzOAvc" role="2OqNvi">
                  <node concept="1XNTG" id="1LTEHzOAvd" role="lBI5i" />
                  <node concept="2TlHUq" id="1LTEHzOAve" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:6Qa18YGLSVu" resolve="containerTypeCellId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1LTEHzOF1B" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="1LTEHzOAuX" role="3clFbw">
            <node concept="2Sf5sV" id="1LTEHzOAuY" role="2Oq$k0" />
            <node concept="2qgKlT" id="1LTEHzOATx" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:1LTEHzOe0y" resolve="isCommandsBlock" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1LTEHzOEGV" role="3cqZAp" />
        <node concept="3clFbF" id="1LTEHzOAuR" role="3cqZAp">
          <node concept="2OqwBi" id="1LTEHzOAuS" role="3clFbG">
            <node concept="2OqwBi" id="51Z40Vzb4x0" role="2Oq$k0">
              <node concept="2Sf5sV" id="1LTEHzOAuT" role="2Oq$k0" />
              <node concept="3TrEf2" id="51Z40Vzb4Oo" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
              </node>
            </node>
            <node concept="1OKiuA" id="1LTEHzOAuU" role="2OqNvi">
              <node concept="1XNTG" id="1LTEHzOAuV" role="lBI5i" />
              <node concept="2TlHUq" id="1LTEHzOAuW" role="lGT1i">
                <ref role="2TlMyj" to="8pak:2RbvdOJ81o1" resolve="nameCellId" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="1LTEHzOyJN" role="2ZfVeh">
      <node concept="3clFbS" id="1LTEHzOyJO" role="2VODD2">
        <node concept="3clFbF" id="1LTEHzOyWY" role="3cqZAp">
          <node concept="3fqX7Q" id="1LTEHzOzWS" role="3clFbG">
            <node concept="2OqwBi" id="1LTEHzOzWU" role="3fr31v">
              <node concept="2OqwBi" id="1LTEHzOzWV" role="2Oq$k0">
                <node concept="2Sf5sV" id="1LTEHzOzWW" role="2Oq$k0" />
                <node concept="3TrcHB" id="1LTEHzOzWX" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                </node>
              </node>
              <node concept="liA8E" id="1LTEHzOzWY" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="38Zlrr" id="1LTEHzOzWZ" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3VGLvhFd$qb">
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="CreateDtoRepositoryIntention" />
    <ref role="2ZfgGC" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    <node concept="2S6ZIM" id="3VGLvhFd$qc" role="2ZfVej">
      <node concept="3clFbS" id="3VGLvhFd$qd" role="2VODD2">
        <node concept="3clFbF" id="3VGLvhFdC$T" role="3cqZAp">
          <node concept="Xl_RD" id="3VGLvhFdC$S" role="3clFbG">
            <property role="Xl_RC" value="Create repository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3VGLvhFd$qe" role="2ZfgGD">
      <node concept="3clFbS" id="3VGLvhFd$qf" role="2VODD2">
        <node concept="3cpWs8" id="3VGLvhFdITf" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhFdITg" role="3cpWs9">
            <property role="TrG5h" value="reference" />
            <node concept="3Tqbb2" id="3VGLvhFdISR" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4Wa3rAG5J$6" resolve="DtoReference" />
            </node>
            <node concept="2ShNRf" id="3VGLvhFdITh" role="33vP2m">
              <node concept="3zrR0B" id="3VGLvhFdITi" role="2ShVmc">
                <node concept="3Tqbb2" id="3VGLvhFdITj" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:4Wa3rAG5J$6" resolve="DtoReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3VGLvhFdICL" role="3cqZAp">
          <node concept="2OqwBi" id="3VGLvhFdJbQ" role="3clFbG">
            <node concept="2OqwBi" id="3VGLvhFdIW6" role="2Oq$k0">
              <node concept="37vLTw" id="3VGLvhFdITk" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhFdITg" resolve="reference" />
              </node>
              <node concept="3TrEf2" id="3VGLvhFdIXn" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5J$7" resolve="dto" />
              </node>
            </node>
            <node concept="2oxUTD" id="3VGLvhFdKx_" role="2OqNvi">
              <node concept="2Sf5sV" id="3VGLvhFdKyG" role="2oxUTC" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3VGLvhFdIA4" role="3cqZAp" />
        <node concept="3cpWs8" id="3VGLvhFdHjX" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhFdHjY" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3Tqbb2" id="3VGLvhFdHhu" role="1tU5fm">
              <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
            </node>
            <node concept="2ShNRf" id="3VGLvhFdHjZ" role="33vP2m">
              <node concept="3zrR0B" id="3VGLvhFdHk0" role="2ShVmc">
                <node concept="3Tqbb2" id="3VGLvhFdHk1" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3VGLvhFdHxk" role="3cqZAp">
          <node concept="2OqwBi" id="3VGLvhFdI6v" role="3clFbG">
            <node concept="2OqwBi" id="3VGLvhFdHGV" role="2Oq$k0">
              <node concept="37vLTw" id="3VGLvhFdHxi" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhFdHjY" resolve="repository" />
              </node>
              <node concept="3TrEf2" id="3VGLvhFdHV8" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
              </node>
            </node>
            <node concept="2oxUTD" id="3VGLvhFdL3N" role="2OqNvi">
              <node concept="37vLTw" id="3VGLvhFdL4S" role="2oxUTC">
                <ref role="3cqZAo" node="3VGLvhFdITg" resolve="reference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3VGLvhFdHmt" role="3cqZAp" />
        <node concept="3cpWs8" id="3VGLvhFdRMB" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhFdRMC" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="3VGLvhFdRMD" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="3VGLvhFdRME" role="33vP2m">
              <node concept="2Sf5sV" id="3VGLvhFdRMF" role="2Oq$k0" />
              <node concept="2qgKlT" id="3VGLvhFdRMG" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3VGLvhFdL5K" role="3cqZAp" />
        <node concept="3cpWs8" id="3VGLvhFdNfy" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhFdNfz" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="3VGLvhFdN3e" role="1tU5fm" />
            <node concept="2OqwBi" id="3VGLvhFdNf$" role="33vP2m">
              <node concept="2qgKlT" id="3VGLvhFdNfC" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3FBObrohI14" resolve="indexOf" />
                <node concept="2Sf5sV" id="3VGLvhFdNfD" role="37wK5m" />
              </node>
              <node concept="37vLTw" id="3VGLvhFdS7g" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhFdRMC" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3VGLvhFdSuq" role="3cqZAp">
          <node concept="2OqwBi" id="3VGLvhFdSur" role="3clFbG">
            <node concept="2OqwBi" id="3VGLvhFdSus" role="2Oq$k0">
              <node concept="3Tsc0h" id="3VGLvhFdSut" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="3VGLvhFdSuu" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhFdRMC" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="3VGLvhFdSuv" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="3VGLvhFdSuw" role="37wK5m">
                <node concept="3cmrfG" id="3VGLvhFdSux" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="3VGLvhFdSuy" role="3uHU7B">
                  <ref role="3cqZAo" node="3VGLvhFdNfz" resolve="index" />
                </node>
              </node>
              <node concept="2ShNRf" id="3VGLvhFdSuz" role="37wK5m">
                <node concept="3zrR0B" id="3VGLvhFdSu$" role="2ShVmc">
                  <node concept="3Tqbb2" id="3VGLvhFdSu_" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3VGLvhFdSuA" role="3cqZAp">
          <node concept="2OqwBi" id="3VGLvhFdSuB" role="3clFbG">
            <node concept="2OqwBi" id="3VGLvhFdSuC" role="2Oq$k0">
              <node concept="3Tsc0h" id="3VGLvhFdSuD" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="3VGLvhFdSuE" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhFdRMC" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="3VGLvhFdSuF" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="3VGLvhFdSuG" role="37wK5m">
                <node concept="3cmrfG" id="3VGLvhFdSuH" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="3VGLvhFdSuI" role="3uHU7B">
                  <ref role="3cqZAo" node="3VGLvhFdNfz" resolve="index" />
                </node>
              </node>
              <node concept="37vLTw" id="3VGLvhFdSuJ" role="37wK5m">
                <ref role="3cqZAo" node="3VGLvhFdHjY" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3VGLvhFd$x7" role="2ZfVeh">
      <node concept="3clFbS" id="3VGLvhFd$x8" role="2VODD2">
        <node concept="3clFbF" id="3VGLvhFd$Bq" role="3cqZAp">
          <node concept="2OqwBi" id="3VGLvhFd_$C" role="3clFbG">
            <node concept="2OqwBi" id="3VGLvhFd$Wh" role="2Oq$k0">
              <node concept="2Sf5sV" id="3VGLvhFd$Bp" role="2Oq$k0" />
              <node concept="2qgKlT" id="3VGLvhFd_fp" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:6gxxZVrZjYk" resolve="repository" />
              </node>
            </node>
            <node concept="3w_OXm" id="3VGLvhFd_Nr" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="5jZDGTdgr$P">
    <property role="3GE5qa" value="eventContainer" />
    <property role="TrG5h" value="EventContainerTypeTransformationIntention" />
    <ref role="2ZfgGC" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
    <node concept="38BcoT" id="5jZDGTdgr$Q" role="3dlsAV">
      <node concept="2ZThk1" id="5jZDGTdgrPJ" role="3ddBve">
        <ref role="2ZWj4r" to="3nll:3VGLvhFnWd_" resolve="EventContainerType" />
      </node>
      <node concept="3clFbS" id="5jZDGTdgr$S" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTdgs8E" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTdgsRC" role="3clFbG">
            <node concept="1XH99k" id="5jZDGTdgs8D" role="2Oq$k0">
              <ref role="1XH99l" to="3nll:3VGLvhFnWd_" resolve="EventContainerType" />
            </node>
            <node concept="2ViDtN" id="5jZDGTdgt9$" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2S6ZIM" id="5jZDGTdgr$T" role="2ZfVej">
      <node concept="3clFbS" id="5jZDGTdgr$U" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTdgtbq" role="3cqZAp">
          <node concept="3cpWs3" id="5jZDGTdgtMB" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTdgu6K" role="3uHU7w">
              <node concept="38Zlrr" id="5jZDGTdgtNm" role="2Oq$k0" />
              <node concept="1XCIdh" id="5jZDGTdguf$" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="5jZDGTdgtbp" role="3uHU7B">
              <property role="Xl_RC" value="Transform to event " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5jZDGTdgr$V" role="2ZfgGD">
      <node concept="3clFbS" id="5jZDGTdgr$W" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTdgvAW" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTdgvGN" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTdgvDe" role="2Oq$k0">
              <node concept="2Sf5sV" id="5jZDGTdgvAV" role="2Oq$k0" />
              <node concept="3TrcHB" id="5jZDGTdgvEs" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
              </node>
            </node>
            <node concept="tyxLq" id="5jZDGTdgvUu" role="2OqNvi">
              <node concept="38Zlrr" id="5jZDGTdgvVf" role="tz02z" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="mdpAJNCOwh" role="3cqZAp" />
        <node concept="3clFbJ" id="5jZDGTgx241" role="3cqZAp">
          <node concept="3clFbS" id="5jZDGTgx243" role="3clFbx">
            <node concept="3clFbH" id="51Z40VxhFvk" role="3cqZAp" />
            <node concept="1X3_iC" id="51Z40VxhFu8" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="mdpAJNy_o0" role="8Wnug">
                <node concept="2OqwBi" id="mdpAJNy__Y" role="3clFbG">
                  <node concept="2Sf5sV" id="mdpAJNy_nZ" role="2Oq$k0" />
                  <node concept="2qgKlT" id="mdpAJNy_RK" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:d$u27T68WS" resolve="resetAndMergeChildRepositoryReferences" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5jZDGTgx2T4" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="5jZDGTgBLdX" role="3clFbw">
            <node concept="2OqwBi" id="5jZDGTgBLdZ" role="3fr31v">
              <node concept="2OqwBi" id="5jZDGTgBLe0" role="2Oq$k0">
                <node concept="2Sf5sV" id="5jZDGTgBLe1" role="2Oq$k0" />
                <node concept="3TrcHB" id="5jZDGTgBLe2" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
                </node>
              </node>
              <node concept="21noJN" id="5jZDGTgBLe3" role="2OqNvi">
                <node concept="21nZrQ" id="5jZDGTgBLe4" role="21noJM">
                  <ref role="21nZrZ" to="3nll:3VGLvhFnWdA" resolve="EventBlock" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5jZDGTdguuM" role="2ZfVeh">
      <node concept="3clFbS" id="5jZDGTdguuN" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTdguL6" role="3cqZAp">
          <node concept="3fqX7Q" id="5jZDGTdguL4" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTdgvp$" role="3fr31v">
              <node concept="2OqwBi" id="5jZDGTdgva3" role="2Oq$k0">
                <node concept="2Sf5sV" id="5jZDGTdguQk" role="2Oq$k0" />
                <node concept="3TrcHB" id="5jZDGTdgvmU" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
                </node>
              </node>
              <node concept="liA8E" id="5jZDGTdgvtU" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="38Zlrr" id="5jZDGTdgvvl" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5jZDGTecGPD">
    <property role="3GE5qa" value="eventContainer" />
    <property role="TrG5h" value="EventContainerToggleRequiresRepositoryReferencesIntention" />
    <ref role="2ZfgGC" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
    <node concept="2S6ZIM" id="5jZDGTecGPE" role="2ZfVej">
      <node concept="3clFbS" id="5jZDGTecGPF" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTecIq6" role="3cqZAp">
          <node concept="3cpWs3" id="5jZDGTecIq7" role="3clFbG">
            <node concept="1eOMI4" id="5jZDGTecIq8" role="3uHU7B">
              <node concept="3K4zz7" id="5jZDGTecIq9" role="1eOMHV">
                <node concept="Xl_RD" id="5jZDGTecIqa" role="3K4E3e">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="Xl_RD" id="5jZDGTecIqb" role="3K4GZi">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="2OqwBi" id="5jZDGTecIqc" role="3K4Cdx">
                  <node concept="2Sf5sV" id="5jZDGTecIqd" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jZDGTecIqe" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="5jZDGTecIqf" role="3uHU7w">
              <property role="Xl_RC" value=" 'requires' declaration" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5jZDGTecGPG" role="2ZfgGD">
      <node concept="3clFbS" id="5jZDGTecGPH" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTecIXi" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTecIXj" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTecIXk" role="2Oq$k0">
              <node concept="2Sf5sV" id="5jZDGTecIXl" role="2Oq$k0" />
              <node concept="3TrcHB" id="5jZDGTecIXm" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
            <node concept="tyxLq" id="5jZDGTecIXn" role="2OqNvi">
              <node concept="3fqX7Q" id="5jZDGTecIXo" role="tz02z">
                <node concept="2OqwBi" id="5jZDGTecIXp" role="3fr31v">
                  <node concept="2Sf5sV" id="5jZDGTecIXq" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jZDGTecIXr" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jZDGTecIXs" role="3cqZAp">
          <node concept="3clFbS" id="5jZDGTecIXt" role="3clFbx">
            <node concept="3clFbF" id="5jZDGTecIXu" role="3cqZAp">
              <node concept="2OqwBi" id="5jZDGTecIXv" role="3clFbG">
                <node concept="2Sf5sV" id="5jZDGTecIXw" role="2Oq$k0" />
                <node concept="1OKiuA" id="5jZDGTecIXx" role="2OqNvi">
                  <node concept="1XNTG" id="5jZDGTecIXy" role="lBI5i" />
                  <node concept="2TlHUq" id="4V91Il3sPF1" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:6gxxZVrO$nU" resolve="repositoryReferenceListStartCellId" />
                  </node>
                  <node concept="3cmrfG" id="5jZDGTecIX$" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5jZDGTecIX_" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="5jZDGTecIXA" role="3clFbw">
            <node concept="2Sf5sV" id="5jZDGTecIXB" role="2Oq$k0" />
            <node concept="3TrcHB" id="5jZDGTecIXC" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTecJ3z" role="3cqZAp" />
        <node concept="3clFbF" id="5jZDGTecJcF" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTecJq4" role="3clFbG">
            <node concept="2Sf5sV" id="5jZDGTecJcE" role="2Oq$k0" />
            <node concept="2qgKlT" id="5jZDGTecJDX" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSO_" resolve="clearReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfeGhD" role="3cqZAp" />
        <node concept="3clFbJ" id="5jZDGTfeGHL" role="3cqZAp">
          <node concept="3clFbS" id="5jZDGTfeGHN" role="3clFbx">
            <node concept="3clFbF" id="5jZDGTecKRf" role="3cqZAp">
              <node concept="2OqwBi" id="5jZDGTecKRg" role="3clFbG">
                <node concept="2Sf5sV" id="5jZDGTecKRi" role="2Oq$k0" />
                <node concept="1OKiuA" id="5jZDGTecKRk" role="2OqNvi">
                  <node concept="1XNTG" id="5jZDGTecKRl" role="lBI5i" />
                  <node concept="2TlHUq" id="5jZDGTel9Tn" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:5jZDGTeA1ZW" resolve="placeholderSpacerCellId" />
                  </node>
                  <node concept="3cmrfG" id="5jZDGTfiZvN" role="3dN3m$">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="5jZDGTfeGUW" role="3clFbw">
            <ref role="37wK5l" to="7ztp:5jZDGTfesVy" resolve="isSelectedCellChildOf" />
            <ref role="1Pybhc" to="7ztp:5jZDGTfesU9" resolve="EditorContextUtils" />
            <node concept="1XNTG" id="5jZDGTfeGY8" role="37wK5m" />
            <node concept="Xl_RD" id="5jZDGTfeH4V" role="37wK5m">
              <property role="Xl_RC" value="requiresBlockCellId" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="5jZDGTfSl3G">
    <property role="3GE5qa" value="aggregates" />
    <property role="TrG5h" value="EventContainerCreationIntention" />
    <property role="2ZfUl3" value="true" />
    <ref role="2ZfgGC" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
    <node concept="38BcoT" id="5jZDGTfSl3H" role="3dlsAV">
      <node concept="2ZThk1" id="5jZDGTfSnx6" role="3ddBve">
        <ref role="2ZWj4r" to="3nll:3VGLvhFnWd_" resolve="EventContainerType" />
      </node>
      <node concept="3clFbS" id="5jZDGTfSl3J" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTfSnO7" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfSoz5" role="3clFbG">
            <node concept="1XH99k" id="5jZDGTfSnO6" role="2Oq$k0">
              <ref role="1XH99l" to="3nll:3VGLvhFnWd_" resolve="EventContainerType" />
            </node>
            <node concept="2ViDtN" id="5jZDGTfSoP1" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2S6ZIM" id="5jZDGTfSl3K" role="2ZfVej">
      <node concept="3clFbS" id="5jZDGTfSl3L" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTfSqik" role="3cqZAp">
          <node concept="3cpWs3" id="5jZDGTfSqMi" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfSrl7" role="3uHU7w">
              <node concept="38Zlrr" id="5jZDGTfSqUy" role="2Oq$k0" />
              <node concept="1XCIdh" id="5jZDGTfSrDv" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="5jZDGTfSqij" role="3uHU7B">
              <property role="Xl_RC" value="Create corresponding event " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5jZDGTfSl3M" role="2ZfgGD">
      <node concept="3clFbS" id="5jZDGTfSl3N" role="2VODD2">
        <node concept="3cpWs8" id="5jZDGTfSxVa" role="3cqZAp">
          <node concept="3cpWsn" id="5jZDGTfSxVb" role="3cpWs9">
            <property role="TrG5h" value="aggregateRootReference" />
            <node concept="3Tqbb2" id="5jZDGTfSxVc" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
            </node>
            <node concept="2ShNRf" id="5jZDGTfSxVd" role="33vP2m">
              <node concept="3zrR0B" id="5jZDGTfSxVe" role="2ShVmc">
                <node concept="3Tqbb2" id="5jZDGTfSxVf" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTfSxVg" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfSxVh" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfSxVi" role="2Oq$k0">
              <node concept="37vLTw" id="5jZDGTfSxVj" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfSxVb" resolve="aggregateRootReference" />
              </node>
              <node concept="3TrEf2" id="5jZDGTfSxVk" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
              </node>
            </node>
            <node concept="2oxUTD" id="5jZDGTfSxVl" role="2OqNvi">
              <node concept="2Sf5sV" id="5jZDGTfSxVm" role="2oxUTC" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfSz_K" role="3cqZAp" />
        <node concept="3cpWs8" id="5jZDGTfSxV3" role="3cqZAp">
          <node concept="3cpWsn" id="5jZDGTfSxV4" role="3cpWs9">
            <property role="TrG5h" value="eventContainer" />
            <node concept="3Tqbb2" id="5jZDGTfSxV5" role="1tU5fm">
              <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
            </node>
            <node concept="2ShNRf" id="5jZDGTfSxV6" role="33vP2m">
              <node concept="3zrR0B" id="5jZDGTfSxV7" role="2ShVmc">
                <node concept="3Tqbb2" id="5jZDGTfSxV8" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTfSzZj" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfS_6g" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfS$yw" role="2Oq$k0">
              <node concept="37vLTw" id="5jZDGTfSzZh" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfSxV4" resolve="eventContainer" />
              </node>
              <node concept="3TrcHB" id="5jZDGTfS$WH" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
              </node>
            </node>
            <node concept="tyxLq" id="5jZDGTfS_nK" role="2OqNvi">
              <node concept="38Zlrr" id="5jZDGTfS_op" role="tz02z" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTfSxVn" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfSxVo" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfSxVp" role="2Oq$k0">
              <node concept="37vLTw" id="5jZDGTfSxVq" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfSxV4" resolve="eventContainer" />
              </node>
              <node concept="3TrEf2" id="5jZDGTfSxVr" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:1jrq3noTPfl" resolve="aggregateReference" />
              </node>
            </node>
            <node concept="2oxUTD" id="5jZDGTfSxVs" role="2OqNvi">
              <node concept="37vLTw" id="5jZDGTfSxVt" role="2oxUTC">
                <ref role="3cqZAo" node="5jZDGTfSxVb" resolve="aggregateRootReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfSxVu" role="3cqZAp" />
        <node concept="3cpWs8" id="5jZDGTfSAxi" role="3cqZAp">
          <node concept="3cpWsn" id="5jZDGTfSAxj" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="5jZDGTfSAwR" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="5jZDGTfSAxk" role="33vP2m">
              <node concept="2Sf5sV" id="5jZDGTfSAxl" role="2Oq$k0" />
              <node concept="2qgKlT" id="5jZDGTfSAxm" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfSBCy" role="3cqZAp" />
        <node concept="3cpWs8" id="5jZDGTfSxVv" role="3cqZAp">
          <node concept="3cpWsn" id="5jZDGTfSxVw" role="3cpWs9">
            <property role="TrG5h" value="aggregateRootIndex" />
            <node concept="10Oyi0" id="5jZDGTfSxVx" role="1tU5fm" />
            <node concept="2OqwBi" id="5jZDGTfSxVy" role="33vP2m">
              <node concept="2qgKlT" id="5jZDGTfSxVA" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3FBObrohI14" resolve="indexOf" />
                <node concept="2Sf5sV" id="5jZDGTfSxVB" role="37wK5m" />
              </node>
              <node concept="37vLTw" id="5jZDGTfSB3T" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfSAxj" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTfSxVD" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfSxVE" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfSxVF" role="2Oq$k0">
              <node concept="3Tsc0h" id="5jZDGTfSxVJ" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="5jZDGTfSBgh" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfSAxj" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="5jZDGTfSxVK" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="5jZDGTfSxVL" role="37wK5m">
                <node concept="3cmrfG" id="5jZDGTfSxVM" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="5jZDGTfSxVN" role="3uHU7B">
                  <ref role="3cqZAo" node="5jZDGTfSxVw" resolve="aggregateRootIndex" />
                </node>
              </node>
              <node concept="2ShNRf" id="5jZDGTfSxVO" role="37wK5m">
                <node concept="3zrR0B" id="5jZDGTfSxVP" role="2ShVmc">
                  <node concept="3Tqbb2" id="5jZDGTfSxVQ" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTfSxVR" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfSxVS" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfSxVT" role="2Oq$k0">
              <node concept="3Tsc0h" id="5jZDGTfSxVX" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="5jZDGTfSBpk" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfSAxj" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="5jZDGTfSxVY" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="5jZDGTfSxVZ" role="37wK5m">
                <node concept="3cmrfG" id="5jZDGTfSxW0" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="5jZDGTfSxW1" role="3uHU7B">
                  <ref role="3cqZAo" node="5jZDGTfSxVw" resolve="aggregateRootIndex" />
                </node>
              </node>
              <node concept="37vLTw" id="5jZDGTfSxW2" role="37wK5m">
                <ref role="3cqZAo" node="5jZDGTfSxV4" resolve="eventContainer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5jZDGTfSrKb" role="2ZfVeh">
      <node concept="3clFbS" id="5jZDGTfSrKc" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTfSrRo" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfSQ7y" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfSsbl" role="2Oq$k0">
              <node concept="2Sf5sV" id="5jZDGTfSrRn" role="2Oq$k0" />
              <node concept="2qgKlT" id="5jZDGTfSssP" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTfSR6V" resolve="eventContainer" />
              </node>
            </node>
            <node concept="3w_OXm" id="5jZDGTfSQpa" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="5jZDGTfSN9n">
    <property role="3GE5qa" value="aggregates" />
    <property role="TrG5h" value="AggregateRepositoryCreationIntention" />
    <ref role="2ZfgGC" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
    <node concept="38BcoT" id="5jZDGTfSN9o" role="3dlsAV">
      <node concept="10P_77" id="5jZDGTfSWSd" role="3ddBve" />
      <node concept="3clFbS" id="5jZDGTfSN9q" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTfSX2M" role="3cqZAp">
          <node concept="2ShNRf" id="5jZDGTfSX2K" role="3clFbG">
            <node concept="Tc6Ow" id="5jZDGTfSX7X" role="2ShVmc">
              <node concept="10P_77" id="5jZDGTfSY0B" role="HW$YZ" />
              <node concept="3clFbT" id="5jZDGTfSZ2K" role="HW$Y0">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="5jZDGTfSZ5x" role="HW$Y0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S6ZIM" id="5jZDGTfSN9r" role="2ZfVej">
      <node concept="3clFbS" id="5jZDGTfSN9s" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTfSZfY" role="3cqZAp">
          <node concept="3cpWs3" id="5jZDGTfT1Fz" role="3clFbG">
            <node concept="Xl_RD" id="5jZDGTfT1H1" role="3uHU7w">
              <property role="Xl_RC" value=" repository" />
            </node>
            <node concept="3cpWs3" id="5jZDGTfT19D" role="3uHU7B">
              <node concept="Xl_RD" id="5jZDGTfSZfX" role="3uHU7B">
                <property role="Xl_RC" value="Create " />
              </node>
              <node concept="1eOMI4" id="5jZDGTfT1ao" role="3uHU7w">
                <node concept="3K4zz7" id="5jZDGTfT1BK" role="1eOMHV">
                  <node concept="Xl_RD" id="5jZDGTfT1CB" role="3K4E3e">
                    <property role="Xl_RC" value="id" />
                  </node>
                  <node concept="Xl_RD" id="5jZDGTfT1E9" role="3K4GZi">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="38Zlrr" id="5jZDGTfT1b6" role="3K4Cdx" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5jZDGTfSN9t" role="2ZfgGD">
      <node concept="3clFbS" id="5jZDGTfSN9u" role="2VODD2">
        <node concept="3cpWs8" id="5jZDGTfTgSj" role="3cqZAp">
          <node concept="3cpWsn" id="5jZDGTfTgSk" role="3cpWs9">
            <property role="TrG5h" value="aggregateRootReference" />
            <node concept="3Tqbb2" id="5jZDGTfTgSl" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
            </node>
            <node concept="2ShNRf" id="5jZDGTfTgSm" role="33vP2m">
              <node concept="3zrR0B" id="5jZDGTfTgSn" role="2ShVmc">
                <node concept="3Tqbb2" id="5jZDGTfTgSo" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTfTgSp" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfTgSq" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfTgSr" role="2Oq$k0">
              <node concept="37vLTw" id="5jZDGTfTgSs" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfTgSk" resolve="aggregateRootReference" />
              </node>
              <node concept="3TrEf2" id="5jZDGTfTgSt" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
              </node>
            </node>
            <node concept="2oxUTD" id="5jZDGTfTgSu" role="2OqNvi">
              <node concept="2Sf5sV" id="5jZDGTfTgSv" role="2oxUTC" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfTgSw" role="3cqZAp" />
        <node concept="3cpWs8" id="5jZDGTfTgSx" role="3cqZAp">
          <node concept="3cpWsn" id="5jZDGTfTgSy" role="3cpWs9">
            <property role="TrG5h" value="agrgegateRootRepository" />
            <node concept="3Tqbb2" id="5jZDGTfTgSz" role="1tU5fm">
              <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
            </node>
            <node concept="2ShNRf" id="5jZDGTfTgS$" role="33vP2m">
              <node concept="3zrR0B" id="5jZDGTfTgS_" role="2ShVmc">
                <node concept="3Tqbb2" id="5jZDGTfTgSA" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTfTgSB" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfTgSC" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfTgSD" role="2Oq$k0">
              <node concept="37vLTw" id="5jZDGTfTgSE" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfTgSy" resolve="agrgegateRootRepository" />
              </node>
              <node concept="3TrEf2" id="5jZDGTfTgSF" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:5SyewC9Zz9D" resolve="aggregateReference" />
              </node>
            </node>
            <node concept="2oxUTD" id="5jZDGTfTgSG" role="2OqNvi">
              <node concept="37vLTw" id="5jZDGTfTgSH" role="2oxUTC">
                <ref role="3cqZAo" node="5jZDGTfTgSk" resolve="aggregateRootReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTfTirW" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfTl0e" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfTjOk" role="2Oq$k0">
              <node concept="37vLTw" id="5jZDGTfTirU" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfTgSy" resolve="agrgegateRootRepository" />
              </node>
              <node concept="3TrcHB" id="5jZDGTfTkmK" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
              </node>
            </node>
            <node concept="tyxLq" id="5jZDGTfTlIH" role="2OqNvi">
              <node concept="38Zlrr" id="5jZDGTfTlJm" role="tz02z" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfTieU" role="3cqZAp" />
        <node concept="3cpWs8" id="5jZDGTfTgSJ" role="3cqZAp">
          <node concept="3cpWsn" id="5jZDGTfTgSK" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="5jZDGTfTgSL" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="5jZDGTfTgSM" role="33vP2m">
              <node concept="2Sf5sV" id="5jZDGTfTgSN" role="2Oq$k0" />
              <node concept="2qgKlT" id="5jZDGTfTgSO" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTfTgSP" role="3cqZAp" />
        <node concept="3cpWs8" id="5jZDGTfTgSQ" role="3cqZAp">
          <node concept="3cpWsn" id="5jZDGTfTgSR" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="5jZDGTfTgSS" role="1tU5fm" />
            <node concept="2OqwBi" id="5jZDGTfTgST" role="33vP2m">
              <node concept="2qgKlT" id="5jZDGTfTgSU" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3FBObrohI14" resolve="indexOf" />
                <node concept="2Sf5sV" id="5jZDGTfTgSV" role="37wK5m" />
              </node>
              <node concept="37vLTw" id="5jZDGTfTgSW" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfTgSK" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTfTgSX" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfTgSY" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfTgSZ" role="2Oq$k0">
              <node concept="3Tsc0h" id="5jZDGTfTgT0" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="5jZDGTfTgT1" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfTgSK" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="5jZDGTfTgT2" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="5jZDGTfTgT3" role="37wK5m">
                <node concept="3cmrfG" id="5jZDGTfTgT4" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="5jZDGTfTgT5" role="3uHU7B">
                  <ref role="3cqZAo" node="5jZDGTfTgSR" resolve="index" />
                </node>
              </node>
              <node concept="2ShNRf" id="5jZDGTfTgT6" role="37wK5m">
                <node concept="3zrR0B" id="5jZDGTfTgT7" role="2ShVmc">
                  <node concept="3Tqbb2" id="5jZDGTfTgT8" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTfTgT9" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfTgTa" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfTgTb" role="2Oq$k0">
              <node concept="3Tsc0h" id="5jZDGTfTgTc" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="5jZDGTfTgTd" role="2Oq$k0">
                <ref role="3cqZAo" node="5jZDGTfTgSK" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="5jZDGTfTgTe" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="5jZDGTfTgTf" role="37wK5m">
                <node concept="3cmrfG" id="5jZDGTfTgTg" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="5jZDGTfTgTh" role="3uHU7B">
                  <ref role="3cqZAo" node="5jZDGTfTgSR" resolve="index" />
                </node>
              </node>
              <node concept="37vLTw" id="5jZDGTfTgTi" role="37wK5m">
                <ref role="3cqZAo" node="5jZDGTfTgSy" resolve="agrgegateRootRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5jZDGTfT1KL" role="2ZfVeh">
      <node concept="3clFbS" id="5jZDGTfT1KM" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTfT1Sq" role="3cqZAp">
          <node concept="3fqX7Q" id="5jZDGTfT2_e" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfT2_g" role="3fr31v">
              <node concept="2Sf5sV" id="5jZDGTfT2_h" role="2Oq$k0" />
              <node concept="2qgKlT" id="5jZDGTfT2_i" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:2Bsub$KTQ$T" resolve="hasDefinedRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5jZDGTfXMVJ">
    <property role="3GE5qa" value="general.keyword" />
    <property role="TrG5h" value="ToggleComponentKeywordIntention" />
    <ref role="2ZfgGC" to="3nll:5jZDGTfXM0Y" resolve="IComponentWithToggleableKeyword" />
    <node concept="2S6ZIM" id="5jZDGTfXMVK" role="2ZfVej">
      <node concept="3clFbS" id="5jZDGTfXMVL" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTfXN33" role="3cqZAp">
          <node concept="3cpWs3" id="5jZDGTfXOgs" role="3clFbG">
            <node concept="Xl_RD" id="5jZDGTfXOhC" role="3uHU7w">
              <property role="Xl_RC" value=" keyword" />
            </node>
            <node concept="3cpWs3" id="5jZDGTfXNLG" role="3uHU7B">
              <node concept="2OqwBi" id="5jZDGTfXO1S" role="3uHU7w">
                <node concept="2Sf5sV" id="5jZDGTfXNTO" role="2Oq$k0" />
                <node concept="2qgKlT" id="5jZDGTfXOb3" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5jZDGTfXM1j" resolve="getKeyword" />
                </node>
              </node>
              <node concept="1eOMI4" id="5jZDGTfXOFr" role="3uHU7B">
                <node concept="3K4zz7" id="5jZDGTfXPWN" role="1eOMHV">
                  <node concept="Xl_RD" id="5jZDGTfXPY7" role="3K4E3e">
                    <property role="Xl_RC" value="Hide " />
                  </node>
                  <node concept="Xl_RD" id="5jZDGTfXQ1$" role="3K4GZi">
                    <property role="Xl_RC" value="Show " />
                  </node>
                  <node concept="2OqwBi" id="5jZDGTfXPcV" role="3K4Cdx">
                    <node concept="2Sf5sV" id="5jZDGTfXOQ6" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5jZDGTfXPmo" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:5jZDGTfXOm3" resolve="shouldShowKeyword" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5jZDGTfXMVM" role="2ZfgGD">
      <node concept="3clFbS" id="5jZDGTfXMVN" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTfXRpi" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfXS8F" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTfXRyl" role="2Oq$k0">
              <node concept="2Sf5sV" id="5jZDGTfXRph" role="2Oq$k0" />
              <node concept="3TrcHB" id="5jZDGTfXRFk" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTfXOm3" resolve="shouldShowKeyword" />
              </node>
            </node>
            <node concept="tyxLq" id="5jZDGTfXStK" role="2OqNvi">
              <node concept="3fqX7Q" id="5jZDGTfXSux" role="tz02z">
                <node concept="2OqwBi" id="5jZDGTfXSE3" role="3fr31v">
                  <node concept="2Sf5sV" id="5jZDGTfXSvm" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jZDGTfXSNq" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTfXOm3" resolve="shouldShowKeyword" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5jZDGTfXQQK" role="2ZfVeh">
      <node concept="3clFbS" id="5jZDGTfXQQL" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTfXQYB" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTfXRdU" role="3clFbG">
            <node concept="2Sf5sV" id="5jZDGTfXQYA" role="2Oq$k0" />
            <node concept="2qgKlT" id="5jZDGTfXRmZ" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTfXQ9x" resolve="canToggleKeyword" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5jZDGTg8EOM">
    <property role="3GE5qa" value="general.keyword" />
    <property role="TrG5h" value="ShowKeywordsOfAllChildren" />
    <ref role="2ZfgGC" to="3nll:5jZDGTg8Bxu" resolve="IContainsComponentsWithToggleableKeywords" />
    <node concept="2BZ0e9" id="5jZDGTg8Pgp" role="1S$sla">
      <property role="TrG5h" value="nodes" />
      <node concept="3Tm6S6" id="5jZDGTg8Pgq" role="1B3o_S" />
      <node concept="_YKpA" id="5jZDGTg8QBr" role="1tU5fm">
        <node concept="3Tqbb2" id="5jZDGTg8QBt" role="_ZDj9">
          <ref role="ehGHo" to="3nll:5jZDGTfXM0Y" resolve="IComponentWithToggleableKeyword" />
        </node>
      </node>
    </node>
    <node concept="2S6ZIM" id="5jZDGTg8EON" role="2ZfVej">
      <node concept="3clFbS" id="5jZDGTg8EOO" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTginW$" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgiodh" role="3clFbG">
            <node concept="2Sf5sV" id="5jZDGTginWz" role="2Oq$k0" />
            <node concept="2qgKlT" id="5jZDGTgios8" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTgijt$" resolve="getToggleChildComponentKeywordsIntentionDescription" />
              <node concept="3clFbT" id="5jZDGTgiown" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5jZDGTg8EOP" role="2ZfgGD">
      <node concept="3clFbS" id="5jZDGTg8EOQ" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTgbaZ6" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgbctL" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTgbb5T" role="2Oq$k0">
              <node concept="2WthIp" id="5jZDGTgbaZ4" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5jZDGTgbbb_" role="2OqNvi">
                <ref role="2WH_rO" node="5jZDGTg8Pgp" resolve="nodes" />
              </node>
            </node>
            <node concept="2es0OD" id="5jZDGTgbdNE" role="2OqNvi">
              <node concept="1bVj0M" id="5jZDGTgbdNG" role="23t8la">
                <node concept="3clFbS" id="5jZDGTgbdNH" role="1bW5cS">
                  <node concept="3clFbF" id="5jZDGTgbdU9" role="3cqZAp">
                    <node concept="2OqwBi" id="5jZDGTgbeTL" role="3clFbG">
                      <node concept="2OqwBi" id="5jZDGTgbe7d" role="2Oq$k0">
                        <node concept="37vLTw" id="5jZDGTgbdU8" role="2Oq$k0">
                          <ref role="3cqZAo" node="5jZDGTgbdNI" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="5jZDGTgbejB" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:5jZDGTfXOm3" resolve="shouldShowKeyword" />
                        </node>
                      </node>
                      <node concept="tyxLq" id="5jZDGTgbfhz" role="2OqNvi">
                        <node concept="3clFbT" id="5jZDGTgbfmU" role="tz02z">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5jZDGTgbdNI" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5jZDGTgbdNJ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5jZDGTg8F6n" role="2ZfVeh">
      <node concept="3clFbS" id="5jZDGTg8F6o" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTg8Psy" role="3cqZAp">
          <node concept="37vLTI" id="5jZDGTgfUKn" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTg8Q8N" role="37vLTJ">
              <node concept="2WthIp" id="5jZDGTg8Q3l" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5jZDGTg8Qda" role="2OqNvi">
                <ref role="2WH_rO" node="5jZDGTg8Pgp" resolve="nodes" />
              </node>
            </node>
            <node concept="2OqwBi" id="5jZDGTg8T0$" role="37vLTx">
              <node concept="ANE8D" id="5jZDGTg8TiO" role="2OqNvi" />
              <node concept="2OqwBi" id="5jZDGTgb8fm" role="2Oq$k0">
                <node concept="2Sf5sV" id="5jZDGTgb8fn" role="2Oq$k0" />
                <node concept="2qgKlT" id="5jZDGTgb8fo" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5jZDGTg8BxM" resolve="getComponentsWithToggleableKeywords" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTg8FcI" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTg8FO5" role="3clFbG">
            <node concept="2HwmR7" id="5jZDGTg8G4Y" role="2OqNvi">
              <node concept="1bVj0M" id="5jZDGTg8G50" role="23t8la">
                <node concept="3clFbS" id="5jZDGTg8G51" role="1bW5cS">
                  <node concept="3clFbF" id="5jZDGTg8Gaw" role="3cqZAp">
                    <node concept="3fqX7Q" id="5jZDGTg8GDy" role="3clFbG">
                      <node concept="2OqwBi" id="5jZDGTg8GD$" role="3fr31v">
                        <node concept="37vLTw" id="5jZDGTg8GD_" role="2Oq$k0">
                          <ref role="3cqZAo" node="5jZDGTg8G52" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="5jZDGTg8GDA" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:5jZDGTfXOm3" resolve="shouldShowKeyword" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5jZDGTg8G52" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5jZDGTg8G53" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5jZDGTgb9sQ" role="2Oq$k0">
              <node concept="2WthIp" id="5jZDGTgb98E" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5jZDGTgb9UQ" role="2OqNvi">
                <ref role="2WH_rO" node="5jZDGTg8Pgp" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5jZDGTg8JbC">
    <property role="3GE5qa" value="general.keyword" />
    <property role="TrG5h" value="HideKeywordsOfAllChildren" />
    <ref role="2ZfgGC" to="3nll:5jZDGTg8Bxu" resolve="IContainsComponentsWithToggleableKeywords" />
    <node concept="2BZ0e9" id="5jZDGTgbhfZ" role="1S$sla">
      <property role="TrG5h" value="nodes" />
      <node concept="3Tm6S6" id="5jZDGTgbhg0" role="1B3o_S" />
      <node concept="_YKpA" id="5jZDGTgbhg1" role="1tU5fm">
        <node concept="3Tqbb2" id="5jZDGTgbhg2" role="_ZDj9">
          <ref role="ehGHo" to="3nll:5jZDGTfXM0Y" resolve="IComponentWithToggleableKeyword" />
        </node>
      </node>
    </node>
    <node concept="2S6ZIM" id="5jZDGTg8JbD" role="2ZfVej">
      <node concept="3clFbS" id="5jZDGTg8JbE" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTgimSS" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgin9_" role="3clFbG">
            <node concept="2Sf5sV" id="5jZDGTgimSR" role="2Oq$k0" />
            <node concept="2qgKlT" id="5jZDGTginiE" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTgijt$" resolve="getToggleChildComponentKeywordsIntentionDescription" />
              <node concept="3clFbT" id="5jZDGTginjv" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5jZDGTg8JbF" role="2ZfgGD">
      <node concept="3clFbS" id="5jZDGTg8JbG" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTgblgo" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgblgp" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTgblgq" role="2Oq$k0">
              <node concept="2WthIp" id="5jZDGTgblgr" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5jZDGTgblgs" role="2OqNvi">
                <ref role="2WH_rO" node="5jZDGTgbhfZ" resolve="nodes" />
              </node>
            </node>
            <node concept="2es0OD" id="5jZDGTgblgt" role="2OqNvi">
              <node concept="1bVj0M" id="5jZDGTgblgu" role="23t8la">
                <node concept="3clFbS" id="5jZDGTgblgv" role="1bW5cS">
                  <node concept="3clFbF" id="5jZDGTgblgw" role="3cqZAp">
                    <node concept="2OqwBi" id="5jZDGTgblgx" role="3clFbG">
                      <node concept="2OqwBi" id="5jZDGTgblgy" role="2Oq$k0">
                        <node concept="37vLTw" id="5jZDGTgblgz" role="2Oq$k0">
                          <ref role="3cqZAo" node="5jZDGTgblgB" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="5jZDGTgblg$" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:5jZDGTfXOm3" resolve="shouldShowKeyword" />
                        </node>
                      </node>
                      <node concept="tyxLq" id="5jZDGTgblg_" role="2OqNvi">
                        <node concept="3clFbT" id="5jZDGTgblvG" role="tz02z" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5jZDGTgblgB" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5jZDGTgblgC" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5jZDGTg8K$h" role="2ZfVeh">
      <node concept="3clFbS" id="5jZDGTg8K$i" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTgfNeI" role="3cqZAp">
          <node concept="37vLTI" id="5jZDGTgfPCL" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTgfNIq" role="37vLTJ">
              <node concept="2WthIp" id="5jZDGTgfNeG" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5jZDGTgfO3Q" role="2OqNvi">
                <ref role="2WH_rO" node="5jZDGTgbhfZ" resolve="nodes" />
              </node>
            </node>
            <node concept="2OqwBi" id="5jZDGTgfPUn" role="37vLTx">
              <node concept="ANE8D" id="5jZDGTgfPUo" role="2OqNvi" />
              <node concept="2OqwBi" id="5jZDGTgfPUp" role="2Oq$k0">
                <node concept="2Sf5sV" id="5jZDGTgfPUq" role="2Oq$k0" />
                <node concept="2qgKlT" id="5jZDGTgfPUr" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5jZDGTg8BxM" resolve="getComponentsWithToggleableKeywords" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTgbipz" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgbip$" role="3clFbG">
            <node concept="2HwmR7" id="5jZDGTgbip_" role="2OqNvi">
              <node concept="1bVj0M" id="5jZDGTgbipA" role="23t8la">
                <node concept="3clFbS" id="5jZDGTgbipB" role="1bW5cS">
                  <node concept="3clFbF" id="5jZDGTgbipC" role="3cqZAp">
                    <node concept="2OqwBi" id="5jZDGTgbipE" role="3clFbG">
                      <node concept="37vLTw" id="5jZDGTgbipF" role="2Oq$k0">
                        <ref role="3cqZAo" node="5jZDGTgbipH" resolve="it" />
                      </node>
                      <node concept="3TrcHB" id="5jZDGTgbipG" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:5jZDGTfXOm3" resolve="shouldShowKeyword" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5jZDGTgbipH" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5jZDGTgbipI" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5jZDGTgbipJ" role="2Oq$k0">
              <node concept="2WthIp" id="5jZDGTgbipK" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5jZDGTgbipL" role="2OqNvi">
                <ref role="2WH_rO" node="5jZDGTgbhfZ" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5jZDGTgrW0C">
    <property role="3GE5qa" value="event" />
    <property role="TrG5h" value="EventToggleRequiredRepositoriesIntention" />
    <ref role="2ZfgGC" to="3nll:7fqk8p43ygS" resolve="Event" />
    <node concept="2S6ZIM" id="5jZDGTgrW0D" role="2ZfVej">
      <node concept="3clFbS" id="5jZDGTgrW0E" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTgrWnv" role="3cqZAp">
          <node concept="3cpWs3" id="5jZDGTgrWnw" role="3clFbG">
            <node concept="Xl_RD" id="5jZDGTgrWnx" role="3uHU7w">
              <property role="Xl_RC" value=" 'requires' declaration" />
            </node>
            <node concept="1eOMI4" id="5jZDGTgrWny" role="3uHU7B">
              <node concept="3K4zz7" id="5jZDGTgrWnz" role="1eOMHV">
                <node concept="Xl_RD" id="5jZDGTgrWn$" role="3K4E3e">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="Xl_RD" id="5jZDGTgrWn_" role="3K4GZi">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="2OqwBi" id="5jZDGTgrWnA" role="3K4Cdx">
                  <node concept="2Sf5sV" id="5jZDGTgrWnB" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jZDGTgrWnC" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5jZDGTgrW0F" role="2ZfgGD">
      <node concept="3clFbS" id="5jZDGTgrW0G" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTgrZBk" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgrZBl" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTgrZBm" role="2Oq$k0">
              <node concept="2Sf5sV" id="5jZDGTgrZBn" role="2Oq$k0" />
              <node concept="3TrcHB" id="5jZDGTgrZBo" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
            <node concept="tyxLq" id="5jZDGTgrZBp" role="2OqNvi">
              <node concept="3fqX7Q" id="5jZDGTgrZBq" role="tz02z">
                <node concept="2OqwBi" id="5jZDGTgrZBr" role="3fr31v">
                  <node concept="2Sf5sV" id="5jZDGTgrZBs" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jZDGTgrZBt" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jZDGTgrZBu" role="3cqZAp">
          <node concept="3clFbS" id="5jZDGTgrZBv" role="3clFbx">
            <node concept="3clFbF" id="5jZDGTgrZBw" role="3cqZAp">
              <node concept="2OqwBi" id="5jZDGTgrZBx" role="3clFbG">
                <node concept="2Sf5sV" id="5jZDGTgrZBy" role="2Oq$k0" />
                <node concept="1OKiuA" id="5jZDGTgrZBz" role="2OqNvi">
                  <node concept="1XNTG" id="5jZDGTgrZB$" role="lBI5i" />
                  <node concept="2TlHUq" id="4V91Il3sPiN" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:6gxxZVrO$nU" resolve="repositoryReferenceListStartCellId" />
                  </node>
                  <node concept="3cmrfG" id="5jZDGTgrZBA" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5jZDGTgrZBB" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="5jZDGTgrZBC" role="3clFbw">
            <node concept="2Sf5sV" id="5jZDGTgrZBD" role="2Oq$k0" />
            <node concept="3TrcHB" id="5jZDGTgrZBE" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jZDGTgrZIG" role="3cqZAp" />
        <node concept="3clFbF" id="5jZDGTgrZVC" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgrZVD" role="3clFbG">
            <node concept="2Sf5sV" id="5jZDGTgrZVE" role="2Oq$k0" />
            <node concept="2qgKlT" id="5jZDGTgrZVF" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSO_" resolve="clearReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jZDGTgrZVG" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgrZVH" role="3clFbG">
            <node concept="2Sf5sV" id="5jZDGTgrZVI" role="2Oq$k0" />
            <node concept="1OKiuA" id="5jZDGTgrZVJ" role="2OqNvi">
              <node concept="1XNTG" id="5jZDGTgrZVK" role="lBI5i" />
              <node concept="2B6iha" id="5jZDGTgrZVL" role="lGT1i">
                <property role="1lyBwo" value="1S2pyLby17K/last" />
              </node>
              <node concept="3cmrfG" id="5jZDGTgrZVM" role="3dN3m$">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5jZDGTgrXjV" role="2ZfVeh">
      <node concept="3clFbS" id="5jZDGTgrXjW" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTgrXzO" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgrYzb" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTgrXT_" role="2Oq$k0">
              <node concept="2Sf5sV" id="5jZDGTgrXzN" role="2Oq$k0" />
              <node concept="2qgKlT" id="5jZDGTgrYel" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTfVx8p" resolve="getEventContainer" />
              </node>
            </node>
            <node concept="2qgKlT" id="5jZDGTgrZ3o" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTdmVwI" resolve="isEventBlock" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5jZDGTilI3l">
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="ReferencesArrangementIntention" />
    <ref role="2ZfgGC" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
    <node concept="2S6ZIM" id="5jZDGTilI3m" role="2ZfVej">
      <node concept="3clFbS" id="5jZDGTilI3n" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTilVca" role="3cqZAp">
          <node concept="3cpWs3" id="5jZDGTilVcb" role="3clFbG">
            <node concept="Xl_RD" id="5jZDGTilVcc" role="3uHU7w">
              <property role="Xl_RC" value=" repository reference arrangement" />
            </node>
            <node concept="1eOMI4" id="5jZDGTilVcd" role="3uHU7B">
              <node concept="3K4zz7" id="5jZDGTilVce" role="1eOMHV">
                <node concept="Xl_RD" id="5jZDGTilVcf" role="3K4E3e">
                  <property role="Xl_RC" value="Horizontal" />
                </node>
                <node concept="Xl_RD" id="5jZDGTilVcg" role="3K4GZi">
                  <property role="Xl_RC" value="Vertical" />
                </node>
                <node concept="2OqwBi" id="5jZDGTilVch" role="3K4Cdx">
                  <node concept="2Sf5sV" id="5jZDGTilVci" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jZDGTilVcj" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5jZDGTilI3o" role="2ZfgGD">
      <node concept="3clFbS" id="5jZDGTilI3p" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTilWaH" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTilWaI" role="3clFbG">
            <node concept="2OqwBi" id="5jZDGTilWaJ" role="2Oq$k0">
              <node concept="2Sf5sV" id="5jZDGTilWaK" role="2Oq$k0" />
              <node concept="3TrcHB" id="5jZDGTilWaL" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
              </node>
            </node>
            <node concept="tyxLq" id="5jZDGTilWaM" role="2OqNvi">
              <node concept="3fqX7Q" id="5jZDGTilWaN" role="tz02z">
                <node concept="2OqwBi" id="5jZDGTilWaO" role="3fr31v">
                  <node concept="2Sf5sV" id="5jZDGTilWaP" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jZDGTilWaQ" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5jZDGTilVGH" role="2ZfVeh">
      <node concept="3clFbS" id="5jZDGTilVGI" role="2VODD2">
        <node concept="3clFbF" id="5jZDGTilVUr" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTilVUs" role="3clFbG">
            <node concept="2Sf5sV" id="5jZDGTilVUt" role="2Oq$k0" />
            <node concept="2qgKlT" id="5jZDGTilVUu" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSOr" resolve="hasReferences" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="mdpAJLQaFg">
    <property role="3GE5qa" value="import" />
    <property role="TrG5h" value="ImportStatementAddGenericTypeIntention" />
    <ref role="2ZfgGC" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
    <node concept="2S6ZIM" id="mdpAJLQaFh" role="2ZfVej">
      <node concept="3clFbS" id="mdpAJLQaFi" role="2VODD2">
        <node concept="3clFbF" id="mdpAJLQaM_" role="3cqZAp">
          <node concept="Xl_RD" id="mdpAJLQaM$" role="3clFbG">
            <property role="Xl_RC" value="Add generic type" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="mdpAJLQaFj" role="2ZfgGD">
      <node concept="3clFbS" id="mdpAJLQaFk" role="2VODD2">
        <node concept="3clFbF" id="mdpAJM8qRo" role="3cqZAp">
          <node concept="2OqwBi" id="mdpAJM8rrK" role="3clFbG">
            <node concept="2Sf5sV" id="mdpAJM8qRn" role="2Oq$k0" />
            <node concept="2qgKlT" id="mdpAJM8rF_" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:mdpAJMlvHj" resolve="adjustImportStatementReferenceGenericTypes" />
              <node concept="3cmrfG" id="mdpAJMnSAR" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mdpAJLQhdl" role="3cqZAp">
          <node concept="2OqwBi" id="mdpAJLQhN_" role="3clFbG">
            <node concept="2OqwBi" id="mdpAJLQhdL" role="2Oq$k0">
              <node concept="2Sf5sV" id="mdpAJLQhdk" role="2Oq$k0" />
              <node concept="3Tsc0h" id="mdpAJLQheZ" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
              </node>
            </node>
            <node concept="WFELt" id="mdpAJLQigA" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="mdpAJLShr6" role="3cqZAp">
          <node concept="2OqwBi" id="mdpAJLShZh" role="3clFbG">
            <node concept="2Sf5sV" id="mdpAJLShr5" role="2Oq$k0" />
            <node concept="1OKiuA" id="mdpAJLSif5" role="2OqNvi">
              <node concept="1XNTG" id="mdpAJLSifQ" role="lBI5i" />
              <node concept="2TlHUq" id="23r34DKo2hJ" role="lGT1i">
                <ref role="2TlMyj" to="8pak:23r34DKnX8a" resolve="genericTypesLeftAngleBracketCellId" />
              </node>
              <node concept="3cmrfG" id="mdpAJLSii5" role="3dN3m$">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="mdpAJLQaUh" role="2ZfVeh">
      <node concept="3clFbS" id="mdpAJLQaUi" role="2VODD2">
        <node concept="3clFbF" id="mdpAJLQb0a" role="3cqZAp">
          <node concept="2OqwBi" id="mdpAJLQeq2" role="3clFbG">
            <node concept="2OqwBi" id="mdpAJLQbjd" role="2Oq$k0">
              <node concept="2Sf5sV" id="mdpAJLQb09" role="2Oq$k0" />
              <node concept="3Tsc0h" id="mdpAJLQbBt" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
              </node>
            </node>
            <node concept="1v1jN8" id="mdpAJLQgyQ" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="mdpAJLUpkn">
    <property role="3GE5qa" value="import" />
    <property role="TrG5h" value="ImportStatementRemoveGenericTypesIntention" />
    <ref role="2ZfgGC" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
    <node concept="2S6ZIM" id="mdpAJLUpko" role="2ZfVej">
      <node concept="3clFbS" id="mdpAJLUpkp" role="2VODD2">
        <node concept="3clFbF" id="mdpAJLUprJ" role="3cqZAp">
          <node concept="Xl_RD" id="mdpAJLUprI" role="3clFbG">
            <property role="Xl_RC" value="Remove generic types" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="mdpAJLUpkq" role="2ZfgGD">
      <node concept="3clFbS" id="mdpAJLUpkr" role="2VODD2">
        <node concept="3clFbF" id="mdpAJMsW21" role="3cqZAp">
          <node concept="2OqwBi" id="mdpAJMsYUJ" role="3clFbG">
            <node concept="2Sf5sV" id="mdpAJMsW20" role="2Oq$k0" />
            <node concept="2qgKlT" id="mdpAJMsYWV" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:mdpAJMlvHj" resolve="adjustImportStatementReferenceGenericTypes" />
              <node concept="17qRlL" id="mdpAJMsZSH" role="37wK5m">
                <node concept="3cmrfG" id="mdpAJMsZZu" role="3uHU7w">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="2OqwBi" id="mdpAJMt08y" role="3uHU7B">
                  <node concept="2OqwBi" id="mdpAJMt08z" role="2Oq$k0">
                    <node concept="2Sf5sV" id="mdpAJMt08$" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="mdpAJMt08_" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="mdpAJMt08A" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mdpAJLUv5c" role="3cqZAp">
          <node concept="2OqwBi" id="mdpAJLUvFm" role="3clFbG">
            <node concept="2OqwBi" id="mdpAJLUv5y" role="2Oq$k0">
              <node concept="2Sf5sV" id="mdpAJLUv5b" role="2Oq$k0" />
              <node concept="3Tsc0h" id="mdpAJLUv6K" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
              </node>
            </node>
            <node concept="2Kehj3" id="mdpAJLUw8n" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="mdpAJMsveu" role="3cqZAp">
          <node concept="2OqwBi" id="mdpAJMsvev" role="3clFbG">
            <node concept="2Sf5sV" id="mdpAJMsvew" role="2Oq$k0" />
            <node concept="1OKiuA" id="mdpAJMsvex" role="2OqNvi">
              <node concept="1XNTG" id="mdpAJMsvey" role="lBI5i" />
              <node concept="3cmrfG" id="mdpAJMsve$" role="3dN3m$">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="2B6iha" id="mdpAJMsC3F" role="lGT1i">
                <property role="1lyBwo" value="1S2pyLby17K/last" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="mdpAJLUpt2" role="2ZfVeh">
      <node concept="3clFbS" id="mdpAJLUpt3" role="2VODD2">
        <node concept="3clFbF" id="mdpAJLUp$0" role="3cqZAp">
          <node concept="2OqwBi" id="mdpAJLUsTw" role="3clFbG">
            <node concept="2OqwBi" id="mdpAJLUpR3" role="2Oq$k0">
              <node concept="2Sf5sV" id="mdpAJLUpzZ" role="2Oq$k0" />
              <node concept="3Tsc0h" id="mdpAJLUq6V" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
              </node>
            </node>
            <node concept="3GX2aA" id="mdpAJLUv2k" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5qxF18F98MW">
    <property role="3GE5qa" value="generationSettings.query.processing" />
    <property role="TrG5h" value="QueryProcessingSettingChangeQueryContainerTypes_Intention" />
    <property role="2ZfUl3" value="true" />
    <ref role="2ZfgGC" to="3nll:5qxF18ENJjm" resolve="QueryProcessingSetting" />
    <node concept="2S6ZIM" id="5qxF18F98MX" role="2ZfVej">
      <node concept="3clFbS" id="5qxF18F98MY" role="2VODD2">
        <node concept="3clFbF" id="5qxF18F98Ur" role="3cqZAp">
          <node concept="Xl_RD" id="5qxF18F98Uq" role="3clFbG">
            <property role="Xl_RC" value="Transform all 'query services' and 'query handler' into 'query blocks'." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5qxF18F98MZ" role="2ZfgGD">
      <node concept="3clFbS" id="5qxF18F98N0" role="2VODD2">
        <node concept="3clFbF" id="5qxF18F9eis" role="3cqZAp">
          <node concept="2OqwBi" id="5qxF18F9eFz" role="3clFbG">
            <node concept="2OqwBi" id="5qxF18F9eit" role="2Oq$k0">
              <node concept="2OqwBi" id="5qxF18F9eiu" role="2Oq$k0">
                <node concept="2OqwBi" id="5qxF18F9eiv" role="2Oq$k0">
                  <node concept="2Sf5sV" id="5qxF18F9eiw" role="2Oq$k0" />
                  <node concept="2qgKlT" id="5qxF18F9eix" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
                <node concept="2qgKlT" id="5qxF18F9eiy" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3DbZR$O3FhA" resolve="queryContainers" />
                </node>
              </node>
              <node concept="3zZkjj" id="5qxF18F9eBd" role="2OqNvi">
                <node concept="1bVj0M" id="5qxF18F9eBf" role="23t8la">
                  <property role="3yWfEV" value="true" />
                  <node concept="3clFbS" id="5qxF18F9eBg" role="1bW5cS">
                    <node concept="3clFbF" id="5qxF18F9eBh" role="3cqZAp">
                      <node concept="3fqX7Q" id="5qxF18F9eBi" role="3clFbG">
                        <node concept="2OqwBi" id="5qxF18F9eBj" role="3fr31v">
                          <node concept="37vLTw" id="5qxF18F9eBk" role="2Oq$k0">
                            <ref role="3cqZAo" node="5qxF18F9eBm" resolve="it" />
                          </node>
                          <node concept="2qgKlT" id="5qxF18F9eBl" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:6gxxZVtebNx" resolve="isQueriesBlock" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5qxF18F9eBm" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5qxF18F9eBn" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="5qxF18F9fjE" role="2OqNvi">
              <node concept="1bVj0M" id="5qxF18F9fjG" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="5qxF18F9fjH" role="1bW5cS">
                  <node concept="3clFbF" id="5qxF18FbR2E" role="3cqZAp">
                    <node concept="2OqwBi" id="5qxF18FbS8n" role="3clFbG">
                      <node concept="2OqwBi" id="5qxF18FbRk_" role="2Oq$k0">
                        <node concept="37vLTw" id="5qxF18FbR2C" role="2Oq$k0">
                          <ref role="3cqZAo" node="5qxF18F9fjI" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="5qxF18FbRNI" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                        </node>
                      </node>
                      <node concept="tyxLq" id="5qxF18FbSm0" role="2OqNvi">
                        <node concept="21nZrQ" id="5qxF18FbSrv" role="tz02z">
                          <ref role="21nZrZ" to="3nll:1WhJCpUOLrB" resolve="QueryBlock" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5qxF18F9fjI" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5qxF18F9fjJ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5qxF18F99bR" role="2ZfVeh">
      <node concept="3clFbS" id="5qxF18F99bS" role="2VODD2">
        <node concept="3clFbF" id="5qxF18F9aik" role="3cqZAp">
          <node concept="1Wc70l" id="5qxF18FbF$a" role="3clFbG">
            <node concept="2OqwBi" id="5qxF18FbFWI" role="3uHU7B">
              <node concept="2Sf5sV" id="5qxF18FbFJ_" role="2Oq$k0" />
              <node concept="3TrcHB" id="5qxF18FbGcg" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5qxF18EUWOZ" resolve="useProcessingImplementation" />
              </node>
            </node>
            <node concept="2OqwBi" id="5qxF18F9bR7" role="3uHU7w">
              <node concept="2OqwBi" id="5qxF18F9b4J" role="2Oq$k0">
                <node concept="2OqwBi" id="5qxF18F9ayq" role="2Oq$k0">
                  <node concept="2Sf5sV" id="5qxF18F9aij" role="2Oq$k0" />
                  <node concept="2qgKlT" id="5qxF18F9aLE" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
                <node concept="2qgKlT" id="5qxF18F9b$4" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3DbZR$O3FhA" resolve="queryContainers" />
                </node>
              </node>
              <node concept="2HwmR7" id="5qxF18F9c7U" role="2OqNvi">
                <node concept="1bVj0M" id="5qxF18F9c7W" role="23t8la">
                  <node concept="3clFbS" id="5qxF18F9c7X" role="1bW5cS">
                    <node concept="3clFbF" id="5qxF18F9cfF" role="3cqZAp">
                      <node concept="3fqX7Q" id="5qxF18F9cfD" role="3clFbG">
                        <node concept="2OqwBi" id="5qxF18F9cFV" role="3fr31v">
                          <node concept="37vLTw" id="5qxF18F9clh" role="2Oq$k0">
                            <ref role="3cqZAo" node="5qxF18F9c7Y" resolve="it" />
                          </node>
                          <node concept="2qgKlT" id="5qxF18F9e0m" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:6gxxZVtebNx" resolve="isQueriesBlock" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5qxF18F9c7Y" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5qxF18F9c7Z" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5qxF18FbDqw">
    <property role="3GE5qa" value="generationSettings.query.processing" />
    <property role="TrG5h" value="QueryProcessingSettingChangeHandlingSetting_Intention" />
    <property role="2ZfUl3" value="true" />
    <ref role="2ZfgGC" to="3nll:5qxF18ENJjm" resolve="QueryProcessingSetting" />
    <node concept="2S6ZIM" id="5qxF18FbDqx" role="2ZfVej">
      <node concept="3clFbS" id="5qxF18FbDqy" role="2VODD2">
        <node concept="3clFbF" id="5qxF18FbEl$" role="3cqZAp">
          <node concept="Xl_RD" id="5qxF18FbElz" role="3clFbG">
            <property role="Xl_RC" value="Change query 'handling' to 'separated'" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5qxF18FbDqz" role="2ZfgGD">
      <node concept="3clFbS" id="5qxF18FbDq$" role="2VODD2">
        <node concept="3clFbF" id="5qxF18FbOCG" role="3cqZAp">
          <node concept="2OqwBi" id="5qxF18FbQ8u" role="3clFbG">
            <node concept="2OqwBi" id="5qxF18FbPBP" role="2Oq$k0">
              <node concept="2OqwBi" id="5qxF18FbPfy" role="2Oq$k0">
                <node concept="2OqwBi" id="5qxF18FbONq" role="2Oq$k0">
                  <node concept="2Sf5sV" id="5qxF18FbOCF" role="2Oq$k0" />
                  <node concept="2qgKlT" id="5qxF18FbOZW" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5qxF18F4gHy" resolve="getQuerySettings" />
                  </node>
                </node>
                <node concept="2qgKlT" id="5qxF18FbPsS" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5qxF18ESB_u" resolve="getQueryHandlingSetting" />
                </node>
              </node>
              <node concept="3TrcHB" id="5qxF18FbPY4" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5qxF18ENHSu" resolve="handlingType" />
              </node>
            </node>
            <node concept="tyxLq" id="5qxF18FbQk_" role="2OqNvi">
              <node concept="21nZrQ" id="5qxF18FbQlG" role="tz02z">
                <ref role="21nZrZ" to="3nll:omljbysWz1" resolve="Separated" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5qxF18FbGmA" role="2ZfVeh">
      <node concept="3clFbS" id="5qxF18FbGmB" role="2VODD2">
        <node concept="3cpWs8" id="5qxF18FjjsL" role="3cqZAp">
          <node concept="3cpWsn" id="5qxF18FjjsM" role="3cpWs9">
            <property role="TrG5h" value="querySettings" />
            <node concept="3Tqbb2" id="5qxF18FjjrA" role="1tU5fm">
              <ref role="ehGHo" to="3nll:omljbyVy_1" resolve="QueryGenerationSettings" />
            </node>
            <node concept="2OqwBi" id="5qxF18FjjsN" role="33vP2m">
              <node concept="2Sf5sV" id="5qxF18FjjsO" role="2Oq$k0" />
              <node concept="2qgKlT" id="5qxF18FjjsP" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5qxF18F4gHy" resolve="getQuerySettings" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5qxF18FbGrv" role="3cqZAp">
          <node concept="1Wc70l" id="5qxF18FgN_u" role="3clFbG">
            <node concept="2OqwBi" id="5qxF18FbOjq" role="3uHU7w">
              <node concept="2OqwBi" id="5qxF18FbLP4" role="2Oq$k0">
                <node concept="2qgKlT" id="5qxF18FbNZ3" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5qxF18ESB_u" resolve="getQueryHandlingSetting" />
                </node>
                <node concept="37vLTw" id="5qxF18FjjLz" role="2Oq$k0">
                  <ref role="3cqZAo" node="5qxF18FjjsM" resolve="querySettings" />
                </node>
              </node>
              <node concept="2qgKlT" id="5qxF18FbOxE" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5qxF18FbHLJ" resolve="isGroupedHandling" />
              </node>
            </node>
            <node concept="1Wc70l" id="5qxF18FbH6k" role="3uHU7B">
              <node concept="2OqwBi" id="5qxF18FbGrx" role="3uHU7B">
                <node concept="2Sf5sV" id="5qxF18FbGry" role="2Oq$k0" />
                <node concept="3TrcHB" id="5qxF18FbGrz" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5qxF18EUWOZ" resolve="useProcessingImplementation" />
                </node>
              </node>
              <node concept="2OqwBi" id="5qxF18FjiBD" role="3uHU7w">
                <node concept="2qgKlT" id="5qxF18FjiQh" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5qxF18ESB_m" resolve="isQueryHandlingSettingDefined" />
                </node>
                <node concept="37vLTw" id="5qxF18FjjAZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5qxF18FjjsM" resolve="querySettings" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3aCsR_cOpaE">
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="Query_MergeRequiredRepositoriesIntoContainer" />
    <ref role="2ZfgGC" to="3nll:7fqk8p43yh4" resolve="Query" />
    <node concept="2S6ZIM" id="3aCsR_cOpaF" role="2ZfVej">
      <node concept="3clFbS" id="3aCsR_cOpaG" role="2VODD2">
        <node concept="3clFbF" id="3aCsR_cOpif" role="3cqZAp">
          <node concept="3cpWs3" id="3aCsR_cOs1G" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_cOsUC" role="3uHU7w">
              <node concept="2OqwBi" id="3aCsR_cOstW" role="2Oq$k0">
                <node concept="3TrcHB" id="3aCsR_cOsLO" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                </node>
                <node concept="2OqwBi" id="3aCsR_cOraD" role="2Oq$k0">
                  <node concept="2Sf5sV" id="3aCsR_cOraE" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3aCsR_cOraF" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:6gxxZVrXJ64" resolve="getQueryContainer" />
                  </node>
                </node>
              </node>
              <node concept="1XCIdh" id="3aCsR_cOt7Q" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="3aCsR_cOpie" role="3uHU7B">
              <property role="Xl_RC" value="Merge required repositories into parent query " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3aCsR_cOpaH" role="2ZfgGD">
      <node concept="3clFbS" id="3aCsR_cOpaI" role="2VODD2">
        <node concept="3cpWs8" id="3aCsR_cOteW" role="3cqZAp">
          <node concept="3cpWsn" id="3aCsR_cOteX" role="3cpWs9">
            <property role="TrG5h" value="queryContainer" />
            <node concept="3Tqbb2" id="3aCsR_cOteY" role="1tU5fm">
              <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
            </node>
            <node concept="2OqwBi" id="3aCsR_cOteZ" role="33vP2m">
              <node concept="2Sf5sV" id="3aCsR_cOtf0" role="2Oq$k0" />
              <node concept="2qgKlT" id="3aCsR_cOtf1" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:6gxxZVrXJ64" resolve="getQueryContainer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3aCsR_cOvw4" role="3cqZAp">
          <node concept="3cpWsn" id="3aCsR_cOvw5" role="3cpWs9">
            <property role="TrG5h" value="mergedReferences" />
            <node concept="_YKpA" id="3aCsR_cOvrs" role="1tU5fm">
              <node concept="3Tqbb2" id="3aCsR_cOvrv" role="_ZDj9">
                <ref role="ehGHo" to="3nll:5jZDGTgnxtU" resolve="IRepositoryReference" />
              </node>
            </node>
            <node concept="2YIFZM" id="3aCsR_cOvw6" role="33vP2m">
              <ref role="37wK5l" to="7ztp:5jZDGTh$T4u" resolve="merge" />
              <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
              <node concept="2OqwBi" id="3aCsR_cOvw7" role="37wK5m">
                <node concept="37vLTw" id="3aCsR_cOvw8" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aCsR_cOteX" resolve="queryContainer" />
                </node>
                <node concept="3Tsc0h" id="3aCsR_cOvw9" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
                </node>
              </node>
              <node concept="2OqwBi" id="3aCsR_cOvwa" role="37wK5m">
                <node concept="2Sf5sV" id="3aCsR_cOvwb" role="2Oq$k0" />
                <node concept="3Tsc0h" id="3aCsR_cOvwc" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_cQG$r" role="3cqZAp" />
        <node concept="3clFbF" id="3aCsR_cQPtd" role="3cqZAp">
          <node concept="2OqwBi" id="3aCsR_cQQy6" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_cQPZi" role="2Oq$k0">
              <node concept="37vLTw" id="3aCsR_cQPtb" role="2Oq$k0">
                <ref role="3cqZAo" node="3aCsR_cOteX" resolve="queryContainer" />
              </node>
              <node concept="2qgKlT" id="3aCsR_cQQlU" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5SyewCaMpun" resolve="queries" />
              </node>
            </node>
            <node concept="2es0OD" id="3aCsR_cQQMh" role="2OqNvi">
              <node concept="1bVj0M" id="3aCsR_cQQMj" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="3aCsR_cQQMk" role="1bW5cS">
                  <node concept="3clFbF" id="3aCsR_cQR0T" role="3cqZAp">
                    <node concept="2OqwBi" id="3aCsR_cQRj2" role="3clFbG">
                      <node concept="37vLTw" id="3aCsR_cQR0R" role="2Oq$k0">
                        <ref role="3cqZAo" node="3aCsR_cQQMl" resolve="query" />
                      </node>
                      <node concept="2qgKlT" id="3aCsR_cQRK7" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5jZDGTikSQ3" resolve="removeReferences" />
                        <node concept="37vLTw" id="3aCsR_cQS4O" role="37wK5m">
                          <ref role="3cqZAo" node="3aCsR_cOvw5" resolve="mergedReferences" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3aCsR_cQTDo" role="3cqZAp">
                    <node concept="2OqwBi" id="3aCsR_cQTXs" role="3clFbG">
                      <node concept="37vLTw" id="3aCsR_cQTDm" role="2Oq$k0">
                        <ref role="3cqZAo" node="3aCsR_cQQMl" resolve="query" />
                      </node>
                      <node concept="2qgKlT" id="3aCsR_cQU$f" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5jZDGTikSOY" resolve="resetReferencesIfEmpty" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3aCsR_cQQMl" role="1bW2Oz">
                  <property role="TrG5h" value="query" />
                  <node concept="2jxLKc" id="3aCsR_cQQMm" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_cQUQc" role="3cqZAp" />
        <node concept="3clFbF" id="3aCsR_cOwV1" role="3cqZAp">
          <node concept="2OqwBi" id="3aCsR_cOxbg" role="3clFbG">
            <node concept="37vLTw" id="3aCsR_cOwUZ" role="2Oq$k0">
              <ref role="3cqZAo" node="3aCsR_cOteX" resolve="queryContainer" />
            </node>
            <node concept="2qgKlT" id="3aCsR_cOxy0" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSRB" resolve="setReferences" />
              <node concept="37vLTw" id="3aCsR_cOxB3" role="37wK5m">
                <ref role="3cqZAo" node="3aCsR_cOvw5" resolve="mergedReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3aCsR_cOppV" role="2ZfVeh">
      <node concept="3clFbS" id="3aCsR_cOppW" role="2VODD2">
        <node concept="3clFbF" id="3aCsR_cOpwo" role="3cqZAp">
          <node concept="1Wc70l" id="3aCsR_cOqON" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_cOqQM" role="3uHU7w">
              <node concept="2Sf5sV" id="3aCsR_cOqPX" role="2Oq$k0" />
              <node concept="2qgKlT" id="3aCsR_cOqSA" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTikSOr" resolve="hasReferences" />
              </node>
            </node>
            <node concept="2OqwBi" id="3aCsR_cOpSd" role="3uHU7B">
              <node concept="2Sf5sV" id="3aCsR_cOpwn" role="2Oq$k0" />
              <node concept="2qgKlT" id="3aCsR_cOqgN" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:2Bsub$Lr4Li" resolve="isInsideQueryContainer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3aCsR_cVCsZ">
    <property role="3GE5qa" value="command" />
    <property role="TrG5h" value="Command_MergeRequiredRepositoriesIntoContainer" />
    <ref role="2ZfgGC" to="3nll:7fqk8p43ygY" resolve="Command" />
    <node concept="2S6ZIM" id="3aCsR_cVCt0" role="2ZfVej">
      <node concept="3clFbS" id="3aCsR_cVCt1" role="2VODD2">
        <node concept="3clFbF" id="3aCsR_cVFdf" role="3cqZAp">
          <node concept="3cpWs3" id="3aCsR_cVFdg" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_cVFdh" role="3uHU7w">
              <node concept="2OqwBi" id="3aCsR_cVFdi" role="2Oq$k0">
                <node concept="3TrcHB" id="3aCsR_cVFdj" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                </node>
                <node concept="2OqwBi" id="3aCsR_cVFdk" role="2Oq$k0">
                  <node concept="2Sf5sV" id="3aCsR_cVFdl" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3aCsR_cVFdm" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5$Oa659Yq3n" resolve="getCommandContainer" />
                  </node>
                </node>
              </node>
              <node concept="1XCIdh" id="3aCsR_cVFdn" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="3aCsR_cVFdo" role="3uHU7B">
              <property role="Xl_RC" value="Merge required repositories into parent command " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3aCsR_cVCt2" role="2ZfgGD">
      <node concept="3clFbS" id="3aCsR_cVCt3" role="2VODD2">
        <node concept="3cpWs8" id="3aCsR_cVGln" role="3cqZAp">
          <node concept="3cpWsn" id="3aCsR_cVGlo" role="3cpWs9">
            <property role="TrG5h" value="commandContainer" />
            <node concept="3Tqbb2" id="3aCsR_cVGeP" role="1tU5fm">
              <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
            </node>
            <node concept="2OqwBi" id="3aCsR_cVGlp" role="33vP2m">
              <node concept="2Sf5sV" id="3aCsR_cVGlq" role="2Oq$k0" />
              <node concept="2qgKlT" id="3aCsR_cVGlr" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5$Oa659Yq3n" resolve="getCommandContainer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3aCsR_cVH6y" role="3cqZAp">
          <node concept="3cpWsn" id="3aCsR_cVH6z" role="3cpWs9">
            <property role="TrG5h" value="mergedReferences" />
            <node concept="_YKpA" id="3aCsR_cVH6$" role="1tU5fm">
              <node concept="3Tqbb2" id="3aCsR_cVH6_" role="_ZDj9">
                <ref role="ehGHo" to="3nll:5jZDGTgnxtU" resolve="IRepositoryReference" />
              </node>
            </node>
            <node concept="2YIFZM" id="3aCsR_cVH6A" role="33vP2m">
              <ref role="37wK5l" to="7ztp:5jZDGTh$T4u" resolve="merge" />
              <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
              <node concept="2OqwBi" id="3aCsR_cVH6B" role="37wK5m">
                <node concept="37vLTw" id="3aCsR_cVH6C" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aCsR_cVGlo" resolve="commandContainer" />
                </node>
                <node concept="3Tsc0h" id="3aCsR_cVH6D" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
                </node>
              </node>
              <node concept="2OqwBi" id="3aCsR_cVH6E" role="37wK5m">
                <node concept="2Sf5sV" id="3aCsR_cVH6F" role="2Oq$k0" />
                <node concept="3Tsc0h" id="3aCsR_cVH6G" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_cVGRK" role="3cqZAp" />
        <node concept="3clFbF" id="3aCsR_cVHFa" role="3cqZAp">
          <node concept="2OqwBi" id="3aCsR_cVHFb" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_cVHFc" role="2Oq$k0">
              <node concept="37vLTw" id="3aCsR_cVHFd" role="2Oq$k0">
                <ref role="3cqZAo" node="3aCsR_cVGlo" resolve="commandContainer" />
              </node>
              <node concept="2qgKlT" id="3aCsR_cVHFe" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:oGImgOKxc1" resolve="commands" />
              </node>
            </node>
            <node concept="2es0OD" id="3aCsR_cVHFf" role="2OqNvi">
              <node concept="1bVj0M" id="3aCsR_cVHFg" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="3aCsR_cVHFh" role="1bW5cS">
                  <node concept="3clFbF" id="3aCsR_cVHFi" role="3cqZAp">
                    <node concept="2OqwBi" id="3aCsR_cVHFj" role="3clFbG">
                      <node concept="37vLTw" id="3aCsR_cVHFk" role="2Oq$k0">
                        <ref role="3cqZAo" node="3aCsR_cVHFr" resolve="command" />
                      </node>
                      <node concept="2qgKlT" id="3aCsR_cVHFl" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5jZDGTikSQ3" resolve="removeReferences" />
                        <node concept="37vLTw" id="3aCsR_cVHFm" role="37wK5m">
                          <ref role="3cqZAo" node="3aCsR_cVH6z" resolve="mergedReferences" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3aCsR_cVHFn" role="3cqZAp">
                    <node concept="2OqwBi" id="3aCsR_cVHFo" role="3clFbG">
                      <node concept="37vLTw" id="3aCsR_cVHFp" role="2Oq$k0">
                        <ref role="3cqZAo" node="3aCsR_cVHFr" resolve="command" />
                      </node>
                      <node concept="2qgKlT" id="3aCsR_cVHFq" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5jZDGTikSOY" resolve="resetReferencesIfEmpty" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3aCsR_cVHFr" role="1bW2Oz">
                  <property role="TrG5h" value="command" />
                  <node concept="2jxLKc" id="3aCsR_cVHFs" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_cVHFt" role="3cqZAp" />
        <node concept="3clFbF" id="3aCsR_cVHFu" role="3cqZAp">
          <node concept="2OqwBi" id="3aCsR_cVHFv" role="3clFbG">
            <node concept="37vLTw" id="3aCsR_cVHFw" role="2Oq$k0">
              <ref role="3cqZAo" node="3aCsR_cVGlo" resolve="commandContainer" />
            </node>
            <node concept="2qgKlT" id="3aCsR_cVHFx" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSRB" resolve="setReferences" />
              <node concept="37vLTw" id="3aCsR_cVHFy" role="37wK5m">
                <ref role="3cqZAo" node="3aCsR_cVH6z" resolve="mergedReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3aCsR_cVCD7" role="2ZfVeh">
      <node concept="3clFbS" id="3aCsR_cVCD8" role="2VODD2">
        <node concept="3clFbF" id="3aCsR_cVCJA" role="3cqZAp">
          <node concept="1Wc70l" id="3aCsR_cVE41" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_cVE$F" role="3uHU7w">
              <node concept="2Sf5sV" id="3aCsR_cVEfq" role="2Oq$k0" />
              <node concept="2qgKlT" id="3aCsR_cVEXL" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTikSOr" resolve="hasReferences" />
              </node>
            </node>
            <node concept="2OqwBi" id="3aCsR_cVD7r" role="3uHU7B">
              <node concept="2Sf5sV" id="3aCsR_cVCJ_" role="2Oq$k0" />
              <node concept="2qgKlT" id="3aCsR_cVDw1" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1jrq3npy$dZ" resolve="isInsideCommandContainer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3aCsR_cVJdX">
    <property role="3GE5qa" value="entity" />
    <property role="TrG5h" value="Event_MergeRequiredRepositoriesIntoContainer" />
    <ref role="2ZfgGC" to="3nll:7fqk8p43ygS" resolve="Event" />
    <node concept="2S6ZIM" id="3aCsR_cVJdY" role="2ZfVej">
      <node concept="3clFbS" id="3aCsR_cVJdZ" role="2VODD2">
        <node concept="3clFbF" id="3aCsR_cVJwL" role="3cqZAp">
          <node concept="3cpWs3" id="3aCsR_cVJwM" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_cVJwN" role="3uHU7w">
              <node concept="2OqwBi" id="3aCsR_cVJwO" role="2Oq$k0">
                <node concept="3TrcHB" id="3aCsR_cVJwP" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
                </node>
                <node concept="2OqwBi" id="3aCsR_cVJwQ" role="2Oq$k0">
                  <node concept="2Sf5sV" id="3aCsR_cVJwR" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3aCsR_cVJwS" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5jZDGTfVx8p" resolve="getEventContainer" />
                  </node>
                </node>
              </node>
              <node concept="1XCIdh" id="3aCsR_cVJwT" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="3aCsR_cVJwU" role="3uHU7B">
              <property role="Xl_RC" value="Merge required repositories into parent event " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3aCsR_cVJe0" role="2ZfgGD">
      <node concept="3clFbS" id="3aCsR_cVJe1" role="2VODD2">
        <node concept="3cpWs8" id="3aCsR_cVMUX" role="3cqZAp">
          <node concept="3cpWsn" id="3aCsR_cVMUY" role="3cpWs9">
            <property role="TrG5h" value="eventContainer" />
            <node concept="3Tqbb2" id="3aCsR_cVMOI" role="1tU5fm">
              <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
            </node>
            <node concept="2OqwBi" id="3aCsR_cVMUZ" role="33vP2m">
              <node concept="2Sf5sV" id="3aCsR_cVMV0" role="2Oq$k0" />
              <node concept="2qgKlT" id="3aCsR_cVMV1" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTfVx8p" resolve="getEventContainer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_cVMWU" role="3cqZAp" />
        <node concept="3cpWs8" id="3aCsR_cVMY0" role="3cqZAp">
          <node concept="3cpWsn" id="3aCsR_cVMY1" role="3cpWs9">
            <property role="TrG5h" value="mergedReferences" />
            <node concept="_YKpA" id="3aCsR_cVMY2" role="1tU5fm">
              <node concept="3Tqbb2" id="3aCsR_cVMY3" role="_ZDj9">
                <ref role="ehGHo" to="3nll:5jZDGTgnxtU" resolve="IRepositoryReference" />
              </node>
            </node>
            <node concept="2YIFZM" id="3aCsR_cVMY4" role="33vP2m">
              <ref role="37wK5l" to="7ztp:5jZDGTh$T4u" resolve="merge" />
              <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
              <node concept="2OqwBi" id="3aCsR_cVMY5" role="37wK5m">
                <node concept="37vLTw" id="3aCsR_cVMY6" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aCsR_cVMUY" resolve="eventContainer" />
                </node>
                <node concept="3Tsc0h" id="3aCsR_cVMY7" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
                </node>
              </node>
              <node concept="2OqwBi" id="3aCsR_cVMY8" role="37wK5m">
                <node concept="2Sf5sV" id="3aCsR_cVMY9" role="2Oq$k0" />
                <node concept="3Tsc0h" id="3aCsR_cVMYa" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_cVMYb" role="3cqZAp" />
        <node concept="3clFbF" id="3aCsR_cVMYc" role="3cqZAp">
          <node concept="2OqwBi" id="3aCsR_cVMYd" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_cVMYe" role="2Oq$k0">
              <node concept="37vLTw" id="3aCsR_cVMYf" role="2Oq$k0">
                <ref role="3cqZAo" node="3aCsR_cVMUY" resolve="eventContainer" />
              </node>
              <node concept="2qgKlT" id="3aCsR_cVMYg" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:oGImgOKqqA" resolve="events" />
              </node>
            </node>
            <node concept="2es0OD" id="3aCsR_cVMYh" role="2OqNvi">
              <node concept="1bVj0M" id="3aCsR_cVMYi" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="3aCsR_cVMYj" role="1bW5cS">
                  <node concept="3clFbF" id="3aCsR_cVMYk" role="3cqZAp">
                    <node concept="2OqwBi" id="3aCsR_cVMYl" role="3clFbG">
                      <node concept="37vLTw" id="3aCsR_cVMYm" role="2Oq$k0">
                        <ref role="3cqZAo" node="3aCsR_cVMYt" resolve="event" />
                      </node>
                      <node concept="2qgKlT" id="3aCsR_cVMYn" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5jZDGTikSQ3" resolve="removeReferences" />
                        <node concept="37vLTw" id="3aCsR_cVMYo" role="37wK5m">
                          <ref role="3cqZAo" node="3aCsR_cVMY1" resolve="mergedReferences" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3aCsR_cVMYp" role="3cqZAp">
                    <node concept="2OqwBi" id="3aCsR_cVMYq" role="3clFbG">
                      <node concept="37vLTw" id="3aCsR_cVMYr" role="2Oq$k0">
                        <ref role="3cqZAo" node="3aCsR_cVMYt" resolve="event" />
                      </node>
                      <node concept="2qgKlT" id="3aCsR_cVMYs" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5jZDGTikSOY" resolve="resetReferencesIfEmpty" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3aCsR_cVMYt" role="1bW2Oz">
                  <property role="TrG5h" value="event" />
                  <node concept="2jxLKc" id="3aCsR_cVMYu" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_cVMYv" role="3cqZAp" />
        <node concept="3clFbF" id="3aCsR_cVMYw" role="3cqZAp">
          <node concept="2OqwBi" id="3aCsR_cVMYx" role="3clFbG">
            <node concept="37vLTw" id="3aCsR_cVMYy" role="2Oq$k0">
              <ref role="3cqZAo" node="3aCsR_cVMUY" resolve="eventContainer" />
            </node>
            <node concept="2qgKlT" id="3aCsR_cVMYz" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSRB" resolve="setReferences" />
              <node concept="37vLTw" id="3aCsR_cVMY$" role="37wK5m">
                <ref role="3cqZAo" node="3aCsR_cVMY1" resolve="mergedReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3aCsR_cVM3s" role="2ZfVeh">
      <node concept="3clFbS" id="3aCsR_cVM3t" role="2VODD2">
        <node concept="3clFbF" id="3aCsR_cVMb0" role="3cqZAp">
          <node concept="2OqwBi" id="3aCsR_cVMwY" role="3clFbG">
            <node concept="2Sf5sV" id="3aCsR_cVMaZ" role="2Oq$k0" />
            <node concept="2qgKlT" id="3aCsR_cVMyi" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5jZDGTikSOr" resolve="hasReferences" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3aCsR_cYcU5">
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="MergeRequiredRepositoriesOfChildrenIntoContainer" />
    <ref role="2ZfgGC" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
    <node concept="2S6ZIM" id="3aCsR_cYcU6" role="2ZfVej">
      <node concept="3clFbS" id="3aCsR_cYcU7" role="2VODD2">
        <node concept="3clFbF" id="3aCsR_cYdcG" role="3cqZAp">
          <node concept="Xl_RD" id="3aCsR_cYdcP" role="3clFbG">
            <property role="Xl_RC" value="Merge required repositories of children into parent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3aCsR_cYcU8" role="2ZfgGD">
      <node concept="3clFbS" id="3aCsR_cYcU9" role="2VODD2">
        <node concept="3clFbF" id="3aCsR_cYgvE" role="3cqZAp">
          <node concept="2OqwBi" id="3aCsR_cYgw1" role="3clFbG">
            <node concept="2Sf5sV" id="3aCsR_cYgvD" role="2Oq$k0" />
            <node concept="2qgKlT" id="3aCsR_cYgxf" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:d$u27T68WS" resolve="resetAndMergeChildRepositoryReferences" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3aCsR_cYdZY" role="2ZfVeh">
      <node concept="3clFbS" id="3aCsR_cYdZZ" role="2VODD2">
        <node concept="3clFbF" id="3aCsR_cYe78" role="3cqZAp">
          <node concept="1Wc70l" id="3aCsR_cYf6d" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_cYfSC" role="3uHU7w">
              <node concept="2OqwBi" id="3aCsR_cYfu6" role="2Oq$k0">
                <node concept="2Sf5sV" id="3aCsR_cYffq" role="2Oq$k0" />
                <node concept="2qgKlT" id="3aCsR_cYfDj" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:d$u27T6o6s" resolve="findChildComponentsWithRepositoryReferences" />
                </node>
              </node>
              <node concept="2HwmR7" id="3aCsR_cYg5A" role="2OqNvi">
                <node concept="1bVj0M" id="3aCsR_cYg5C" role="23t8la">
                  <node concept="3clFbS" id="3aCsR_cYg5D" role="1bW5cS">
                    <node concept="3clFbF" id="3aCsR_cYgbJ" role="3cqZAp">
                      <node concept="2OqwBi" id="3aCsR_cYggb" role="3clFbG">
                        <node concept="37vLTw" id="3aCsR_cYgbI" role="2Oq$k0">
                          <ref role="3cqZAo" node="3aCsR_cYg5E" resolve="it" />
                        </node>
                        <node concept="2qgKlT" id="3aCsR_cYgmj" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:5jZDGTikSOr" resolve="hasReferences" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3aCsR_cYg5E" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3aCsR_cYg5F" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3aCsR_cYenl" role="3uHU7B">
              <node concept="2Sf5sV" id="3aCsR_cYe77" role="2Oq$k0" />
              <node concept="2qgKlT" id="3aCsR_cYey2" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:omljbwD$pt" resolve="areReferencesOnChildrenAllowed" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="E4RYE9pLFY">
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="IgnoredVariablesArrangementIntention" />
    <ref role="2ZfgGC" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="2S6ZIM" id="E4RYE9pLFZ" role="2ZfVej">
      <node concept="3clFbS" id="E4RYE9pLG0" role="2VODD2">
        <node concept="3clFbF" id="E4RYE9pLMS" role="3cqZAp">
          <node concept="3cpWs3" id="E4RYE9pLMT" role="3clFbG">
            <node concept="Xl_RD" id="E4RYE9pLMU" role="3uHU7w">
              <property role="Xl_RC" value=" 'ignore' variables arrangement" />
            </node>
            <node concept="1eOMI4" id="E4RYE9pLMV" role="3uHU7B">
              <node concept="3K4zz7" id="E4RYE9pLMW" role="1eOMHV">
                <node concept="Xl_RD" id="E4RYE9pLMX" role="3K4E3e">
                  <property role="Xl_RC" value="Horizontal" />
                </node>
                <node concept="Xl_RD" id="E4RYE9pLMY" role="3K4GZi">
                  <property role="Xl_RC" value="Vertical" />
                </node>
                <node concept="2OqwBi" id="E4RYE9pLMZ" role="3K4Cdx">
                  <node concept="2Sf5sV" id="E4RYE9pLN0" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9pLN1" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7z5h98TrECo" resolve="hasVerticallyAlignedIgnoredVariables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="E4RYE9pLG1" role="2ZfgGD">
      <node concept="3clFbS" id="E4RYE9pLG2" role="2VODD2">
        <node concept="3clFbF" id="E4RYE9pMX$" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYE9pNqo" role="3clFbG">
            <node concept="2OqwBi" id="E4RYE9pMXU" role="2Oq$k0">
              <node concept="2Sf5sV" id="E4RYE9pMXz" role="2Oq$k0" />
              <node concept="3TrcHB" id="E4RYE9pMZ8" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:7z5h98TrECo" resolve="hasVerticallyAlignedIgnoredVariables" />
              </node>
            </node>
            <node concept="tyxLq" id="E4RYE9pNHI" role="2OqNvi">
              <node concept="3fqX7Q" id="E4RYE9pNIv" role="tz02z">
                <node concept="2OqwBi" id="E4RYE9pNLk" role="3fr31v">
                  <node concept="2Sf5sV" id="E4RYE9pNJk" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9pNMU" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7z5h98TrECo" resolve="hasVerticallyAlignedIgnoredVariables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="E4RYE9pMqh" role="2ZfVeh">
      <node concept="3clFbS" id="E4RYE9pMqi" role="2VODD2">
        <node concept="3clFbF" id="E4RYE9pMDO" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYE9pMTL" role="3clFbG">
            <node concept="2Sf5sV" id="E4RYE9pMDN" role="2Oq$k0" />
            <node concept="3TrcHB" id="E4RYE9pMV5" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="E4RYE9pNW3">
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="UsedDerivationRulesArrangementIntention" />
    <ref role="2ZfgGC" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="2S6ZIM" id="E4RYE9pNW4" role="2ZfVej">
      <node concept="3clFbS" id="E4RYE9pNW5" role="2VODD2">
        <node concept="3clFbF" id="E4RYE9pOfh" role="3cqZAp">
          <node concept="3cpWs3" id="E4RYE9pOfi" role="3clFbG">
            <node concept="Xl_RD" id="E4RYE9pOfj" role="3uHU7w">
              <property role="Xl_RC" value=" 'use rule' arrangement" />
            </node>
            <node concept="1eOMI4" id="E4RYE9pOfk" role="3uHU7B">
              <node concept="3K4zz7" id="E4RYE9pOfl" role="1eOMHV">
                <node concept="Xl_RD" id="E4RYE9pOfm" role="3K4E3e">
                  <property role="Xl_RC" value="Horizontal" />
                </node>
                <node concept="Xl_RD" id="E4RYE9pOfn" role="3K4GZi">
                  <property role="Xl_RC" value="Vertical" />
                </node>
                <node concept="2OqwBi" id="E4RYE9pOfo" role="3K4Cdx">
                  <node concept="2Sf5sV" id="E4RYE9pOfp" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9pOfq" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7z5h98TrECr" resolve="hasVerticallyAlignedRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="E4RYE9pNW6" role="2ZfgGD">
      <node concept="3clFbS" id="E4RYE9pNW7" role="2VODD2">
        <node concept="3clFbF" id="E4RYE9pPma" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYE9pPNm" role="3clFbG">
            <node concept="2OqwBi" id="E4RYE9pPmw" role="2Oq$k0">
              <node concept="2Sf5sV" id="E4RYE9pPm9" role="2Oq$k0" />
              <node concept="3TrcHB" id="E4RYE9pPnI" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:7z5h98TrECr" resolve="hasVerticallyAlignedRules" />
              </node>
            </node>
            <node concept="tyxLq" id="E4RYE9pQ8v" role="2OqNvi">
              <node concept="3fqX7Q" id="E4RYE9pQ9g" role="tz02z">
                <node concept="2OqwBi" id="E4RYE9pQc5" role="3fr31v">
                  <node concept="2Sf5sV" id="E4RYE9pQa5" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9pQdF" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7z5h98TrECr" resolve="hasVerticallyAlignedRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="E4RYE9pOUz" role="2ZfVeh">
      <node concept="3clFbS" id="E4RYE9pOU$" role="2VODD2">
        <node concept="3clFbF" id="E4RYE9pP2n" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYE9pPik" role="3clFbG">
            <node concept="2Sf5sV" id="E4RYE9pP2m" role="2Oq$k0" />
            <node concept="3TrcHB" id="E4RYE9pPjC" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="E4RYEa2ILN">
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="IDtoDerivitionToggleIgnoreVariablesVisibility" />
    <ref role="2ZfgGC" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="2S6ZIM" id="E4RYEa2ILO" role="2ZfVej">
      <node concept="3clFbS" id="E4RYEa2ILP" role="2VODD2">
        <node concept="3clFbF" id="E4RYEa2J3A" role="3cqZAp">
          <node concept="3cpWs3" id="E4RYEa2J3B" role="3clFbG">
            <node concept="Xl_RD" id="E4RYEa2J3C" role="3uHU7w">
              <property role="Xl_RC" value=" 'ignore' declaration" />
            </node>
            <node concept="1eOMI4" id="E4RYEa2J3D" role="3uHU7B">
              <node concept="3K4zz7" id="E4RYEa2J3E" role="1eOMHV">
                <node concept="Xl_RD" id="E4RYEa2J3F" role="3K4E3e">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="Xl_RD" id="E4RYEa2J3G" role="3K4GZi">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="2OqwBi" id="E4RYEa2J3H" role="3K4Cdx">
                  <node concept="2Sf5sV" id="E4RYEa2J3I" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYEa2J3J" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="E4RYEa2ILQ" role="2ZfgGD">
      <node concept="3clFbS" id="E4RYEa2ILR" role="2VODD2">
        <node concept="3clFbF" id="E4RYEa2NXW" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEa2OHD" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEa2O7M" role="2Oq$k0">
              <node concept="2Sf5sV" id="E4RYEa2NXV" role="2Oq$k0" />
              <node concept="3TrcHB" id="E4RYEa2Oip" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
              </node>
            </node>
            <node concept="tyxLq" id="E4RYEa2P2Z" role="2OqNvi">
              <node concept="3fqX7Q" id="E4RYEa2P3K" role="tz02z">
                <node concept="2OqwBi" id="E4RYEa2P8o" role="3fr31v">
                  <node concept="2Sf5sV" id="E4RYEa2P4_" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYEa2P9Y" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEa2PAj" role="3cqZAp" />
        <node concept="3clFbJ" id="E4RYEa2Pnn" role="3cqZAp">
          <node concept="3clFbS" id="E4RYEa2Pno" role="3clFbx">
            <node concept="3clFbF" id="E4RYEa2Pnp" role="3cqZAp">
              <node concept="2OqwBi" id="E4RYEa2Pnq" role="3clFbG">
                <node concept="2Sf5sV" id="E4RYEa2Pnr" role="2Oq$k0" />
                <node concept="1OKiuA" id="E4RYEa2Pns" role="2OqNvi">
                  <node concept="1XNTG" id="E4RYEa2Pnt" role="lBI5i" />
                  <node concept="2TlHUq" id="E4RYEa2Pnu" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:3NXs7ypxdeo" resolve="ignoredVariablesStartBraceCellId" />
                  </node>
                  <node concept="3cmrfG" id="E4RYEa2Pnv" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="E4RYEa2Pnw" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="E4RYEa2Pnx" role="3clFbw">
            <node concept="2Sf5sV" id="E4RYEa2Pny" role="2Oq$k0" />
            <node concept="3TrcHB" id="E4RYEa2Pnz" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEa2Pn$" role="3cqZAp" />
        <node concept="3clFbF" id="E4RYEa2Pn_" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEa2PnA" role="3clFbG">
            <node concept="2Sf5sV" id="E4RYEa2PnB" role="2Oq$k0" />
            <node concept="2qgKlT" id="E4RYEa2PnC" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:3NXs7ypg5IO" resolve="clearIgnoredVariables" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEa2PnD" role="3cqZAp" />
        <node concept="Jncv_" id="E4RYEa2QdW" role="3cqZAp">
          <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          <node concept="2Sf5sV" id="E4RYEa2QgU" role="JncvB" />
          <node concept="3clFbS" id="E4RYEa2Qe0" role="Jncv$">
            <node concept="3clFbF" id="E4RYEa2Qnx" role="3cqZAp">
              <node concept="2OqwBi" id="E4RYEa2Q_o" role="3clFbG">
                <node concept="Jnkvi" id="E4RYEa2Qnw" role="2Oq$k0">
                  <ref role="1M0zk5" node="E4RYEa2Qe2" resolve="dto" />
                </node>
                <node concept="1OKiuA" id="E4RYEa2QSa" role="2OqNvi">
                  <node concept="1XNTG" id="E4RYEa2QSZ" role="lBI5i" />
                  <node concept="2TlHUq" id="E4RYEa2QUf" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:3NXs7ypIKms" resolve="spaceAfterDerivableCellId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="E4RYEa2QXH" role="3cqZAp" />
          </node>
          <node concept="JncvC" id="E4RYEa2Qe2" role="JncvA">
            <property role="TrG5h" value="dto" />
            <node concept="2jxLKc" id="E4RYEa2Qe3" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEa2Q5K" role="3cqZAp" />
        <node concept="Jncv_" id="E4RYEa2R3V" role="3cqZAp">
          <ref role="JncvD" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
          <node concept="2Sf5sV" id="E4RYEa2R7n" role="JncvB" />
          <node concept="3clFbS" id="E4RYEa2R3Z" role="Jncv$">
            <node concept="3clFbF" id="E4RYEa2RmV" role="3cqZAp">
              <node concept="2OqwBi" id="E4RYEa2R$Y" role="3clFbG">
                <node concept="Jnkvi" id="E4RYEa2RmU" role="2Oq$k0">
                  <ref role="1M0zk5" node="E4RYEa2R41" resolve="flatteningRule" />
                </node>
                <node concept="1OKiuA" id="E4RYEa2RTF" role="2OqNvi">
                  <node concept="1XNTG" id="E4RYEa2RUx" role="lBI5i" />
                  <node concept="2TlHUq" id="E4RYEa2Sl4" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:3NXs7ypIKj6" resolve="spaceAfterDerivableCellId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="E4RYEa2R41" role="JncvA">
            <property role="TrG5h" value="flatteningRule" />
            <node concept="2jxLKc" id="E4RYEa2R42" role="1tU5fm" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="E4RYEa2JNy" role="2ZfVeh">
      <node concept="3clFbS" id="E4RYEa2JNz" role="2VODD2">
        <node concept="3clFbF" id="E4RYEa2LBW" role="3cqZAp">
          <node concept="3K4zz7" id="E4RYEa2Mwa" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEa2M$9" role="3K4E3e">
              <node concept="2Sf5sV" id="E4RYEa2MxU" role="2Oq$k0" />
              <node concept="2qgKlT" id="E4RYEa2MAv" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3NXs7yomeLh" resolve="isDerived" />
              </node>
            </node>
            <node concept="3clFbT" id="E4RYEa2MEO" role="3K4GZi">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="E4RYEa2LRo" role="3K4Cdx">
              <node concept="2Sf5sV" id="E4RYEa2LBV" role="2Oq$k0" />
              <node concept="1mIQ4w" id="E4RYEa2M2J" role="2OqNvi">
                <node concept="chp4Y" id="E4RYEa2M4c" role="cj9EA">
                  <ref role="cht4Q" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="E4RYEa2SvL">
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="IDtoDerivitionToggleUsedRulesVisibility" />
    <ref role="2ZfgGC" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="2S6ZIM" id="E4RYEa2SvM" role="2ZfVej">
      <node concept="3clFbS" id="E4RYEa2SvN" role="2VODD2">
        <node concept="3clFbF" id="E4RYEa2TDp" role="3cqZAp">
          <node concept="3cpWs3" id="E4RYEa2TDq" role="3clFbG">
            <node concept="Xl_RD" id="E4RYEa2TDr" role="3uHU7w">
              <property role="Xl_RC" value=" 'use rules' declaration" />
            </node>
            <node concept="1eOMI4" id="E4RYEa2TDs" role="3uHU7B">
              <node concept="3K4zz7" id="E4RYEa2TDt" role="1eOMHV">
                <node concept="Xl_RD" id="E4RYEa2TDu" role="3K4E3e">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="Xl_RD" id="E4RYEa2TDv" role="3K4GZi">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="2OqwBi" id="E4RYEa2TDw" role="3K4Cdx">
                  <node concept="2Sf5sV" id="E4RYEa2TDx" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYEa2TDy" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="E4RYEa2SvO" role="2ZfgGD">
      <node concept="3clFbS" id="E4RYEa2SvP" role="2VODD2">
        <node concept="3clFbF" id="E4RYEa2Xvw" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEa2Xvx" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEa2Xvy" role="2Oq$k0">
              <node concept="2Sf5sV" id="E4RYEa2Xvz" role="2Oq$k0" />
              <node concept="3TrcHB" id="E4RYEa2Xv$" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
              </node>
            </node>
            <node concept="tyxLq" id="E4RYEa2Xv_" role="2OqNvi">
              <node concept="3fqX7Q" id="E4RYEa2XvA" role="tz02z">
                <node concept="2OqwBi" id="E4RYEa2XvB" role="3fr31v">
                  <node concept="2Sf5sV" id="E4RYEa2XvC" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYEa2XvD" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEa2XvE" role="3cqZAp" />
        <node concept="3clFbJ" id="E4RYEa2XvF" role="3cqZAp">
          <node concept="3clFbS" id="E4RYEa2XvG" role="3clFbx">
            <node concept="3clFbF" id="E4RYEa2XvH" role="3cqZAp">
              <node concept="2OqwBi" id="E4RYEa2XvI" role="3clFbG">
                <node concept="2Sf5sV" id="E4RYEa2XvJ" role="2Oq$k0" />
                <node concept="1OKiuA" id="E4RYEa2XvK" role="2OqNvi">
                  <node concept="1XNTG" id="E4RYEa2XvL" role="lBI5i" />
                  <node concept="2TlHUq" id="E4RYEa2XvM" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:5QsWOhWpHeO" resolve="derivationRulesLeftBraceCellId" />
                  </node>
                  <node concept="3cmrfG" id="E4RYEa2XvN" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="E4RYEa2XvO" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="E4RYEa2XvP" role="3clFbw">
            <node concept="2Sf5sV" id="E4RYEa2XvQ" role="2Oq$k0" />
            <node concept="3TrcHB" id="E4RYEa2XvR" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEa2XvS" role="3cqZAp" />
        <node concept="3clFbF" id="E4RYEa2XvT" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEa2XvU" role="3clFbG">
            <node concept="2Sf5sV" id="E4RYEa2XvV" role="2Oq$k0" />
            <node concept="2qgKlT" id="E4RYEa2XvW" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:1pnQbpDKcyV" resolve="clearUsedDerivationRules" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEa2XvX" role="3cqZAp" />
        <node concept="3clFbJ" id="E4RYEa2XWL" role="3cqZAp">
          <node concept="3clFbS" id="E4RYEa2XWN" role="3clFbx">
            <node concept="3clFbF" id="E4RYEa32o$" role="3cqZAp">
              <node concept="2OqwBi" id="E4RYEa32o_" role="3clFbG">
                <node concept="1OKiuA" id="E4RYEa32oB" role="2OqNvi">
                  <node concept="1XNTG" id="E4RYEa32oC" role="lBI5i" />
                  <node concept="2TlHUq" id="E4RYEa32oD" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:3NXs7yqgw3Q" resolve="ignoredVariablesRightBraceCellId" />
                  </node>
                  <node concept="3cmrfG" id="E4RYEa32uo" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
                <node concept="2Sf5sV" id="E4RYEa32Pg" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3cpWs6" id="E4RYEa32xw" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="E4RYEa303n" role="3clFbw">
            <node concept="2OqwBi" id="E4RYEa2YcQ" role="2Oq$k0">
              <node concept="2Sf5sV" id="E4RYEa32JT" role="2Oq$k0" />
              <node concept="3Tsc0h" id="E4RYEa2Y$3" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
              </node>
            </node>
            <node concept="3GX2aA" id="E4RYEa32lY" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEa32A4" role="3cqZAp" />
        <node concept="Jncv_" id="E4RYEa2XvY" role="3cqZAp">
          <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          <node concept="2Sf5sV" id="E4RYEa2XvZ" role="JncvB" />
          <node concept="3clFbS" id="E4RYEa2Xw0" role="Jncv$">
            <node concept="3clFbF" id="E4RYEa2Xw1" role="3cqZAp">
              <node concept="2OqwBi" id="E4RYEa2Xw2" role="3clFbG">
                <node concept="Jnkvi" id="E4RYEa2Xw3" role="2Oq$k0">
                  <ref role="1M0zk5" node="E4RYEa2Xw8" resolve="dto" />
                </node>
                <node concept="1OKiuA" id="E4RYEa2Xw4" role="2OqNvi">
                  <node concept="1XNTG" id="E4RYEa2Xw5" role="lBI5i" />
                  <node concept="2TlHUq" id="E4RYEa2Xw6" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:3NXs7ypIKms" resolve="spaceAfterDerivableCellId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="E4RYEa2Xw7" role="3cqZAp" />
          </node>
          <node concept="JncvC" id="E4RYEa2Xw8" role="JncvA">
            <property role="TrG5h" value="dto" />
            <node concept="2jxLKc" id="E4RYEa2Xw9" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEa2Xwa" role="3cqZAp" />
        <node concept="Jncv_" id="E4RYEa2Xwb" role="3cqZAp">
          <ref role="JncvD" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
          <node concept="2Sf5sV" id="E4RYEa2Xwc" role="JncvB" />
          <node concept="3clFbS" id="E4RYEa2Xwd" role="Jncv$">
            <node concept="3clFbF" id="E4RYEa2Xwe" role="3cqZAp">
              <node concept="2OqwBi" id="E4RYEa2Xwf" role="3clFbG">
                <node concept="Jnkvi" id="E4RYEa2Xwg" role="2Oq$k0">
                  <ref role="1M0zk5" node="E4RYEa2Xwk" resolve="flatteningRule" />
                </node>
                <node concept="1OKiuA" id="E4RYEa2Xwh" role="2OqNvi">
                  <node concept="1XNTG" id="E4RYEa2Xwi" role="lBI5i" />
                  <node concept="2TlHUq" id="E4RYEa2Xwj" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:3NXs7ypIKj6" resolve="spaceAfterDerivableCellId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="E4RYEa2Xwk" role="JncvA">
            <property role="TrG5h" value="flatteningRule" />
            <node concept="2jxLKc" id="E4RYEa2Xwl" role="1tU5fm" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="E4RYEa2Wvn" role="2ZfVeh">
      <node concept="3clFbS" id="E4RYEa2Wvo" role="2VODD2">
        <node concept="3clFbF" id="E4RYEa2W_r" role="3cqZAp">
          <node concept="3K4zz7" id="E4RYEa2W_s" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEa2W_t" role="3K4E3e">
              <node concept="2Sf5sV" id="E4RYEa2W_u" role="2Oq$k0" />
              <node concept="2qgKlT" id="E4RYEa2W_v" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3NXs7yomeLh" resolve="isDerived" />
              </node>
            </node>
            <node concept="3clFbT" id="E4RYEa2W_w" role="3K4GZi">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="E4RYEa2W_x" role="3K4Cdx">
              <node concept="2Sf5sV" id="E4RYEa2W_y" role="2Oq$k0" />
              <node concept="1mIQ4w" id="E4RYEa2W_z" role="2OqNvi">
                <node concept="chp4Y" id="E4RYEa2W_$" role="cj9EA">
                  <ref role="cht4Q" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="E4RYEaap3d">
    <property role="3GE5qa" value="dtoDerivation.rules" />
    <property role="TrG5h" value="ToggleDerivationRuleUsage" />
    <ref role="2ZfgGC" to="3nll:1bq_vIpSfA3" resolve="IDtoDerivationRule" />
    <node concept="2S6ZIM" id="E4RYEaap3e" role="2ZfVej">
      <node concept="3clFbS" id="E4RYEaap3f" role="2VODD2">
        <node concept="3clFbF" id="E4RYEaapad" role="3cqZAp">
          <node concept="3cpWs3" id="E4RYEaaq45" role="3clFbG">
            <node concept="Xl_RD" id="E4RYEaaq5I" role="3uHU7B">
              <property role="Xl_RC" value="Make " />
            </node>
            <node concept="1eOMI4" id="E4RYEaejSw" role="3uHU7w">
              <node concept="3K4zz7" id="E4RYEaekob" role="1eOMHV">
                <node concept="Xl_RD" id="E4RYEaekJM" role="3K4E3e">
                  <property role="Xl_RC" value="implicit" />
                </node>
                <node concept="Xl_RD" id="E4RYEaekLA" role="3K4GZi">
                  <property role="Xl_RC" value="explicit" />
                </node>
                <node concept="2OqwBi" id="E4RYEaek$s" role="3K4Cdx">
                  <node concept="2OqwBi" id="E4RYEaarfF" role="2Oq$k0">
                    <node concept="2Sf5sV" id="E4RYEaaqQC" role="2Oq$k0" />
                    <node concept="3TrcHB" id="E4RYEaaruC" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:5QsWOhW3TSQ" resolve="usage" />
                    </node>
                  </node>
                  <node concept="21noJN" id="E4RYEaekHR" role="2OqNvi">
                    <node concept="21nZrQ" id="E4RYEaekHT" role="21noJM">
                      <ref role="21nZrZ" to="3nll:5QsWOhW3TSN" resolve="Explicit" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="E4RYEaap3g" role="2ZfgGD">
      <node concept="3clFbS" id="E4RYEaap3h" role="2VODD2">
        <node concept="3clFbF" id="E4RYEaarUf" role="3cqZAp">
          <node concept="3X5UdL" id="E4RYEaarYn" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEaarZs" role="3X5Ude">
              <node concept="2Sf5sV" id="E4RYEaarYZ" role="2Oq$k0" />
              <node concept="3TrcHB" id="E4RYEaas0K" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5QsWOhW3TSQ" resolve="usage" />
              </node>
            </node>
            <node concept="3X5Udd" id="E4RYEaas1w" role="3X5gkp">
              <node concept="21nZrQ" id="E4RYEaas1v" role="3X5Uda">
                <ref role="21nZrZ" to="3nll:5QsWOhW3TSN" resolve="Explicit" />
              </node>
              <node concept="3X5gDF" id="E4RYEaas3l" role="3X5gFO">
                <node concept="2OqwBi" id="E4RYEaas5X" role="3X5gDC">
                  <node concept="2OqwBi" id="E4RYEaas3G" role="2Oq$k0">
                    <node concept="2Sf5sV" id="E4RYEaas3k" role="2Oq$k0" />
                    <node concept="3TrcHB" id="E4RYEaas4X" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:5QsWOhW3TSQ" resolve="usage" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="E4RYEaashC" role="2OqNvi">
                    <node concept="21nZrQ" id="E4RYEaasir" role="tz02z">
                      <ref role="21nZrZ" to="3nll:5QsWOhW3TSM" resolve="Implicit" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3X5Udd" id="E4RYEaas29" role="3X5gkp">
              <node concept="21nZrQ" id="E4RYEaas2a" role="3X5Uda">
                <ref role="21nZrZ" to="3nll:5QsWOhW3TSM" resolve="Implicit" />
              </node>
              <node concept="3X5gDF" id="E4RYEaasjg" role="3X5gFO">
                <node concept="2OqwBi" id="E4RYEaaslS" role="3X5gDC">
                  <node concept="2OqwBi" id="E4RYEaasjB" role="2Oq$k0">
                    <node concept="2Sf5sV" id="E4RYEaasjf" role="2Oq$k0" />
                    <node concept="3TrcHB" id="E4RYEaaskS" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:5QsWOhW3TSQ" resolve="usage" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="E4RYEaasnT" role="2OqNvi">
                    <node concept="21nZrQ" id="E4RYEaasoG" role="tz02z">
                      <ref role="21nZrZ" to="3nll:5QsWOhW3TSN" resolve="Explicit" />
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
  <node concept="2S6QgY" id="E4RYEaug6N">
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="IDtoDerivable_CreateDtoDerivition_Intention" />
    <ref role="2ZfgGC" to="3nll:4LpUh3T0rQI" resolve="IDtoDerivable" />
    <node concept="2S6ZIM" id="E4RYEaug6O" role="2ZfVej">
      <node concept="3clFbS" id="E4RYEaug6P" role="2VODD2">
        <node concept="3clFbF" id="E4RYEaugjq" role="3cqZAp">
          <node concept="Xl_RD" id="E4RYEaugjp" role="3clFbG">
            <property role="Xl_RC" value="Create derived dto" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="E4RYEaug6Q" role="2ZfgGD">
      <node concept="3clFbS" id="E4RYEaug6R" role="2VODD2">
        <node concept="3cpWs8" id="E4RYEaujKy" role="3cqZAp">
          <node concept="3cpWsn" id="E4RYEaujKz" role="3cpWs9">
            <property role="TrG5h" value="dto" />
            <node concept="3Tqbb2" id="E4RYEaujK$" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            </node>
            <node concept="2ShNRf" id="E4RYEaujK_" role="33vP2m">
              <node concept="2fJWfE" id="E4RYEaum1m" role="2ShVmc">
                <node concept="3Tqbb2" id="E4RYEaum1o" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="E4RYEaumvH" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEaunN1" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEaunbq" role="2Oq$k0">
              <node concept="37vLTw" id="E4RYEaumvF" role="2Oq$k0">
                <ref role="3cqZAo" node="E4RYEaujKz" resolve="dto" />
              </node>
              <node concept="3TrEf2" id="E4RYEaunDl" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
              </node>
            </node>
            <node concept="2oxUTD" id="E4RYEauo3Y" role="2OqNvi">
              <node concept="2OqwBi" id="E4RYEauojy" role="2oxUTC">
                <node concept="2Sf5sV" id="E4RYEauo5m" role="2Oq$k0" />
                <node concept="2qgKlT" id="E4RYEauoxQ" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:4LpUh3T0tG4" resolve="toDtoDerivableReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="E4RYEaygCF" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEayifA" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEayhhs" role="2Oq$k0">
              <node concept="37vLTw" id="E4RYEaygCD" role="2Oq$k0">
                <ref role="3cqZAo" node="E4RYEaujKz" resolve="dto" />
              </node>
              <node concept="3TrcHB" id="E4RYEayhOl" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7ypj_ap" resolve="showDerivedFromBlock" />
              </node>
            </node>
            <node concept="tyxLq" id="E4RYEayiJ1" role="2OqNvi">
              <node concept="3clFbT" id="E4RYEayiJE" role="tz02z">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="E4RYEayj3c" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEayjY2" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEayjkv" role="2Oq$k0">
              <node concept="37vLTw" id="E4RYEayj3a" role="2Oq$k0">
                <ref role="3cqZAo" node="E4RYEaujKz" resolve="dto" />
              </node>
              <node concept="3TrcHB" id="E4RYEayjuT" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="tyxLq" id="E4RYEaykxm" role="2OqNvi">
              <node concept="3cpWs3" id="E4RYEaylrj" role="tz02z">
                <node concept="Xl_RD" id="E4RYEaylse" role="3uHU7w">
                  <property role="Xl_RC" value="Dto" />
                </node>
                <node concept="2OqwBi" id="E4RYEaykJC" role="3uHU7B">
                  <node concept="2Sf5sV" id="E4RYEaykxZ" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYEaykZh" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEaujL9" role="3cqZAp" />
        <node concept="3cpWs8" id="E4RYEaujLa" role="3cqZAp">
          <node concept="3cpWsn" id="E4RYEaujLb" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="E4RYEaujLc" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="E4RYEaujLd" role="33vP2m">
              <node concept="2Sf5sV" id="E4RYEaujLe" role="2Oq$k0" />
              <node concept="2qgKlT" id="E4RYEaujLf" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="E4RYEaujLg" role="3cqZAp">
          <node concept="3cpWsn" id="E4RYEaujLh" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="E4RYEaujLi" role="1tU5fm" />
            <node concept="2OqwBi" id="E4RYEaujLj" role="33vP2m">
              <node concept="2qgKlT" id="E4RYEaujLk" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3FBObrohI14" resolve="indexOf" />
                <node concept="2Sf5sV" id="E4RYEaujLl" role="37wK5m" />
              </node>
              <node concept="37vLTw" id="E4RYEaujLm" role="2Oq$k0">
                <ref role="3cqZAo" node="E4RYEaujLb" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="E4RYEaujLn" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEaujLo" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEaujLp" role="2Oq$k0">
              <node concept="3Tsc0h" id="E4RYEaujLq" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="E4RYEaujLr" role="2Oq$k0">
                <ref role="3cqZAo" node="E4RYEaujLb" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="E4RYEaujLs" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="E4RYEaujLt" role="37wK5m">
                <node concept="3cmrfG" id="E4RYEaujLu" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="E4RYEaujLv" role="3uHU7B">
                  <ref role="3cqZAo" node="E4RYEaujLh" resolve="index" />
                </node>
              </node>
              <node concept="2ShNRf" id="E4RYEaujLw" role="37wK5m">
                <node concept="3zrR0B" id="E4RYEaujLx" role="2ShVmc">
                  <node concept="3Tqbb2" id="E4RYEaujLy" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="E4RYEaujLz" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEaujL$" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEaujL_" role="2Oq$k0">
              <node concept="3Tsc0h" id="E4RYEaujLA" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="E4RYEaujLB" role="2Oq$k0">
                <ref role="3cqZAo" node="E4RYEaujLb" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="E4RYEaujLC" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="E4RYEaujLD" role="37wK5m">
                <node concept="3cmrfG" id="E4RYEaujLE" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="E4RYEaujLF" role="3uHU7B">
                  <ref role="3cqZAo" node="E4RYEaujLh" resolve="index" />
                </node>
              </node>
              <node concept="37vLTw" id="E4RYEaujLG" role="37wK5m">
                <ref role="3cqZAo" node="E4RYEaujKz" resolve="dto" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="E4RYEaugdP" role="2ZfVeh">
      <node concept="3clFbS" id="E4RYEaugdQ" role="2VODD2">
        <node concept="3clFbF" id="E4RYEauguR" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEaui75" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEauhCf" role="2Oq$k0">
              <node concept="2OqwBi" id="E4RYEaugJY" role="2Oq$k0">
                <node concept="2Sf5sV" id="E4RYEauguQ" role="2Oq$k0" />
                <node concept="2qgKlT" id="E4RYEauhmv" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="E4RYEauhPq" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:25wIjMt0EwC" resolve="findDtoDerivitionFor" />
                <node concept="2Sf5sV" id="E4RYEauhWk" role="37wK5m" />
              </node>
            </node>
            <node concept="3w_OXm" id="E4RYEauinx" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="E4RYEaQACO">
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="Dto_DeriveFrom_Intention" />
    <ref role="2ZfgGC" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    <node concept="2S6ZIM" id="E4RYEaQACP" role="2ZfVej">
      <node concept="3clFbS" id="E4RYEaQACQ" role="2VODD2">
        <node concept="3clFbF" id="E4RYEaQAKn" role="3cqZAp">
          <node concept="Xl_RD" id="E4RYEaQAKm" role="3clFbG">
            <property role="Xl_RC" value="Derive from ..." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="E4RYEaQACR" role="2ZfgGD">
      <node concept="3clFbS" id="E4RYEaQACS" role="2VODD2">
        <node concept="3clFbF" id="E4RYEaQCAY" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEaQCDT" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEaQCBl" role="2Oq$k0">
              <node concept="2Sf5sV" id="E4RYEaQCAX" role="2Oq$k0" />
              <node concept="3TrcHB" id="E4RYEaQCCz" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7ypj_ap" resolve="showDerivedFromBlock" />
              </node>
            </node>
            <node concept="tyxLq" id="E4RYEaQCFv" role="2OqNvi">
              <node concept="3clFbT" id="E4RYEaQCGg" role="tz02z">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="E4RYEaUqvq" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEaUrb0" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEaUqHX" role="2Oq$k0">
              <node concept="2Sf5sV" id="E4RYEaUqvp" role="2Oq$k0" />
              <node concept="3TrEf2" id="E4RYEaUr1l" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
              </node>
            </node>
            <node concept="zfrQC" id="E4RYEaUrxE" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="E4RYEaUrAD" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEaUrFf" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEaUrCA" role="2Oq$k0">
              <node concept="2Sf5sV" id="E4RYEaUrAC" role="2Oq$k0" />
              <node concept="3TrEf2" id="E4RYEaUrDT" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
              </node>
            </node>
            <node concept="1OKiuA" id="E4RYEaUrGP" role="2OqNvi">
              <node concept="1XNTG" id="E4RYEaUrHN" role="lBI5i" />
              <node concept="2TlHUq" id="E4RYEaUrJn" role="lGT1i">
                <ref role="2TlMyj" to="8pak:3NXs7ypjMya" resolve="derivableReferencePlaceholderCellId" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="E4RYEaQAZE" role="2ZfVeh">
      <node concept="3clFbS" id="E4RYEaQAZF" role="2VODD2">
        <node concept="3clFbF" id="E4RYEaQB8z" role="3cqZAp">
          <node concept="3fqX7Q" id="E4RYEaQCz_" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEaQCzB" role="3fr31v">
              <node concept="2Sf5sV" id="E4RYEaQCzC" role="2Oq$k0" />
              <node concept="3TrcHB" id="E4RYEaQCzD" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7ypj_ap" resolve="showDerivedFromBlock" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="E4RYEaYeqP">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <property role="TrG5h" value="DtoFlattening_ChangeNameConvention_intention" />
    <ref role="2ZfgGC" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
    <node concept="38BcoT" id="E4RYEaYeqQ" role="3dlsAV">
      <node concept="2ZThk1" id="E4RYEaYeJb" role="3ddBve">
        <ref role="2ZWj4r" to="3nll:3NXs7yqZJYD" resolve="FlatteningRuleNameConvention" />
      </node>
      <node concept="3clFbS" id="E4RYEaYeqS" role="2VODD2">
        <node concept="3clFbF" id="E4RYEaYf2H" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEaYf_M" role="3clFbG">
            <node concept="1XH99k" id="E4RYEaYf2G" role="2Oq$k0">
              <ref role="1XH99l" to="3nll:3NXs7yqZJYD" resolve="FlatteningRuleNameConvention" />
            </node>
            <node concept="2ViDtN" id="E4RYEaYfZW" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2S6ZIM" id="E4RYEaYeqT" role="2ZfVej">
      <node concept="3clFbS" id="E4RYEaYeqU" role="2VODD2">
        <node concept="3cpWs6" id="E4RYEaYhb9" role="3cqZAp">
          <node concept="3X5UdL" id="E4RYEaYg3Z" role="3cqZAk">
            <node concept="3X5Udd" id="E4RYEaYgbh" role="3X5gkp">
              <node concept="21nZrQ" id="E4RYEaYgbi" role="3X5Uda">
                <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
              </node>
              <node concept="3X5gDF" id="E4RYEaYgyP" role="3X5gFO">
                <node concept="Xl_RD" id="E4RYEaYgyO" role="3X5gDC">
                  <property role="Xl_RC" value="Remove suffix / prefix" />
                </node>
              </node>
            </node>
            <node concept="3X5Udd" id="E4RYEaYgjU" role="3X5gkp">
              <node concept="21nZrQ" id="E4RYEaYgjV" role="3X5Uda">
                <ref role="21nZrZ" to="3nll:3NXs7yqZJYF" resolve="Prefix" />
              </node>
              <node concept="3X5gDF" id="E4RYEaYgzR" role="3X5gFO">
                <node concept="Xl_RD" id="E4RYEaYgzQ" role="3X5gDC">
                  <property role="Xl_RC" value="With prefix" />
                </node>
              </node>
            </node>
            <node concept="3X5Udd" id="E4RYEaYgri" role="3X5gkp">
              <node concept="21nZrQ" id="E4RYEaYgrj" role="3X5Uda">
                <ref role="21nZrZ" to="3nll:3NXs7yqZJYI" resolve="Suffix" />
              </node>
              <node concept="3X5gDF" id="E4RYEaYg_2" role="3X5gFO">
                <node concept="Xl_RD" id="E4RYEaYg_1" role="3X5gDC">
                  <property role="Xl_RC" value="With suffix" />
                </node>
              </node>
            </node>
            <node concept="38Zlrr" id="E4RYEaYga$" role="3X5Ude" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="E4RYEaYeqV" role="2ZfgGD">
      <node concept="3clFbS" id="E4RYEaYeqW" role="2VODD2">
        <node concept="3cpWs8" id="E4RYEaYmr8" role="3cqZAp">
          <node concept="3cpWsn" id="E4RYEaYmr9" role="3cpWs9">
            <property role="TrG5h" value="previoudNameConvention" />
            <node concept="2ZThk1" id="E4RYEaYmnG" role="1tU5fm">
              <ref role="2ZWj4r" to="3nll:3NXs7yqZJYD" resolve="FlatteningRuleNameConvention" />
            </node>
            <node concept="2OqwBi" id="E4RYEaYmra" role="33vP2m">
              <node concept="2Sf5sV" id="E4RYEaYmrb" role="2Oq$k0" />
              <node concept="3TrcHB" id="E4RYEaYmrc" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="E4RYEaYiuR" role="3cqZAp">
          <node concept="2OqwBi" id="E4RYEaYixL" role="3clFbG">
            <node concept="2OqwBi" id="E4RYEaYiv_" role="2Oq$k0">
              <node concept="2Sf5sV" id="E4RYEaYiuQ" role="2Oq$k0" />
              <node concept="3TrcHB" id="E4RYEaYiwN" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
              </node>
            </node>
            <node concept="tyxLq" id="E4RYEaYiEQ" role="2OqNvi">
              <node concept="38Zlrr" id="E4RYEaYiFB" role="tz02z" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="E4RYEaYir7" role="3cqZAp" />
        <node concept="3clFbF" id="E4RYEaYiK2" role="3cqZAp">
          <node concept="3X5UdL" id="E4RYEaYiJY" role="3clFbG">
            <node concept="38Zlrr" id="E4RYEaYiL5" role="3X5Ude" />
            <node concept="3X5Udd" id="E4RYEaYiMa" role="3X5gkp">
              <node concept="3X5gDB" id="E4RYEaYjVv" role="3X5gFO">
                <node concept="3clFbS" id="E4RYEaYjVx" role="3X5gD$">
                  <node concept="3clFbJ" id="E4RYEaYjY4" role="3cqZAp">
                    <node concept="3fqX7Q" id="E4RYEaYmYQ" role="3clFbw">
                      <node concept="2OqwBi" id="E4RYEaYmYS" role="3fr31v">
                        <node concept="37vLTw" id="E4RYEaYmYT" role="2Oq$k0">
                          <ref role="3cqZAo" node="E4RYEaYmr9" resolve="previoudNameConvention" />
                        </node>
                        <node concept="21noJN" id="E4RYEaYmYU" role="2OqNvi">
                          <node concept="21nZrQ" id="E4RYEaYmYV" role="21noJM">
                            <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="E4RYEaYjY6" role="3clFbx">
                      <node concept="3cpWs6" id="E4RYEaYn2s" role="3cqZAp" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="E4RYEaYokZ" role="3cqZAp">
                    <node concept="2OqwBi" id="E4RYEaYo$m" role="3clFbG">
                      <node concept="2Sf5sV" id="E4RYEaYokY" role="2Oq$k0" />
                      <node concept="1OKiuA" id="E4RYEaYoT7" role="2OqNvi">
                        <node concept="1XNTG" id="E4RYEaYoV1" role="lBI5i" />
                        <node concept="2TlHUq" id="4V91Il3sQ8s" role="lGT1i">
                          <ref role="2TlMyj" to="8pak:2RbvdOL$g4B" resolve="placeholderCellId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="21nZrQ" id="E4RYEaYiNB" role="3X5Uda">
                <ref role="21nZrZ" to="3nll:3NXs7yqZJYF" resolve="Prefix" />
              </node>
              <node concept="21nZrQ" id="E4RYEaYmWR" role="3X5Uda">
                <ref role="21nZrZ" to="3nll:3NXs7yqZJYI" resolve="Suffix" />
              </node>
            </node>
            <node concept="3X5Udd" id="E4RYEb2a8$" role="3X5gkp">
              <node concept="21nZrQ" id="E4RYEb2a8_" role="3X5Uda">
                <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
              </node>
              <node concept="3X5gDB" id="E4RYEb2al5" role="3X5gFO">
                <node concept="3clFbS" id="E4RYEb2al7" role="3X5gD$">
                  <node concept="3clFbJ" id="E4RYEb2aqX" role="3cqZAp">
                    <node concept="3clFbS" id="E4RYEb2aqZ" role="3clFbx">
                      <node concept="3clFbF" id="E4RYEb2aES" role="3cqZAp">
                        <node concept="2OqwBi" id="E4RYEb2aET" role="3clFbG">
                          <node concept="2Sf5sV" id="E4RYEb2aEU" role="2Oq$k0" />
                          <node concept="1OKiuA" id="E4RYEb2aEV" role="2OqNvi">
                            <node concept="1XNTG" id="E4RYEb2aEW" role="lBI5i" />
                            <node concept="2B6iha" id="E4RYEb2aJd" role="lGT1i" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="E4RYEb2asw" role="3clFbw">
                      <ref role="37wK5l" to="7ztp:5jZDGTfesVy" resolve="isSelectedCellChildOf" />
                      <ref role="1Pybhc" to="7ztp:5jZDGTfesU9" resolve="EditorContextUtils" />
                      <node concept="1XNTG" id="E4RYEb2ate" role="37wK5m" />
                      <node concept="Xl_RD" id="E4RYEb2av4" role="37wK5m">
                        <property role="Xl_RC" value="nameConventionBlockId" />
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
    <node concept="2SaL7w" id="E4RYEaYhiD" role="2ZfVeh">
      <node concept="3clFbS" id="E4RYEaYhiE" role="2VODD2">
        <node concept="3clFbF" id="E4RYEaYhqR" role="3cqZAp">
          <node concept="17QLQc" id="E4RYEaYikN" role="3clFbG">
            <node concept="38Zlrr" id="E4RYEaYiqe" role="3uHU7w" />
            <node concept="2OqwBi" id="E4RYEaYhJY" role="3uHU7B">
              <node concept="2Sf5sV" id="E4RYEaYhqQ" role="2Oq$k0" />
              <node concept="3TrcHB" id="E4RYEaYi3G" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="4V91Il6mDR6">
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="IDtoDerivable_CreateFlatteningRule" />
    <ref role="2ZfgGC" to="3nll:4LpUh3T0rQI" resolve="IDtoDerivable" />
    <node concept="38BcoT" id="4V91Il6mDR7" role="3dlsAV">
      <node concept="2ZThk1" id="4V91Il6mE88" role="3ddBve">
        <ref role="2ZWj4r" to="3nll:5QsWOhW3TSL" resolve="DtoDerivationRuleUsage" />
      </node>
      <node concept="3clFbS" id="4V91Il6mDR9" role="2VODD2">
        <node concept="3clFbF" id="4V91Il6mErH" role="3cqZAp">
          <node concept="2OqwBi" id="4V91Il6mFaF" role="3clFbG">
            <node concept="1XH99k" id="4V91Il6mErG" role="2Oq$k0">
              <ref role="1XH99l" to="3nll:5QsWOhW3TSL" resolve="DtoDerivationRuleUsage" />
            </node>
            <node concept="2ViDtN" id="4V91Il6mFwl" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2S6ZIM" id="4V91Il6mDRa" role="2ZfVej">
      <node concept="3clFbS" id="4V91Il6mDRb" role="2VODD2">
        <node concept="3clFbF" id="4V91Il6nkbi" role="3cqZAp">
          <node concept="3cpWs3" id="4V91Il6nlle" role="3clFbG">
            <node concept="Xl_RD" id="4V91Il6nlmk" role="3uHU7w">
              <property role="Xl_RC" value="' dto flattening rule" />
            </node>
            <node concept="3cpWs3" id="4V91Il6nkKr" role="3uHU7B">
              <node concept="Xl_RD" id="4V91Il6nkbh" role="3uHU7B">
                <property role="Xl_RC" value="Create '" />
              </node>
              <node concept="2OqwBi" id="4V91Il6nl4$" role="3uHU7w">
                <node concept="38Zlrr" id="4V91Il6nkLa" role="2Oq$k0" />
                <node concept="1XCIdh" id="4V91Il6nldo" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4V91Il6mDRc" role="2ZfgGD">
      <node concept="3clFbS" id="4V91Il6mDRd" role="2VODD2">
        <node concept="3cpWs8" id="4V91Il6nlX1" role="3cqZAp">
          <node concept="3cpWsn" id="4V91Il6nlX2" role="3cpWs9">
            <property role="TrG5h" value="flatteningRule" />
            <node concept="3Tqbb2" id="4V91Il6nlU9" role="1tU5fm">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
            </node>
            <node concept="2ShNRf" id="4V91Il6nlX3" role="33vP2m">
              <node concept="3zrR0B" id="4V91Il6nlX4" role="2ShVmc">
                <node concept="3Tqbb2" id="4V91Il6nlX5" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4V91Il6nm2m" role="3cqZAp">
          <node concept="2OqwBi" id="4V91Il6nmKM" role="3clFbG">
            <node concept="2OqwBi" id="4V91Il6nmgw" role="2Oq$k0">
              <node concept="37vLTw" id="4V91Il6nm2k" role="2Oq$k0">
                <ref role="3cqZAo" node="4V91Il6nlX2" resolve="flatteningRule" />
              </node>
              <node concept="3TrcHB" id="4V91Il6nm$b" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5QsWOhW3TSQ" resolve="usage" />
              </node>
            </node>
            <node concept="tyxLq" id="4V91Il6nmTQ" role="2OqNvi">
              <node concept="38Zlrr" id="4V91Il6nmUv" role="tz02z" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4V91Il6nxg$" role="3cqZAp">
          <node concept="2OqwBi" id="4V91Il6nyzX" role="3clFbG">
            <node concept="2OqwBi" id="4V91Il6nxV3" role="2Oq$k0">
              <node concept="37vLTw" id="4V91Il6nxgy" role="2Oq$k0">
                <ref role="3cqZAo" node="4V91Il6nlX2" resolve="flatteningRule" />
              </node>
              <node concept="3TrEf2" id="4V91Il6nynd" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
              </node>
            </node>
            <node concept="2oxUTD" id="4V91Il6nyRi" role="2OqNvi">
              <node concept="2OqwBi" id="4V91Il6nEH4" role="2oxUTC">
                <node concept="2Sf5sV" id="4V91Il6nE7J" role="2Oq$k0" />
                <node concept="2qgKlT" id="4V91Il6nFbq" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:4LpUh3T0tG4" resolve="toDtoDerivableReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4V91Il6ntxw" role="3cqZAp" />
        <node concept="3SKdUt" id="4V91Il6nu3D" role="3cqZAp">
          <node concept="1PaTwC" id="4V91Il6nu3E" role="1aUNEU">
            <node concept="3oM_SD" id="4V91Il6nukg" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nukn" role="1PaTwD">
              <property role="3oM_SC" value="Hier" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nukv" role="1PaTwD">
              <property role="3oM_SC" value="vllt" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nukE" role="1PaTwD">
              <property role="3oM_SC" value="noch" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nukQ" role="1PaTwD">
              <property role="3oM_SC" value="einbauen," />
            </node>
            <node concept="3oM_SD" id="4V91Il6nul6" role="1PaTwD">
              <property role="3oM_SC" value="dass" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nuli" role="1PaTwD">
              <property role="3oM_SC" value="es" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nult" role="1PaTwD">
              <property role="3oM_SC" value="zuerst" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nulH" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4V91Il6numl" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4V91Il6num_" role="1PaTwD">
              <property role="3oM_SC" value="einen" />
            </node>
            <node concept="3oM_SD" id="4V91Il6numT" role="1PaTwD">
              <property role="3oM_SC" value="Flattening" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nunh" role="1PaTwD">
              <property role="3oM_SC" value="Rule" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nun$" role="1PaTwD">
              <property role="3oM_SC" value="Container" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nunX" role="1PaTwD">
              <property role="3oM_SC" value="eingefügt" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nuop" role="1PaTwD">
              <property role="3oM_SC" value="werden" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nuoL" role="1PaTwD">
              <property role="3oM_SC" value="und" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nup9" role="1PaTwD">
              <property role="3oM_SC" value="nicht" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nupy" role="1PaTwD">
              <property role="3oM_SC" value="einfach" />
            </node>
            <node concept="3oM_SD" id="4V91Il6nupY" role="1PaTwD">
              <property role="3oM_SC" value="drunter" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4V91Il6nrY4" role="3cqZAp">
          <node concept="3cpWsn" id="4V91Il6nrY5" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="4V91Il6nrY6" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="4V91Il6nrY7" role="33vP2m">
              <node concept="2Sf5sV" id="4V91Il6nrY8" role="2Oq$k0" />
              <node concept="2qgKlT" id="4V91Il6nrY9" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4V91Il6nrYa" role="3cqZAp">
          <node concept="3cpWsn" id="4V91Il6nrYb" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="4V91Il6nrYc" role="1tU5fm" />
            <node concept="2OqwBi" id="4V91Il6nrYd" role="33vP2m">
              <node concept="2qgKlT" id="4V91Il6nrYe" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3FBObrohI14" resolve="indexOf" />
                <node concept="2Sf5sV" id="4V91Il6nrYf" role="37wK5m" />
              </node>
              <node concept="37vLTw" id="4V91Il6nrYg" role="2Oq$k0">
                <ref role="3cqZAo" node="4V91Il6nrY5" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4V91Il6nrYh" role="3cqZAp">
          <node concept="2OqwBi" id="4V91Il6nrYi" role="3clFbG">
            <node concept="2OqwBi" id="4V91Il6nrYj" role="2Oq$k0">
              <node concept="3Tsc0h" id="4V91Il6nrYk" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="4V91Il6nrYl" role="2Oq$k0">
                <ref role="3cqZAo" node="4V91Il6nrY5" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="4V91Il6nrYm" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="4V91Il6nrYn" role="37wK5m">
                <node concept="3cmrfG" id="4V91Il6nrYo" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="4V91Il6nrYp" role="3uHU7B">
                  <ref role="3cqZAo" node="4V91Il6nrYb" resolve="index" />
                </node>
              </node>
              <node concept="2ShNRf" id="4V91Il6nrYq" role="37wK5m">
                <node concept="3zrR0B" id="4V91Il6nrYr" role="2ShVmc">
                  <node concept="3Tqbb2" id="4V91Il6nrYs" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4V91Il6nrYt" role="3cqZAp">
          <node concept="2OqwBi" id="4V91Il6nrYu" role="3clFbG">
            <node concept="2OqwBi" id="4V91Il6nrYv" role="2Oq$k0">
              <node concept="3Tsc0h" id="4V91Il6nrYw" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
              <node concept="37vLTw" id="4V91Il6nrYx" role="2Oq$k0">
                <ref role="3cqZAo" node="4V91Il6nrY5" resolve="boundedContext" />
              </node>
            </node>
            <node concept="liA8E" id="4V91Il6nrYy" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="4V91Il6nrYz" role="37wK5m">
                <node concept="3cmrfG" id="4V91Il6nrY$" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="4V91Il6nrY_" role="3uHU7B">
                  <ref role="3cqZAo" node="4V91Il6nrYb" resolve="index" />
                </node>
              </node>
              <node concept="37vLTw" id="4V91Il6nrYA" role="37wK5m">
                <ref role="3cqZAo" node="4V91Il6nlX2" resolve="flatteningRule" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="4V91Il6mFxG" role="2ZfVeh">
      <node concept="3clFbS" id="4V91Il6mFxH" role="2VODD2">
        <node concept="3cpWs6" id="4V91Il6ni2S" role="3cqZAp">
          <node concept="3X5UdL" id="4V91Il6nhnD" role="3cqZAk">
            <node concept="38Zlrr" id="4V91Il6nhpe" role="3X5Ude" />
            <node concept="3X5Udd" id="4V91Il6nhDR" role="3X5gkp">
              <node concept="21nZrQ" id="4V91Il6nhDQ" role="3X5Uda">
                <ref role="21nZrZ" to="3nll:5QsWOhW3TSM" resolve="Implicit" />
              </node>
              <node concept="3X5gDF" id="4V91Il6ni4f" role="3X5gFO">
                <node concept="2OqwBi" id="4V91Il6niK$" role="3X5gDC">
                  <node concept="2OqwBi" id="4V91Il6mGC8" role="2Oq$k0">
                    <node concept="2qgKlT" id="4V91Il6mGP7" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:4V91Il6n74D" resolve="findImplicitDtoFlattteningRuleFor" />
                      <node concept="2Sf5sV" id="4V91Il6nizl" role="37wK5m" />
                    </node>
                    <node concept="2OqwBi" id="4V91Il6njYz" role="2Oq$k0">
                      <node concept="2Sf5sV" id="4V91Il6njY$" role="2Oq$k0" />
                      <node concept="2qgKlT" id="4V91Il6njY_" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                      </node>
                    </node>
                  </node>
                  <node concept="3w_OXm" id="4V91Il6nj6D" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3X5Udd" id="4V91Il6nhF8" role="3X5gkp">
              <node concept="21nZrQ" id="4V91Il6nhF9" role="3X5Uda">
                <ref role="21nZrZ" to="3nll:5QsWOhW3TSN" resolve="Explicit" />
              </node>
              <node concept="3X5gDF" id="4V91Il6nigX" role="3X5gFO">
                <node concept="2OqwBi" id="4V91Il6njQf" role="3X5gDC">
                  <node concept="2OqwBi" id="4V91Il6nigY" role="2Oq$k0">
                    <node concept="2qgKlT" id="4V91Il6nih0" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:4V91Il6mZZ3" resolve="findExplicitDtoFlattteningRuleFor" />
                      <node concept="2Sf5sV" id="4V91Il6nixz" role="37wK5m" />
                    </node>
                    <node concept="2OqwBi" id="4V91Il6nk3T" role="2Oq$k0">
                      <node concept="2Sf5sV" id="4V91Il6nk3U" role="2Oq$k0" />
                      <node concept="2qgKlT" id="4V91Il6nk3V" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                      </node>
                    </node>
                  </node>
                  <node concept="3w_OXm" id="4V91Il6njU0" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="51Z40VwPXXt">
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="CommandContainer_ToggleForAggregateDeclaration_Intention" />
    <ref role="2ZfgGC" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="38BcoT" id="51Z40VwPXXu" role="3dlsAV">
      <node concept="10P_77" id="51Z40VwPYge" role="3ddBve" />
      <node concept="3clFbS" id="51Z40VwPXXw" role="2VODD2">
        <node concept="3clFbF" id="51Z40VwPYrq" role="3cqZAp">
          <node concept="2ShNRf" id="51Z40VwPYro" role="3clFbG">
            <node concept="Tc6Ow" id="51Z40VwPYGr" role="2ShVmc">
              <node concept="10P_77" id="51Z40VwPZ_l" role="HW$YZ" />
              <node concept="3clFbT" id="51Z40VwQ0tS" role="HW$Y0">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="51Z40VwQ0xT" role="HW$Y0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S6ZIM" id="51Z40VwPXXx" role="2ZfVej">
      <node concept="3clFbS" id="51Z40VwPXXy" role="2VODD2">
        <node concept="3clFbF" id="51Z40VwPWqz" role="3cqZAp">
          <node concept="3cpWs3" id="51Z40VwQ0Uq" role="3clFbG">
            <node concept="1eOMI4" id="51Z40VwQ0V9" role="3uHU7B">
              <node concept="3K4zz7" id="51Z40VwQ1rv" role="1eOMHV">
                <node concept="Xl_RD" id="51Z40VwQ1sm" role="3K4E3e">
                  <property role="Xl_RC" value="Add" />
                </node>
                <node concept="Xl_RD" id="51Z40VwQ1tS" role="3K4GZi">
                  <property role="Xl_RC" value="Remove" />
                </node>
                <node concept="38Zlrr" id="51Z40VwQ0VR" role="3K4Cdx" />
              </node>
            </node>
            <node concept="Xl_RD" id="51Z40VwPWqy" role="3uHU7w">
              <property role="Xl_RC" value=" 'for' aggregate declaration" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="51Z40VwPXXz" role="2ZfgGD">
      <node concept="3clFbS" id="51Z40VwPXX$" role="2VODD2">
        <node concept="3clFbJ" id="51Z40VwQ3Or" role="3cqZAp">
          <node concept="3clFbS" id="51Z40VwQ3Ot" role="3clFbx">
            <node concept="3clFbF" id="51Z40VwQ2FS" role="3cqZAp">
              <node concept="2OqwBi" id="51Z40VwQ2Ir" role="3clFbG">
                <node concept="2OqwBi" id="51Z40VwQ2Gf" role="2Oq$k0">
                  <node concept="2Sf5sV" id="51Z40VwQ2FR" role="2Oq$k0" />
                  <node concept="3TrcHB" id="51Z40VwQ2Ht" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                  </node>
                </node>
                <node concept="tyxLq" id="51Z40VwQ31L" role="2OqNvi">
                  <node concept="3clFbT" id="51Z40VwTvYG" role="tz02z">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="51Z40VwQ3VU" role="3cqZAp">
              <node concept="2OqwBi" id="51Z40VwQ4b9" role="3clFbG">
                <node concept="2Sf5sV" id="51Z40VwQ3VT" role="2Oq$k0" />
                <node concept="1OKiuA" id="51Z40VwQ4w8" role="2OqNvi">
                  <node concept="1XNTG" id="51Z40VwQ4wR" role="lBI5i" />
                  <node concept="2TlHUq" id="51Z40VwQ4yd" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:51Z40VwF_aU" resolve="forAggregateBlockId" />
                  </node>
                  <node concept="3cmrfG" id="51Z40VwQ4zC" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="51Z40VwQ3To" role="3cqZAp" />
          </node>
          <node concept="38Zlrr" id="51Z40VwTvK9" role="3clFbw" />
        </node>
        <node concept="3clFbH" id="51Z40VwQ4$n" role="3cqZAp" />
        <node concept="3clFbF" id="51Z40VwQ4DC" role="3cqZAp">
          <node concept="2OqwBi" id="51Z40VwQ4Sk" role="3clFbG">
            <node concept="2OqwBi" id="51Z40VwQ4ET" role="2Oq$k0">
              <node concept="2Sf5sV" id="51Z40VwQ4DB" role="2Oq$k0" />
              <node concept="3TrEf2" id="51Z40VwQ4Gc" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:7x9oRL8vqaW" resolve="aggregateReference" />
              </node>
            </node>
            <node concept="3YRAZt" id="51Z40VwQ58v" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="51Z40VyHR1X" role="3cqZAp">
          <node concept="3clFbS" id="51Z40VyHR1Z" role="3clFbx">
            <node concept="3clFbF" id="51Z40VyHS5Z" role="3cqZAp">
              <node concept="2OqwBi" id="51Z40VyHS92" role="3clFbG">
                <node concept="2Sf5sV" id="51Z40VyHS5Y" role="2Oq$k0" />
                <node concept="2qgKlT" id="51Z40VyHSK2" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:2RbvdOMpYd2" resolve="setName" />
                  <node concept="10Nm6u" id="51Z40VyHSSK" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="51Z40VyHS0G" role="3clFbw">
            <node concept="2OqwBi" id="51Z40VyHS0I" role="3fr31v">
              <node concept="2OqwBi" id="51Z40VyHS0J" role="2Oq$k0">
                <node concept="2Sf5sV" id="51Z40VyHS0K" role="2Oq$k0" />
                <node concept="3TrEf2" id="51Z40VyHS0L" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                </node>
              </node>
              <node concept="2qgKlT" id="51Z40VyHS0M" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:2RbvdOKU7zU" resolve="isNameSet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40Vx7bEd" role="3cqZAp" />
        <node concept="3clFbJ" id="51Z40VwQ6ik" role="3cqZAp">
          <node concept="3clFbS" id="51Z40VwQ6im" role="3clFbx">
            <node concept="3clFbJ" id="51Z40VwJ851" role="3cqZAp">
              <node concept="3clFbS" id="51Z40VwJ852" role="3clFbx">
                <node concept="3clFbF" id="51Z40VwJ853" role="3cqZAp">
                  <node concept="2OqwBi" id="51Z40VwJ854" role="3clFbG">
                    <node concept="2OqwBi" id="51Z40VyHPRF" role="2Oq$k0">
                      <node concept="2Sf5sV" id="51Z40VyHPE_" role="2Oq$k0" />
                      <node concept="3TrEf2" id="51Z40VyHQKq" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                      </node>
                    </node>
                    <node concept="1OKiuA" id="51Z40VwJ856" role="2OqNvi">
                      <node concept="1XNTG" id="51Z40VwQ5SI" role="lBI5i" />
                      <node concept="2TlHUq" id="51Z40VwJ858" role="lGT1i">
                        <ref role="2TlMyj" to="8pak:2RbvdOJ81o1" resolve="nameCellId" />
                      </node>
                      <node concept="3cmrfG" id="51Z40VwJ859" role="3dN3m$">
                        <property role="3cmrfH" value="-1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="51Z40VwJ85a" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="51Z40VwJ85b" role="3clFbw">
                <node concept="2Sf5sV" id="51Z40VwQ5JQ" role="2Oq$k0" />
                <node concept="2qgKlT" id="51Z40VwJ85d" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:1LTEHzOfCt" resolve="isCommandHandler" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="51Z40VwJ85e" role="3cqZAp">
              <node concept="2OqwBi" id="51Z40VwJ85f" role="3clFbG">
                <node concept="2Sf5sV" id="51Z40VwQ5Ug" role="2Oq$k0" />
                <node concept="1OKiuA" id="51Z40VwJ85h" role="2OqNvi">
                  <node concept="1XNTG" id="51Z40VwQ5Tv" role="lBI5i" />
                  <node concept="2TlHUq" id="51Z40VwJ85j" role="lGT1i">
                    <ref role="2TlMyj" to="8pak:6Qa18YGLSVu" resolve="containerTypeCellId" />
                  </node>
                  <node concept="3cmrfG" id="51Z40VwJ85k" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="51Z40VwQ6yx" role="3clFbw">
            <ref role="37wK5l" to="7ztp:5jZDGTfesVy" resolve="isSelectedCellChildOf" />
            <ref role="1Pybhc" to="7ztp:5jZDGTfesU9" resolve="EditorContextUtils" />
            <node concept="1XNTG" id="51Z40VwQ6yy" role="37wK5m" />
            <node concept="Xl_RD" id="51Z40VwQ6yz" role="37wK5m">
              <property role="Xl_RC" value="forAggregateBlockId" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VwTwDB" role="3cqZAp" />
        <node concept="3clFbF" id="51Z40VwTwrU" role="3cqZAp">
          <node concept="2OqwBi" id="51Z40VwTwrV" role="3clFbG">
            <node concept="2OqwBi" id="51Z40VwTwrW" role="2Oq$k0">
              <node concept="2Sf5sV" id="51Z40VwTwrX" role="2Oq$k0" />
              <node concept="3TrcHB" id="51Z40VwTwrY" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
              </node>
            </node>
            <node concept="tyxLq" id="51Z40VwTwrZ" role="2OqNvi">
              <node concept="3clFbT" id="51Z40VwTwN6" role="tz02z" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="51Z40VwQ1AW" role="2ZfVeh">
      <node concept="3clFbS" id="51Z40VwQ1AX" role="2VODD2">
        <node concept="3clFbF" id="51Z40VwQ1J8" role="3cqZAp">
          <node concept="17QLQc" id="51Z40VwQ2yK" role="3clFbG">
            <node concept="38Zlrr" id="51Z40VwQ2Cb" role="3uHU7w" />
            <node concept="2OqwBi" id="51Z40VwQ251" role="3uHU7B">
              <node concept="2Sf5sV" id="51Z40VwQ1J7" role="2Oq$k0" />
              <node concept="3TrcHB" id="51Z40VwQ2q4" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7a9d0UAfGfm">
    <property role="3GE5qa" value="entity" />
    <property role="TrG5h" value="DeriveIdOfEntity" />
    <ref role="2ZfgGC" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
    <node concept="2S6ZIM" id="7a9d0UAfGfn" role="2ZfVej">
      <node concept="3clFbS" id="7a9d0UAfGfo" role="2VODD2">
        <node concept="3clFbF" id="7a9d0UAfGmR" role="3cqZAp">
          <node concept="Xl_RD" id="7a9d0UAfGmQ" role="3clFbG">
            <property role="Xl_RC" value="Create Value Object Identifier" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7a9d0UAfGfp" role="2ZfgGD">
      <node concept="3clFbS" id="7a9d0UAfGfq" role="2VODD2">
        <node concept="3cpWs8" id="7a9d0UAk8U_" role="3cqZAp">
          <node concept="3cpWsn" id="7a9d0UAk8UA" role="3cpWs9">
            <property role="TrG5h" value="idParameter" />
            <node concept="3Tqbb2" id="7a9d0UAk8Ue" role="1tU5fm">
              <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
            </node>
            <node concept="2ShNRf" id="7a9d0UAk8UB" role="33vP2m">
              <node concept="3zrR0B" id="7a9d0UAk8UC" role="2ShVmc">
                <node concept="3Tqbb2" id="7a9d0UAk8UD" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7a9d0UAkahG" role="3cqZAp">
          <node concept="2OqwBi" id="7a9d0UAkbY7" role="3clFbG">
            <node concept="2OqwBi" id="7a9d0UAkb0h" role="2Oq$k0">
              <node concept="37vLTw" id="7a9d0UAkahE" role="2Oq$k0">
                <ref role="3cqZAo" node="7a9d0UAk8UA" resolve="idParameter" />
              </node>
              <node concept="3TrcHB" id="7a9d0UAkbsz" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="tyxLq" id="7a9d0UAkcv5" role="2OqNvi">
              <node concept="Xl_RD" id="7a9d0UAkcvK" role="tz02z">
                <property role="Xl_RC" value="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7a9d0UAk7vs" role="3cqZAp" />
        <node concept="3cpWs8" id="7a9d0UAk4Ww" role="3cqZAp">
          <node concept="3cpWsn" id="7a9d0UAk4Wx" role="3cpWs9">
            <property role="TrG5h" value="idValueObject" />
            <node concept="3Tqbb2" id="7a9d0UAk4W8" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
            </node>
            <node concept="2ShNRf" id="7a9d0UAk4Wy" role="33vP2m">
              <node concept="2fJWfE" id="7a9d0UAk4Wz" role="2ShVmc">
                <node concept="3Tqbb2" id="7a9d0UAk4W$" role="3zrR0E">
                  <ref role="ehGHo" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7a9d0UAfWdz" role="3cqZAp">
          <node concept="2OqwBi" id="7a9d0UAfXDt" role="3clFbG">
            <node concept="2OqwBi" id="7a9d0UAfWui" role="2Oq$k0">
              <node concept="37vLTw" id="7a9d0UAfWdx" role="2Oq$k0">
                <ref role="3cqZAo" node="7a9d0UAk4Wx" resolve="idValueObject" />
              </node>
              <node concept="3TrcHB" id="7a9d0UAfWOm" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="tyxLq" id="7a9d0UAfYhv" role="2OqNvi">
              <node concept="3cpWs3" id="7a9d0UAfYia" role="tz02z">
                <node concept="Xl_RD" id="7a9d0UAfYib" role="3uHU7w">
                  <property role="Xl_RC" value="Id" />
                </node>
                <node concept="2OqwBi" id="7a9d0UAfYic" role="3uHU7B">
                  <node concept="2Sf5sV" id="7a9d0UAfYid" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7a9d0UAfYie" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7a9d0UAkgCH" role="3cqZAp">
          <node concept="2OqwBi" id="7a9d0UAkkJi" role="3clFbG">
            <node concept="2OqwBi" id="7a9d0UAkhov" role="2Oq$k0">
              <node concept="37vLTw" id="7a9d0UAkgCF" role="2Oq$k0">
                <ref role="3cqZAo" node="7a9d0UAk4Wx" resolve="idValueObject" />
              </node>
              <node concept="3Tsc0h" id="7a9d0UAkh_m" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
              </node>
            </node>
            <node concept="TSZUe" id="7a9d0UAknAa" role="2OqNvi">
              <node concept="37vLTw" id="7a9d0UAknO8" role="25WWJ7">
                <ref role="3cqZAo" node="7a9d0UAk8UA" resolve="idParameter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7a9d0UAkgoB" role="3cqZAp" />
        <node concept="3cpWs8" id="7a9d0UAfTQi" role="3cqZAp">
          <node concept="3cpWsn" id="7a9d0UAfTQj" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="7a9d0UAfTPB" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="7a9d0UAfTQk" role="33vP2m">
              <node concept="2Sf5sV" id="7a9d0UAfTQl" role="2Oq$k0" />
              <node concept="2qgKlT" id="7a9d0UAfTQm" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7a9d0UAfTvU" role="3cqZAp">
          <node concept="3cpWsn" id="7a9d0UAfTvV" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="7a9d0UAfTvu" role="1tU5fm" />
            <node concept="2OqwBi" id="7a9d0UAfUew" role="33vP2m">
              <node concept="37vLTw" id="7a9d0UAfU3M" role="2Oq$k0">
                <ref role="3cqZAo" node="7a9d0UAfTQj" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="7a9d0UAfUra" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3FBObrohI14" resolve="indexOf" />
                <node concept="2Sf5sV" id="7a9d0UAfUvO" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7a9d0UAg7Qt" role="3cqZAp">
          <node concept="2OqwBi" id="7a9d0UAgadX" role="3clFbG">
            <node concept="2OqwBi" id="7a9d0UAg83F" role="2Oq$k0">
              <node concept="37vLTw" id="7a9d0UAg7Qr" role="2Oq$k0">
                <ref role="3cqZAo" node="7a9d0UAfTQj" resolve="boundedContext" />
              </node>
              <node concept="3Tsc0h" id="7a9d0UAg8iX" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
            </node>
            <node concept="liA8E" id="7a9d0UAgbQY" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="7a9d0UAgbWR" role="37wK5m">
                <ref role="3cqZAo" node="7a9d0UAfTvV" resolve="index" />
              </node>
              <node concept="37vLTw" id="7a9d0UAgcF_" role="37wK5m">
                <ref role="3cqZAo" node="7a9d0UAk4Wx" resolve="idValueObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7a9d0UAgiM3" role="3cqZAp">
          <node concept="2OqwBi" id="7a9d0UAglo9" role="3clFbG">
            <node concept="2OqwBi" id="7a9d0UAgjav" role="2Oq$k0">
              <node concept="37vLTw" id="7a9d0UAgiM1" role="2Oq$k0">
                <ref role="3cqZAo" node="7a9d0UAfTQj" resolve="boundedContext" />
              </node>
              <node concept="3Tsc0h" id="7a9d0UAgjt9" role="2OqNvi">
                <ref role="3TtcxE" to="3nll:4NUTY$DwJke" resolve="components" />
              </node>
            </node>
            <node concept="liA8E" id="7a9d0UAgn4k" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="3cpWs3" id="7a9d0UAgoxS" role="37wK5m">
                <node concept="3cmrfG" id="7a9d0UAgoxW" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="7a9d0UAgnaP" role="3uHU7B">
                  <ref role="3cqZAo" node="7a9d0UAfTvV" resolve="index" />
                </node>
              </node>
              <node concept="2ShNRf" id="7a9d0UAgpqo" role="37wK5m">
                <node concept="3zrR0B" id="7a9d0UAgp$6" role="2ShVmc">
                  <node concept="3Tqbb2" id="7a9d0UAgp$8" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7a9d0UAgdmX" role="3cqZAp">
          <node concept="2OqwBi" id="7a9d0UAgejG" role="3clFbG">
            <node concept="2OqwBi" id="7a9d0UAgdKi" role="2Oq$k0">
              <node concept="2Sf5sV" id="7a9d0UAgdmW" role="2Oq$k0" />
              <node concept="3TrEf2" id="7a9d0UAge9e" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:7fqk8p3V868" resolve="idType" />
              </node>
            </node>
            <node concept="2oxUTD" id="7a9d0UAgeMP" role="2OqNvi">
              <node concept="2OqwBi" id="7a9d0UAggKd" role="2oxUTC">
                <node concept="37vLTw" id="7a9d0UAgeNV" role="2Oq$k0">
                  <ref role="3cqZAo" node="7a9d0UAk4Wx" resolve="idValueObject" />
                </node>
                <node concept="2qgKlT" id="7a9d0UAgh91" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:7a9d0UAgg7_" resolve="toReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7a9d0UAfGxC" role="2ZfVeh">
      <node concept="3clFbS" id="7a9d0UAfGxD" role="2VODD2">
        <node concept="3clFbF" id="7a9d0UAfQYb" role="3cqZAp">
          <node concept="1Wc70l" id="7a9d0UAg2eg" role="3clFbG">
            <node concept="1Wc70l" id="7a9d0UAg4fY" role="3uHU7B">
              <node concept="3fqX7Q" id="7a9d0UAg6QJ" role="3uHU7w">
                <node concept="2OqwBi" id="7a9d0UAg6QL" role="3fr31v">
                  <node concept="2OqwBi" id="7a9d0UAg6QM" role="2Oq$k0">
                    <node concept="2Sf5sV" id="7a9d0UAg6QN" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7a9d0UAg6QO" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7a9d0UAg6QP" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.isBlank()" resolve="isBlank" />
                  </node>
                </node>
              </node>
              <node concept="17QLQc" id="7a9d0UAg3B4" role="3uHU7B">
                <node concept="2OqwBi" id="7a9d0UAg2FV" role="3uHU7B">
                  <node concept="2Sf5sV" id="7a9d0UAg2m5" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7a9d0UAg33X" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="10Nm6u" id="7a9d0UAg3KH" role="3uHU7w" />
              </node>
            </node>
            <node concept="3fqX7Q" id="7a9d0UAfQNn" role="3uHU7w">
              <node concept="2OqwBi" id="7a9d0UAfQNp" role="3fr31v">
                <property role="hSjvv" value="true" />
                <node concept="2OqwBi" id="7a9d0UAfQNq" role="2Oq$k0">
                  <property role="hSjvv" value="true" />
                  <node concept="2OqwBi" id="7a9d0UAfQNr" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="2Sf5sV" id="7a9d0UAfQNs" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7a9d0UAfQNt" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="7a9d0UAfQNu" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
                  </node>
                </node>
                <node concept="2HwmR7" id="7a9d0UAfQNv" role="2OqNvi">
                  <node concept="1bVj0M" id="7a9d0UAfQNw" role="23t8la">
                    <property role="3yWfEV" value="true" />
                    <node concept="3clFbS" id="7a9d0UAfQNx" role="1bW5cS">
                      <node concept="3clFbF" id="7a9d0UAfQNy" role="3cqZAp">
                        <node concept="1Wc70l" id="7a9d0UAfQNz" role="3clFbG">
                          <node concept="2OqwBi" id="7a9d0UAfQN$" role="3uHU7w">
                            <node concept="2OqwBi" id="7a9d0UAfQN_" role="2Oq$k0">
                              <node concept="37vLTw" id="7a9d0UAfQNA" role="2Oq$k0">
                                <ref role="3cqZAo" node="7a9d0UAfQNN" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="7a9d0UAfQNB" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7a9d0UAfQNC" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                              <node concept="3cpWs3" id="7a9d0UAfQND" role="37wK5m">
                                <node concept="Xl_RD" id="7a9d0UAfQNE" role="3uHU7w">
                                  <property role="Xl_RC" value="Id" />
                                </node>
                                <node concept="2OqwBi" id="7a9d0UAfQNF" role="3uHU7B">
                                  <node concept="2Sf5sV" id="7a9d0UAfQNG" role="2Oq$k0" />
                                  <node concept="3TrcHB" id="7a9d0UAfQNH" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="17QLQc" id="7a9d0UAfQNI" role="3uHU7B">
                            <node concept="2OqwBi" id="7a9d0UAfQNJ" role="3uHU7B">
                              <node concept="37vLTw" id="7a9d0UAfQNK" role="2Oq$k0">
                                <ref role="3cqZAo" node="7a9d0UAfQNN" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="7a9d0UAfQNL" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="10Nm6u" id="7a9d0UAfQNM" role="3uHU7w" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7a9d0UAfQNN" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7a9d0UAfQNO" role="1tU5fm" />
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
</model>

