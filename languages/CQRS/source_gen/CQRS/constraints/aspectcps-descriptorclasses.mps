<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f7c85d6(checkpoints/CQRS.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="ldtt" ref="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
    <import index="4d66" ref="r:960662d9-c1ee-48af-b5a5-518d2ac1ca55(CQRS.helper)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="sx7w" ref="r:dc830b23-b722-4fd1-8178-0431aafe57ef(CQRS.behavior)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="7ztp" ref="r:3eb3aafd-620b-4947-940a-c9f6d272b651(CQRS.util)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1173996401517" name="jetbrains.mps.baseLanguageInternal.structure.InternalNewExpression" flags="nn" index="1nCR9W">
        <property id="1173996588177" name="fqClassName" index="1nD$Q0" />
        <child id="1179332974947" name="type" index="2lIhxL" />
      </concept>
      <concept id="4927083583736784422" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToSingleConstantExpression" flags="ng" index="1BaE9c">
        <property id="3566113306135792467" name="baseContainerName" index="1ouuDV" />
        <property id="4927083583736815155" name="uniqueFieldName" index="1BaxDp" />
        <child id="4927083583736819744" name="expression" index="1Bazha" />
      </concept>
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
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
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
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
      </concept>
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
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="aggregates" />
    <property role="TrG5h" value="AggregateRootReference_Constraints" />
    <uo k="s:originTrace" v="n:8348073396882582867" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:8348073396882582867" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8348073396882582867" />
    </node>
    <node concept="3clFbW" id="3" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396882582867" />
      <node concept="3cqZAl" id="6" role="3clF45">
        <uo k="s:originTrace" v="n:8348073396882582867" />
      </node>
      <node concept="3clFbS" id="7" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396882582867" />
        <node concept="XkiVB" id="9" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8348073396882582867" />
          <node concept="1BaE9c" id="a" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="AggregateRootReference$5T" />
            <uo k="s:originTrace" v="n:8348073396882582867" />
            <node concept="2YIFZM" id="b" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8348073396882582867" />
              <node concept="1adDum" id="c" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396882582867" />
              </node>
              <node concept="1adDum" id="d" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396882582867" />
              </node>
              <node concept="1adDum" id="e" role="37wK5m">
                <property role="1adDun" value="0x4f0a0db9ac16f8f2L" />
                <uo k="s:originTrace" v="n:8348073396882582867" />
              </node>
              <node concept="Xl_RD" id="f" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.AggregateRootReference" />
                <uo k="s:originTrace" v="n:8348073396882582867" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396882582867" />
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396882582867" />
    </node>
    <node concept="3clFb_" id="5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:8348073396882582867" />
      <node concept="3Tm1VV" id="g" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396882582867" />
      </node>
      <node concept="3uibUv" id="h" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:8348073396882582867" />
        <node concept="3uibUv" id="k" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396882582867" />
        </node>
        <node concept="3uibUv" id="l" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396882582867" />
        </node>
      </node>
      <node concept="3clFbS" id="i" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396882582867" />
        <node concept="3clFbF" id="m" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396882582867" />
          <node concept="2ShNRf" id="n" role="3clFbG">
            <uo k="s:originTrace" v="n:8348073396882582867" />
            <node concept="YeOm9" id="o" role="2ShVmc">
              <uo k="s:originTrace" v="n:8348073396882582867" />
              <node concept="1Y3b0j" id="p" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:8348073396882582867" />
                <node concept="3Tm1VV" id="q" role="1B3o_S">
                  <uo k="s:originTrace" v="n:8348073396882582867" />
                </node>
                <node concept="3clFb_" id="r" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:8348073396882582867" />
                  <node concept="3Tm1VV" id="u" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8348073396882582867" />
                  </node>
                  <node concept="2AHcQZ" id="v" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:8348073396882582867" />
                  </node>
                  <node concept="3uibUv" id="w" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:8348073396882582867" />
                  </node>
                  <node concept="37vLTG" id="x" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:8348073396882582867" />
                    <node concept="3uibUv" id="$" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:8348073396882582867" />
                    </node>
                    <node concept="2AHcQZ" id="_" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8348073396882582867" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="y" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:8348073396882582867" />
                    <node concept="3uibUv" id="A" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:8348073396882582867" />
                    </node>
                    <node concept="2AHcQZ" id="B" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:8348073396882582867" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="z" role="3clF47">
                    <uo k="s:originTrace" v="n:8348073396882582867" />
                    <node concept="3cpWs6" id="C" role="3cqZAp">
                      <uo k="s:originTrace" v="n:8348073396882582867" />
                      <node concept="2YIFZM" id="D" role="3cqZAk">
                        <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
                        <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                        <uo k="s:originTrace" v="n:3290140704868409115" />
                        <node concept="35c_gC" id="E" role="37wK5m">
                          <ref role="35c_gD" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                          <uo k="s:originTrace" v="n:3290140704868409115" />
                        </node>
                        <node concept="2ShNRf" id="F" role="37wK5m">
                          <uo k="s:originTrace" v="n:3290140704868409115" />
                          <node concept="1pGfFk" id="G" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:3290140704868409115" />
                            <node concept="Xl_RD" id="H" role="37wK5m">
                              <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                              <uo k="s:originTrace" v="n:3290140704868409115" />
                            </node>
                            <node concept="Xl_RD" id="I" role="37wK5m">
                              <property role="Xl_RC" value="3290140704868409115" />
                              <uo k="s:originTrace" v="n:3290140704868409115" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="s" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396882582867" />
                </node>
                <node concept="3uibUv" id="t" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396882582867" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8348073396882582867" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="J">
    <property role="3GE5qa" value="aggregateRepository" />
    <property role="TrG5h" value="AggregateRootRepository_Constraints" />
    <uo k="s:originTrace" v="n:189280670441538093" />
    <node concept="3Tm1VV" id="K" role="1B3o_S">
      <uo k="s:originTrace" v="n:189280670441538093" />
    </node>
    <node concept="3uibUv" id="L" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:189280670441538093" />
    </node>
    <node concept="3clFbW" id="M" role="jymVt">
      <uo k="s:originTrace" v="n:189280670441538093" />
      <node concept="3cqZAl" id="O" role="3clF45">
        <uo k="s:originTrace" v="n:189280670441538093" />
      </node>
      <node concept="3clFbS" id="P" role="3clF47">
        <uo k="s:originTrace" v="n:189280670441538093" />
        <node concept="XkiVB" id="R" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:189280670441538093" />
          <node concept="1BaE9c" id="S" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="AggregateRootRepository$qW" />
            <uo k="s:originTrace" v="n:189280670441538093" />
            <node concept="2YIFZM" id="T" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:189280670441538093" />
              <node concept="1adDum" id="U" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:189280670441538093" />
              </node>
              <node concept="1adDum" id="V" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:189280670441538093" />
              </node>
              <node concept="1adDum" id="W" role="37wK5m">
                <property role="1adDun" value="0x73da5086441fb19dL" />
                <uo k="s:originTrace" v="n:189280670441538093" />
              </node>
              <node concept="Xl_RD" id="X" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.AggregateRootRepository" />
                <uo k="s:originTrace" v="n:189280670441538093" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Q" role="1B3o_S">
        <uo k="s:originTrace" v="n:189280670441538093" />
      </node>
    </node>
    <node concept="2tJIrI" id="N" role="jymVt">
      <uo k="s:originTrace" v="n:189280670441538093" />
    </node>
  </node>
  <node concept="312cEu" id="Y">
    <property role="3GE5qa" value="aggregates" />
    <property role="TrG5h" value="AggregateRoot_Constraints" />
    <uo k="s:originTrace" v="n:1153415945949424844" />
    <node concept="3Tm1VV" id="Z" role="1B3o_S">
      <uo k="s:originTrace" v="n:1153415945949424844" />
    </node>
    <node concept="3uibUv" id="10" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1153415945949424844" />
    </node>
    <node concept="3clFbW" id="11" role="jymVt">
      <uo k="s:originTrace" v="n:1153415945949424844" />
      <node concept="3cqZAl" id="1a" role="3clF45">
        <uo k="s:originTrace" v="n:1153415945949424844" />
      </node>
      <node concept="3clFbS" id="1b" role="3clF47">
        <uo k="s:originTrace" v="n:1153415945949424844" />
        <node concept="XkiVB" id="1d" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1153415945949424844" />
          <node concept="1BaE9c" id="1e" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="AggregateRoot$Q_" />
            <uo k="s:originTrace" v="n:1153415945949424844" />
            <node concept="2YIFZM" id="1f" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1153415945949424844" />
              <node concept="1adDum" id="1g" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:1153415945949424844" />
              </node>
              <node concept="1adDum" id="1h" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:1153415945949424844" />
              </node>
              <node concept="1adDum" id="1i" role="37wK5m">
                <property role="1adDun" value="0x4cfae7e929829c99L" />
                <uo k="s:originTrace" v="n:1153415945949424844" />
              </node>
              <node concept="Xl_RD" id="1j" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.AggregateRoot" />
                <uo k="s:originTrace" v="n:1153415945949424844" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1c" role="1B3o_S">
        <uo k="s:originTrace" v="n:1153415945949424844" />
      </node>
    </node>
    <node concept="2tJIrI" id="12" role="jymVt">
      <uo k="s:originTrace" v="n:1153415945949424844" />
    </node>
    <node concept="3clFb_" id="13" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:1153415945949424844" />
      <node concept="3Tm1VV" id="1k" role="1B3o_S">
        <uo k="s:originTrace" v="n:1153415945949424844" />
      </node>
      <node concept="3uibUv" id="1l" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:1153415945949424844" />
        <node concept="3uibUv" id="1o" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:1153415945949424844" />
        </node>
        <node concept="3uibUv" id="1p" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1153415945949424844" />
        </node>
      </node>
      <node concept="3clFbS" id="1m" role="3clF47">
        <uo k="s:originTrace" v="n:1153415945949424844" />
        <node concept="3clFbF" id="1q" role="3cqZAp">
          <uo k="s:originTrace" v="n:1153415945949424844" />
          <node concept="2ShNRf" id="1r" role="3clFbG">
            <uo k="s:originTrace" v="n:1153415945949424844" />
            <node concept="YeOm9" id="1s" role="2ShVmc">
              <uo k="s:originTrace" v="n:1153415945949424844" />
              <node concept="1Y3b0j" id="1t" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:1153415945949424844" />
                <node concept="3Tm1VV" id="1u" role="1B3o_S">
                  <uo k="s:originTrace" v="n:1153415945949424844" />
                </node>
                <node concept="3clFb_" id="1v" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:1153415945949424844" />
                  <node concept="3Tm1VV" id="1y" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1153415945949424844" />
                  </node>
                  <node concept="2AHcQZ" id="1z" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:1153415945949424844" />
                  </node>
                  <node concept="3uibUv" id="1$" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:1153415945949424844" />
                  </node>
                  <node concept="37vLTG" id="1_" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:1153415945949424844" />
                    <node concept="3uibUv" id="1C" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:1153415945949424844" />
                    </node>
                    <node concept="2AHcQZ" id="1D" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:1153415945949424844" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="1A" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:1153415945949424844" />
                    <node concept="3uibUv" id="1E" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:1153415945949424844" />
                    </node>
                    <node concept="2AHcQZ" id="1F" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:1153415945949424844" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1B" role="3clF47">
                    <uo k="s:originTrace" v="n:1153415945949424844" />
                    <node concept="3cpWs6" id="1G" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1153415945949424844" />
                      <node concept="2ShNRf" id="1H" role="3cqZAk">
                        <uo k="s:originTrace" v="n:8348073396882582879" />
                        <node concept="YeOm9" id="1I" role="2ShVmc">
                          <uo k="s:originTrace" v="n:8348073396882582879" />
                          <node concept="1Y3b0j" id="1J" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                            <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                            <uo k="s:originTrace" v="n:8348073396882582879" />
                            <node concept="3Tm1VV" id="1K" role="1B3o_S">
                              <uo k="s:originTrace" v="n:8348073396882582879" />
                            </node>
                            <node concept="3clFb_" id="1L" role="jymVt">
                              <property role="TrG5h" value="getSearchScopeValidatorNode" />
                              <uo k="s:originTrace" v="n:8348073396882582879" />
                              <node concept="3Tm1VV" id="1N" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8348073396882582879" />
                              </node>
                              <node concept="3uibUv" id="1O" role="3clF45">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                <uo k="s:originTrace" v="n:8348073396882582879" />
                              </node>
                              <node concept="3clFbS" id="1P" role="3clF47">
                                <uo k="s:originTrace" v="n:8348073396882582879" />
                                <node concept="3cpWs6" id="1R" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396882582879" />
                                  <node concept="2ShNRf" id="1S" role="3cqZAk">
                                    <uo k="s:originTrace" v="n:8348073396882582879" />
                                    <node concept="1pGfFk" id="1T" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8348073396882582879" />
                                      <node concept="Xl_RD" id="1U" role="37wK5m">
                                        <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                                        <uo k="s:originTrace" v="n:8348073396882582879" />
                                      </node>
                                      <node concept="Xl_RD" id="1V" role="37wK5m">
                                        <property role="Xl_RC" value="8348073396882582879" />
                                        <uo k="s:originTrace" v="n:8348073396882582879" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="1Q" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8348073396882582879" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="1M" role="jymVt">
                              <property role="TrG5h" value="createScope" />
                              <uo k="s:originTrace" v="n:8348073396882582879" />
                              <node concept="3Tm1VV" id="1W" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8348073396882582879" />
                              </node>
                              <node concept="3uibUv" id="1X" role="3clF45">
                                <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                <uo k="s:originTrace" v="n:8348073396882582879" />
                              </node>
                              <node concept="37vLTG" id="1Y" role="3clF46">
                                <property role="TrG5h" value="_context" />
                                <property role="3TUv4t" value="true" />
                                <uo k="s:originTrace" v="n:8348073396882582879" />
                                <node concept="3uibUv" id="21" role="1tU5fm">
                                  <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                  <uo k="s:originTrace" v="n:8348073396882582879" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="1Z" role="3clF47">
                                <uo k="s:originTrace" v="n:8348073396882582879" />
                                <node concept="3cpWs8" id="22" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396882586223" />
                                  <node concept="3cpWsn" id="2h" role="3cpWs9">
                                    <property role="TrG5h" value="component" />
                                    <uo k="s:originTrace" v="n:8348073396882586224" />
                                    <node concept="3Tqbb2" id="2i" role="1tU5fm">
                                      <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                      <uo k="s:originTrace" v="n:8348073396882586225" />
                                    </node>
                                    <node concept="2OqwBi" id="2j" role="33vP2m">
                                      <uo k="s:originTrace" v="n:8348073396882586226" />
                                      <node concept="1DoJHT" id="2k" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getContextNode" />
                                        <uo k="s:originTrace" v="n:8348073396882586227" />
                                        <node concept="3uibUv" id="2m" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="2n" role="1EMhIo">
                                          <ref role="3cqZAo" node="1Y" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="2Xjw5R" id="2l" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:8348073396882586228" />
                                        <node concept="1xMEDy" id="2o" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:8348073396882586229" />
                                          <node concept="chp4Y" id="2q" role="ri$Ld">
                                            <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                            <uo k="s:originTrace" v="n:8348073396882586230" />
                                          </node>
                                        </node>
                                        <node concept="1xIGOp" id="2p" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:8348073396882586231" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="23" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:1502909481148440489" />
                                </node>
                                <node concept="Jncv_" id="24" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:7fqk8p43ygY" resolve="Command" />
                                  <uo k="s:originTrace" v="n:5501684678931845122" />
                                  <node concept="37vLTw" id="2r" role="JncvB">
                                    <ref role="3cqZAo" node="2h" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678931845525" />
                                  </node>
                                  <node concept="3clFbS" id="2s" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678931845126" />
                                    <node concept="3cpWs6" id="2u" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:1502909481148428016" />
                                      <node concept="2OqwBi" id="2v" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:1502909481148438933" />
                                        <node concept="Xjq3P" id="2w" role="2Oq$k0">
                                          <ref role="1HBi2w" node="Y" resolve="AggregateRoot_Constraints" />
                                          <uo k="s:originTrace" v="n:1502909481148437758" />
                                        </node>
                                        <node concept="liA8E" id="2x" role="2OqNvi">
                                          <ref role="37wK5l" node="17" resolve="_additional_provideCommandScope" />
                                          <uo k="s:originTrace" v="n:1502909481148439457" />
                                          <node concept="Jnkvi" id="2y" role="37wK5m">
                                            <ref role="1M0zk5" node="2t" resolve="command" />
                                            <uo k="s:originTrace" v="n:5501684678931845994" />
                                          </node>
                                          <node concept="1DoJHT" id="2z" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:1502909481148442467" />
                                            <node concept="3uibUv" id="2$" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="2_" role="1EMhIo">
                                              <ref role="3cqZAo" node="1Y" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="2t" role="JncvA">
                                    <property role="TrG5h" value="command" />
                                    <uo k="s:originTrace" v="n:5501684678931845128" />
                                    <node concept="2jxLKc" id="2A" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678931845129" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="25" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678931843324" />
                                </node>
                                <node concept="Jncv_" id="26" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
                                  <uo k="s:originTrace" v="n:5501684678926891235" />
                                  <node concept="37vLTw" id="2B" role="JncvB">
                                    <ref role="3cqZAo" node="2h" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678926891435" />
                                  </node>
                                  <node concept="3clFbS" id="2C" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678926891239" />
                                    <node concept="3cpWs6" id="2E" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:189280670438488467" />
                                      <node concept="2OqwBi" id="2F" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:189280670438489607" />
                                        <node concept="Xjq3P" id="2G" role="2Oq$k0">
                                          <ref role="1HBi2w" node="Y" resolve="AggregateRoot_Constraints" />
                                          <uo k="s:originTrace" v="n:189280670438488594" />
                                        </node>
                                        <node concept="liA8E" id="2H" role="2OqNvi">
                                          <ref role="37wK5l" node="14" resolve="_additional_provideAggregateRepositoryScope" />
                                          <uo k="s:originTrace" v="n:189280670438489856" />
                                          <node concept="Jnkvi" id="2I" role="37wK5m">
                                            <ref role="1M0zk5" node="2D" resolve="repository" />
                                            <uo k="s:originTrace" v="n:5501684678926893680" />
                                          </node>
                                          <node concept="1DoJHT" id="2J" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:5501684678926893252" />
                                            <node concept="3uibUv" id="2K" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="2L" role="1EMhIo">
                                              <ref role="3cqZAo" node="1Y" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="2D" role="JncvA">
                                    <property role="TrG5h" value="repository" />
                                    <uo k="s:originTrace" v="n:5501684678926891241" />
                                    <node concept="2jxLKc" id="2M" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678926891242" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="27" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678926890944" />
                                </node>
                                <node concept="Jncv_" id="28" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                                  <uo k="s:originTrace" v="n:5501684678926894249" />
                                  <node concept="37vLTw" id="2N" role="JncvB">
                                    <ref role="3cqZAo" node="2h" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678926894446" />
                                  </node>
                                  <node concept="3clFbS" id="2O" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678926894253" />
                                    <node concept="3cpWs6" id="2Q" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:189280670438044882" />
                                      <node concept="2OqwBi" id="2R" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:189280670438046252" />
                                        <node concept="Xjq3P" id="2S" role="2Oq$k0">
                                          <ref role="1HBi2w" node="Y" resolve="AggregateRoot_Constraints" />
                                          <uo k="s:originTrace" v="n:189280670438046255" />
                                        </node>
                                        <node concept="liA8E" id="2T" role="2OqNvi">
                                          <ref role="37wK5l" node="15" resolve="_additional_provideEventConatinerScope" />
                                          <uo k="s:originTrace" v="n:189280670438046257" />
                                          <node concept="Jnkvi" id="2U" role="37wK5m">
                                            <ref role="1M0zk5" node="2P" resolve="eventContainer" />
                                            <uo k="s:originTrace" v="n:5501684678926895898" />
                                          </node>
                                          <node concept="1DoJHT" id="2V" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:189280670438050159" />
                                            <node concept="3uibUv" id="2W" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="2X" role="1EMhIo">
                                              <ref role="3cqZAo" node="1Y" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="2P" role="JncvA">
                                    <property role="TrG5h" value="eventContainer" />
                                    <uo k="s:originTrace" v="n:5501684678926894255" />
                                    <node concept="2jxLKc" id="2Y" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678926894256" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="29" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:1502909481148028128" />
                                </node>
                                <node concept="Jncv_" id="2a" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:awtshkmllB" resolve="CommandContainer" />
                                  <uo k="s:originTrace" v="n:5501684678926896290" />
                                  <node concept="37vLTw" id="2Z" role="JncvB">
                                    <ref role="3cqZAo" node="2h" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678926896661" />
                                  </node>
                                  <node concept="3clFbS" id="30" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678926896294" />
                                    <node concept="3cpWs6" id="32" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:189280670438749953" />
                                      <node concept="2OqwBi" id="33" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:189280670438751133" />
                                        <node concept="Xjq3P" id="34" role="2Oq$k0">
                                          <ref role="1HBi2w" node="Y" resolve="AggregateRoot_Constraints" />
                                          <uo k="s:originTrace" v="n:189280670438750107" />
                                        </node>
                                        <node concept="liA8E" id="35" role="2OqNvi">
                                          <ref role="37wK5l" node="16" resolve="_additional_provideCommandContainerScope" />
                                          <uo k="s:originTrace" v="n:189280670438751395" />
                                          <node concept="Jnkvi" id="36" role="37wK5m">
                                            <ref role="1M0zk5" node="31" resolve="commandContainer" />
                                            <uo k="s:originTrace" v="n:5501684678926898442" />
                                          </node>
                                          <node concept="1DoJHT" id="37" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:189280670438752020" />
                                            <node concept="3uibUv" id="39" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="3a" role="1EMhIo">
                                              <ref role="3cqZAo" node="1Y" resolve="_context" />
                                            </node>
                                          </node>
                                          <node concept="1DoJHT" id="38" role="37wK5m">
                                            <property role="1Dpdpm" value="getContainmentLink" />
                                            <uo k="s:originTrace" v="n:4421886450461478203" />
                                            <node concept="3uibUv" id="3b" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="3c" role="1EMhIo">
                                              <ref role="3cqZAo" node="1Y" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="31" role="JncvA">
                                    <property role="TrG5h" value="commandContainer" />
                                    <uo k="s:originTrace" v="n:5501684678926896296" />
                                    <node concept="2jxLKc" id="3d" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678926896297" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="2b" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678932444395" />
                                </node>
                                <node concept="Jncv_" id="2c" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                                  <uo k="s:originTrace" v="n:5501684678932444731" />
                                  <node concept="37vLTw" id="3e" role="JncvB">
                                    <ref role="3cqZAo" node="2h" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678932444912" />
                                  </node>
                                  <node concept="3clFbS" id="3f" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678932444735" />
                                    <node concept="3cpWs6" id="3h" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:5501684678933052368" />
                                      <node concept="2OqwBi" id="3i" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:5501684678933054048" />
                                        <node concept="Xjq3P" id="3j" role="2Oq$k0">
                                          <ref role="1HBi2w" node="Y" resolve="AggregateRoot_Constraints" />
                                          <uo k="s:originTrace" v="n:5501684678933052796" />
                                        </node>
                                        <node concept="liA8E" id="3k" role="2OqNvi">
                                          <ref role="37wK5l" node="18" resolve="_additional_provideDtoScope" />
                                          <uo k="s:originTrace" v="n:5501684678933054336" />
                                          <node concept="Jnkvi" id="3l" role="37wK5m">
                                            <ref role="1M0zk5" node="3g" resolve="dto" />
                                            <uo k="s:originTrace" v="n:5501684678933054465" />
                                          </node>
                                          <node concept="1DoJHT" id="3m" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:5501684678933054726" />
                                            <node concept="3uibUv" id="3n" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="3o" role="1EMhIo">
                                              <ref role="3cqZAo" node="1Y" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="3g" role="JncvA">
                                    <property role="TrG5h" value="dto" />
                                    <uo k="s:originTrace" v="n:5501684678932444737" />
                                    <node concept="2jxLKc" id="3p" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678932444738" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="2d" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:4394792474634170575" />
                                </node>
                                <node concept="Jncv_" id="2e" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
                                  <uo k="s:originTrace" v="n:4394792474634170728" />
                                  <node concept="37vLTw" id="3q" role="JncvB">
                                    <ref role="3cqZAo" node="2h" resolve="component" />
                                    <uo k="s:originTrace" v="n:4394792474634170729" />
                                  </node>
                                  <node concept="3clFbS" id="3r" role="Jncv$">
                                    <uo k="s:originTrace" v="n:4394792474634170730" />
                                    <node concept="3cpWs6" id="3t" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:4394792474634170731" />
                                      <node concept="2OqwBi" id="3u" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:4394792474634170732" />
                                        <node concept="Xjq3P" id="3v" role="2Oq$k0">
                                          <ref role="1HBi2w" node="Y" resolve="AggregateRoot_Constraints" />
                                          <uo k="s:originTrace" v="n:4394792474634170733" />
                                        </node>
                                        <node concept="liA8E" id="3w" role="2OqNvi">
                                          <ref role="37wK5l" node="19" resolve="_additional_provideDtoFlatteningRuleScope" />
                                          <uo k="s:originTrace" v="n:4394792474634170734" />
                                          <node concept="Jnkvi" id="3x" role="37wK5m">
                                            <ref role="1M0zk5" node="3s" resolve="flatteningRuleContainer" />
                                            <uo k="s:originTrace" v="n:4394792474634170735" />
                                          </node>
                                          <node concept="1DoJHT" id="3y" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:4394792474634170736" />
                                            <node concept="3uibUv" id="3z" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="3$" role="1EMhIo">
                                              <ref role="3cqZAo" node="1Y" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="3s" role="JncvA">
                                    <property role="TrG5h" value="flatteningRuleContainer" />
                                    <uo k="s:originTrace" v="n:4394792474634170737" />
                                    <node concept="2jxLKc" id="3_" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:4394792474634170738" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="2f" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396883513709" />
                                </node>
                                <node concept="3clFbF" id="2g" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678926890417" />
                                  <node concept="2ShNRf" id="3A" role="3clFbG">
                                    <uo k="s:originTrace" v="n:8348073396882583309" />
                                    <node concept="1pGfFk" id="3B" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                      <uo k="s:originTrace" v="n:8348073396882583584" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="20" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8348073396882582879" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="1w" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:1153415945949424844" />
                </node>
                <node concept="3uibUv" id="1x" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:1153415945949424844" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1n" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1153415945949424844" />
      </node>
    </node>
    <node concept="3clFb_" id="14" role="jymVt">
      <property role="TrG5h" value="_additional_provideAggregateRepositoryScope" />
      <uo k="s:originTrace" v="n:189280670438484151" />
      <node concept="3uibUv" id="3C" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:189280670438485167" />
      </node>
      <node concept="3Tm6S6" id="3D" role="1B3o_S">
        <uo k="s:originTrace" v="n:189280670438484154" />
      </node>
      <node concept="3clFbS" id="3E" role="3clF47">
        <uo k="s:originTrace" v="n:189280670438484153" />
        <node concept="3clFbJ" id="3H" role="3cqZAp">
          <uo k="s:originTrace" v="n:189280670438486223" />
          <node concept="3clFbS" id="3K" role="3clFbx">
            <uo k="s:originTrace" v="n:189280670438486225" />
            <node concept="3cpWs8" id="3M" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670438493678" />
              <node concept="3cpWsn" id="3Q" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <uo k="s:originTrace" v="n:189280670438493679" />
                <node concept="3Tqbb2" id="3R" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                  <uo k="s:originTrace" v="n:189280670438493083" />
                </node>
                <node concept="2OqwBi" id="3S" role="33vP2m">
                  <uo k="s:originTrace" v="n:189280670438493680" />
                  <node concept="37vLTw" id="3T" role="2Oq$k0">
                    <ref role="3cqZAo" node="3F" resolve="repository" />
                    <uo k="s:originTrace" v="n:189280670438493681" />
                  </node>
                  <node concept="2qgKlT" id="3U" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:189280670438493682" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3N" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670438528252" />
              <node concept="3cpWsn" id="3V" role="3cpWs9">
                <property role="TrG5h" value="referencedAggregateRoots" />
                <uo k="s:originTrace" v="n:189280670438528253" />
                <node concept="A3Dl8" id="3W" role="1tU5fm">
                  <uo k="s:originTrace" v="n:189280670438527548" />
                  <node concept="3Tqbb2" id="3Y" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                    <uo k="s:originTrace" v="n:189280670438527551" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3X" role="33vP2m">
                  <uo k="s:originTrace" v="n:6783047803565460112" />
                  <node concept="2OqwBi" id="3Z" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:189280670438542446" />
                    <node concept="2OqwBi" id="41" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:189280670438528254" />
                      <node concept="2OqwBi" id="43" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:189280670438528255" />
                        <node concept="37vLTw" id="45" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Q" resolve="boundedContext" />
                          <uo k="s:originTrace" v="n:189280670438528256" />
                        </node>
                        <node concept="2qgKlT" id="46" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:awtshklq0$" resolve="aggregateRootRepositories" />
                          <uo k="s:originTrace" v="n:189280670438528257" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="44" role="2OqNvi">
                        <uo k="s:originTrace" v="n:189280670438528258" />
                        <node concept="1bVj0M" id="47" role="23t8la">
                          <uo k="s:originTrace" v="n:189280670438528259" />
                          <node concept="3clFbS" id="48" role="1bW5cS">
                            <uo k="s:originTrace" v="n:189280670438528260" />
                            <node concept="3clFbF" id="4a" role="3cqZAp">
                              <uo k="s:originTrace" v="n:189280670438528261" />
                              <node concept="3y3z36" id="4b" role="3clFbG">
                                <uo k="s:originTrace" v="n:189280670438528262" />
                                <node concept="37vLTw" id="4c" role="3uHU7w">
                                  <ref role="3cqZAo" node="3F" resolve="repository" />
                                  <uo k="s:originTrace" v="n:189280670438528263" />
                                </node>
                                <node concept="37vLTw" id="4d" role="3uHU7B">
                                  <ref role="3cqZAo" node="49" resolve="it" />
                                  <uo k="s:originTrace" v="n:189280670438528264" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="49" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <uo k="s:originTrace" v="n:189280670438528265" />
                            <node concept="2jxLKc" id="4e" role="1tU5fm">
                              <uo k="s:originTrace" v="n:189280670438528266" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="13MTOL" id="42" role="2OqNvi">
                      <ref role="13MTZf" to="3nll:5SyewC9Zz9D" resolve="aggregateReference" />
                      <uo k="s:originTrace" v="n:189280670438544054" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="40" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                    <uo k="s:originTrace" v="n:6783047803565461542" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3O" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670438545103" />
              <node concept="3cpWsn" id="4f" role="3cpWs9">
                <property role="TrG5h" value="nodes" />
                <uo k="s:originTrace" v="n:189280670438545104" />
                <node concept="A3Dl8" id="4g" role="1tU5fm">
                  <uo k="s:originTrace" v="n:189280670438544961" />
                  <node concept="3Tqbb2" id="4i" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                    <uo k="s:originTrace" v="n:189280670438544964" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4h" role="33vP2m">
                  <uo k="s:originTrace" v="n:189280670438545105" />
                  <node concept="2OqwBi" id="4j" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:189280670438545106" />
                    <node concept="37vLTw" id="4l" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Q" resolve="boundedContext" />
                      <uo k="s:originTrace" v="n:189280670438545107" />
                    </node>
                    <node concept="2qgKlT" id="4m" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                      <uo k="s:originTrace" v="n:189280670438545108" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="4k" role="2OqNvi">
                    <uo k="s:originTrace" v="n:189280670438545109" />
                    <node concept="1bVj0M" id="4n" role="23t8la">
                      <uo k="s:originTrace" v="n:189280670438545110" />
                      <node concept="3clFbS" id="4o" role="1bW5cS">
                        <uo k="s:originTrace" v="n:189280670438545111" />
                        <node concept="3clFbF" id="4q" role="3cqZAp">
                          <uo k="s:originTrace" v="n:189280670438545112" />
                          <node concept="3fqX7Q" id="4r" role="3clFbG">
                            <uo k="s:originTrace" v="n:189280670438545113" />
                            <node concept="2OqwBi" id="4s" role="3fr31v">
                              <uo k="s:originTrace" v="n:189280670438545114" />
                              <node concept="37vLTw" id="4t" role="2Oq$k0">
                                <ref role="3cqZAo" node="3V" resolve="referencedAggregateRoots" />
                                <uo k="s:originTrace" v="n:189280670438545115" />
                              </node>
                              <node concept="3JPx81" id="4u" role="2OqNvi">
                                <uo k="s:originTrace" v="n:189280670438545116" />
                                <node concept="37vLTw" id="4v" role="25WWJ7">
                                  <ref role="3cqZAo" node="4p" resolve="it" />
                                  <uo k="s:originTrace" v="n:189280670438545117" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4p" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:189280670438545118" />
                        <node concept="2jxLKc" id="4w" role="1tU5fm">
                          <uo k="s:originTrace" v="n:189280670438545119" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3P" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670438547453" />
              <node concept="2YIFZM" id="4x" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:189280670438549303" />
                <node concept="37vLTw" id="4y" role="37wK5m">
                  <ref role="3cqZAo" node="4f" resolve="nodes" />
                  <uo k="s:originTrace" v="n:189280670438550038" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3L" role="3clFbw">
            <uo k="s:originTrace" v="n:8484359793606930635" />
            <node concept="37vLTw" id="4z" role="3uHU7w">
              <ref role="3cqZAo" node="3G" resolve="contextNode" />
              <uo k="s:originTrace" v="n:8484359793606931354" />
            </node>
            <node concept="37vLTw" id="4$" role="3uHU7B">
              <ref role="3cqZAo" node="3F" resolve="repository" />
              <uo k="s:originTrace" v="n:8484359793606929310" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3I" role="3cqZAp">
          <uo k="s:originTrace" v="n:189280670438486141" />
        </node>
        <node concept="3clFbF" id="3J" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678926884892" />
          <node concept="2YIFZM" id="4_" role="3clFbG">
            <ref role="37wK5l" to="7ztp:3VGLvhEMgV6" resolve="ofElements" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEMgQj" resolve="ScopeUtils" />
            <uo k="s:originTrace" v="n:4534216578410083133" />
            <node concept="2OqwBi" id="4A" role="37wK5m">
              <uo k="s:originTrace" v="n:4534216578410083874" />
              <node concept="2OqwBi" id="4B" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4534216578410083875" />
                <node concept="37vLTw" id="4D" role="2Oq$k0">
                  <ref role="3cqZAo" node="3F" resolve="repository" />
                  <uo k="s:originTrace" v="n:4534216578410083876" />
                </node>
                <node concept="3TrEf2" id="4E" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:5SyewC9Zz9D" resolve="aggregateReference" />
                  <uo k="s:originTrace" v="n:4534216578410083877" />
                </node>
              </node>
              <node concept="3TrEf2" id="4C" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                <uo k="s:originTrace" v="n:4534216578410083878" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3F" role="3clF46">
        <property role="TrG5h" value="repository" />
        <uo k="s:originTrace" v="n:189280670438485396" />
        <node concept="3Tqbb2" id="4F" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
          <uo k="s:originTrace" v="n:189280670438485493" />
        </node>
      </node>
      <node concept="37vLTG" id="3G" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:189280670438485550" />
        <node concept="3Tqbb2" id="4G" role="1tU5fm">
          <uo k="s:originTrace" v="n:189280670438485619" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="15" role="jymVt">
      <property role="TrG5h" value="_additional_provideEventConatinerScope" />
      <uo k="s:originTrace" v="n:189280670438039190" />
      <node concept="3uibUv" id="4H" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:189280670438039365" />
      </node>
      <node concept="3Tm6S6" id="4I" role="1B3o_S">
        <uo k="s:originTrace" v="n:1502909481139811719" />
      </node>
      <node concept="3clFbS" id="4J" role="3clF47">
        <uo k="s:originTrace" v="n:189280670438039192" />
        <node concept="3clFbJ" id="4M" role="3cqZAp">
          <uo k="s:originTrace" v="n:189280670438082107" />
          <node concept="3clFbS" id="4P" role="3clFbx">
            <uo k="s:originTrace" v="n:189280670438082109" />
            <node concept="3cpWs8" id="4R" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670438097470" />
              <node concept="3cpWsn" id="4V" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <uo k="s:originTrace" v="n:189280670438097471" />
                <node concept="3Tqbb2" id="4W" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                  <uo k="s:originTrace" v="n:189280670438097007" />
                </node>
                <node concept="2OqwBi" id="4X" role="33vP2m">
                  <uo k="s:originTrace" v="n:189280670438097472" />
                  <node concept="37vLTw" id="4Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="4K" resolve="eventContainer" />
                    <uo k="s:originTrace" v="n:189280670438097473" />
                  </node>
                  <node concept="2qgKlT" id="4Z" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:189280670438097474" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4S" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670438041238" />
              <node concept="3cpWsn" id="50" role="3cpWs9">
                <property role="TrG5h" value="referencedAggregateRoots" />
                <uo k="s:originTrace" v="n:189280670438041239" />
                <node concept="A3Dl8" id="51" role="1tU5fm">
                  <uo k="s:originTrace" v="n:189280670438041240" />
                  <node concept="3Tqbb2" id="53" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                    <uo k="s:originTrace" v="n:189280670438041241" />
                  </node>
                </node>
                <node concept="2OqwBi" id="52" role="33vP2m">
                  <uo k="s:originTrace" v="n:1502909481139800025" />
                  <node concept="2OqwBi" id="54" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:189280670438302265" />
                    <node concept="2OqwBi" id="56" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:189280670438041242" />
                      <node concept="2OqwBi" id="58" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:189280670438041243" />
                        <node concept="2qgKlT" id="5a" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:awtshki2N9" resolve="eventContainers" />
                          <uo k="s:originTrace" v="n:189280670438041245" />
                        </node>
                        <node concept="37vLTw" id="5b" role="2Oq$k0">
                          <ref role="3cqZAo" node="4V" resolve="boundedContext" />
                          <uo k="s:originTrace" v="n:189280670438100849" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="59" role="2OqNvi">
                        <uo k="s:originTrace" v="n:189280670438296286" />
                        <node concept="1bVj0M" id="5c" role="23t8la">
                          <uo k="s:originTrace" v="n:189280670438296288" />
                          <node concept="3clFbS" id="5d" role="1bW5cS">
                            <uo k="s:originTrace" v="n:189280670438296289" />
                            <node concept="3clFbF" id="5f" role="3cqZAp">
                              <uo k="s:originTrace" v="n:189280670438297229" />
                              <node concept="3y3z36" id="5g" role="3clFbG">
                                <uo k="s:originTrace" v="n:189280670438298990" />
                                <node concept="37vLTw" id="5h" role="3uHU7B">
                                  <ref role="3cqZAo" node="5e" resolve="it" />
                                  <uo k="s:originTrace" v="n:189280670438297228" />
                                </node>
                                <node concept="37vLTw" id="5i" role="3uHU7w">
                                  <ref role="3cqZAo" node="4K" resolve="eventContainer" />
                                  <uo k="s:originTrace" v="n:5501684678929970901" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="5e" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <uo k="s:originTrace" v="n:189280670438296290" />
                            <node concept="2jxLKc" id="5j" role="1tU5fm">
                              <uo k="s:originTrace" v="n:189280670438296291" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="13MTOL" id="57" role="2OqNvi">
                      <ref role="13MTZf" to="3nll:1jrq3noTPfl" resolve="aggregateReference" />
                      <uo k="s:originTrace" v="n:6783047803572442327" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="55" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                    <uo k="s:originTrace" v="n:1502909481139801396" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4T" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670438041247" />
              <node concept="3cpWsn" id="5k" role="3cpWs9">
                <property role="TrG5h" value="nodes" />
                <uo k="s:originTrace" v="n:189280670438041248" />
                <node concept="A3Dl8" id="5l" role="1tU5fm">
                  <uo k="s:originTrace" v="n:189280670438041249" />
                  <node concept="3Tqbb2" id="5n" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                    <uo k="s:originTrace" v="n:189280670438041250" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5m" role="33vP2m">
                  <uo k="s:originTrace" v="n:189280670438041251" />
                  <node concept="2OqwBi" id="5o" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:189280670438041252" />
                    <node concept="2qgKlT" id="5q" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                      <uo k="s:originTrace" v="n:189280670438041254" />
                    </node>
                    <node concept="37vLTw" id="5r" role="2Oq$k0">
                      <ref role="3cqZAo" node="4V" resolve="boundedContext" />
                      <uo k="s:originTrace" v="n:189280670438104010" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="5p" role="2OqNvi">
                    <uo k="s:originTrace" v="n:189280670438041255" />
                    <node concept="1bVj0M" id="5s" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <uo k="s:originTrace" v="n:189280670438041256" />
                      <node concept="3clFbS" id="5t" role="1bW5cS">
                        <uo k="s:originTrace" v="n:189280670438041257" />
                        <node concept="3clFbF" id="5v" role="3cqZAp">
                          <uo k="s:originTrace" v="n:189280670438041258" />
                          <node concept="22lmx$" id="5w" role="3clFbG">
                            <uo k="s:originTrace" v="n:4421886450476588787" />
                            <node concept="3clFbC" id="5x" role="3uHU7B">
                              <uo k="s:originTrace" v="n:4421886450476601635" />
                              <node concept="37vLTw" id="5z" role="3uHU7w">
                                <ref role="3cqZAo" node="5u" resolve="it" />
                                <uo k="s:originTrace" v="n:4421886450476602371" />
                              </node>
                              <node concept="2OqwBi" id="5$" role="3uHU7B">
                                <uo k="s:originTrace" v="n:4421886450476593505" />
                                <node concept="1PxgMI" id="5_" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <uo k="s:originTrace" v="n:4421886450476591083" />
                                  <node concept="chp4Y" id="5B" role="3oSUPX">
                                    <ref role="cht4Q" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
                                    <uo k="s:originTrace" v="n:4421886450476592103" />
                                  </node>
                                  <node concept="37vLTw" id="5C" role="1m5AlR">
                                    <ref role="3cqZAo" node="4L" resolve="contextNode" />
                                    <uo k="s:originTrace" v="n:4421886450476589473" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="5A" role="2OqNvi">
                                  <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
                                  <uo k="s:originTrace" v="n:4421886450476595136" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="5y" role="3uHU7w">
                              <uo k="s:originTrace" v="n:189280670438106443" />
                              <node concept="2OqwBi" id="5D" role="3fr31v">
                                <uo k="s:originTrace" v="n:189280670438106445" />
                                <node concept="37vLTw" id="5E" role="2Oq$k0">
                                  <ref role="3cqZAo" node="50" resolve="referencedAggregateRoots" />
                                  <uo k="s:originTrace" v="n:189280670438106446" />
                                </node>
                                <node concept="3JPx81" id="5F" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:189280670438106447" />
                                  <node concept="37vLTw" id="5G" role="25WWJ7">
                                    <ref role="3cqZAo" node="5u" resolve="it" />
                                    <uo k="s:originTrace" v="n:189280670438106448" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5u" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:189280670438041263" />
                        <node concept="2jxLKc" id="5H" role="1tU5fm">
                          <uo k="s:originTrace" v="n:189280670438041264" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4U" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670438041265" />
              <node concept="2YIFZM" id="5I" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:189280670438041266" />
                <node concept="37vLTw" id="5J" role="37wK5m">
                  <ref role="3cqZAo" node="5k" resolve="nodes" />
                  <uo k="s:originTrace" v="n:189280670438041267" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4Q" role="3clFbw">
            <uo k="s:originTrace" v="n:5501684678927517722" />
            <node concept="3clFbC" id="5K" role="3uHU7B">
              <uo k="s:originTrace" v="n:1502909481139375510" />
              <node concept="37vLTw" id="5M" role="3uHU7B">
                <ref role="3cqZAo" node="4K" resolve="eventContainer" />
                <uo k="s:originTrace" v="n:1502909481139369440" />
              </node>
              <node concept="37vLTw" id="5N" role="3uHU7w">
                <ref role="3cqZAo" node="4L" resolve="contextNode" />
                <uo k="s:originTrace" v="n:1502909481139376184" />
              </node>
            </node>
            <node concept="17R0WA" id="5L" role="3uHU7w">
              <uo k="s:originTrace" v="n:5501684678930617022" />
              <node concept="359W_D" id="5O" role="3uHU7w">
                <ref role="359W_E" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                <ref role="359W_F" to="3nll:1jrq3noTPfl" resolve="aggregateReference" />
                <uo k="s:originTrace" v="n:5501684678930617707" />
              </node>
              <node concept="2OqwBi" id="5P" role="3uHU7B">
                <uo k="s:originTrace" v="n:5501684678930603084" />
                <node concept="37vLTw" id="5Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="4L" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:5501684678930601633" />
                </node>
                <node concept="2NL2c5" id="5R" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5501684678930604224" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4N" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678926882585" />
        </node>
        <node concept="3clFbF" id="4O" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678926879274" />
          <node concept="2ShNRf" id="5S" role="3clFbG">
            <uo k="s:originTrace" v="n:5501684678926879270" />
            <node concept="1pGfFk" id="5T" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:5501684678926880359" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4K" role="3clF46">
        <property role="TrG5h" value="eventContainer" />
        <uo k="s:originTrace" v="n:189280670438040466" />
        <node concept="3Tqbb2" id="5U" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
          <uo k="s:originTrace" v="n:189280670438040639" />
        </node>
      </node>
      <node concept="37vLTG" id="4L" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:189280670438040732" />
        <node concept="3Tqbb2" id="5V" role="1tU5fm">
          <uo k="s:originTrace" v="n:189280670438040952" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="16" role="jymVt">
      <property role="TrG5h" value="_additional_provideCommandContainerScope" />
      <uo k="s:originTrace" v="n:189280670438743785" />
      <node concept="3uibUv" id="5W" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:189280670438744462" />
      </node>
      <node concept="3Tm6S6" id="5X" role="1B3o_S">
        <uo k="s:originTrace" v="n:189280670438743788" />
      </node>
      <node concept="3clFbS" id="5Y" role="3clF47">
        <uo k="s:originTrace" v="n:189280670438743787" />
        <node concept="3cpWs8" id="62" role="3cqZAp">
          <uo k="s:originTrace" v="n:189280670439140488" />
          <node concept="3cpWsn" id="69" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <uo k="s:originTrace" v="n:189280670439140489" />
            <node concept="3Tqbb2" id="6a" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
              <uo k="s:originTrace" v="n:189280670439140490" />
            </node>
            <node concept="2OqwBi" id="6b" role="33vP2m">
              <uo k="s:originTrace" v="n:189280670439140491" />
              <node concept="37vLTw" id="6c" role="2Oq$k0">
                <ref role="3cqZAo" node="5Z" resolve="commandContainer" />
                <uo k="s:originTrace" v="n:189280670439140492" />
              </node>
              <node concept="2qgKlT" id="6d" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                <uo k="s:originTrace" v="n:189280670439140493" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="63" role="3cqZAp">
          <uo k="s:originTrace" v="n:4421886450463332244" />
        </node>
        <node concept="3clFbJ" id="64" role="3cqZAp">
          <uo k="s:originTrace" v="n:4421886450464270886" />
          <node concept="3clFbS" id="6e" role="3clFbx">
            <uo k="s:originTrace" v="n:4421886450464270888" />
            <node concept="3cpWs8" id="6g" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670439140494" />
              <node concept="3cpWsn" id="6l" role="3cpWs9">
                <property role="TrG5h" value="referencedAggregateRoots" />
                <uo k="s:originTrace" v="n:189280670439140495" />
                <node concept="A3Dl8" id="6m" role="1tU5fm">
                  <uo k="s:originTrace" v="n:189280670439140496" />
                  <node concept="3Tqbb2" id="6o" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                    <uo k="s:originTrace" v="n:189280670439140497" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6n" role="33vP2m">
                  <uo k="s:originTrace" v="n:189280670439140498" />
                  <node concept="2OqwBi" id="6p" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:189280670439140499" />
                    <node concept="2OqwBi" id="6r" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:189280670439140500" />
                      <node concept="37vLTw" id="6t" role="2Oq$k0">
                        <ref role="3cqZAo" node="69" resolve="boundedContext" />
                        <uo k="s:originTrace" v="n:189280670439140501" />
                      </node>
                      <node concept="2qgKlT" id="6u" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:awtshknSQ0" resolve="commandContainers" />
                        <uo k="s:originTrace" v="n:189280670439140502" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="6s" role="2OqNvi">
                      <uo k="s:originTrace" v="n:189280670439140503" />
                      <node concept="1bVj0M" id="6v" role="23t8la">
                        <property role="3yWfEV" value="true" />
                        <uo k="s:originTrace" v="n:189280670439140504" />
                        <node concept="3clFbS" id="6w" role="1bW5cS">
                          <uo k="s:originTrace" v="n:189280670439140505" />
                          <node concept="3clFbF" id="6y" role="3cqZAp">
                            <uo k="s:originTrace" v="n:189280670439140506" />
                            <node concept="1Wc70l" id="6z" role="3clFbG">
                              <uo k="s:originTrace" v="n:4421886450471746943" />
                              <node concept="2OqwBi" id="6$" role="3uHU7w">
                                <uo k="s:originTrace" v="n:4421886450471750154" />
                                <node concept="37vLTw" id="6A" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6x" resolve="it" />
                                  <uo k="s:originTrace" v="n:4421886450471747835" />
                                </node>
                                <node concept="2qgKlT" id="6B" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:51Z40V$BJAY" resolve="isAggregateCommandHandler" />
                                  <uo k="s:originTrace" v="n:4421886450471754623" />
                                </node>
                              </node>
                              <node concept="3y3z36" id="6_" role="3uHU7B">
                                <uo k="s:originTrace" v="n:189280670439140507" />
                                <node concept="37vLTw" id="6C" role="3uHU7B">
                                  <ref role="3cqZAo" node="6x" resolve="it" />
                                  <uo k="s:originTrace" v="n:189280670439140509" />
                                </node>
                                <node concept="37vLTw" id="6D" role="3uHU7w">
                                  <ref role="3cqZAo" node="5Z" resolve="commandContainer" />
                                  <uo k="s:originTrace" v="n:189280670439140508" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6x" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <uo k="s:originTrace" v="n:189280670439140510" />
                          <node concept="2jxLKc" id="6E" role="1tU5fm">
                            <uo k="s:originTrace" v="n:189280670439140511" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="6q" role="2OqNvi">
                    <uo k="s:originTrace" v="n:4421886450471760556" />
                    <node concept="1bVj0M" id="6F" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <uo k="s:originTrace" v="n:4421886450471760558" />
                      <node concept="3clFbS" id="6G" role="1bW5cS">
                        <uo k="s:originTrace" v="n:4421886450471760559" />
                        <node concept="3clFbF" id="6I" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4421886450471760560" />
                          <node concept="2OqwBi" id="6J" role="3clFbG">
                            <uo k="s:originTrace" v="n:4421886450471760561" />
                            <node concept="37vLTw" id="6K" role="2Oq$k0">
                              <ref role="3cqZAo" node="6H" resolve="it" />
                              <uo k="s:originTrace" v="n:4421886450471760562" />
                            </node>
                            <node concept="2qgKlT" id="6L" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:3PtG$LHuKCW" resolve="getReferencedAggregate" />
                              <uo k="s:originTrace" v="n:4421886450471760563" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6H" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:4421886450471760564" />
                        <node concept="2jxLKc" id="6M" role="1tU5fm">
                          <uo k="s:originTrace" v="n:4421886450471760565" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6h" role="3cqZAp">
              <uo k="s:originTrace" v="n:4421886450471713997" />
            </node>
            <node concept="3cpWs8" id="6i" role="3cqZAp">
              <uo k="s:originTrace" v="n:4421886450471801210" />
              <node concept="3cpWsn" id="6N" role="3cpWs9">
                <property role="TrG5h" value="validAggregates" />
                <uo k="s:originTrace" v="n:4421886450471801211" />
                <node concept="A3Dl8" id="6O" role="1tU5fm">
                  <uo k="s:originTrace" v="n:4421886450471800983" />
                  <node concept="3Tqbb2" id="6Q" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                    <uo k="s:originTrace" v="n:4421886450471800986" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6P" role="33vP2m">
                  <uo k="s:originTrace" v="n:4421886450471801212" />
                  <node concept="2OqwBi" id="6R" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:4421886450471801213" />
                    <node concept="37vLTw" id="6T" role="2Oq$k0">
                      <ref role="3cqZAo" node="69" resolve="boundedContext" />
                      <uo k="s:originTrace" v="n:4421886450471801214" />
                    </node>
                    <node concept="2qgKlT" id="6U" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                      <uo k="s:originTrace" v="n:4421886450471801215" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="6S" role="2OqNvi">
                    <uo k="s:originTrace" v="n:4421886450471801216" />
                    <node concept="1bVj0M" id="6V" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <uo k="s:originTrace" v="n:4421886450471801217" />
                      <node concept="3clFbS" id="6W" role="1bW5cS">
                        <uo k="s:originTrace" v="n:4421886450471801218" />
                        <node concept="3clFbF" id="6Y" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4421886450471801219" />
                          <node concept="22lmx$" id="6Z" role="3clFbG">
                            <uo k="s:originTrace" v="n:4421886450471801220" />
                            <node concept="3fqX7Q" id="70" role="3uHU7w">
                              <uo k="s:originTrace" v="n:4421886450471801221" />
                              <node concept="2OqwBi" id="72" role="3fr31v">
                                <uo k="s:originTrace" v="n:4421886450471801222" />
                                <node concept="37vLTw" id="73" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6l" resolve="referencedAggregateRoots" />
                                  <uo k="s:originTrace" v="n:4421886450471801223" />
                                </node>
                                <node concept="3JPx81" id="74" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:4421886450471801224" />
                                  <node concept="37vLTw" id="75" role="25WWJ7">
                                    <ref role="3cqZAo" node="6X" resolve="it" />
                                    <uo k="s:originTrace" v="n:4421886450471801225" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="17R0WA" id="71" role="3uHU7B">
                              <uo k="s:originTrace" v="n:4421886450471801226" />
                              <node concept="2OqwBi" id="76" role="3uHU7B">
                                <uo k="s:originTrace" v="n:4421886450471801227" />
                                <node concept="37vLTw" id="78" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5Z" resolve="commandContainer" />
                                  <uo k="s:originTrace" v="n:4421886450471801228" />
                                </node>
                                <node concept="2qgKlT" id="79" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:3PtG$LHuKCW" resolve="getReferencedAggregate" />
                                  <uo k="s:originTrace" v="n:4421886450471801229" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="77" role="3uHU7w">
                                <ref role="3cqZAo" node="6X" resolve="it" />
                                <uo k="s:originTrace" v="n:4421886450471801230" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6X" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:4421886450471801231" />
                        <node concept="2jxLKc" id="7a" role="1tU5fm">
                          <uo k="s:originTrace" v="n:4421886450471801232" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6j" role="3cqZAp">
              <uo k="s:originTrace" v="n:4421886450471762226" />
            </node>
            <node concept="3cpWs6" id="6k" role="3cqZAp">
              <uo k="s:originTrace" v="n:4421886450464288010" />
              <node concept="2YIFZM" id="7b" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:4421886450471814158" />
                <node concept="37vLTw" id="7c" role="37wK5m">
                  <ref role="3cqZAo" node="6N" resolve="validAggregates" />
                  <uo k="s:originTrace" v="n:4421886450471815591" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6f" role="3clFbw">
            <uo k="s:originTrace" v="n:4421886450468002538" />
            <node concept="17R0WA" id="7d" role="3uHU7w">
              <uo k="s:originTrace" v="n:4421886450468007496" />
              <node concept="37vLTw" id="7f" role="3uHU7B">
                <ref role="3cqZAo" node="61" resolve="link" />
                <uo k="s:originTrace" v="n:4421886450468005216" />
              </node>
              <node concept="359W_D" id="7g" role="3uHU7w">
                <ref role="359W_E" to="3nll:awtshkmllB" resolve="CommandContainer" />
                <ref role="359W_F" to="3nll:7x9oRL8vqaW" resolve="aggregateReference" />
                <uo k="s:originTrace" v="n:4421886450472751301" />
              </node>
            </node>
            <node concept="17R0WA" id="7e" role="3uHU7B">
              <uo k="s:originTrace" v="n:4421886450464280297" />
              <node concept="2OqwBi" id="7h" role="3uHU7B">
                <uo k="s:originTrace" v="n:4421886450464274118" />
                <node concept="37vLTw" id="7j" role="2Oq$k0">
                  <ref role="3cqZAo" node="60" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:4421886450464272046" />
                </node>
                <node concept="2NL2c5" id="7k" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4421886450464275575" />
                </node>
              </node>
              <node concept="359W_D" id="7i" role="3uHU7w">
                <ref role="359W_E" to="3nll:awtshkmllB" resolve="CommandContainer" />
                <ref role="359W_F" to="3nll:7x9oRL8vqaW" resolve="aggregateReference" />
                <uo k="s:originTrace" v="n:4421886450472750148" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="65" role="3cqZAp">
          <uo k="s:originTrace" v="n:4421886450464267901" />
        </node>
        <node concept="3clFbJ" id="66" role="3cqZAp">
          <uo k="s:originTrace" v="n:189280670438745556" />
          <node concept="3clFbS" id="7l" role="3clFbx">
            <uo k="s:originTrace" v="n:189280670438745558" />
            <node concept="3cpWs8" id="7n" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670439140513" />
              <node concept="3cpWsn" id="7p" role="3cpWs9">
                <property role="TrG5h" value="nodes" />
                <uo k="s:originTrace" v="n:189280670439140514" />
                <node concept="A3Dl8" id="7q" role="1tU5fm">
                  <uo k="s:originTrace" v="n:189280670439140515" />
                  <node concept="3Tqbb2" id="7s" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                    <uo k="s:originTrace" v="n:189280670439140516" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7r" role="33vP2m">
                  <uo k="s:originTrace" v="n:189280670439140517" />
                  <node concept="2OqwBi" id="7t" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:189280670439140518" />
                    <node concept="37vLTw" id="7v" role="2Oq$k0">
                      <ref role="3cqZAo" node="69" resolve="boundedContext" />
                      <uo k="s:originTrace" v="n:189280670439140519" />
                    </node>
                    <node concept="2qgKlT" id="7w" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                      <uo k="s:originTrace" v="n:189280670439140520" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="7u" role="2OqNvi">
                    <uo k="s:originTrace" v="n:189280670439140521" />
                    <node concept="1bVj0M" id="7x" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <uo k="s:originTrace" v="n:189280670439140522" />
                      <node concept="3clFbS" id="7y" role="1bW5cS">
                        <uo k="s:originTrace" v="n:189280670439140523" />
                        <node concept="3clFbF" id="7$" role="3cqZAp">
                          <uo k="s:originTrace" v="n:189280670439140524" />
                          <node concept="22lmx$" id="7_" role="3clFbG">
                            <uo k="s:originTrace" v="n:4421886450469866818" />
                            <node concept="3clFbC" id="7A" role="3uHU7B">
                              <uo k="s:originTrace" v="n:4421886450469871633" />
                              <node concept="2OqwBi" id="7C" role="3uHU7w">
                                <uo k="s:originTrace" v="n:4421886450470792858" />
                                <node concept="1PxgMI" id="7E" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <uo k="s:originTrace" v="n:4421886450470787215" />
                                  <node concept="chp4Y" id="7G" role="3oSUPX">
                                    <ref role="cht4Q" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
                                    <uo k="s:originTrace" v="n:4421886450470790634" />
                                  </node>
                                  <node concept="37vLTw" id="7H" role="1m5AlR">
                                    <ref role="3cqZAo" node="60" resolve="contextNode" />
                                    <uo k="s:originTrace" v="n:4421886450469873369" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="7F" role="2OqNvi">
                                  <ref role="3Tt5mk" to="3nll:5$Oa65a7pgL" resolve="aggregate" />
                                  <uo k="s:originTrace" v="n:4421886450470795622" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="7D" role="3uHU7B">
                                <ref role="3cqZAo" node="7z" resolve="it" />
                                <uo k="s:originTrace" v="n:4421886450469869727" />
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="7B" role="3uHU7w">
                              <uo k="s:originTrace" v="n:189280670439140525" />
                              <node concept="2OqwBi" id="7I" role="3fr31v">
                                <uo k="s:originTrace" v="n:189280670439140526" />
                                <node concept="37vLTw" id="7J" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5Z" resolve="commandContainer" />
                                  <uo k="s:originTrace" v="n:189280670439140527" />
                                </node>
                                <node concept="2qgKlT" id="7K" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                                  <uo k="s:originTrace" v="n:4421886450468947090" />
                                  <node concept="37vLTw" id="7L" role="37wK5m">
                                    <ref role="3cqZAo" node="7z" resolve="it" />
                                    <uo k="s:originTrace" v="n:4421886450468948136" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="7z" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:189280670439140530" />
                        <node concept="2jxLKc" id="7M" role="1tU5fm">
                          <uo k="s:originTrace" v="n:189280670439140531" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7o" role="3cqZAp">
              <uo k="s:originTrace" v="n:189280670438944467" />
              <node concept="2YIFZM" id="7N" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:189280670438945320" />
                <node concept="37vLTw" id="7O" role="37wK5m">
                  <ref role="3cqZAo" node="7p" resolve="nodes" />
                  <uo k="s:originTrace" v="n:189280670439211004" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="7m" role="3clFbw">
            <uo k="s:originTrace" v="n:4421886450467077052" />
            <node concept="17R0WA" id="7P" role="3uHU7w">
              <uo k="s:originTrace" v="n:4421886450467092004" />
              <node concept="359W_D" id="7R" role="3uHU7w">
                <ref role="359W_E" to="3nll:awtshkmllB" resolve="CommandContainer" />
                <ref role="359W_F" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
                <uo k="s:originTrace" v="n:4421886450467092969" />
              </node>
              <node concept="2OqwBi" id="7S" role="3uHU7B">
                <uo k="s:originTrace" v="n:4421886450467088038" />
                <node concept="37vLTw" id="7T" role="2Oq$k0">
                  <ref role="3cqZAo" node="60" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:4421886450467084609" />
                </node>
                <node concept="2NL2c5" id="7U" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4421886450467089445" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="7Q" role="3uHU7B">
              <uo k="s:originTrace" v="n:189280670438753886" />
              <node concept="37vLTw" id="7V" role="3uHU7B">
                <ref role="3cqZAo" node="5Z" resolve="commandContainer" />
                <uo k="s:originTrace" v="n:189280670438753123" />
              </node>
              <node concept="37vLTw" id="7W" role="3uHU7w">
                <ref role="3cqZAo" node="60" resolve="contextNode" />
                <uo k="s:originTrace" v="n:189280670438754390" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="67" role="3cqZAp">
          <uo k="s:originTrace" v="n:4152474556124595688" />
        </node>
        <node concept="3clFbF" id="68" role="3cqZAp">
          <uo k="s:originTrace" v="n:4421886450466164772" />
          <node concept="2ShNRf" id="7X" role="3clFbG">
            <uo k="s:originTrace" v="n:4421886450466164768" />
            <node concept="1pGfFk" id="7Y" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:4421886450466166117" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Z" role="3clF46">
        <property role="TrG5h" value="commandContainer" />
        <uo k="s:originTrace" v="n:189280670438745111" />
        <node concept="3Tqbb2" id="7Z" role="1tU5fm">
          <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
          <uo k="s:originTrace" v="n:189280670438745110" />
        </node>
      </node>
      <node concept="37vLTG" id="60" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:189280670438745246" />
        <node concept="3Tqbb2" id="80" role="1tU5fm">
          <uo k="s:originTrace" v="n:189280670438745374" />
        </node>
      </node>
      <node concept="37vLTG" id="61" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:4421886450461478352" />
        <node concept="3uibUv" id="81" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:4421886450461481093" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="17" role="jymVt">
      <property role="TrG5h" value="_additional_provideCommandScope" />
      <uo k="s:originTrace" v="n:1502909481148434284" />
      <node concept="3uibUv" id="82" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:1502909481148435178" />
      </node>
      <node concept="3Tm6S6" id="83" role="1B3o_S">
        <uo k="s:originTrace" v="n:1502909481148434287" />
      </node>
      <node concept="3clFbS" id="84" role="3clF47">
        <uo k="s:originTrace" v="n:1502909481148434286" />
        <node concept="3SKdUt" id="87" role="3cqZAp">
          <uo k="s:originTrace" v="n:1502909481148437054" />
          <node concept="1PaTwC" id="8g" role="1aUNEU">
            <uo k="s:originTrace" v="n:1502909481148437055" />
            <node concept="3oM_SD" id="8h" role="1PaTwD">
              <property role="3oM_SC" value="Aggregate" />
              <uo k="s:originTrace" v="n:1502909481148475524" />
            </node>
            <node concept="3oM_SD" id="8i" role="1PaTwD">
              <property role="3oM_SC" value="Roots" />
              <uo k="s:originTrace" v="n:1502909481148475526" />
            </node>
            <node concept="3oM_SD" id="8j" role="1PaTwD">
              <property role="3oM_SC" value="can" />
              <uo k="s:originTrace" v="n:5501684678931842722" />
            </node>
            <node concept="3oM_SD" id="8k" role="1PaTwD">
              <property role="3oM_SC" value="only" />
              <uo k="s:originTrace" v="n:5501684678931842742" />
            </node>
            <node concept="3oM_SD" id="8l" role="1PaTwD">
              <property role="3oM_SC" value="be" />
              <uo k="s:originTrace" v="n:5501684678931842747" />
            </node>
            <node concept="3oM_SD" id="8m" role="1PaTwD">
              <property role="3oM_SC" value="used" />
              <uo k="s:originTrace" v="n:5501684678931842769" />
            </node>
            <node concept="3oM_SD" id="8n" role="1PaTwD">
              <property role="3oM_SC" value="in" />
              <uo k="s:originTrace" v="n:5501684678931842792" />
            </node>
            <node concept="3oM_SD" id="8o" role="1PaTwD">
              <property role="3oM_SC" value="repositoryReference" />
              <uo k="s:originTrace" v="n:5501684678931842816" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="88" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:5501684678931223878" />
          <node concept="3clFbS" id="8p" role="3clFbx">
            <uo k="s:originTrace" v="n:5501684678931223880" />
            <node concept="3cpWs6" id="8r" role="3cqZAp">
              <uo k="s:originTrace" v="n:5501684678931836256" />
              <node concept="2ShNRf" id="8s" role="3cqZAk">
                <uo k="s:originTrace" v="n:5501684678931836768" />
                <node concept="1pGfFk" id="8t" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                  <uo k="s:originTrace" v="n:5501684678931837643" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="8q" role="3clFbw">
            <uo k="s:originTrace" v="n:5501684678931835048" />
            <node concept="2OqwBi" id="8u" role="3uHU7B">
              <uo k="s:originTrace" v="n:5501684678931228514" />
              <node concept="37vLTw" id="8w" role="2Oq$k0">
                <ref role="3cqZAo" node="86" resolve="contextNode" />
                <uo k="s:originTrace" v="n:5501684678931224550" />
              </node>
              <node concept="2NL2c5" id="8x" role="2OqNvi">
                <uo k="s:originTrace" v="n:5501684678931229490" />
              </node>
            </node>
            <node concept="359W_D" id="8v" role="3uHU7w">
              <ref role="359W_E" to="3nll:7fqk8p43ygY" resolve="Command" />
              <ref role="359W_F" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
              <uo k="s:originTrace" v="n:5501684678931233221" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="89" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678931236966" />
        </node>
        <node concept="3cpWs8" id="8a" role="3cqZAp">
          <uo k="s:originTrace" v="n:1502909481148490590" />
          <node concept="3cpWsn" id="8y" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <uo k="s:originTrace" v="n:1502909481148490591" />
            <node concept="3Tqbb2" id="8z" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
              <uo k="s:originTrace" v="n:1502909481148490323" />
            </node>
            <node concept="2OqwBi" id="8$" role="33vP2m">
              <uo k="s:originTrace" v="n:1502909481148490592" />
              <node concept="37vLTw" id="8_" role="2Oq$k0">
                <ref role="3cqZAo" node="85" resolve="command" />
                <uo k="s:originTrace" v="n:1502909481148490593" />
              </node>
              <node concept="2qgKlT" id="8A" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                <uo k="s:originTrace" v="n:1502909481150486382" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="8b" role="3cqZAp">
          <uo k="s:originTrace" v="n:1502909481148908339" />
        </node>
        <node concept="3SKdUt" id="8c" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578413563884" />
          <node concept="1PaTwC" id="8B" role="1aUNEU">
            <uo k="s:originTrace" v="n:4534216578413563885" />
            <node concept="3oM_SD" id="8C" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
              <uo k="s:originTrace" v="n:4534216578413564738" />
            </node>
            <node concept="3oM_SD" id="8D" role="1PaTwD">
              <property role="3oM_SC" value="Hier" />
              <uo k="s:originTrace" v="n:4534216578413564747" />
            </node>
            <node concept="3oM_SD" id="8E" role="1PaTwD">
              <property role="3oM_SC" value="steht," />
              <uo k="s:originTrace" v="n:4534216578413564750" />
            </node>
            <node concept="3oM_SD" id="8F" role="1PaTwD">
              <property role="3oM_SC" value="wie" />
              <uo k="s:originTrace" v="n:4534216578413564754" />
            </node>
            <node concept="3oM_SD" id="8G" role="1PaTwD">
              <property role="3oM_SC" value="man" />
              <uo k="s:originTrace" v="n:4534216578413564759" />
            </node>
            <node concept="3oM_SD" id="8H" role="1PaTwD">
              <property role="3oM_SC" value="das" />
              <uo k="s:originTrace" v="n:4534216578413564765" />
            </node>
            <node concept="3oM_SD" id="8I" role="1PaTwD">
              <property role="3oM_SC" value="mit" />
              <uo k="s:originTrace" v="n:4534216578413564772" />
            </node>
            <node concept="3oM_SD" id="8J" role="1PaTwD">
              <property role="3oM_SC" value="den" />
              <uo k="s:originTrace" v="n:4534216578413564799" />
            </node>
            <node concept="3oM_SD" id="8K" role="1PaTwD">
              <property role="3oM_SC" value="referenzen" />
              <uo k="s:originTrace" v="n:4534216578413564829" />
            </node>
            <node concept="3oM_SD" id="8L" role="1PaTwD">
              <property role="3oM_SC" value="machen" />
              <uo k="s:originTrace" v="n:4534216578413564839" />
            </node>
            <node concept="3oM_SD" id="8M" role="1PaTwD">
              <property role="3oM_SC" value="kann," />
              <uo k="s:originTrace" v="n:4534216578413564850" />
            </node>
            <node concept="3oM_SD" id="8N" role="1PaTwD">
              <property role="3oM_SC" value="welche" />
              <uo k="s:originTrace" v="n:4534216578413564862" />
            </node>
            <node concept="3oM_SD" id="8O" role="1PaTwD">
              <property role="3oM_SC" value="Aggregate" />
              <uo k="s:originTrace" v="n:4534216578413564875" />
            </node>
            <node concept="3oM_SD" id="8P" role="1PaTwD">
              <property role="3oM_SC" value="man" />
              <uo k="s:originTrace" v="n:4534216578413564889" />
            </node>
            <node concept="3oM_SD" id="8Q" role="1PaTwD">
              <property role="3oM_SC" value="dann" />
              <uo k="s:originTrace" v="n:4534216578413564904" />
            </node>
            <node concept="3oM_SD" id="8R" role="1PaTwD">
              <property role="3oM_SC" value="auch" />
              <uo k="s:originTrace" v="n:4534216578413564920" />
            </node>
            <node concept="3oM_SD" id="8S" role="1PaTwD">
              <property role="3oM_SC" value="verwenden" />
              <uo k="s:originTrace" v="n:4534216578413564937" />
            </node>
            <node concept="3oM_SD" id="8T" role="1PaTwD">
              <property role="3oM_SC" value="kann" />
              <uo k="s:originTrace" v="n:4534216578413564955" />
            </node>
            <node concept="3oM_SD" id="8U" role="1PaTwD">
              <property role="3oM_SC" value="/" />
              <uo k="s:originTrace" v="n:4534216578413564974" />
            </node>
            <node concept="3oM_SD" id="8V" role="1PaTwD">
              <property role="3oM_SC" value="darf" />
              <uo k="s:originTrace" v="n:4534216578413564994" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="8d" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:1502909481148454241" />
          <node concept="3clFbS" id="8W" role="3clFbx">
            <uo k="s:originTrace" v="n:1502909481148454243" />
            <node concept="3cpWs6" id="8Y" role="3cqZAp">
              <uo k="s:originTrace" v="n:5501684678947415889" />
              <node concept="2YIFZM" id="8Z" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:1502909481148468617" />
                <node concept="2OqwBi" id="90" role="37wK5m">
                  <uo k="s:originTrace" v="n:1502909481148904777" />
                  <node concept="37vLTw" id="91" role="2Oq$k0">
                    <ref role="3cqZAo" node="8y" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:1502909481148468618" />
                  </node>
                  <node concept="2qgKlT" id="92" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                    <uo k="s:originTrace" v="n:1502909481148906496" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="8X" role="3clFbw">
            <uo k="s:originTrace" v="n:5501684678947411091" />
            <node concept="2OqwBi" id="93" role="3fr31v">
              <uo k="s:originTrace" v="n:5501684678947411093" />
              <node concept="37vLTw" id="94" role="2Oq$k0">
                <ref role="3cqZAo" node="85" resolve="command" />
                <uo k="s:originTrace" v="n:5501684678947411094" />
              </node>
              <node concept="2qgKlT" id="95" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1jrq3npy$dZ" resolve="isInsideCommandContainer" />
                <uo k="s:originTrace" v="n:5501684678947411095" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="8e" role="3cqZAp">
          <uo k="s:originTrace" v="n:1502909481148910607" />
        </node>
        <node concept="3clFbF" id="8f" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678947421649" />
          <node concept="2YIFZM" id="96" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <uo k="s:originTrace" v="n:1502909481149301621" />
            <node concept="2OqwBi" id="97" role="37wK5m">
              <uo k="s:originTrace" v="n:1502909481149305240" />
              <node concept="2OqwBi" id="98" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1502909481149301622" />
                <node concept="37vLTw" id="9a" role="2Oq$k0">
                  <ref role="3cqZAo" node="8y" resolve="boundedContext" />
                  <uo k="s:originTrace" v="n:1502909481149301623" />
                </node>
                <node concept="2qgKlT" id="9b" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                  <uo k="s:originTrace" v="n:1502909481149301624" />
                </node>
              </node>
              <node concept="3zZkjj" id="99" role="2OqNvi">
                <uo k="s:originTrace" v="n:1502909481149307022" />
                <node concept="1bVj0M" id="9c" role="23t8la">
                  <property role="3yWfEV" value="true" />
                  <uo k="s:originTrace" v="n:1502909481149307024" />
                  <node concept="3clFbS" id="9d" role="1bW5cS">
                    <uo k="s:originTrace" v="n:1502909481149307025" />
                    <node concept="3clFbF" id="9f" role="3cqZAp">
                      <uo k="s:originTrace" v="n:438631690723778482" />
                      <node concept="3fqX7Q" id="9g" role="3clFbG">
                        <uo k="s:originTrace" v="n:438631690723778478" />
                        <node concept="2OqwBi" id="9h" role="3fr31v">
                          <uo k="s:originTrace" v="n:438631690723785890" />
                          <node concept="2OqwBi" id="9i" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:438631690723781674" />
                            <node concept="37vLTw" id="9k" role="2Oq$k0">
                              <ref role="3cqZAo" node="85" resolve="command" />
                              <uo k="s:originTrace" v="n:438631690723779602" />
                            </node>
                            <node concept="2qgKlT" id="9l" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:5$Oa659Yq3n" resolve="getCommandContainer" />
                              <uo k="s:originTrace" v="n:438631690723784518" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="9j" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                            <uo k="s:originTrace" v="n:438631690723788070" />
                            <node concept="37vLTw" id="9m" role="37wK5m">
                              <ref role="3cqZAo" node="9e" resolve="aggregate" />
                              <uo k="s:originTrace" v="n:438631690723788916" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="9e" role="1bW2Oz">
                    <property role="TrG5h" value="aggregate" />
                    <uo k="s:originTrace" v="n:1502909481149307026" />
                    <node concept="2jxLKc" id="9n" role="1tU5fm">
                      <uo k="s:originTrace" v="n:1502909481149307027" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="85" role="3clF46">
        <property role="TrG5h" value="command" />
        <uo k="s:originTrace" v="n:1502909481148435604" />
        <node concept="3Tqbb2" id="9o" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p43ygY" resolve="Command" />
          <uo k="s:originTrace" v="n:1502909481148435746" />
        </node>
      </node>
      <node concept="37vLTG" id="86" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:1502909481148435803" />
        <node concept="3Tqbb2" id="9p" role="1tU5fm">
          <uo k="s:originTrace" v="n:1502909481148435947" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="18" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoScope" />
      <uo k="s:originTrace" v="n:5501684678932451959" />
      <node concept="3uibUv" id="9q" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:5501684678932451964" />
      </node>
      <node concept="3Tm6S6" id="9r" role="1B3o_S">
        <uo k="s:originTrace" v="n:5501684678932451989" />
      </node>
      <node concept="3clFbS" id="9s" role="3clF47">
        <uo k="s:originTrace" v="n:5501684678932451965" />
        <node concept="3clFbJ" id="9v" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:5501684678932451966" />
          <node concept="3clFbS" id="9x" role="3clFbx">
            <uo k="s:originTrace" v="n:5501684678932451967" />
            <node concept="3cpWs8" id="9z" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474641398655" />
              <node concept="3cpWsn" id="9A" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <uo k="s:originTrace" v="n:4394792474641398656" />
                <node concept="3Tqbb2" id="9B" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                  <uo k="s:originTrace" v="n:4394792474641398408" />
                </node>
                <node concept="2OqwBi" id="9C" role="33vP2m">
                  <uo k="s:originTrace" v="n:4394792474641398657" />
                  <node concept="37vLTw" id="9D" role="2Oq$k0">
                    <ref role="3cqZAo" node="9t" resolve="dto" />
                    <uo k="s:originTrace" v="n:4394792474641398658" />
                  </node>
                  <node concept="2qgKlT" id="9E" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641398659" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="9$" role="3cqZAp">
              <uo k="s:originTrace" v="n:5318792986118696850" />
            </node>
            <node concept="3cpWs6" id="9_" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474634073404" />
              <node concept="2YIFZM" id="9F" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:4394792474634075011" />
                <node concept="2OqwBi" id="9G" role="37wK5m">
                  <uo k="s:originTrace" v="n:4394792474634081640" />
                  <node concept="37vLTw" id="9H" role="2Oq$k0">
                    <ref role="3cqZAo" node="9A" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641400519" />
                  </node>
                  <node concept="2qgKlT" id="9I" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                    <uo k="s:originTrace" v="n:5318792986118702073" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="9y" role="3clFbw">
            <uo k="s:originTrace" v="n:5501684678933657153" />
            <node concept="17R0WA" id="9J" role="3uHU7w">
              <uo k="s:originTrace" v="n:5501684678933666630" />
              <node concept="359W_D" id="9L" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                <uo k="s:originTrace" v="n:5501684678933667017" />
              </node>
              <node concept="2OqwBi" id="9M" role="3uHU7B">
                <uo k="s:originTrace" v="n:5501684678933660257" />
                <node concept="37vLTw" id="9N" role="2Oq$k0">
                  <ref role="3cqZAo" node="9u" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:5501684678933659369" />
                </node>
                <node concept="2NL2c5" id="9O" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5501684678933662879" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="9K" role="3uHU7B">
              <uo k="s:originTrace" v="n:5501684678932451983" />
              <node concept="37vLTw" id="9P" role="3uHU7B">
                <ref role="3cqZAo" node="9u" resolve="contextNode" />
                <uo k="s:originTrace" v="n:5501684678932451984" />
              </node>
              <node concept="37vLTw" id="9Q" role="3uHU7w">
                <ref role="3cqZAo" node="9t" resolve="dto" />
                <uo k="s:originTrace" v="n:5501684678932451985" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9w" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678932451986" />
          <node concept="2ShNRf" id="9R" role="3clFbG">
            <uo k="s:originTrace" v="n:5501684678932451987" />
            <node concept="1pGfFk" id="9S" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:5501684678932451988" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9t" role="3clF46">
        <property role="TrG5h" value="dto" />
        <uo k="s:originTrace" v="n:5501684678932451960" />
        <node concept="3Tqbb2" id="9T" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          <uo k="s:originTrace" v="n:5501684678932451961" />
        </node>
      </node>
      <node concept="37vLTG" id="9u" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:5501684678932451962" />
        <node concept="3Tqbb2" id="9U" role="1tU5fm">
          <uo k="s:originTrace" v="n:5501684678932451963" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="19" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoFlatteningRuleScope" />
      <uo k="s:originTrace" v="n:4394792474634157501" />
      <node concept="3uibUv" id="9V" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:4394792474634157506" />
      </node>
      <node concept="3Tm6S6" id="9W" role="1B3o_S">
        <uo k="s:originTrace" v="n:4394792474634157534" />
      </node>
      <node concept="3clFbS" id="9X" role="3clF47">
        <uo k="s:originTrace" v="n:4394792474634157507" />
        <node concept="3cpWs8" id="a0" role="3cqZAp">
          <uo k="s:originTrace" v="n:4343604932409231123" />
          <node concept="3cpWsn" id="a5" role="3cpWs9">
            <property role="TrG5h" value="flatteningRule" />
            <uo k="s:originTrace" v="n:4343604932409231124" />
            <node concept="3Tqbb2" id="a6" role="1tU5fm">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
              <uo k="s:originTrace" v="n:4343604932409231125" />
            </node>
            <node concept="2OqwBi" id="a7" role="33vP2m">
              <uo k="s:originTrace" v="n:4343604932409231126" />
              <node concept="37vLTw" id="a8" role="2Oq$k0">
                <ref role="3cqZAo" node="9Z" resolve="contextNode" />
                <uo k="s:originTrace" v="n:4343604932409231127" />
              </node>
              <node concept="2Xjw5R" id="a9" role="2OqNvi">
                <uo k="s:originTrace" v="n:4343604932409231128" />
                <node concept="1xMEDy" id="aa" role="1xVPHs">
                  <uo k="s:originTrace" v="n:4343604932409231129" />
                  <node concept="chp4Y" id="ac" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    <uo k="s:originTrace" v="n:4343604932409231130" />
                  </node>
                </node>
                <node concept="1xIGOp" id="ab" role="1xVPHs">
                  <uo k="s:originTrace" v="n:4343604932409231131" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="a1" role="3cqZAp">
          <uo k="s:originTrace" v="n:4343604932409229812" />
        </node>
        <node concept="3clFbJ" id="a2" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:4394792474634157508" />
          <node concept="3clFbS" id="ad" role="3clFbx">
            <uo k="s:originTrace" v="n:4394792474634157509" />
            <node concept="3cpWs8" id="af" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474641392806" />
              <node concept="3cpWsn" id="ah" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <uo k="s:originTrace" v="n:4394792474641392807" />
                <node concept="3Tqbb2" id="ai" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                  <uo k="s:originTrace" v="n:4394792474641392604" />
                </node>
                <node concept="2OqwBi" id="aj" role="33vP2m">
                  <uo k="s:originTrace" v="n:4394792474641392808" />
                  <node concept="37vLTw" id="ak" role="2Oq$k0">
                    <ref role="3cqZAo" node="9Y" resolve="flatteningRuleContainer" />
                    <uo k="s:originTrace" v="n:4394792474641392809" />
                  </node>
                  <node concept="2qgKlT" id="al" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641392810" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="ag" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474634157510" />
              <node concept="2YIFZM" id="am" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:4394792474634157511" />
                <node concept="2OqwBi" id="an" role="37wK5m">
                  <uo k="s:originTrace" v="n:4394792474634157512" />
                  <node concept="2qgKlT" id="ao" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yowktH" resolve="findUnusedDtoDerivablesForFlatteningRulesIncluding" />
                    <uo k="s:originTrace" v="n:4394792474634157516" />
                    <node concept="2OqwBi" id="aq" role="37wK5m">
                      <uo k="s:originTrace" v="n:4394792474641390034" />
                      <node concept="37vLTw" id="ar" role="2Oq$k0">
                        <ref role="3cqZAo" node="a5" resolve="flatteningRule" />
                        <uo k="s:originTrace" v="n:4394792474634157518" />
                      </node>
                      <node concept="2qgKlT" id="as" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                        <uo k="s:originTrace" v="n:4394792474641390981" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="ap" role="2Oq$k0">
                    <ref role="3cqZAo" node="ah" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641395499" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="ae" role="3clFbw">
            <uo k="s:originTrace" v="n:4394792474634157521" />
            <node concept="17R0WA" id="at" role="3uHU7w">
              <uo k="s:originTrace" v="n:4394792474634157522" />
              <node concept="359W_D" id="av" role="3uHU7w">
                <ref role="359W_E" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                <uo k="s:originTrace" v="n:4394792474634157523" />
              </node>
              <node concept="2OqwBi" id="aw" role="3uHU7B">
                <uo k="s:originTrace" v="n:4394792474634157524" />
                <node concept="37vLTw" id="ax" role="2Oq$k0">
                  <ref role="3cqZAo" node="9Z" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:4394792474634157525" />
                </node>
                <node concept="2NL2c5" id="ay" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4394792474634157526" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="au" role="3uHU7B">
              <uo k="s:originTrace" v="n:4394792474634157527" />
              <node concept="37vLTw" id="az" role="3uHU7B">
                <ref role="3cqZAo" node="9Z" resolve="contextNode" />
                <uo k="s:originTrace" v="n:4394792474634157528" />
              </node>
              <node concept="37vLTw" id="a$" role="3uHU7w">
                <ref role="3cqZAo" node="a5" resolve="flatteningRule" />
                <uo k="s:originTrace" v="n:4394792474634157529" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="a3" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474634157530" />
        </node>
        <node concept="3clFbF" id="a4" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474634157531" />
          <node concept="2ShNRf" id="a_" role="3clFbG">
            <uo k="s:originTrace" v="n:4394792474634157532" />
            <node concept="1pGfFk" id="aA" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:4394792474634157533" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9Y" role="3clF46">
        <property role="TrG5h" value="flatteningRuleContainer" />
        <uo k="s:originTrace" v="n:4394792474634157502" />
        <node concept="3Tqbb2" id="aB" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
          <uo k="s:originTrace" v="n:4394792474634157503" />
        </node>
      </node>
      <node concept="37vLTG" id="9Z" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:4394792474634157504" />
        <node concept="3Tqbb2" id="aC" role="1tU5fm">
          <uo k="s:originTrace" v="n:4394792474634157505" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="aD">
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="CommandContainer_Constraints" />
    <uo k="s:originTrace" v="n:189280670440611418" />
    <node concept="3Tm1VV" id="aE" role="1B3o_S">
      <uo k="s:originTrace" v="n:189280670440611418" />
    </node>
    <node concept="3uibUv" id="aF" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:189280670440611418" />
    </node>
    <node concept="3clFbW" id="aG" role="jymVt">
      <uo k="s:originTrace" v="n:189280670440611418" />
      <node concept="3cqZAl" id="aK" role="3clF45">
        <uo k="s:originTrace" v="n:189280670440611418" />
      </node>
      <node concept="3clFbS" id="aL" role="3clF47">
        <uo k="s:originTrace" v="n:189280670440611418" />
        <node concept="XkiVB" id="aN" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="1BaE9c" id="aO" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="CommandContainer$3C" />
            <uo k="s:originTrace" v="n:189280670440611418" />
            <node concept="2YIFZM" id="aP" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:189280670440611418" />
              <node concept="1adDum" id="aQ" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:189280670440611418" />
              </node>
              <node concept="1adDum" id="aR" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:189280670440611418" />
              </node>
              <node concept="1adDum" id="aS" role="37wK5m">
                <property role="1adDun" value="0x2a075c454595567L" />
                <uo k="s:originTrace" v="n:189280670440611418" />
              </node>
              <node concept="Xl_RD" id="aT" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.CommandContainer" />
                <uo k="s:originTrace" v="n:189280670440611418" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="aM" role="1B3o_S">
        <uo k="s:originTrace" v="n:189280670440611418" />
      </node>
    </node>
    <node concept="2tJIrI" id="aH" role="jymVt">
      <uo k="s:originTrace" v="n:189280670440611418" />
    </node>
    <node concept="312cEu" id="aI" role="jymVt">
      <property role="TrG5h" value="Type_Property" />
      <uo k="s:originTrace" v="n:189280670440611418" />
      <node concept="3clFbW" id="aU" role="jymVt">
        <uo k="s:originTrace" v="n:189280670440611418" />
        <node concept="3cqZAl" id="aZ" role="3clF45">
          <uo k="s:originTrace" v="n:189280670440611418" />
        </node>
        <node concept="3Tm1VV" id="b0" role="1B3o_S">
          <uo k="s:originTrace" v="n:189280670440611418" />
        </node>
        <node concept="3clFbS" id="b1" role="3clF47">
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="XkiVB" id="b3" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:189280670440611418" />
            <node concept="1BaE9c" id="b4" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="type$SAFo" />
              <uo k="s:originTrace" v="n:189280670440611418" />
              <node concept="2YIFZM" id="b9" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:189280670440611418" />
                <node concept="1adDum" id="ba" role="37wK5m">
                  <property role="1adDun" value="0xfe04f903cef2451dL" />
                  <uo k="s:originTrace" v="n:189280670440611418" />
                </node>
                <node concept="1adDum" id="bb" role="37wK5m">
                  <property role="1adDun" value="0x9401426cad0a8857L" />
                  <uo k="s:originTrace" v="n:189280670440611418" />
                </node>
                <node concept="1adDum" id="bc" role="37wK5m">
                  <property role="1adDun" value="0x2a075c454595567L" />
                  <uo k="s:originTrace" v="n:189280670440611418" />
                </node>
                <node concept="1adDum" id="bd" role="37wK5m">
                  <property role="1adDun" value="0x71e6ab63d0d9fcL" />
                  <uo k="s:originTrace" v="n:189280670440611418" />
                </node>
                <node concept="Xl_RD" id="be" role="37wK5m">
                  <property role="Xl_RC" value="type" />
                  <uo k="s:originTrace" v="n:189280670440611418" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="b5" role="37wK5m">
              <ref role="3cqZAo" node="b2" resolve="container" />
              <uo k="s:originTrace" v="n:189280670440611418" />
            </node>
            <node concept="3clFbT" id="b6" role="37wK5m">
              <uo k="s:originTrace" v="n:189280670440611418" />
            </node>
            <node concept="3clFbT" id="b7" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:189280670440611418" />
            </node>
            <node concept="3clFbT" id="b8" role="37wK5m">
              <uo k="s:originTrace" v="n:189280670440611418" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="b2" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="3uibUv" id="bf" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:189280670440611418" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="aV" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setPropertyValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:189280670440611418" />
        <node concept="3Tm1VV" id="bg" role="1B3o_S">
          <uo k="s:originTrace" v="n:189280670440611418" />
        </node>
        <node concept="3cqZAl" id="bh" role="3clF45">
          <uo k="s:originTrace" v="n:189280670440611418" />
        </node>
        <node concept="37vLTG" id="bi" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="3Tqbb2" id="bm" role="1tU5fm">
            <uo k="s:originTrace" v="n:189280670440611418" />
          </node>
        </node>
        <node concept="37vLTG" id="bj" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="3uibUv" id="bn" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:189280670440611418" />
          </node>
        </node>
        <node concept="2AHcQZ" id="bk" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:189280670440611418" />
        </node>
        <node concept="3clFbS" id="bl" role="3clF47">
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="3clFbF" id="bo" role="3cqZAp">
            <uo k="s:originTrace" v="n:189280670440611418" />
            <node concept="1rXfSq" id="bp" role="3clFbG">
              <ref role="37wK5l" node="aW" resolve="staticSetPropertyValue" />
              <uo k="s:originTrace" v="n:189280670440611418" />
              <node concept="37vLTw" id="bq" role="37wK5m">
                <ref role="3cqZAo" node="bi" resolve="node" />
                <uo k="s:originTrace" v="n:189280670440611418" />
              </node>
              <node concept="2YIFZM" id="br" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                <ref role="37wK5l" to="i8bi:7xvVBHRispT" resolve="castEnummember" />
                <uo k="s:originTrace" v="n:189280670440611418" />
                <node concept="37vLTw" id="bs" role="37wK5m">
                  <ref role="3cqZAo" node="bj" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:189280670440611418" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="aW" role="jymVt">
        <property role="TrG5h" value="staticSetPropertyValue" />
        <uo k="s:originTrace" v="n:189280670440611418" />
        <node concept="3clFbS" id="bt" role="3clF47">
          <uo k="s:originTrace" v="n:5800372501167044827" />
          <node concept="3cpWs8" id="by" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501185863341" />
            <node concept="3cpWsn" id="bE" role="3cpWs9">
              <property role="TrG5h" value="previousValue" />
              <uo k="s:originTrace" v="n:5800372501185863342" />
              <node concept="2ZThk1" id="bF" role="1tU5fm">
                <ref role="2ZWj4r" to="3nll:1LTEHzOdy1" resolve="CommandContainerType" />
                <uo k="s:originTrace" v="n:5800372501185863318" />
              </node>
              <node concept="2OqwBi" id="bG" role="33vP2m">
                <uo k="s:originTrace" v="n:5800372501185863343" />
                <node concept="37vLTw" id="bH" role="2Oq$k0">
                  <ref role="3cqZAo" node="bw" resolve="node" />
                  <uo k="s:originTrace" v="n:5800372501185863344" />
                </node>
                <node concept="3TrcHB" id="bI" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                  <uo k="s:originTrace" v="n:5800372501185863345" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="bz" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501167045163" />
            <node concept="2OqwBi" id="bJ" role="3clFbG">
              <uo k="s:originTrace" v="n:5800372501167048057" />
              <node concept="2OqwBi" id="bK" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5800372501167046106" />
                <node concept="37vLTw" id="bM" role="2Oq$k0">
                  <ref role="3cqZAo" node="bw" resolve="node" />
                  <uo k="s:originTrace" v="n:5800372501167045162" />
                </node>
                <node concept="3TrcHB" id="bN" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                  <uo k="s:originTrace" v="n:5800372501167047447" />
                </node>
              </node>
              <node concept="tyxLq" id="bL" role="2OqNvi">
                <uo k="s:originTrace" v="n:5800372501167048812" />
                <node concept="37vLTw" id="bO" role="tz02z">
                  <ref role="3cqZAo" node="bx" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:5800372501167048861" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="b$" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501169730829" />
          </node>
          <node concept="3clFbJ" id="b_" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501198515126" />
            <node concept="3clFbS" id="bP" role="3clFbx">
              <uo k="s:originTrace" v="n:5800372501198515128" />
              <node concept="3cpWs6" id="bR" role="3cqZAp">
                <uo k="s:originTrace" v="n:5800372501198517121" />
              </node>
            </node>
            <node concept="3clFbC" id="bQ" role="3clFbw">
              <uo k="s:originTrace" v="n:5800372501198516183" />
              <node concept="37vLTw" id="bS" role="3uHU7w">
                <ref role="3cqZAo" node="bx" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:5800372501198516831" />
              </node>
              <node concept="37vLTw" id="bT" role="3uHU7B">
                <ref role="3cqZAo" node="bE" resolve="previousValue" />
                <uo k="s:originTrace" v="n:5800372501198515260" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="bA" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501198514803" />
          </node>
          <node concept="3clFbJ" id="bB" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501167049387" />
            <node concept="3clFbS" id="bU" role="3clFbx">
              <uo k="s:originTrace" v="n:5800372501167049389" />
              <node concept="3clFbF" id="bW" role="3cqZAp">
                <uo k="s:originTrace" v="n:5800372501167049852" />
                <node concept="2OqwBi" id="bY" role="3clFbG">
                  <uo k="s:originTrace" v="n:5800372501167050795" />
                  <node concept="37vLTw" id="bZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="bw" resolve="node" />
                    <uo k="s:originTrace" v="n:5800372501167049851" />
                  </node>
                  <node concept="2qgKlT" id="c0" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:d$u27T68WS" resolve="resetAndMergeChildRepositoryReferences" />
                    <uo k="s:originTrace" v="n:5800372501167052134" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="bX" role="3cqZAp">
                <uo k="s:originTrace" v="n:5800372501198512390" />
                <node concept="3clFbS" id="c1" role="3clFbx">
                  <uo k="s:originTrace" v="n:5800372501198512392" />
                  <node concept="3clFbF" id="c3" role="3cqZAp">
                    <uo k="s:originTrace" v="n:5800372501198523194" />
                    <node concept="2OqwBi" id="c4" role="3clFbG">
                      <uo k="s:originTrace" v="n:5800372501198524087" />
                      <node concept="37vLTw" id="c5" role="2Oq$k0">
                        <ref role="3cqZAo" node="bw" resolve="node" />
                        <uo k="s:originTrace" v="n:5800372501198523193" />
                      </node>
                      <node concept="2qgKlT" id="c6" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:2RbvdOMpYd2" resolve="setName" />
                        <uo k="s:originTrace" v="n:5800372501198525322" />
                        <node concept="10Nm6u" id="c7" role="37wK5m">
                          <uo k="s:originTrace" v="n:5800372501198525646" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="c2" role="3clFbw">
                  <uo k="s:originTrace" v="n:5800372501199415939" />
                  <node concept="3fqX7Q" id="c8" role="3uHU7w">
                    <uo k="s:originTrace" v="n:5800372501199418647" />
                    <node concept="2OqwBi" id="ca" role="3fr31v">
                      <uo k="s:originTrace" v="n:5800372501199418649" />
                      <node concept="37vLTw" id="cb" role="2Oq$k0">
                        <ref role="3cqZAo" node="bw" resolve="node" />
                        <uo k="s:originTrace" v="n:5800372501199418650" />
                      </node>
                      <node concept="3TrcHB" id="cc" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                        <uo k="s:originTrace" v="n:5800372501199418651" />
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="c9" role="3uHU7B">
                    <uo k="s:originTrace" v="n:5800372501198522979" />
                    <node concept="2OqwBi" id="cd" role="3uHU7B">
                      <uo k="s:originTrace" v="n:5800372501198513333" />
                      <node concept="37vLTw" id="cf" role="2Oq$k0">
                        <ref role="3cqZAo" node="bw" resolve="node" />
                        <uo k="s:originTrace" v="n:5800372501198512445" />
                      </node>
                      <node concept="3TrEf2" id="cg" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                        <uo k="s:originTrace" v="n:5800372501198520424" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="ce" role="3uHU7w">
                      <uo k="s:originTrace" v="n:5800372501198523030" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="bV" role="3clFbw">
              <uo k="s:originTrace" v="n:5800372501167049557" />
              <node concept="37vLTw" id="ch" role="2Oq$k0">
                <ref role="3cqZAo" node="bx" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:5800372501167049451" />
              </node>
              <node concept="21noJN" id="ci" role="2OqNvi">
                <uo k="s:originTrace" v="n:5800372501167049662" />
                <node concept="21nZrQ" id="cj" role="21noJM">
                  <ref role="21nZrZ" to="3nll:1LTEHzOdy3" resolve="CommandHandler" />
                  <uo k="s:originTrace" v="n:5800372501167049664" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="bC" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501198517146" />
          </node>
          <node concept="3clFbJ" id="bD" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501198517586" />
            <node concept="3clFbS" id="ck" role="3clFbx">
              <uo k="s:originTrace" v="n:5800372501198517588" />
              <node concept="3clFbJ" id="cm" role="3cqZAp">
                <uo k="s:originTrace" v="n:5800372501198525688" />
                <node concept="3clFbS" id="cn" role="3clFbx">
                  <uo k="s:originTrace" v="n:5800372501198525689" />
                  <node concept="3clFbF" id="cp" role="3cqZAp">
                    <uo k="s:originTrace" v="n:5800372501198527590" />
                    <node concept="2OqwBi" id="cq" role="3clFbG">
                      <uo k="s:originTrace" v="n:5800372501198527874" />
                      <node concept="2OqwBi" id="cr" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5800372501198527612" />
                        <node concept="37vLTw" id="ct" role="2Oq$k0">
                          <ref role="3cqZAo" node="bw" resolve="node" />
                          <uo k="s:originTrace" v="n:5800372501198527589" />
                        </node>
                        <node concept="3TrEf2" id="cu" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                          <uo k="s:originTrace" v="n:5800372501198527688" />
                        </node>
                      </node>
                      <node concept="3YRAZt" id="cs" role="2OqNvi">
                        <uo k="s:originTrace" v="n:5800372501198527974" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17QLQc" id="co" role="3clFbw">
                  <uo k="s:originTrace" v="n:5800372501201605254" />
                  <node concept="10Nm6u" id="cv" role="3uHU7w">
                    <uo k="s:originTrace" v="n:5800372501201605324" />
                  </node>
                  <node concept="2OqwBi" id="cw" role="3uHU7B">
                    <uo k="s:originTrace" v="n:5800372501198525697" />
                    <node concept="37vLTw" id="cx" role="2Oq$k0">
                      <ref role="3cqZAo" node="bw" resolve="node" />
                      <uo k="s:originTrace" v="n:5800372501198525698" />
                    </node>
                    <node concept="3TrEf2" id="cy" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                      <uo k="s:originTrace" v="n:5800372501198525699" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="cl" role="3clFbw">
              <uo k="s:originTrace" v="n:5800372501198518284" />
              <node concept="37vLTw" id="cz" role="2Oq$k0">
                <ref role="3cqZAo" node="bx" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:5800372501198518055" />
              </node>
              <node concept="21noJN" id="c$" role="2OqNvi">
                <uo k="s:originTrace" v="n:5800372501198518857" />
                <node concept="21nZrQ" id="c_" role="21noJM">
                  <ref role="21nZrZ" to="3nll:1LTEHzOdy2" resolve="CommandsBlock" />
                  <uo k="s:originTrace" v="n:5800372501198518859" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="bu" role="1B3o_S">
          <uo k="s:originTrace" v="n:189280670440611418" />
        </node>
        <node concept="3cqZAl" id="bv" role="3clF45">
          <uo k="s:originTrace" v="n:189280670440611418" />
        </node>
        <node concept="37vLTG" id="bw" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="3Tqbb2" id="cA" role="1tU5fm">
            <uo k="s:originTrace" v="n:189280670440611418" />
          </node>
        </node>
        <node concept="37vLTG" id="bx" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="3uibUv" id="cB" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SEnumerationLiteral" resolve="SEnumerationLiteral" />
            <uo k="s:originTrace" v="n:189280670440611418" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="aX" role="1B3o_S">
        <uo k="s:originTrace" v="n:189280670440611418" />
      </node>
      <node concept="3uibUv" id="aY" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:189280670440611418" />
      </node>
    </node>
    <node concept="3clFb_" id="aJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:189280670440611418" />
      <node concept="3Tmbuc" id="cC" role="1B3o_S">
        <uo k="s:originTrace" v="n:189280670440611418" />
      </node>
      <node concept="3uibUv" id="cD" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:189280670440611418" />
        <node concept="3uibUv" id="cG" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:189280670440611418" />
        </node>
        <node concept="3uibUv" id="cH" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:189280670440611418" />
        </node>
      </node>
      <node concept="3clFbS" id="cE" role="3clF47">
        <uo k="s:originTrace" v="n:189280670440611418" />
        <node concept="3cpWs8" id="cI" role="3cqZAp">
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="3cpWsn" id="cL" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:189280670440611418" />
            <node concept="3uibUv" id="cM" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:189280670440611418" />
              <node concept="3uibUv" id="cO" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:189280670440611418" />
              </node>
              <node concept="3uibUv" id="cP" role="11_B2D">
                <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:189280670440611418" />
              </node>
            </node>
            <node concept="2ShNRf" id="cN" role="33vP2m">
              <uo k="s:originTrace" v="n:189280670440611418" />
              <node concept="1pGfFk" id="cQ" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:189280670440611418" />
                <node concept="3uibUv" id="cR" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:189280670440611418" />
                </node>
                <node concept="3uibUv" id="cS" role="1pMfVU">
                  <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:189280670440611418" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="2OqwBi" id="cT" role="3clFbG">
            <uo k="s:originTrace" v="n:189280670440611418" />
            <node concept="37vLTw" id="cU" role="2Oq$k0">
              <ref role="3cqZAo" node="cL" resolve="properties" />
              <uo k="s:originTrace" v="n:189280670440611418" />
            </node>
            <node concept="liA8E" id="cV" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:189280670440611418" />
              <node concept="1BaE9c" id="cW" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="type$SAFo" />
                <uo k="s:originTrace" v="n:189280670440611418" />
                <node concept="2YIFZM" id="cY" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:189280670440611418" />
                  <node concept="1adDum" id="cZ" role="37wK5m">
                    <property role="1adDun" value="0xfe04f903cef2451dL" />
                    <uo k="s:originTrace" v="n:189280670440611418" />
                  </node>
                  <node concept="1adDum" id="d0" role="37wK5m">
                    <property role="1adDun" value="0x9401426cad0a8857L" />
                    <uo k="s:originTrace" v="n:189280670440611418" />
                  </node>
                  <node concept="1adDum" id="d1" role="37wK5m">
                    <property role="1adDun" value="0x2a075c454595567L" />
                    <uo k="s:originTrace" v="n:189280670440611418" />
                  </node>
                  <node concept="1adDum" id="d2" role="37wK5m">
                    <property role="1adDun" value="0x71e6ab63d0d9fcL" />
                    <uo k="s:originTrace" v="n:189280670440611418" />
                  </node>
                  <node concept="Xl_RD" id="d3" role="37wK5m">
                    <property role="Xl_RC" value="type" />
                    <uo k="s:originTrace" v="n:189280670440611418" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="cX" role="37wK5m">
                <uo k="s:originTrace" v="n:189280670440611418" />
                <node concept="1pGfFk" id="d4" role="2ShVmc">
                  <ref role="37wK5l" node="aU" resolve="CommandContainer_Constraints.Type_Property" />
                  <uo k="s:originTrace" v="n:189280670440611418" />
                  <node concept="Xjq3P" id="d5" role="37wK5m">
                    <uo k="s:originTrace" v="n:189280670440611418" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cK" role="3cqZAp">
          <uo k="s:originTrace" v="n:189280670440611418" />
          <node concept="37vLTw" id="d6" role="3clFbG">
            <ref role="3cqZAo" node="cL" resolve="properties" />
            <uo k="s:originTrace" v="n:189280670440611418" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="cF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:189280670440611418" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="d7">
    <property role="3GE5qa" value="command" />
    <property role="TrG5h" value="Command_Constraints" />
    <uo k="s:originTrace" v="n:1502909481141010765" />
    <node concept="3Tm1VV" id="d8" role="1B3o_S">
      <uo k="s:originTrace" v="n:1502909481141010765" />
    </node>
    <node concept="3uibUv" id="d9" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1502909481141010765" />
    </node>
    <node concept="3clFbW" id="da" role="jymVt">
      <uo k="s:originTrace" v="n:1502909481141010765" />
      <node concept="3cqZAl" id="de" role="3clF45">
        <uo k="s:originTrace" v="n:1502909481141010765" />
      </node>
      <node concept="3clFbS" id="df" role="3clF47">
        <uo k="s:originTrace" v="n:1502909481141010765" />
        <node concept="XkiVB" id="dh" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1502909481141010765" />
          <node concept="1BaE9c" id="di" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Command$kL" />
            <uo k="s:originTrace" v="n:1502909481141010765" />
            <node concept="2YIFZM" id="dj" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1502909481141010765" />
              <node concept="1adDum" id="dk" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:1502909481141010765" />
              </node>
              <node concept="1adDum" id="dl" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:1502909481141010765" />
              </node>
              <node concept="1adDum" id="dm" role="37wK5m">
                <property role="1adDun" value="0x73da5086440e243eL" />
                <uo k="s:originTrace" v="n:1502909481141010765" />
              </node>
              <node concept="Xl_RD" id="dn" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.Command" />
                <uo k="s:originTrace" v="n:1502909481141010765" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="dg" role="1B3o_S">
        <uo k="s:originTrace" v="n:1502909481141010765" />
      </node>
    </node>
    <node concept="2tJIrI" id="db" role="jymVt">
      <uo k="s:originTrace" v="n:1502909481141010765" />
    </node>
    <node concept="3clFb_" id="dc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:1502909481141010765" />
      <node concept="3Tm1VV" id="do" role="1B3o_S">
        <uo k="s:originTrace" v="n:1502909481141010765" />
      </node>
      <node concept="3uibUv" id="dp" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:1502909481141010765" />
        <node concept="3uibUv" id="ds" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:1502909481141010765" />
        </node>
        <node concept="3uibUv" id="dt" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1502909481141010765" />
        </node>
      </node>
      <node concept="3clFbS" id="dq" role="3clF47">
        <uo k="s:originTrace" v="n:1502909481141010765" />
        <node concept="3clFbF" id="du" role="3cqZAp">
          <uo k="s:originTrace" v="n:1502909481141010765" />
          <node concept="2ShNRf" id="dv" role="3clFbG">
            <uo k="s:originTrace" v="n:1502909481141010765" />
            <node concept="YeOm9" id="dw" role="2ShVmc">
              <uo k="s:originTrace" v="n:1502909481141010765" />
              <node concept="1Y3b0j" id="dx" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:1502909481141010765" />
                <node concept="3Tm1VV" id="dy" role="1B3o_S">
                  <uo k="s:originTrace" v="n:1502909481141010765" />
                </node>
                <node concept="3clFb_" id="dz" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:1502909481141010765" />
                  <node concept="3Tm1VV" id="dA" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1502909481141010765" />
                  </node>
                  <node concept="2AHcQZ" id="dB" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:1502909481141010765" />
                  </node>
                  <node concept="3uibUv" id="dC" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:1502909481141010765" />
                  </node>
                  <node concept="37vLTG" id="dD" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:1502909481141010765" />
                    <node concept="3uibUv" id="dG" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:1502909481141010765" />
                    </node>
                    <node concept="2AHcQZ" id="dH" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:1502909481141010765" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="dE" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:1502909481141010765" />
                    <node concept="3uibUv" id="dI" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:1502909481141010765" />
                    </node>
                    <node concept="2AHcQZ" id="dJ" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:1502909481141010765" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="dF" role="3clF47">
                    <uo k="s:originTrace" v="n:1502909481141010765" />
                    <node concept="3cpWs6" id="dK" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1502909481141010765" />
                      <node concept="2ShNRf" id="dL" role="3cqZAk">
                        <uo k="s:originTrace" v="n:8914850872824045703" />
                        <node concept="YeOm9" id="dM" role="2ShVmc">
                          <uo k="s:originTrace" v="n:8914850872824045703" />
                          <node concept="1Y3b0j" id="dN" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                            <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                            <uo k="s:originTrace" v="n:8914850872824045703" />
                            <node concept="3Tm1VV" id="dO" role="1B3o_S">
                              <uo k="s:originTrace" v="n:8914850872824045703" />
                            </node>
                            <node concept="3clFb_" id="dP" role="jymVt">
                              <property role="TrG5h" value="getSearchScopeValidatorNode" />
                              <uo k="s:originTrace" v="n:8914850872824045703" />
                              <node concept="3Tm1VV" id="dR" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8914850872824045703" />
                              </node>
                              <node concept="3uibUv" id="dS" role="3clF45">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                <uo k="s:originTrace" v="n:8914850872824045703" />
                              </node>
                              <node concept="3clFbS" id="dT" role="3clF47">
                                <uo k="s:originTrace" v="n:8914850872824045703" />
                                <node concept="3cpWs6" id="dV" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8914850872824045703" />
                                  <node concept="2ShNRf" id="dW" role="3cqZAk">
                                    <uo k="s:originTrace" v="n:8914850872824045703" />
                                    <node concept="1pGfFk" id="dX" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8914850872824045703" />
                                      <node concept="Xl_RD" id="dY" role="37wK5m">
                                        <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                                        <uo k="s:originTrace" v="n:8914850872824045703" />
                                      </node>
                                      <node concept="Xl_RD" id="dZ" role="37wK5m">
                                        <property role="Xl_RC" value="8914850872824045703" />
                                        <uo k="s:originTrace" v="n:8914850872824045703" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="dU" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8914850872824045703" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="dQ" role="jymVt">
                              <property role="TrG5h" value="createScope" />
                              <uo k="s:originTrace" v="n:8914850872824045703" />
                              <node concept="3Tm1VV" id="e0" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8914850872824045703" />
                              </node>
                              <node concept="3uibUv" id="e1" role="3clF45">
                                <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                <uo k="s:originTrace" v="n:8914850872824045703" />
                              </node>
                              <node concept="37vLTG" id="e2" role="3clF46">
                                <property role="TrG5h" value="_context" />
                                <property role="3TUv4t" value="true" />
                                <uo k="s:originTrace" v="n:8914850872824045703" />
                                <node concept="3uibUv" id="e5" role="1tU5fm">
                                  <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                  <uo k="s:originTrace" v="n:8914850872824045703" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="e3" role="3clF47">
                                <uo k="s:originTrace" v="n:8914850872824045703" />
                                <node concept="3cpWs8" id="e6" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5318792986117470104" />
                                  <node concept="3cpWsn" id="eb" role="3cpWs9">
                                    <property role="TrG5h" value="component" />
                                    <uo k="s:originTrace" v="n:5318792986117470105" />
                                    <node concept="3Tqbb2" id="ec" role="1tU5fm">
                                      <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                      <uo k="s:originTrace" v="n:5318792986117470079" />
                                    </node>
                                    <node concept="2OqwBi" id="ed" role="33vP2m">
                                      <uo k="s:originTrace" v="n:5318792986117470106" />
                                      <node concept="1DoJHT" id="ee" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getContextNode" />
                                        <uo k="s:originTrace" v="n:5318792986117470107" />
                                        <node concept="3uibUv" id="eg" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="eh" role="1EMhIo">
                                          <ref role="3cqZAo" node="e2" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="2Xjw5R" id="ef" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:5318792986117470108" />
                                        <node concept="1xMEDy" id="ei" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:5318792986117470109" />
                                          <node concept="chp4Y" id="ek" role="ri$Ld">
                                            <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                            <uo k="s:originTrace" v="n:5318792986117470110" />
                                          </node>
                                        </node>
                                        <node concept="1xIGOp" id="ej" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:5318792986117470111" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="e7" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5318792986117468486" />
                                </node>
                                <node concept="Jncv_" id="e8" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                                  <uo k="s:originTrace" v="n:5318792986117468225" />
                                  <node concept="37vLTw" id="el" role="JncvB">
                                    <ref role="3cqZAo" node="eb" resolve="component" />
                                    <uo k="s:originTrace" v="n:5318792986117470318" />
                                  </node>
                                  <node concept="3clFbS" id="em" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5318792986117468229" />
                                    <node concept="3cpWs6" id="eo" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:5318792986117471813" />
                                      <node concept="2OqwBi" id="ep" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:5318792986117472178" />
                                        <node concept="Xjq3P" id="eq" role="2Oq$k0">
                                          <ref role="1HBi2w" node="d7" resolve="Command_Constraints" />
                                          <uo k="s:originTrace" v="n:5318792986117472181" />
                                        </node>
                                        <node concept="liA8E" id="er" role="2OqNvi">
                                          <ref role="37wK5l" node="dd" resolve="_additional_provideAggregateRootScope" />
                                          <uo k="s:originTrace" v="n:5318792986117472183" />
                                          <node concept="Jnkvi" id="es" role="37wK5m">
                                            <ref role="1M0zk5" node="en" resolve="aggregateRoot" />
                                            <uo k="s:originTrace" v="n:5318792986117472305" />
                                          </node>
                                          <node concept="1DoJHT" id="et" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:5318792986117472513" />
                                            <node concept="3uibUv" id="eu" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="ev" role="1EMhIo">
                                              <ref role="3cqZAo" node="e2" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="en" role="JncvA">
                                    <property role="TrG5h" value="aggregateRoot" />
                                    <uo k="s:originTrace" v="n:5318792986117468231" />
                                    <node concept="2jxLKc" id="ew" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5318792986117468232" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="e9" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5318792986117467982" />
                                </node>
                                <node concept="3clFbF" id="ea" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8914850872824045869" />
                                  <node concept="2ShNRf" id="ex" role="3clFbG">
                                    <uo k="s:originTrace" v="n:8914850872824045870" />
                                    <node concept="1pGfFk" id="ey" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                      <uo k="s:originTrace" v="n:8914850872824045871" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="e4" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8914850872824045703" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="d$" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:1502909481141010765" />
                </node>
                <node concept="3uibUv" id="d_" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:1502909481141010765" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1502909481141010765" />
      </node>
    </node>
    <node concept="3clFb_" id="dd" role="jymVt">
      <property role="TrG5h" value="_additional_provideAggregateRootScope" />
      <uo k="s:originTrace" v="n:5318792986117470837" />
      <node concept="3uibUv" id="ez" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:5318792986117471078" />
      </node>
      <node concept="3Tm6S6" id="e$" role="1B3o_S">
        <uo k="s:originTrace" v="n:5318792986117470840" />
      </node>
      <node concept="3clFbS" id="e_" role="3clF47">
        <uo k="s:originTrace" v="n:5318792986117470839" />
        <node concept="3clFbJ" id="eC" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:5318792986117472998" />
          <node concept="2OqwBi" id="eF" role="3clFbw">
            <uo k="s:originTrace" v="n:5318792986117475917" />
            <node concept="2OqwBi" id="eH" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5318792986117473971" />
              <node concept="37vLTw" id="eJ" role="2Oq$k0">
                <ref role="3cqZAo" node="eB" resolve="contextNode" />
                <uo k="s:originTrace" v="n:5318792986117473101" />
              </node>
              <node concept="2Xjw5R" id="eK" role="2OqNvi">
                <uo k="s:originTrace" v="n:5318792986117474532" />
                <node concept="1xMEDy" id="eL" role="1xVPHs">
                  <uo k="s:originTrace" v="n:5318792986117474534" />
                  <node concept="chp4Y" id="eN" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                    <uo k="s:originTrace" v="n:5318792986117474749" />
                  </node>
                </node>
                <node concept="1xIGOp" id="eM" role="1xVPHs">
                  <uo k="s:originTrace" v="n:5318792986117475165" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="eI" role="2OqNvi">
              <uo k="s:originTrace" v="n:5318792986117477082" />
            </node>
          </node>
          <node concept="3clFbS" id="eG" role="3clFbx">
            <uo k="s:originTrace" v="n:5318792986117473000" />
            <node concept="3cpWs6" id="eO" role="3cqZAp">
              <uo k="s:originTrace" v="n:5318792986117490666" />
              <node concept="2YIFZM" id="eP" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:5318792986117491590" />
                <node concept="2OqwBi" id="eQ" role="37wK5m">
                  <uo k="s:originTrace" v="n:5318792986117487409" />
                  <node concept="2OqwBi" id="eR" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:5318792986117484875" />
                    <node concept="37vLTw" id="eT" role="2Oq$k0">
                      <ref role="3cqZAo" node="eA" resolve="aggregateRoot" />
                      <uo k="s:originTrace" v="n:5318792986117483798" />
                    </node>
                    <node concept="2qgKlT" id="eU" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                      <uo k="s:originTrace" v="n:5318792986117486370" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="eS" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:34BkNnblMem" resolve="commands" />
                    <uo k="s:originTrace" v="n:5318792986117489175" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="eD" role="3cqZAp">
          <uo k="s:originTrace" v="n:5318792986117477507" />
        </node>
        <node concept="3clFbF" id="eE" role="3cqZAp">
          <uo k="s:originTrace" v="n:5318792986117477705" />
          <node concept="2ShNRf" id="eV" role="3clFbG">
            <uo k="s:originTrace" v="n:5318792986117477701" />
            <node concept="1pGfFk" id="eW" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:5318792986117483615" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="eA" role="3clF46">
        <property role="TrG5h" value="aggregateRoot" />
        <uo k="s:originTrace" v="n:5318792986117471209" />
        <node concept="3Tqbb2" id="eX" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
          <uo k="s:originTrace" v="n:5318792986117471387" />
        </node>
      </node>
      <node concept="37vLTG" id="eB" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:5318792986117471480" />
        <node concept="3Tqbb2" id="eY" role="1tU5fm">
          <uo k="s:originTrace" v="n:5318792986117471582" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="eZ">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="f0" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="f1" role="1B3o_S" />
    <node concept="3clFbW" id="f2" role="jymVt">
      <node concept="3cqZAl" id="f5" role="3clF45" />
      <node concept="3Tm1VV" id="f6" role="1B3o_S" />
      <node concept="3clFbS" id="f7" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="f3" role="jymVt" />
    <node concept="3clFb_" id="f4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="f8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="f9" role="1B3o_S" />
      <node concept="3uibUv" id="fa" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="fb" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="fd" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="fc" role="3clF47">
        <node concept="1_3QMa" id="fe" role="3cqZAp">
          <node concept="37vLTw" id="fg" role="1_3QMn">
            <ref role="3cqZAo" node="fb" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="fh" role="1_3QMm">
            <node concept="3clFbS" id="fT" role="1pnPq1">
              <node concept="3cpWs6" id="fV" role="3cqZAp">
                <node concept="1nCR9W" id="fW" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.ValueObjectReference_Constraints" />
                  <node concept="3uibUv" id="fX" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="fU" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4Wa3rAG5JzU" resolve="ValueObjectReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="fi" role="1_3QMm">
            <node concept="3clFbS" id="fY" role="1pnPq1">
              <node concept="3cpWs6" id="g0" role="3cqZAp">
                <node concept="1nCR9W" id="g1" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.AggregateRoot_Constraints" />
                  <node concept="3uibUv" id="g2" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="fZ" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
            </node>
          </node>
          <node concept="1pnPoh" id="fj" role="1_3QMm">
            <node concept="3clFbS" id="g3" role="1pnPq1">
              <node concept="3cpWs6" id="g5" role="3cqZAp">
                <node concept="1nCR9W" id="g6" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.ValueObject_Constraints" />
                  <node concept="3uibUv" id="g7" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="g4" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
            </node>
          </node>
          <node concept="1pnPoh" id="fk" role="1_3QMm">
            <node concept="3clFbS" id="g8" role="1pnPq1">
              <node concept="3cpWs6" id="ga" role="3cqZAp">
                <node concept="1nCR9W" id="gb" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IBoundedContextComponent_Constraints" />
                  <node concept="3uibUv" id="gc" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="g9" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fl" role="1_3QMm">
            <node concept="3clFbS" id="gd" role="1pnPq1">
              <node concept="3cpWs6" id="gf" role="3cqZAp">
                <node concept="1nCR9W" id="gg" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IEntityComponent_Constraints" />
                  <node concept="3uibUv" id="gh" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="ge" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7fqk8p3VKtM" resolve="IEntityComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fm" role="1_3QMm">
            <node concept="3clFbS" id="gi" role="1pnPq1">
              <node concept="3cpWs6" id="gk" role="3cqZAp">
                <node concept="1nCR9W" id="gl" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.Entity_Constraints" />
                  <node concept="3uibUv" id="gm" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="gj" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
            </node>
          </node>
          <node concept="1pnPoh" id="fn" role="1_3QMm">
            <node concept="3clFbS" id="gn" role="1pnPq1">
              <node concept="3cpWs6" id="gp" role="3cqZAp">
                <node concept="1nCR9W" id="gq" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.EntityReference_Constraints" />
                  <node concept="3uibUv" id="gr" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="go" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4Wa3rAG5J$0" resolve="EntityReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="fo" role="1_3QMm">
            <node concept="3clFbS" id="gs" role="1pnPq1">
              <node concept="3cpWs6" id="gu" role="3cqZAp">
                <node concept="1nCR9W" id="gv" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.AggregateRootReference_Constraints" />
                  <node concept="3uibUv" id="gw" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="gt" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="fp" role="1_3QMm">
            <node concept="3clFbS" id="gx" role="1pnPq1">
              <node concept="3cpWs6" id="gz" role="3cqZAp">
                <node concept="1nCR9W" id="g$" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.EventContainer_Constraints" />
                  <node concept="3uibUv" id="g_" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="gy" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
            </node>
          </node>
          <node concept="1pnPoh" id="fq" role="1_3QMm">
            <node concept="3clFbS" id="gA" role="1pnPq1">
              <node concept="3cpWs6" id="gC" role="3cqZAp">
                <node concept="1nCR9W" id="gD" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.DtoReference_Constraints" />
                  <node concept="3uibUv" id="gE" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="gB" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4Wa3rAG5J$6" resolve="DtoReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="fr" role="1_3QMm">
            <node concept="3clFbS" id="gF" role="1pnPq1">
              <node concept="3cpWs6" id="gH" role="3cqZAp">
                <node concept="1nCR9W" id="gI" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.Dto_Constraints" />
                  <node concept="3uibUv" id="gJ" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="gG" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            </node>
          </node>
          <node concept="1pnPoh" id="fs" role="1_3QMm">
            <node concept="3clFbS" id="gK" role="1pnPq1">
              <node concept="3cpWs6" id="gM" role="3cqZAp">
                <node concept="1nCR9W" id="gN" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.CommandContainer_Constraints" />
                  <node concept="3uibUv" id="gO" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="gL" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:awtshkmllB" resolve="CommandContainer" />
            </node>
          </node>
          <node concept="1pnPoh" id="ft" role="1_3QMm">
            <node concept="3clFbS" id="gP" role="1pnPq1">
              <node concept="3cpWs6" id="gR" role="3cqZAp">
                <node concept="1nCR9W" id="gS" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.AggregateRootRepository_Constraints" />
                  <node concept="3uibUv" id="gT" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="gQ" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
            </node>
          </node>
          <node concept="1pnPoh" id="fu" role="1_3QMm">
            <node concept="3clFbS" id="gU" role="1pnPq1">
              <node concept="3cpWs6" id="gW" role="3cqZAp">
                <node concept="1nCR9W" id="gX" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IAggregateRootComponent_Constraints" />
                  <node concept="3uibUv" id="gY" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="gV" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:awtshk_L0H" resolve="IAggregateRootComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fv" role="1_3QMm">
            <node concept="3clFbS" id="gZ" role="1pnPq1">
              <node concept="3cpWs6" id="h1" role="3cqZAp">
                <node concept="1nCR9W" id="h2" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IEventContainerComponent_Constraints" />
                  <node concept="3uibUv" id="h3" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="h0" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7mYw4uW6toN" resolve="IEventContainerComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fw" role="1_3QMm">
            <node concept="3clFbS" id="h4" role="1pnPq1">
              <node concept="3cpWs6" id="h6" role="3cqZAp">
                <node concept="1nCR9W" id="h7" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.ICommandContainerComponent_Constraints" />
                  <node concept="3uibUv" id="h8" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="h5" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7mYw4uWwq43" resolve="ICommandContainerComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fx" role="1_3QMm">
            <node concept="3clFbS" id="h9" role="1pnPq1">
              <node concept="3cpWs6" id="hb" role="3cqZAp">
                <node concept="1nCR9W" id="hc" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IAggregateRootRepositoryComponent_Constraints" />
                  <node concept="3uibUv" id="hd" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="ha" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7mYw4uWx3au" resolve="IAggregateRootRepositoryComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fy" role="1_3QMm">
            <node concept="3clFbS" id="he" role="1pnPq1">
              <node concept="3cpWs6" id="hg" role="3cqZAp">
                <node concept="1nCR9W" id="hh" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IQueryContainerComponent_Constraints" />
                  <node concept="3uibUv" id="hi" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="hf" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:3DbZR$O1TZR" resolve="IQueryContainerComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fz" role="1_3QMm">
            <node concept="3clFbS" id="hj" role="1pnPq1">
              <node concept="3cpWs6" id="hl" role="3cqZAp">
                <node concept="1nCR9W" id="hm" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IDataType_Constraints" />
                  <node concept="3uibUv" id="hn" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="hk" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
            </node>
          </node>
          <node concept="1pnPoh" id="f$" role="1_3QMm">
            <node concept="3clFbS" id="ho" role="1pnPq1">
              <node concept="3cpWs6" id="hq" role="3cqZAp">
                <node concept="1nCR9W" id="hr" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IOptionalValidIdentifier_Constraints" />
                  <node concept="3uibUv" id="hs" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="hp" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:oGImgMSoXZ" resolve="IOptionalValidIdentifier" />
            </node>
          </node>
          <node concept="1pnPoh" id="f_" role="1_3QMm">
            <node concept="3clFbS" id="ht" role="1pnPq1">
              <node concept="3cpWs6" id="hv" role="3cqZAp">
                <node concept="1nCR9W" id="hw" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.Property_Constraints" />
                  <node concept="3uibUv" id="hx" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="hu" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7fqk8p3V6WN" resolve="Property" />
            </node>
          </node>
          <node concept="1pnPoh" id="fA" role="1_3QMm">
            <node concept="3clFbS" id="hy" role="1pnPq1">
              <node concept="3cpWs6" id="h$" role="3cqZAp">
                <node concept="1nCR9W" id="h_" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IValueObjectComponent_Constraints" />
                  <node concept="3uibUv" id="hA" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="hz" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:oGImgN2ksO" resolve="IValueObjectComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fB" role="1_3QMm">
            <node concept="3clFbS" id="hB" role="1pnPq1">
              <node concept="3cpWs6" id="hD" role="3cqZAp">
                <node concept="1nCR9W" id="hE" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IDtoComponent_Constraints" />
                  <node concept="3uibUv" id="hF" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="hC" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:oGImgOv72s" resolve="IDtoComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fC" role="1_3QMm">
            <node concept="3clFbS" id="hG" role="1pnPq1">
              <node concept="3cpWs6" id="hI" role="3cqZAp">
                <node concept="1nCR9W" id="hJ" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.Parameter_Constraints" />
                  <node concept="3uibUv" id="hK" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="hH" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
            </node>
          </node>
          <node concept="1pnPoh" id="fD" role="1_3QMm">
            <node concept="3clFbS" id="hL" role="1pnPq1">
              <node concept="3cpWs6" id="hN" role="3cqZAp">
                <node concept="1nCR9W" id="hO" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.ImportedType_Constraints" />
                  <node concept="3uibUv" id="hP" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="hM" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
            </node>
          </node>
          <node concept="1pnPoh" id="fE" role="1_3QMm">
            <node concept="3clFbS" id="hQ" role="1pnPq1">
              <node concept="3cpWs6" id="hS" role="3cqZAp">
                <node concept="1nCR9W" id="hT" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.Command_Constraints" />
                  <node concept="3uibUv" id="hU" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="hR" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7fqk8p43ygY" resolve="Command" />
            </node>
          </node>
          <node concept="1pnPoh" id="fF" role="1_3QMm">
            <node concept="3clFbS" id="hV" role="1pnPq1">
              <node concept="3cpWs6" id="hX" role="3cqZAp">
                <node concept="1nCR9W" id="hY" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IDtoRepositoryComponent_Constraints" />
                  <node concept="3uibUv" id="hZ" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="hW" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:1WhJCpUQqV4" resolve="IDtoRepositoryComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fG" role="1_3QMm">
            <node concept="3clFbS" id="i0" role="1pnPq1">
              <node concept="3cpWs6" id="i2" role="3cqZAp">
                <node concept="1nCR9W" id="i3" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.QueryContainer_Constraints" />
                  <node concept="3uibUv" id="i4" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="i1" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
            </node>
          </node>
          <node concept="1pnPoh" id="fH" role="1_3QMm">
            <node concept="3clFbS" id="i5" role="1pnPq1">
              <node concept="3cpWs6" id="i7" role="3cqZAp">
                <node concept="1nCR9W" id="i8" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.Query_Constraints" />
                  <node concept="3uibUv" id="i9" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="i6" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7fqk8p43yh4" resolve="Query" />
            </node>
          </node>
          <node concept="1pnPoh" id="fI" role="1_3QMm">
            <node concept="3clFbS" id="ia" role="1pnPq1">
              <node concept="3cpWs6" id="ic" role="3cqZAp">
                <node concept="1nCR9W" id="id" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IGeneratorSettingsComponent_Constraints" />
                  <node concept="3uibUv" id="ie" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="ib" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:omljbyVy$R" resolve="IGeneratorSettingsComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fJ" role="1_3QMm">
            <node concept="3clFbS" id="if" role="1pnPq1">
              <node concept="3cpWs6" id="ih" role="3cqZAp">
                <node concept="1nCR9W" id="ii" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.QueryGenerationSettings_Constraints" />
                  <node concept="3uibUv" id="ij" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="ig" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:omljbyVy_1" resolve="QueryGenerationSettings" />
            </node>
          </node>
          <node concept="1pnPoh" id="fK" role="1_3QMm">
            <node concept="3clFbS" id="ik" role="1pnPq1">
              <node concept="3cpWs6" id="im" role="3cqZAp">
                <node concept="1nCR9W" id="in" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IEventGenerationSettingsComponent_Constraints" />
                  <node concept="3uibUv" id="io" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="il" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:5qxF18EuQW9" resolve="IEventGenerationSettingsComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fL" role="1_3QMm">
            <node concept="3clFbS" id="ip" role="1pnPq1">
              <node concept="3cpWs6" id="ir" role="3cqZAp">
                <node concept="1nCR9W" id="is" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.ICommandGenerationSettingsComponent_Constraints" />
                  <node concept="3uibUv" id="it" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="iq" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:5qxF18ELp99" resolve="ICommandGenerationSettingsComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fM" role="1_3QMm">
            <node concept="3clFbS" id="iu" role="1pnPq1">
              <node concept="3cpWs6" id="iw" role="3cqZAp">
                <node concept="1nCR9W" id="ix" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IQueryGenerationSettingsComponent_Constraints" />
                  <node concept="3uibUv" id="iy" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="iv" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:5qxF18ELp98" resolve="IQueryGenerationSettingsComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fN" role="1_3QMm">
            <node concept="3clFbS" id="iz" role="1pnPq1">
              <node concept="3cpWs6" id="i_" role="3cqZAp">
                <node concept="1nCR9W" id="iA" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IVariable_Constraints" />
                  <node concept="3uibUv" id="iB" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="i$" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
            </node>
          </node>
          <node concept="1pnPoh" id="fO" role="1_3QMm">
            <node concept="3clFbS" id="iC" role="1pnPq1">
              <node concept="3cpWs6" id="iE" role="3cqZAp">
                <node concept="1nCR9W" id="iF" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.DtoFlatteningRule_Constraints" />
                  <node concept="3uibUv" id="iG" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="iD" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
            </node>
          </node>
          <node concept="1pnPoh" id="fP" role="1_3QMm">
            <node concept="3clFbS" id="iH" role="1pnPq1">
              <node concept="3cpWs6" id="iJ" role="3cqZAp">
                <node concept="1nCR9W" id="iK" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IDtoFlatteningRuleContainerComponent_Constraints" />
                  <node concept="3uibUv" id="iL" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="iI" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:E4RYE9aka5" resolve="IDtoFlatteningRuleContainerComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fQ" role="1_3QMm">
            <node concept="3clFbS" id="iM" role="1pnPq1">
              <node concept="3cpWs6" id="iO" role="3cqZAp">
                <node concept="1nCR9W" id="iP" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.IDtoDataTypeRuleContainerComponent_Constraints" />
                  <node concept="3uibUv" id="iQ" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="iN" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:E4RYE9aka8" resolve="IDtoDataTypeRuleContainerComponent" />
            </node>
          </node>
          <node concept="1pnPoh" id="fR" role="1_3QMm">
            <node concept="3clFbS" id="iR" role="1pnPq1">
              <node concept="3cpWs6" id="iT" role="3cqZAp">
                <node concept="1nCR9W" id="iU" role="3cqZAk">
                  <property role="1nD$Q0" value="CQRS.constraints.Event_Constraints" />
                  <node concept="3uibUv" id="iV" role="2lIhxL">
                    <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="iS" role="1pnPq6">
              <ref role="3gnhBz" to="3nll:7fqk8p43ygS" resolve="Event" />
            </node>
          </node>
          <node concept="3clFbS" id="fS" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="ff" role="3cqZAp">
          <node concept="2ShNRf" id="iW" role="3cqZAk">
            <node concept="1pGfFk" id="iX" role="2ShVmc">
              <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
              <node concept="37vLTw" id="iY" role="37wK5m">
                <ref role="3cqZAo" node="fb" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="iZ">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <property role="TrG5h" value="DtoFlatteningRule_Constraints" />
    <uo k="s:originTrace" v="n:4394792474684970492" />
    <node concept="3Tm1VV" id="j0" role="1B3o_S">
      <uo k="s:originTrace" v="n:4394792474684970492" />
    </node>
    <node concept="3uibUv" id="j1" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4394792474684970492" />
    </node>
    <node concept="3clFbW" id="j2" role="jymVt">
      <uo k="s:originTrace" v="n:4394792474684970492" />
      <node concept="3cqZAl" id="j9" role="3clF45">
        <uo k="s:originTrace" v="n:4394792474684970492" />
      </node>
      <node concept="3clFbS" id="ja" role="3clF47">
        <uo k="s:originTrace" v="n:4394792474684970492" />
        <node concept="XkiVB" id="jc" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="1BaE9c" id="jd" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="DtoFlatteningRule$GR" />
            <uo k="s:originTrace" v="n:4394792474684970492" />
            <node concept="2YIFZM" id="je" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4394792474684970492" />
              <node concept="1adDum" id="jf" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
              </node>
              <node concept="1adDum" id="jg" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
              </node>
              <node concept="1adDum" id="jh" role="37wK5m">
                <property role="1adDun" value="0x12da95fb99e0f985L" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
              </node>
              <node concept="Xl_RD" id="ji" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.DtoFlatteningRule" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="jb" role="1B3o_S">
        <uo k="s:originTrace" v="n:4394792474684970492" />
      </node>
    </node>
    <node concept="2tJIrI" id="j3" role="jymVt">
      <uo k="s:originTrace" v="n:4394792474684970492" />
    </node>
    <node concept="3clFb_" id="j4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:4394792474684970492" />
      <node concept="3Tm1VV" id="jj" role="1B3o_S">
        <uo k="s:originTrace" v="n:4394792474684970492" />
      </node>
      <node concept="3uibUv" id="jk" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:4394792474684970492" />
        <node concept="3uibUv" id="jn" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
        <node concept="3uibUv" id="jo" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
      </node>
      <node concept="3clFbS" id="jl" role="3clF47">
        <uo k="s:originTrace" v="n:4394792474684970492" />
        <node concept="3clFbF" id="jp" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="2ShNRf" id="jq" role="3clFbG">
            <uo k="s:originTrace" v="n:4394792474684970492" />
            <node concept="YeOm9" id="jr" role="2ShVmc">
              <uo k="s:originTrace" v="n:4394792474684970492" />
              <node concept="1Y3b0j" id="js" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
                <node concept="3Tm1VV" id="jt" role="1B3o_S">
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
                <node concept="3clFb_" id="ju" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                  <node concept="3Tm1VV" id="jx" role="1B3o_S">
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                  </node>
                  <node concept="2AHcQZ" id="jy" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                  </node>
                  <node concept="3uibUv" id="jz" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                  </node>
                  <node concept="37vLTG" id="j$" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                    <node concept="3uibUv" id="jB" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:4394792474684970492" />
                    </node>
                    <node concept="2AHcQZ" id="jC" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:4394792474684970492" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="j_" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                    <node concept="3uibUv" id="jD" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:4394792474684970492" />
                    </node>
                    <node concept="2AHcQZ" id="jE" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:4394792474684970492" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="jA" role="3clF47">
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                    <node concept="3cpWs6" id="jF" role="3cqZAp">
                      <uo k="s:originTrace" v="n:4394792474684970492" />
                      <node concept="2ShNRf" id="jG" role="3cqZAk">
                        <uo k="s:originTrace" v="n:1609993669778203965" />
                        <node concept="YeOm9" id="jH" role="2ShVmc">
                          <uo k="s:originTrace" v="n:1609993669778203965" />
                          <node concept="1Y3b0j" id="jI" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                            <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                            <uo k="s:originTrace" v="n:1609993669778203965" />
                            <node concept="3Tm1VV" id="jJ" role="1B3o_S">
                              <uo k="s:originTrace" v="n:1609993669778203965" />
                            </node>
                            <node concept="3clFb_" id="jK" role="jymVt">
                              <property role="TrG5h" value="getSearchScopeValidatorNode" />
                              <uo k="s:originTrace" v="n:1609993669778203965" />
                              <node concept="3Tm1VV" id="jM" role="1B3o_S">
                                <uo k="s:originTrace" v="n:1609993669778203965" />
                              </node>
                              <node concept="3uibUv" id="jN" role="3clF45">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                <uo k="s:originTrace" v="n:1609993669778203965" />
                              </node>
                              <node concept="3clFbS" id="jO" role="3clF47">
                                <uo k="s:originTrace" v="n:1609993669778203965" />
                                <node concept="3cpWs6" id="jQ" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:1609993669778203965" />
                                  <node concept="2ShNRf" id="jR" role="3cqZAk">
                                    <uo k="s:originTrace" v="n:1609993669778203965" />
                                    <node concept="1pGfFk" id="jS" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:1609993669778203965" />
                                      <node concept="Xl_RD" id="jT" role="37wK5m">
                                        <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                                        <uo k="s:originTrace" v="n:1609993669778203965" />
                                      </node>
                                      <node concept="Xl_RD" id="jU" role="37wK5m">
                                        <property role="Xl_RC" value="1609993669778203965" />
                                        <uo k="s:originTrace" v="n:1609993669778203965" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="jP" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:1609993669778203965" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="jL" role="jymVt">
                              <property role="TrG5h" value="createScope" />
                              <uo k="s:originTrace" v="n:1609993669778203965" />
                              <node concept="3Tm1VV" id="jV" role="1B3o_S">
                                <uo k="s:originTrace" v="n:1609993669778203965" />
                              </node>
                              <node concept="3uibUv" id="jW" role="3clF45">
                                <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                <uo k="s:originTrace" v="n:1609993669778203965" />
                              </node>
                              <node concept="37vLTG" id="jX" role="3clF46">
                                <property role="TrG5h" value="_context" />
                                <property role="3TUv4t" value="true" />
                                <uo k="s:originTrace" v="n:1609993669778203965" />
                                <node concept="3uibUv" id="k0" role="1tU5fm">
                                  <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                  <uo k="s:originTrace" v="n:1609993669778203965" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="jY" role="3clF47">
                                <uo k="s:originTrace" v="n:1609993669778203965" />
                                <node concept="3cpWs8" id="k1" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:1609993669778207774" />
                                  <node concept="3cpWsn" id="k8" role="3cpWs9">
                                    <property role="TrG5h" value="component" />
                                    <uo k="s:originTrace" v="n:1609993669778207775" />
                                    <node concept="3Tqbb2" id="k9" role="1tU5fm">
                                      <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                      <uo k="s:originTrace" v="n:1609993669778207747" />
                                    </node>
                                    <node concept="2OqwBi" id="ka" role="33vP2m">
                                      <uo k="s:originTrace" v="n:1609993669778207776" />
                                      <node concept="1DoJHT" id="kb" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getContextNode" />
                                        <uo k="s:originTrace" v="n:1609993669778207777" />
                                        <node concept="3uibUv" id="kd" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="ke" role="1EMhIo">
                                          <ref role="3cqZAo" node="jX" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="2Xjw5R" id="kc" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:1609993669778207778" />
                                        <node concept="1xMEDy" id="kf" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:1609993669778207779" />
                                          <node concept="chp4Y" id="kh" role="ri$Ld">
                                            <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                            <uo k="s:originTrace" v="n:1609993669778207780" />
                                          </node>
                                        </node>
                                        <node concept="1xIGOp" id="kg" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:1609993669778207781" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="k2" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:1609993669778208312" />
                                </node>
                                <node concept="Jncv_" id="k3" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                                  <uo k="s:originTrace" v="n:1609993669778206019" />
                                  <node concept="37vLTw" id="ki" role="JncvB">
                                    <ref role="3cqZAo" node="k8" resolve="component" />
                                    <uo k="s:originTrace" v="n:1609993669778207986" />
                                  </node>
                                  <node concept="3clFbS" id="kj" role="Jncv$">
                                    <uo k="s:originTrace" v="n:1609993669778206023" />
                                    <node concept="3cpWs6" id="kl" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6888900829723984262" />
                                      <node concept="2OqwBi" id="km" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:1609993669778208414" />
                                        <node concept="Xjq3P" id="kn" role="2Oq$k0">
                                          <ref role="1HBi2w" node="iZ" resolve="DtoFlatteningRule_Constraints" />
                                          <uo k="s:originTrace" v="n:1609993669778208417" />
                                        </node>
                                        <node concept="liA8E" id="ko" role="2OqNvi">
                                          <ref role="37wK5l" node="j7" resolve="_additional_provideDtoFlatDerivationRuleScope" />
                                          <uo k="s:originTrace" v="n:1609993669778208419" />
                                          <node concept="Jnkvi" id="kp" role="37wK5m">
                                            <ref role="1M0zk5" node="kk" resolve="flatRule" />
                                            <uo k="s:originTrace" v="n:1609993669778208670" />
                                          </node>
                                          <node concept="1DoJHT" id="kq" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:1609993669778208813" />
                                            <node concept="3uibUv" id="kr" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="ks" role="1EMhIo">
                                              <ref role="3cqZAo" node="jX" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="kk" role="JncvA">
                                    <property role="TrG5h" value="flatRule" />
                                    <uo k="s:originTrace" v="n:1609993669778206025" />
                                    <node concept="2jxLKc" id="kt" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:1609993669778206026" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="k4" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:6888900829723983754" />
                                </node>
                                <node concept="Jncv_" id="k5" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                                  <uo k="s:originTrace" v="n:6888900829723983982" />
                                  <node concept="37vLTw" id="ku" role="JncvB">
                                    <ref role="3cqZAo" node="k8" resolve="component" />
                                    <uo k="s:originTrace" v="n:6888900829723984083" />
                                  </node>
                                  <node concept="3clFbS" id="kv" role="Jncv$">
                                    <uo k="s:originTrace" v="n:6888900829723983986" />
                                    <node concept="3cpWs6" id="kx" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6888900829723992511" />
                                      <node concept="2OqwBi" id="ky" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:6888900829723992863" />
                                        <node concept="Xjq3P" id="kz" role="2Oq$k0">
                                          <ref role="1HBi2w" node="iZ" resolve="DtoFlatteningRule_Constraints" />
                                          <uo k="s:originTrace" v="n:6888900829723992866" />
                                        </node>
                                        <node concept="liA8E" id="k$" role="2OqNvi">
                                          <ref role="37wK5l" node="j8" resolve="_additional_provideDtoRuleScope" />
                                          <uo k="s:originTrace" v="n:6888900829723992868" />
                                          <node concept="Jnkvi" id="k_" role="37wK5m">
                                            <ref role="1M0zk5" node="kw" resolve="dto" />
                                            <uo k="s:originTrace" v="n:6888900829723992975" />
                                          </node>
                                          <node concept="1DoJHT" id="kA" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:6888900829723993209" />
                                            <node concept="3uibUv" id="kB" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="kC" role="1EMhIo">
                                              <ref role="3cqZAo" node="jX" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="kw" role="JncvA">
                                    <property role="TrG5h" value="dto" />
                                    <uo k="s:originTrace" v="n:6888900829723983988" />
                                    <node concept="2jxLKc" id="kD" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:6888900829723983989" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="k6" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:1609993669778205851" />
                                </node>
                                <node concept="3clFbF" id="k7" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:1609993669778205318" />
                                  <node concept="2ShNRf" id="kE" role="3clFbG">
                                    <uo k="s:originTrace" v="n:1609993669778205314" />
                                    <node concept="1pGfFk" id="kF" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                      <uo k="s:originTrace" v="n:1609993669778205761" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="jZ" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:1609993669778203965" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="jv" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
                <node concept="3uibUv" id="jw" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="jm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:4394792474684970492" />
      </node>
    </node>
    <node concept="312cEu" id="j5" role="jymVt">
      <property role="TrG5h" value="NameConvention_Property" />
      <uo k="s:originTrace" v="n:4394792474684970492" />
      <node concept="3clFbW" id="kG" role="jymVt">
        <uo k="s:originTrace" v="n:4394792474684970492" />
        <node concept="3cqZAl" id="kL" role="3clF45">
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
        <node concept="3Tm1VV" id="kM" role="1B3o_S">
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
        <node concept="3clFbS" id="kN" role="3clF47">
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="XkiVB" id="kP" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4394792474684970492" />
            <node concept="1BaE9c" id="kQ" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="nameConvention$LtCG" />
              <uo k="s:originTrace" v="n:4394792474684970492" />
              <node concept="2YIFZM" id="kV" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
                <node concept="1adDum" id="kW" role="37wK5m">
                  <property role="1adDun" value="0xfe04f903cef2451dL" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
                <node concept="1adDum" id="kX" role="37wK5m">
                  <property role="1adDun" value="0x9401426cad0a8857L" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
                <node concept="1adDum" id="kY" role="37wK5m">
                  <property role="1adDun" value="0x12da95fb99e0f985L" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
                <node concept="1adDum" id="kZ" role="37wK5m">
                  <property role="1adDun" value="0x3cfd70789aff025eL" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
                <node concept="Xl_RD" id="l0" role="37wK5m">
                  <property role="Xl_RC" value="nameConvention" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="kR" role="37wK5m">
              <ref role="3cqZAo" node="kO" resolve="container" />
              <uo k="s:originTrace" v="n:4394792474684970492" />
            </node>
            <node concept="3clFbT" id="kS" role="37wK5m">
              <uo k="s:originTrace" v="n:4394792474684970492" />
            </node>
            <node concept="3clFbT" id="kT" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4394792474684970492" />
            </node>
            <node concept="3clFbT" id="kU" role="37wK5m">
              <uo k="s:originTrace" v="n:4394792474684970492" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="kO" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="3uibUv" id="l1" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4394792474684970492" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="kH" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setPropertyValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4394792474684970492" />
        <node concept="3Tm1VV" id="l2" role="1B3o_S">
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
        <node concept="3cqZAl" id="l3" role="3clF45">
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
        <node concept="37vLTG" id="l4" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="3Tqbb2" id="l8" role="1tU5fm">
            <uo k="s:originTrace" v="n:4394792474684970492" />
          </node>
        </node>
        <node concept="37vLTG" id="l5" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="3uibUv" id="l9" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:4394792474684970492" />
          </node>
        </node>
        <node concept="2AHcQZ" id="l6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
        <node concept="3clFbS" id="l7" role="3clF47">
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="3clFbF" id="la" role="3cqZAp">
            <uo k="s:originTrace" v="n:4394792474684970492" />
            <node concept="1rXfSq" id="lb" role="3clFbG">
              <ref role="37wK5l" node="kI" resolve="staticSetPropertyValue" />
              <uo k="s:originTrace" v="n:4394792474684970492" />
              <node concept="37vLTw" id="lc" role="37wK5m">
                <ref role="3cqZAo" node="l4" resolve="node" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
              </node>
              <node concept="2YIFZM" id="ld" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                <ref role="37wK5l" to="i8bi:7xvVBHRispT" resolve="castEnummember" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
                <node concept="37vLTw" id="le" role="37wK5m">
                  <ref role="3cqZAo" node="l5" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="kI" role="jymVt">
        <property role="TrG5h" value="staticSetPropertyValue" />
        <uo k="s:originTrace" v="n:4394792474684970492" />
        <node concept="3clFbS" id="lf" role="3clF47">
          <uo k="s:originTrace" v="n:4394792474684970577" />
          <node concept="3clFbJ" id="lk" role="3cqZAp">
            <uo k="s:originTrace" v="n:4394792474684974832" />
            <node concept="3clFbS" id="lm" role="3clFbx">
              <uo k="s:originTrace" v="n:4394792474684974834" />
              <node concept="3clFbF" id="lo" role="3cqZAp">
                <uo k="s:originTrace" v="n:4394792474684975329" />
                <node concept="2OqwBi" id="lp" role="3clFbG">
                  <uo k="s:originTrace" v="n:4394792474684977324" />
                  <node concept="2OqwBi" id="lq" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:4394792474684975351" />
                    <node concept="37vLTw" id="ls" role="2Oq$k0">
                      <ref role="3cqZAo" node="li" resolve="node" />
                      <uo k="s:originTrace" v="n:4394792474684975328" />
                    </node>
                    <node concept="3TrEf2" id="lt" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                      <uo k="s:originTrace" v="n:4394792474684976598" />
                    </node>
                  </node>
                  <node concept="3YRAZt" id="lr" role="2OqNvi">
                    <uo k="s:originTrace" v="n:4394792474684978432" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="ln" role="3clFbw">
              <uo k="s:originTrace" v="n:4394792474684975025" />
              <node concept="37vLTw" id="lu" role="2Oq$k0">
                <ref role="3cqZAo" node="lj" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:4394792474684974897" />
              </node>
              <node concept="21noJN" id="lv" role="2OqNvi">
                <uo k="s:originTrace" v="n:4394792474684975132" />
                <node concept="21nZrQ" id="lw" role="21noJM">
                  <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
                  <uo k="s:originTrace" v="n:4394792474684975134" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="ll" role="3cqZAp">
            <uo k="s:originTrace" v="n:4394792474684970829" />
            <node concept="2OqwBi" id="lx" role="3clFbG">
              <uo k="s:originTrace" v="n:4394792474684973415" />
              <node concept="2OqwBi" id="ly" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4394792474684971672" />
                <node concept="37vLTw" id="l$" role="2Oq$k0">
                  <ref role="3cqZAo" node="li" resolve="node" />
                  <uo k="s:originTrace" v="n:4394792474684970828" />
                </node>
                <node concept="3TrcHB" id="l_" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
                  <uo k="s:originTrace" v="n:4394792474684972805" />
                </node>
              </node>
              <node concept="tyxLq" id="lz" role="2OqNvi">
                <uo k="s:originTrace" v="n:4394792474684974176" />
                <node concept="37vLTw" id="lA" role="tz02z">
                  <ref role="3cqZAo" node="lj" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:4394792474684974533" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="lg" role="1B3o_S">
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
        <node concept="3cqZAl" id="lh" role="3clF45">
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
        <node concept="37vLTG" id="li" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="3Tqbb2" id="lB" role="1tU5fm">
            <uo k="s:originTrace" v="n:4394792474684970492" />
          </node>
        </node>
        <node concept="37vLTG" id="lj" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="3uibUv" id="lC" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SEnumerationLiteral" resolve="SEnumerationLiteral" />
            <uo k="s:originTrace" v="n:4394792474684970492" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="kJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:4394792474684970492" />
      </node>
      <node concept="3uibUv" id="kK" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4394792474684970492" />
      </node>
    </node>
    <node concept="3clFb_" id="j6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:4394792474684970492" />
      <node concept="3Tmbuc" id="lD" role="1B3o_S">
        <uo k="s:originTrace" v="n:4394792474684970492" />
      </node>
      <node concept="3uibUv" id="lE" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:4394792474684970492" />
        <node concept="3uibUv" id="lH" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
        <node concept="3uibUv" id="lI" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4394792474684970492" />
        </node>
      </node>
      <node concept="3clFbS" id="lF" role="3clF47">
        <uo k="s:originTrace" v="n:4394792474684970492" />
        <node concept="3cpWs8" id="lJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="3cpWsn" id="lM" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:4394792474684970492" />
            <node concept="3uibUv" id="lN" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:4394792474684970492" />
              <node concept="3uibUv" id="lP" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
              </node>
              <node concept="3uibUv" id="lQ" role="11_B2D">
                <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
              </node>
            </node>
            <node concept="2ShNRf" id="lO" role="33vP2m">
              <uo k="s:originTrace" v="n:4394792474684970492" />
              <node concept="1pGfFk" id="lR" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
                <node concept="3uibUv" id="lS" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
                <node concept="3uibUv" id="lT" role="1pMfVU">
                  <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lK" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="2OqwBi" id="lU" role="3clFbG">
            <uo k="s:originTrace" v="n:4394792474684970492" />
            <node concept="37vLTw" id="lV" role="2Oq$k0">
              <ref role="3cqZAo" node="lM" resolve="properties" />
              <uo k="s:originTrace" v="n:4394792474684970492" />
            </node>
            <node concept="liA8E" id="lW" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:4394792474684970492" />
              <node concept="1BaE9c" id="lX" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="nameConvention$LtCG" />
                <uo k="s:originTrace" v="n:4394792474684970492" />
                <node concept="2YIFZM" id="lZ" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                  <node concept="1adDum" id="m0" role="37wK5m">
                    <property role="1adDun" value="0xfe04f903cef2451dL" />
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                  </node>
                  <node concept="1adDum" id="m1" role="37wK5m">
                    <property role="1adDun" value="0x9401426cad0a8857L" />
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                  </node>
                  <node concept="1adDum" id="m2" role="37wK5m">
                    <property role="1adDun" value="0x12da95fb99e0f985L" />
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                  </node>
                  <node concept="1adDum" id="m3" role="37wK5m">
                    <property role="1adDun" value="0x3cfd70789aff025eL" />
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                  </node>
                  <node concept="Xl_RD" id="m4" role="37wK5m">
                    <property role="Xl_RC" value="nameConvention" />
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="lY" role="37wK5m">
                <uo k="s:originTrace" v="n:4394792474684970492" />
                <node concept="1pGfFk" id="m5" role="2ShVmc">
                  <ref role="37wK5l" node="kG" resolve="DtoFlatteningRule_Constraints.NameConvention_Property" />
                  <uo k="s:originTrace" v="n:4394792474684970492" />
                  <node concept="Xjq3P" id="m6" role="37wK5m">
                    <uo k="s:originTrace" v="n:4394792474684970492" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lL" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474684970492" />
          <node concept="37vLTw" id="m7" role="3clFbG">
            <ref role="3cqZAo" node="lM" resolve="properties" />
            <uo k="s:originTrace" v="n:4394792474684970492" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="lG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:4394792474684970492" />
      </node>
    </node>
    <node concept="3clFb_" id="j7" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoFlatDerivationRuleScope" />
      <uo k="s:originTrace" v="n:1609993669778204279" />
      <node concept="3uibUv" id="m8" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:1609993669778204526" />
      </node>
      <node concept="3Tm6S6" id="m9" role="1B3o_S">
        <uo k="s:originTrace" v="n:1609993669778204282" />
      </node>
      <node concept="3clFbS" id="ma" role="3clF47">
        <uo k="s:originTrace" v="n:1609993669778204281" />
        <node concept="3clFbJ" id="md" role="3cqZAp">
          <uo k="s:originTrace" v="n:1609993669778210460" />
          <node concept="3clFbS" id="mg" role="3clFbx">
            <uo k="s:originTrace" v="n:1609993669778210462" />
            <node concept="3clFbF" id="mi" role="3cqZAp">
              <uo k="s:originTrace" v="n:6888900829723973191" />
              <node concept="2OqwBi" id="mp" role="3clFbG">
                <uo k="s:originTrace" v="n:6888900829723974795" />
                <node concept="37vLTw" id="mq" role="2Oq$k0">
                  <ref role="3cqZAo" node="mb" resolve="node" />
                  <uo k="s:originTrace" v="n:6888900829723973189" />
                </node>
                <node concept="2qgKlT" id="mr" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5YqiGT0qq9q" resolve="usedDerivationRules" />
                  <uo k="s:originTrace" v="n:6888900829723976434" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="mj" role="3cqZAp">
              <uo k="s:originTrace" v="n:6888900829723976995" />
            </node>
            <node concept="3cpWs8" id="mk" role="3cqZAp">
              <uo k="s:originTrace" v="n:1609993669778223275" />
              <node concept="3cpWsn" id="ms" role="3cpWs9">
                <property role="TrG5h" value="dtoFlattteningRules" />
                <uo k="s:originTrace" v="n:1609993669778223276" />
                <node concept="A3Dl8" id="mt" role="1tU5fm">
                  <uo k="s:originTrace" v="n:1609993669778222887" />
                  <node concept="3Tqbb2" id="mv" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    <uo k="s:originTrace" v="n:1609993669778222890" />
                  </node>
                </node>
                <node concept="2OqwBi" id="mu" role="33vP2m">
                  <uo k="s:originTrace" v="n:1609993669778223277" />
                  <node concept="2OqwBi" id="mw" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1609993669778223278" />
                    <node concept="37vLTw" id="my" role="2Oq$k0">
                      <ref role="3cqZAo" node="mb" resolve="node" />
                      <uo k="s:originTrace" v="n:1609993669778223279" />
                    </node>
                    <node concept="2qgKlT" id="mz" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                      <uo k="s:originTrace" v="n:1609993669778223280" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="mx" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:E4RYE8KrhY" resolve="dtoExplicitFlattteningRules" />
                    <uo k="s:originTrace" v="n:1609993669778223281" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="ml" role="3cqZAp">
              <uo k="s:originTrace" v="n:1609993669778235934" />
              <node concept="3cpWsn" id="m$" role="3cpWs9">
                <property role="TrG5h" value="usedFlatteningRules" />
                <uo k="s:originTrace" v="n:1609993669778235935" />
                <node concept="A3Dl8" id="m_" role="1tU5fm">
                  <uo k="s:originTrace" v="n:1609993669778235797" />
                  <node concept="3Tqbb2" id="mB" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    <uo k="s:originTrace" v="n:1609993669778235800" />
                  </node>
                </node>
                <node concept="2OqwBi" id="mA" role="33vP2m">
                  <uo k="s:originTrace" v="n:1609993669778235936" />
                  <node concept="37vLTw" id="mC" role="2Oq$k0">
                    <ref role="3cqZAo" node="mb" resolve="node" />
                    <uo k="s:originTrace" v="n:1609993669778235937" />
                  </node>
                  <node concept="2qgKlT" id="mD" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5QsWOhW8P2M" resolve="findUsedFlatteningRules" />
                    <uo k="s:originTrace" v="n:1609993669778235938" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="mm" role="3cqZAp">
              <uo k="s:originTrace" v="n:1609993669778253461" />
              <node concept="3cpWsn" id="mE" role="3cpWs9">
                <property role="TrG5h" value="resultFlatteningRules" />
                <uo k="s:originTrace" v="n:1609993669778253462" />
                <node concept="A3Dl8" id="mF" role="1tU5fm">
                  <uo k="s:originTrace" v="n:1609993669778253351" />
                  <node concept="3Tqbb2" id="mH" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    <uo k="s:originTrace" v="n:1609993669778253354" />
                  </node>
                </node>
                <node concept="2OqwBi" id="mG" role="33vP2m">
                  <uo k="s:originTrace" v="n:1609993669778253463" />
                  <node concept="37vLTw" id="mI" role="2Oq$k0">
                    <ref role="3cqZAo" node="ms" resolve="dtoFlattteningRules" />
                    <uo k="s:originTrace" v="n:1609993669778253464" />
                  </node>
                  <node concept="3zZkjj" id="mJ" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1609993669778253465" />
                    <node concept="1bVj0M" id="mK" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <uo k="s:originTrace" v="n:1609993669778253466" />
                      <node concept="3clFbS" id="mL" role="1bW5cS">
                        <uo k="s:originTrace" v="n:1609993669778253467" />
                        <node concept="3clFbF" id="mN" role="3cqZAp">
                          <uo k="s:originTrace" v="n:757976835714859288" />
                          <node concept="22lmx$" id="mO" role="3clFbG">
                            <uo k="s:originTrace" v="n:757976835714859289" />
                            <node concept="3clFbC" id="mP" role="3uHU7B">
                              <uo k="s:originTrace" v="n:757976835714859290" />
                              <node concept="37vLTw" id="mR" role="3uHU7B">
                                <ref role="3cqZAo" node="mM" resolve="it" />
                                <uo k="s:originTrace" v="n:757976835714859291" />
                              </node>
                              <node concept="2OqwBi" id="mS" role="3uHU7w">
                                <uo k="s:originTrace" v="n:757976835714859292" />
                                <node concept="1PxgMI" id="mT" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <uo k="s:originTrace" v="n:757976835714859293" />
                                  <node concept="chp4Y" id="mV" role="3oSUPX">
                                    <ref role="cht4Q" to="3nll:5YqiGT0mxNQ" resolve="IDtoDerivationRuleReference" />
                                    <uo k="s:originTrace" v="n:757976835714859294" />
                                  </node>
                                  <node concept="37vLTw" id="mW" role="1m5AlR">
                                    <ref role="3cqZAo" node="mc" resolve="contextNode" />
                                    <uo k="s:originTrace" v="n:757976835714859295" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="mU" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:5YqiGT0mxXR" resolve="getReferencedRule" />
                                  <uo k="s:originTrace" v="n:757976835714859296" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="mQ" role="3uHU7w">
                              <uo k="s:originTrace" v="n:757976835714859297" />
                              <node concept="2OqwBi" id="mX" role="3fr31v">
                                <uo k="s:originTrace" v="n:757976835714859298" />
                                <node concept="37vLTw" id="mY" role="2Oq$k0">
                                  <ref role="3cqZAo" node="m$" resolve="usedFlatteningRules" />
                                  <uo k="s:originTrace" v="n:757976835714859299" />
                                </node>
                                <node concept="3JPx81" id="mZ" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:757976835714859300" />
                                  <node concept="37vLTw" id="n0" role="25WWJ7">
                                    <ref role="3cqZAo" node="mM" resolve="it" />
                                    <uo k="s:originTrace" v="n:757976835714859301" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="mM" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:1609993669778253487" />
                        <node concept="2jxLKc" id="n1" role="1tU5fm">
                          <uo k="s:originTrace" v="n:1609993669778253488" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="mn" role="3cqZAp">
              <uo k="s:originTrace" v="n:1609993669778257620" />
            </node>
            <node concept="3cpWs6" id="mo" role="3cqZAp">
              <uo k="s:originTrace" v="n:1609993669778259292" />
              <node concept="2YIFZM" id="n2" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:1609993669778263072" />
                <node concept="37vLTw" id="n3" role="37wK5m">
                  <ref role="3cqZAo" node="mE" resolve="resultFlatteningRules" />
                  <uo k="s:originTrace" v="n:1609993669778263656" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="mh" role="3clFbw">
            <uo k="s:originTrace" v="n:1609993669778212922" />
            <node concept="17R0WA" id="n4" role="3uHU7w">
              <uo k="s:originTrace" v="n:1609993669778216077" />
              <node concept="359W_D" id="n6" role="3uHU7w">
                <ref role="359W_E" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                <ref role="359W_F" to="3nll:5QsWOhW8vfl" resolve="derivationRuleReferences" />
                <uo k="s:originTrace" v="n:1609993669778216224" />
              </node>
              <node concept="2OqwBi" id="n7" role="3uHU7B">
                <uo k="s:originTrace" v="n:1609993669778213452" />
                <node concept="37vLTw" id="n8" role="2Oq$k0">
                  <ref role="3cqZAo" node="mc" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:1609993669778213059" />
                </node>
                <node concept="2NL2c5" id="n9" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1609993669778214041" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="n5" role="3uHU7B">
              <uo k="s:originTrace" v="n:1609993669778211507" />
              <node concept="37vLTw" id="na" role="3uHU7B">
                <ref role="3cqZAo" node="mb" resolve="node" />
                <uo k="s:originTrace" v="n:1609993669778210575" />
              </node>
              <node concept="37vLTw" id="nb" role="3uHU7w">
                <ref role="3cqZAo" node="mc" resolve="contextNode" />
                <uo k="s:originTrace" v="n:1609993669778212072" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="me" role="3cqZAp">
          <uo k="s:originTrace" v="n:1609993669778210237" />
        </node>
        <node concept="3clFbF" id="mf" role="3cqZAp">
          <uo k="s:originTrace" v="n:1609993669778209291" />
          <node concept="2ShNRf" id="nc" role="3clFbG">
            <uo k="s:originTrace" v="n:1609993669778209287" />
            <node concept="1pGfFk" id="nd" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:1609993669778210133" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="mb" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1609993669778204723" />
        <node concept="3Tqbb2" id="ne" role="1tU5fm">
          <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
          <uo k="s:originTrace" v="n:1609993669778204905" />
        </node>
      </node>
      <node concept="37vLTG" id="mc" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:1609993669778204998" />
        <node concept="3Tqbb2" id="nf" role="1tU5fm">
          <uo k="s:originTrace" v="n:1609993669778205104" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="j8" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoRuleScope" />
      <uo k="s:originTrace" v="n:6888900829723984407" />
      <node concept="3uibUv" id="ng" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:6888900829723984412" />
      </node>
      <node concept="3Tm6S6" id="nh" role="1B3o_S">
        <uo k="s:originTrace" v="n:6888900829723984487" />
      </node>
      <node concept="3clFbS" id="ni" role="3clF47">
        <uo k="s:originTrace" v="n:6888900829723984413" />
        <node concept="3clFbJ" id="nl" role="3cqZAp">
          <uo k="s:originTrace" v="n:6888900829723984414" />
          <node concept="3clFbS" id="no" role="3clFbx">
            <uo k="s:originTrace" v="n:6888900829723984415" />
            <node concept="3clFbF" id="nq" role="3cqZAp">
              <uo k="s:originTrace" v="n:6888900829723984416" />
              <node concept="2OqwBi" id="nx" role="3clFbG">
                <uo k="s:originTrace" v="n:6888900829723984417" />
                <node concept="37vLTw" id="ny" role="2Oq$k0">
                  <ref role="3cqZAo" node="nj" resolve="node" />
                  <uo k="s:originTrace" v="n:6888900829723984418" />
                </node>
                <node concept="2qgKlT" id="nz" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5YqiGT0qq9q" resolve="usedDerivationRules" />
                  <uo k="s:originTrace" v="n:6888900829723984419" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="nr" role="3cqZAp">
              <uo k="s:originTrace" v="n:6888900829723984420" />
            </node>
            <node concept="3cpWs8" id="ns" role="3cqZAp">
              <uo k="s:originTrace" v="n:6888900829723984421" />
              <node concept="3cpWsn" id="n$" role="3cpWs9">
                <property role="TrG5h" value="dtoFlattteningRules" />
                <uo k="s:originTrace" v="n:6888900829723984422" />
                <node concept="A3Dl8" id="n_" role="1tU5fm">
                  <uo k="s:originTrace" v="n:6888900829723984423" />
                  <node concept="3Tqbb2" id="nB" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    <uo k="s:originTrace" v="n:6888900829723984424" />
                  </node>
                </node>
                <node concept="2OqwBi" id="nA" role="33vP2m">
                  <uo k="s:originTrace" v="n:6888900829723984425" />
                  <node concept="2OqwBi" id="nC" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:6888900829723984426" />
                    <node concept="37vLTw" id="nE" role="2Oq$k0">
                      <ref role="3cqZAo" node="nj" resolve="node" />
                      <uo k="s:originTrace" v="n:6888900829723984427" />
                    </node>
                    <node concept="2qgKlT" id="nF" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                      <uo k="s:originTrace" v="n:6888900829723984428" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="nD" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:E4RYE8KrhY" resolve="dtoExplicitFlattteningRules" />
                    <uo k="s:originTrace" v="n:6888900829723984429" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="nt" role="3cqZAp">
              <uo k="s:originTrace" v="n:6888900829723984430" />
              <node concept="3cpWsn" id="nG" role="3cpWs9">
                <property role="TrG5h" value="usedFlatteningRules" />
                <uo k="s:originTrace" v="n:6888900829723984431" />
                <node concept="A3Dl8" id="nH" role="1tU5fm">
                  <uo k="s:originTrace" v="n:6888900829723984432" />
                  <node concept="3Tqbb2" id="nJ" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    <uo k="s:originTrace" v="n:6888900829723984433" />
                  </node>
                </node>
                <node concept="2OqwBi" id="nI" role="33vP2m">
                  <uo k="s:originTrace" v="n:6888900829723984434" />
                  <node concept="37vLTw" id="nK" role="2Oq$k0">
                    <ref role="3cqZAo" node="nj" resolve="node" />
                    <uo k="s:originTrace" v="n:6888900829723984435" />
                  </node>
                  <node concept="2qgKlT" id="nL" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5QsWOhW8P2M" resolve="findUsedFlatteningRules" />
                    <uo k="s:originTrace" v="n:6888900829723984436" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="nu" role="3cqZAp">
              <uo k="s:originTrace" v="n:6888900829723984437" />
              <node concept="3cpWsn" id="nM" role="3cpWs9">
                <property role="TrG5h" value="resultFlatteningRules" />
                <uo k="s:originTrace" v="n:6888900829723984438" />
                <node concept="A3Dl8" id="nN" role="1tU5fm">
                  <uo k="s:originTrace" v="n:6888900829723984439" />
                  <node concept="3Tqbb2" id="nP" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    <uo k="s:originTrace" v="n:6888900829723984440" />
                  </node>
                </node>
                <node concept="2OqwBi" id="nO" role="33vP2m">
                  <uo k="s:originTrace" v="n:6888900829723984441" />
                  <node concept="37vLTw" id="nQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="n$" resolve="dtoFlattteningRules" />
                    <uo k="s:originTrace" v="n:6888900829723984442" />
                  </node>
                  <node concept="3zZkjj" id="nR" role="2OqNvi">
                    <uo k="s:originTrace" v="n:6888900829723984443" />
                    <node concept="1bVj0M" id="nS" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <uo k="s:originTrace" v="n:6888900829723984444" />
                      <node concept="3clFbS" id="nT" role="1bW5cS">
                        <uo k="s:originTrace" v="n:6888900829723984445" />
                        <node concept="3clFbF" id="nV" role="3cqZAp">
                          <uo k="s:originTrace" v="n:6888900829723984446" />
                          <node concept="22lmx$" id="nW" role="3clFbG">
                            <uo k="s:originTrace" v="n:6888900829724939004" />
                            <node concept="3clFbC" id="nX" role="3uHU7B">
                              <uo k="s:originTrace" v="n:6888900829723984457" />
                              <node concept="37vLTw" id="nZ" role="3uHU7B">
                                <ref role="3cqZAo" node="nU" resolve="it" />
                                <uo k="s:originTrace" v="n:6888900829723984458" />
                              </node>
                              <node concept="2OqwBi" id="o0" role="3uHU7w">
                                <uo k="s:originTrace" v="n:6888900829725903290" />
                                <node concept="1PxgMI" id="o1" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <uo k="s:originTrace" v="n:6888900829725899855" />
                                  <node concept="chp4Y" id="o3" role="3oSUPX">
                                    <ref role="cht4Q" to="3nll:5YqiGT0mxNQ" resolve="IDtoDerivationRuleReference" />
                                    <uo k="s:originTrace" v="n:6888900829725901984" />
                                  </node>
                                  <node concept="37vLTw" id="o4" role="1m5AlR">
                                    <ref role="3cqZAo" node="nk" resolve="contextNode" />
                                    <uo k="s:originTrace" v="n:6888900829723984459" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="o2" role="2OqNvi">
                                  <ref role="37wK5l" to="sx7w:5YqiGT0mxXR" resolve="getReferencedRule" />
                                  <uo k="s:originTrace" v="n:6888900829725904447" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="nY" role="3uHU7w">
                              <uo k="s:originTrace" v="n:6888900829723984460" />
                              <node concept="2OqwBi" id="o5" role="3fr31v">
                                <uo k="s:originTrace" v="n:6888900829723984461" />
                                <node concept="37vLTw" id="o6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="nG" resolve="usedFlatteningRules" />
                                  <uo k="s:originTrace" v="n:6888900829723984462" />
                                </node>
                                <node concept="3JPx81" id="o7" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6888900829723984463" />
                                  <node concept="37vLTw" id="o8" role="25WWJ7">
                                    <ref role="3cqZAo" node="nU" resolve="it" />
                                    <uo k="s:originTrace" v="n:6888900829723984464" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="nU" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:6888900829723984465" />
                        <node concept="2jxLKc" id="o9" role="1tU5fm">
                          <uo k="s:originTrace" v="n:6888900829723984466" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="nv" role="3cqZAp">
              <uo k="s:originTrace" v="n:6888900829723984470" />
            </node>
            <node concept="3cpWs6" id="nw" role="3cqZAp">
              <uo k="s:originTrace" v="n:6888900829723984471" />
              <node concept="2YIFZM" id="oa" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:6888900829723984472" />
                <node concept="37vLTw" id="ob" role="37wK5m">
                  <ref role="3cqZAo" node="nM" resolve="resultFlatteningRules" />
                  <uo k="s:originTrace" v="n:6888900829723984473" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="np" role="3clFbw">
            <uo k="s:originTrace" v="n:6888900829723984474" />
            <node concept="17R0WA" id="oc" role="3uHU7w">
              <uo k="s:originTrace" v="n:6888900829723984475" />
              <node concept="359W_D" id="oe" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                <ref role="359W_F" to="3nll:5QsWOhW8vfl" resolve="derivationRuleReferences" />
                <uo k="s:originTrace" v="n:6888900829723984476" />
              </node>
              <node concept="2OqwBi" id="of" role="3uHU7B">
                <uo k="s:originTrace" v="n:6888900829723984477" />
                <node concept="37vLTw" id="og" role="2Oq$k0">
                  <ref role="3cqZAo" node="nk" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:6888900829723984478" />
                </node>
                <node concept="2NL2c5" id="oh" role="2OqNvi">
                  <uo k="s:originTrace" v="n:6888900829723984479" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="od" role="3uHU7B">
              <uo k="s:originTrace" v="n:6888900829723984480" />
              <node concept="37vLTw" id="oi" role="3uHU7B">
                <ref role="3cqZAo" node="nj" resolve="node" />
                <uo k="s:originTrace" v="n:6888900829723984481" />
              </node>
              <node concept="37vLTw" id="oj" role="3uHU7w">
                <ref role="3cqZAo" node="nk" resolve="contextNode" />
                <uo k="s:originTrace" v="n:6888900829723984482" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="nm" role="3cqZAp">
          <uo k="s:originTrace" v="n:6888900829723984483" />
        </node>
        <node concept="3clFbF" id="nn" role="3cqZAp">
          <uo k="s:originTrace" v="n:6888900829723984484" />
          <node concept="2ShNRf" id="ok" role="3clFbG">
            <uo k="s:originTrace" v="n:6888900829723984485" />
            <node concept="1pGfFk" id="ol" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:6888900829723984486" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="nj" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:6888900829723984408" />
        <node concept="3Tqbb2" id="om" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          <uo k="s:originTrace" v="n:6888900829723984409" />
        </node>
      </node>
      <node concept="37vLTG" id="nk" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:6888900829723984410" />
        <node concept="3Tqbb2" id="on" role="1tU5fm">
          <uo k="s:originTrace" v="n:6888900829723984411" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="oo">
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="DtoReference_Constraints" />
    <uo k="s:originTrace" v="n:8348073396884651126" />
    <node concept="3Tm1VV" id="op" role="1B3o_S">
      <uo k="s:originTrace" v="n:8348073396884651126" />
    </node>
    <node concept="3uibUv" id="oq" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8348073396884651126" />
    </node>
    <node concept="3clFbW" id="or" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396884651126" />
      <node concept="3cqZAl" id="ou" role="3clF45">
        <uo k="s:originTrace" v="n:8348073396884651126" />
      </node>
      <node concept="3clFbS" id="ov" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396884651126" />
        <node concept="XkiVB" id="ox" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8348073396884651126" />
          <node concept="1BaE9c" id="oy" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="DtoReference$zV" />
            <uo k="s:originTrace" v="n:8348073396884651126" />
            <node concept="2YIFZM" id="oz" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8348073396884651126" />
              <node concept="1adDum" id="o$" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396884651126" />
              </node>
              <node concept="1adDum" id="o_" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396884651126" />
              </node>
              <node concept="1adDum" id="oA" role="37wK5m">
                <property role="1adDun" value="0x4f0a0db9ac16f906L" />
                <uo k="s:originTrace" v="n:8348073396884651126" />
              </node>
              <node concept="Xl_RD" id="oB" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.DtoReference" />
                <uo k="s:originTrace" v="n:8348073396884651126" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ow" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396884651126" />
      </node>
    </node>
    <node concept="2tJIrI" id="os" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396884651126" />
    </node>
    <node concept="3clFb_" id="ot" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:8348073396884651126" />
      <node concept="3Tm1VV" id="oC" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396884651126" />
      </node>
      <node concept="3uibUv" id="oD" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:8348073396884651126" />
        <node concept="3uibUv" id="oG" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396884651126" />
        </node>
        <node concept="3uibUv" id="oH" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396884651126" />
        </node>
      </node>
      <node concept="3clFbS" id="oE" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396884651126" />
        <node concept="3clFbF" id="oI" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396884651126" />
          <node concept="2ShNRf" id="oJ" role="3clFbG">
            <uo k="s:originTrace" v="n:8348073396884651126" />
            <node concept="YeOm9" id="oK" role="2ShVmc">
              <uo k="s:originTrace" v="n:8348073396884651126" />
              <node concept="1Y3b0j" id="oL" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:8348073396884651126" />
                <node concept="3Tm1VV" id="oM" role="1B3o_S">
                  <uo k="s:originTrace" v="n:8348073396884651126" />
                </node>
                <node concept="3clFb_" id="oN" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:8348073396884651126" />
                  <node concept="3Tm1VV" id="oQ" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8348073396884651126" />
                  </node>
                  <node concept="2AHcQZ" id="oR" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:8348073396884651126" />
                  </node>
                  <node concept="3uibUv" id="oS" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:8348073396884651126" />
                  </node>
                  <node concept="37vLTG" id="oT" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:8348073396884651126" />
                    <node concept="3uibUv" id="oW" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:8348073396884651126" />
                    </node>
                    <node concept="2AHcQZ" id="oX" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8348073396884651126" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="oU" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:8348073396884651126" />
                    <node concept="3uibUv" id="oY" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:8348073396884651126" />
                    </node>
                    <node concept="2AHcQZ" id="oZ" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:8348073396884651126" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="oV" role="3clF47">
                    <uo k="s:originTrace" v="n:8348073396884651126" />
                    <node concept="3cpWs6" id="p0" role="3cqZAp">
                      <uo k="s:originTrace" v="n:8348073396884651126" />
                      <node concept="2YIFZM" id="p1" role="3cqZAk">
                        <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
                        <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                        <uo k="s:originTrace" v="n:8348073396884651131" />
                        <node concept="35c_gC" id="p2" role="37wK5m">
                          <ref role="35c_gD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                          <uo k="s:originTrace" v="n:8348073396884651131" />
                        </node>
                        <node concept="2ShNRf" id="p3" role="37wK5m">
                          <uo k="s:originTrace" v="n:8348073396884651131" />
                          <node concept="1pGfFk" id="p4" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:8348073396884651131" />
                            <node concept="Xl_RD" id="p5" role="37wK5m">
                              <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                              <uo k="s:originTrace" v="n:8348073396884651131" />
                            </node>
                            <node concept="Xl_RD" id="p6" role="37wK5m">
                              <property role="Xl_RC" value="8348073396884651131" />
                              <uo k="s:originTrace" v="n:8348073396884651131" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="oO" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396884651126" />
                </node>
                <node concept="3uibUv" id="oP" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396884651126" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="oF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8348073396884651126" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="p7">
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="Dto_Constraints" />
    <uo k="s:originTrace" v="n:8348073396884651134" />
    <node concept="3Tm1VV" id="p8" role="1B3o_S">
      <uo k="s:originTrace" v="n:8348073396884651134" />
    </node>
    <node concept="3uibUv" id="p9" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8348073396884651134" />
    </node>
    <node concept="3clFbW" id="pa" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396884651134" />
      <node concept="3cqZAl" id="ph" role="3clF45">
        <uo k="s:originTrace" v="n:8348073396884651134" />
      </node>
      <node concept="3clFbS" id="pi" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396884651134" />
        <node concept="XkiVB" id="pk" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8348073396884651134" />
          <node concept="1BaE9c" id="pl" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Dto$yu" />
            <uo k="s:originTrace" v="n:8348073396884651134" />
            <node concept="2YIFZM" id="pm" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8348073396884651134" />
              <node concept="1adDum" id="pn" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396884651134" />
              </node>
              <node concept="1adDum" id="po" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396884651134" />
              </node>
              <node concept="1adDum" id="pp" role="37wK5m">
                <property role="1adDun" value="0x4f0a0db9ac16f903L" />
                <uo k="s:originTrace" v="n:8348073396884651134" />
              </node>
              <node concept="Xl_RD" id="pq" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.Dto" />
                <uo k="s:originTrace" v="n:8348073396884651134" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="pj" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396884651134" />
      </node>
    </node>
    <node concept="2tJIrI" id="pb" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396884651134" />
    </node>
    <node concept="3clFb_" id="pc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:8348073396884651134" />
      <node concept="3Tm1VV" id="pr" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396884651134" />
      </node>
      <node concept="3uibUv" id="ps" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:8348073396884651134" />
        <node concept="3uibUv" id="pv" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396884651134" />
        </node>
        <node concept="3uibUv" id="pw" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396884651134" />
        </node>
      </node>
      <node concept="3clFbS" id="pt" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396884651134" />
        <node concept="3clFbF" id="px" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396884651134" />
          <node concept="2ShNRf" id="py" role="3clFbG">
            <uo k="s:originTrace" v="n:8348073396884651134" />
            <node concept="YeOm9" id="pz" role="2ShVmc">
              <uo k="s:originTrace" v="n:8348073396884651134" />
              <node concept="1Y3b0j" id="p$" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:8348073396884651134" />
                <node concept="3Tm1VV" id="p_" role="1B3o_S">
                  <uo k="s:originTrace" v="n:8348073396884651134" />
                </node>
                <node concept="3clFb_" id="pA" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:8348073396884651134" />
                  <node concept="3Tm1VV" id="pD" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8348073396884651134" />
                  </node>
                  <node concept="2AHcQZ" id="pE" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:8348073396884651134" />
                  </node>
                  <node concept="3uibUv" id="pF" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:8348073396884651134" />
                  </node>
                  <node concept="37vLTG" id="pG" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:8348073396884651134" />
                    <node concept="3uibUv" id="pJ" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:8348073396884651134" />
                    </node>
                    <node concept="2AHcQZ" id="pK" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8348073396884651134" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="pH" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:8348073396884651134" />
                    <node concept="3uibUv" id="pL" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:8348073396884651134" />
                    </node>
                    <node concept="2AHcQZ" id="pM" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:8348073396884651134" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="pI" role="3clF47">
                    <uo k="s:originTrace" v="n:8348073396884651134" />
                    <node concept="3cpWs6" id="pN" role="3cqZAp">
                      <uo k="s:originTrace" v="n:8348073396884651134" />
                      <node concept="2ShNRf" id="pO" role="3cqZAk">
                        <uo k="s:originTrace" v="n:8348073396884651139" />
                        <node concept="YeOm9" id="pP" role="2ShVmc">
                          <uo k="s:originTrace" v="n:8348073396884651139" />
                          <node concept="1Y3b0j" id="pQ" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                            <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                            <uo k="s:originTrace" v="n:8348073396884651139" />
                            <node concept="3Tm1VV" id="pR" role="1B3o_S">
                              <uo k="s:originTrace" v="n:8348073396884651139" />
                            </node>
                            <node concept="3clFb_" id="pS" role="jymVt">
                              <property role="TrG5h" value="getSearchScopeValidatorNode" />
                              <uo k="s:originTrace" v="n:8348073396884651139" />
                              <node concept="3Tm1VV" id="pU" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8348073396884651139" />
                              </node>
                              <node concept="3uibUv" id="pV" role="3clF45">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                <uo k="s:originTrace" v="n:8348073396884651139" />
                              </node>
                              <node concept="3clFbS" id="pW" role="3clF47">
                                <uo k="s:originTrace" v="n:8348073396884651139" />
                                <node concept="3cpWs6" id="pY" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396884651139" />
                                  <node concept="2ShNRf" id="pZ" role="3cqZAk">
                                    <uo k="s:originTrace" v="n:8348073396884651139" />
                                    <node concept="1pGfFk" id="q0" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8348073396884651139" />
                                      <node concept="Xl_RD" id="q1" role="37wK5m">
                                        <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                                        <uo k="s:originTrace" v="n:8348073396884651139" />
                                      </node>
                                      <node concept="Xl_RD" id="q2" role="37wK5m">
                                        <property role="Xl_RC" value="8348073396884651139" />
                                        <uo k="s:originTrace" v="n:8348073396884651139" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="pX" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8348073396884651139" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="pT" role="jymVt">
                              <property role="TrG5h" value="createScope" />
                              <uo k="s:originTrace" v="n:8348073396884651139" />
                              <node concept="3Tm1VV" id="q3" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8348073396884651139" />
                              </node>
                              <node concept="3uibUv" id="q4" role="3clF45">
                                <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                <uo k="s:originTrace" v="n:8348073396884651139" />
                              </node>
                              <node concept="37vLTG" id="q5" role="3clF46">
                                <property role="TrG5h" value="_context" />
                                <property role="3TUv4t" value="true" />
                                <uo k="s:originTrace" v="n:8348073396884651139" />
                                <node concept="3uibUv" id="q8" role="1tU5fm">
                                  <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                  <uo k="s:originTrace" v="n:8348073396884651139" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="q6" role="3clF47">
                                <uo k="s:originTrace" v="n:8348073396884651139" />
                                <node concept="3cpWs8" id="q9" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396884654632" />
                                  <node concept="3cpWsn" id="qk" role="3cpWs9">
                                    <property role="TrG5h" value="component" />
                                    <uo k="s:originTrace" v="n:8348073396884654635" />
                                    <node concept="3Tqbb2" id="ql" role="1tU5fm">
                                      <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                      <uo k="s:originTrace" v="n:8348073396884654630" />
                                    </node>
                                    <node concept="2OqwBi" id="qm" role="33vP2m">
                                      <uo k="s:originTrace" v="n:8348073396884654993" />
                                      <node concept="1DoJHT" id="qn" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getContextNode" />
                                        <uo k="s:originTrace" v="n:8348073396884654850" />
                                        <node concept="3uibUv" id="qp" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="qq" role="1EMhIo">
                                          <ref role="3cqZAo" node="q5" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="2Xjw5R" id="qo" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:8348073396884655162" />
                                        <node concept="1xMEDy" id="qr" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:8348073396884655164" />
                                          <node concept="chp4Y" id="qt" role="ri$Ld">
                                            <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                            <uo k="s:originTrace" v="n:8348073396884655334" />
                                          </node>
                                        </node>
                                        <node concept="1xIGOp" id="qs" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:8348073396884655467" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="qa" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396884654440" />
                                </node>
                                <node concept="Jncv_" id="qb" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
                                  <uo k="s:originTrace" v="n:4534216578422790501" />
                                  <node concept="37vLTw" id="qu" role="JncvB">
                                    <ref role="3cqZAo" node="qk" resolve="component" />
                                    <uo k="s:originTrace" v="n:4534216578422790696" />
                                  </node>
                                  <node concept="3clFbS" id="qv" role="Jncv$">
                                    <uo k="s:originTrace" v="n:4534216578422790505" />
                                    <node concept="3cpWs6" id="qx" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:4534216578422791178" />
                                      <node concept="2OqwBi" id="qy" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:4534216578422791179" />
                                        <node concept="Xjq3P" id="qz" role="2Oq$k0">
                                          <ref role="1HBi2w" node="p7" resolve="Dto_Constraints" />
                                          <uo k="s:originTrace" v="n:4534216578422791180" />
                                        </node>
                                        <node concept="liA8E" id="q$" role="2OqNvi">
                                          <ref role="37wK5l" node="pg" resolve="_additional_provideDtoRepositoryScope" />
                                          <uo k="s:originTrace" v="n:4534216578422791181" />
                                          <node concept="Jnkvi" id="q_" role="37wK5m">
                                            <ref role="1M0zk5" node="qw" resolve="repository" />
                                            <uo k="s:originTrace" v="n:4534216578422792407" />
                                          </node>
                                          <node concept="1DoJHT" id="qA" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:4534216578422791185" />
                                            <node concept="3uibUv" id="qB" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="qC" role="1EMhIo">
                                              <ref role="3cqZAo" node="q5" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="qw" role="JncvA">
                                    <property role="TrG5h" value="repository" />
                                    <uo k="s:originTrace" v="n:4534216578422790507" />
                                    <node concept="2jxLKc" id="qD" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:4534216578422790508" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="qc" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:4534216578422790230" />
                                </node>
                                <node concept="Jncv_" id="qd" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                                  <uo k="s:originTrace" v="n:4534216578422793734" />
                                  <node concept="37vLTw" id="qE" role="JncvB">
                                    <ref role="3cqZAo" node="qk" resolve="component" />
                                    <uo k="s:originTrace" v="n:4534216578422794148" />
                                  </node>
                                  <node concept="3clFbS" id="qF" role="Jncv$">
                                    <uo k="s:originTrace" v="n:4534216578422793738" />
                                    <node concept="3cpWs6" id="qH" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:4534216578422794977" />
                                      <node concept="2OqwBi" id="qI" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:4534216578422794978" />
                                        <node concept="Xjq3P" id="qJ" role="2Oq$k0">
                                          <ref role="1HBi2w" node="p7" resolve="Dto_Constraints" />
                                          <uo k="s:originTrace" v="n:4534216578422794979" />
                                        </node>
                                        <node concept="liA8E" id="qK" role="2OqNvi">
                                          <ref role="37wK5l" node="pd" resolve="_additional_provideDtoScope" />
                                          <uo k="s:originTrace" v="n:4534216578422794980" />
                                          <node concept="Jnkvi" id="qL" role="37wK5m">
                                            <ref role="1M0zk5" node="qG" resolve="dto" />
                                            <uo k="s:originTrace" v="n:4534216578422795998" />
                                          </node>
                                          <node concept="1DoJHT" id="qM" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:4534216578422794984" />
                                            <node concept="3uibUv" id="qN" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="qO" role="1EMhIo">
                                              <ref role="3cqZAo" node="q5" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="qG" role="JncvA">
                                    <property role="TrG5h" value="dto" />
                                    <uo k="s:originTrace" v="n:4534216578422793740" />
                                    <node concept="2jxLKc" id="qP" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:4534216578422793741" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="qe" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:2238779974576221277" />
                                </node>
                                <node concept="Jncv_" id="qf" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
                                  <uo k="s:originTrace" v="n:4534216578422796650" />
                                  <node concept="37vLTw" id="qQ" role="JncvB">
                                    <ref role="3cqZAo" node="qk" resolve="component" />
                                    <uo k="s:originTrace" v="n:4534216578422796838" />
                                  </node>
                                  <node concept="3clFbS" id="qR" role="Jncv$">
                                    <uo k="s:originTrace" v="n:4534216578422796654" />
                                    <node concept="3cpWs6" id="qT" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:4534216578422797203" />
                                      <node concept="2OqwBi" id="qU" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:4534216578422797204" />
                                        <node concept="Xjq3P" id="qV" role="2Oq$k0">
                                          <ref role="1HBi2w" node="p7" resolve="Dto_Constraints" />
                                          <uo k="s:originTrace" v="n:4534216578422797205" />
                                        </node>
                                        <node concept="liA8E" id="qW" role="2OqNvi">
                                          <ref role="37wK5l" node="pe" resolve="_additional_provideQueryContainerScope" />
                                          <uo k="s:originTrace" v="n:4534216578422797206" />
                                          <node concept="Jnkvi" id="qX" role="37wK5m">
                                            <ref role="1M0zk5" node="qS" resolve="container" />
                                            <uo k="s:originTrace" v="n:4534216578422798037" />
                                          </node>
                                          <node concept="1DoJHT" id="qY" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:4534216578422797210" />
                                            <node concept="3uibUv" id="qZ" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="r0" role="1EMhIo">
                                              <ref role="3cqZAo" node="q5" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="qS" role="JncvA">
                                    <property role="TrG5h" value="container" />
                                    <uo k="s:originTrace" v="n:4534216578422796656" />
                                    <node concept="2jxLKc" id="r1" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:4534216578422796657" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="qg" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:4200731973482591089" />
                                </node>
                                <node concept="Jncv_" id="qh" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:7fqk8p43yh4" resolve="Query" />
                                  <uo k="s:originTrace" v="n:4534216578422799150" />
                                  <node concept="37vLTw" id="r2" role="JncvB">
                                    <ref role="3cqZAo" node="qk" resolve="component" />
                                    <uo k="s:originTrace" v="n:4534216578422799335" />
                                  </node>
                                  <node concept="3clFbS" id="r3" role="Jncv$">
                                    <uo k="s:originTrace" v="n:4534216578422799154" />
                                    <node concept="3cpWs6" id="r5" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:4534216578422799657" />
                                      <node concept="2OqwBi" id="r6" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:4534216578422799658" />
                                        <node concept="Xjq3P" id="r7" role="2Oq$k0">
                                          <ref role="1HBi2w" node="p7" resolve="Dto_Constraints" />
                                          <uo k="s:originTrace" v="n:4534216578422799659" />
                                        </node>
                                        <node concept="liA8E" id="r8" role="2OqNvi">
                                          <ref role="37wK5l" node="pf" resolve="_additional_provideQueryScope" />
                                          <uo k="s:originTrace" v="n:4534216578422799660" />
                                          <node concept="Jnkvi" id="r9" role="37wK5m">
                                            <ref role="1M0zk5" node="r4" resolve="query" />
                                            <uo k="s:originTrace" v="n:4534216578422800644" />
                                          </node>
                                          <node concept="1DoJHT" id="ra" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:4534216578422799664" />
                                            <node concept="3uibUv" id="rb" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="rc" role="1EMhIo">
                                              <ref role="3cqZAo" node="q5" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="r4" role="JncvA">
                                    <property role="TrG5h" value="query" />
                                    <uo k="s:originTrace" v="n:4534216578422799156" />
                                    <node concept="2jxLKc" id="rd" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:4534216578422799157" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="qi" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:3016418587226059356" />
                                </node>
                                <node concept="3clFbF" id="qj" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:4534216578418736075" />
                                  <node concept="2ShNRf" id="re" role="3clFbG">
                                    <uo k="s:originTrace" v="n:8348073396884651460" />
                                    <node concept="1pGfFk" id="rf" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                      <uo k="s:originTrace" v="n:8348073396884651735" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="q7" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8348073396884651139" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="pB" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396884651134" />
                </node>
                <node concept="3uibUv" id="pC" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396884651134" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="pu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8348073396884651134" />
      </node>
    </node>
    <node concept="3clFb_" id="pd" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoScope" />
      <uo k="s:originTrace" v="n:4200731973482577656" />
      <node concept="3uibUv" id="rg" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:4200731973482577859" />
      </node>
      <node concept="3Tm6S6" id="rh" role="1B3o_S">
        <uo k="s:originTrace" v="n:4200731973482577659" />
      </node>
      <node concept="3clFbS" id="ri" role="3clF47">
        <uo k="s:originTrace" v="n:4200731973482577658" />
        <node concept="3clFbF" id="rl" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578418736479" />
          <node concept="2YIFZM" id="rm" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <uo k="s:originTrace" v="n:4200731973482583680" />
            <node concept="2OqwBi" id="rn" role="37wK5m">
              <uo k="s:originTrace" v="n:4394792474637836430" />
              <node concept="2OqwBi" id="ro" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4394792474637836431" />
                <node concept="2qgKlT" id="rq" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
                  <uo k="s:originTrace" v="n:4394792474637836432" />
                </node>
                <node concept="2OqwBi" id="rr" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:4394792474637836433" />
                  <node concept="37vLTw" id="rs" role="2Oq$k0">
                    <ref role="3cqZAo" node="rj" resolve="dto" />
                    <uo k="s:originTrace" v="n:4394792474637836434" />
                  </node>
                  <node concept="2qgKlT" id="rt" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474637836435" />
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="rp" role="2OqNvi">
                <uo k="s:originTrace" v="n:4394792474637836436" />
                <node concept="1bVj0M" id="ru" role="23t8la">
                  <uo k="s:originTrace" v="n:4394792474637836437" />
                  <node concept="3clFbS" id="rv" role="1bW5cS">
                    <uo k="s:originTrace" v="n:4394792474637836438" />
                    <node concept="3clFbF" id="rx" role="3cqZAp">
                      <uo k="s:originTrace" v="n:4394792474637836439" />
                      <node concept="3y3z36" id="ry" role="3clFbG">
                        <uo k="s:originTrace" v="n:4394792474637836440" />
                        <node concept="37vLTw" id="rz" role="3uHU7w">
                          <ref role="3cqZAo" node="rj" resolve="dto" />
                          <uo k="s:originTrace" v="n:4394792474637836441" />
                        </node>
                        <node concept="37vLTw" id="r$" role="3uHU7B">
                          <ref role="3cqZAo" node="rw" resolve="it" />
                          <uo k="s:originTrace" v="n:4394792474637836442" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="rw" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:4394792474637836443" />
                    <node concept="2jxLKc" id="r_" role="1tU5fm">
                      <uo k="s:originTrace" v="n:4394792474637836444" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="rj" role="3clF46">
        <property role="TrG5h" value="dto" />
        <uo k="s:originTrace" v="n:4200731973482579101" />
        <node concept="3Tqbb2" id="rA" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          <uo k="s:originTrace" v="n:4200731973482579100" />
        </node>
      </node>
      <node concept="37vLTG" id="rk" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:4200731973482579159" />
        <node concept="3Tqbb2" id="rB" role="1tU5fm">
          <uo k="s:originTrace" v="n:4200731973482583538" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="pe" role="jymVt">
      <property role="TrG5h" value="_additional_provideQueryContainerScope" />
      <uo k="s:originTrace" v="n:4200731973482593320" />
      <node concept="3uibUv" id="rC" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:4200731973482593589" />
      </node>
      <node concept="3Tm6S6" id="rD" role="1B3o_S">
        <uo k="s:originTrace" v="n:4200731973482593323" />
      </node>
      <node concept="3clFbS" id="rE" role="3clF47">
        <uo k="s:originTrace" v="n:4200731973482593322" />
        <node concept="3SKdUt" id="rH" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578420179752" />
          <node concept="1PaTwC" id="rJ" role="1aUNEU">
            <uo k="s:originTrace" v="n:4534216578420179753" />
            <node concept="3oM_SD" id="rK" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
              <uo k="s:originTrace" v="n:4534216578420179765" />
            </node>
            <node concept="3oM_SD" id="rL" role="1PaTwD">
              <property role="3oM_SC" value="Das" />
              <uo k="s:originTrace" v="n:4534216578420180781" />
            </node>
            <node concept="3oM_SD" id="rM" role="1PaTwD">
              <property role="3oM_SC" value="kann" />
              <uo k="s:originTrace" v="n:4534216578420180800" />
            </node>
            <node concept="3oM_SD" id="rN" role="1PaTwD">
              <property role="3oM_SC" value="vllt" />
              <uo k="s:originTrace" v="n:4534216578420180820" />
            </node>
            <node concept="3oM_SD" id="rO" role="1PaTwD">
              <property role="3oM_SC" value="noch" />
              <uo k="s:originTrace" v="n:4534216578420180841" />
            </node>
            <node concept="3oM_SD" id="rP" role="1PaTwD">
              <property role="3oM_SC" value="entfernt" />
              <uo k="s:originTrace" v="n:4534216578420180847" />
            </node>
            <node concept="3oM_SD" id="rQ" role="1PaTwD">
              <property role="3oM_SC" value="werden" />
              <uo k="s:originTrace" v="n:4534216578420180854" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="rI" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578418731354" />
          <node concept="2YIFZM" id="rR" role="3clFbG">
            <ref role="37wK5l" to="7ztp:3VGLvhFqcEm" resolve="ofElements" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEMgQj" resolve="ScopeUtils" />
            <uo k="s:originTrace" v="n:4534216578420172651" />
            <node concept="2OqwBi" id="rS" role="37wK5m">
              <uo k="s:originTrace" v="n:4534216578420172652" />
              <node concept="2OqwBi" id="rT" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4534216578420172653" />
                <node concept="37vLTw" id="rV" role="2Oq$k0">
                  <ref role="3cqZAo" node="rF" resolve="queryContainer" />
                  <uo k="s:originTrace" v="n:4534216578420172654" />
                </node>
                <node concept="2qgKlT" id="rW" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  <uo k="s:originTrace" v="n:4534216578420172655" />
                </node>
              </node>
              <node concept="2qgKlT" id="rU" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
                <uo k="s:originTrace" v="n:4534216578420172656" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="rF" role="3clF46">
        <property role="TrG5h" value="queryContainer" />
        <uo k="s:originTrace" v="n:4200731973482593756" />
        <node concept="3Tqbb2" id="rX" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
          <uo k="s:originTrace" v="n:4200731973482593755" />
        </node>
      </node>
      <node concept="37vLTG" id="rG" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:4200731973482593850" />
        <node concept="3Tqbb2" id="rY" role="1tU5fm">
          <uo k="s:originTrace" v="n:4200731973482593940" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="pf" role="jymVt">
      <property role="TrG5h" value="_additional_provideQueryScope" />
      <uo k="s:originTrace" v="n:3016418587226063923" />
      <node concept="3uibUv" id="rZ" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:3016418587226064460" />
      </node>
      <node concept="3Tm6S6" id="s0" role="1B3o_S">
        <uo k="s:originTrace" v="n:3016418587226063926" />
      </node>
      <node concept="3clFbS" id="s1" role="3clF47">
        <uo k="s:originTrace" v="n:3016418587226063925" />
        <node concept="3clFbH" id="s4" role="3cqZAp">
          <uo k="s:originTrace" v="n:6124797423297686607" />
        </node>
        <node concept="3SKdUt" id="s5" role="3cqZAp">
          <uo k="s:originTrace" v="n:6124797423297689878" />
          <node concept="1PaTwC" id="sf" role="1aUNEU">
            <uo k="s:originTrace" v="n:6124797423297689879" />
            <node concept="3oM_SD" id="sg" role="1PaTwD">
              <property role="3oM_SC" value="DTOs" />
              <uo k="s:originTrace" v="n:6124797423297691485" />
            </node>
            <node concept="3oM_SD" id="sh" role="1PaTwD">
              <property role="3oM_SC" value="should" />
              <uo k="s:originTrace" v="n:6124797423297691487" />
            </node>
            <node concept="3oM_SD" id="si" role="1PaTwD">
              <property role="3oM_SC" value="only" />
              <uo k="s:originTrace" v="n:6124797423297691490" />
            </node>
            <node concept="3oM_SD" id="sj" role="1PaTwD">
              <property role="3oM_SC" value="be" />
              <uo k="s:originTrace" v="n:6124797423297691494" />
            </node>
            <node concept="3oM_SD" id="sk" role="1PaTwD">
              <property role="3oM_SC" value="allowed" />
              <uo k="s:originTrace" v="n:6124797423297691499" />
            </node>
            <node concept="3oM_SD" id="sl" role="1PaTwD">
              <property role="3oM_SC" value="as" />
              <uo k="s:originTrace" v="n:6124797423297691505" />
            </node>
            <node concept="3oM_SD" id="sm" role="1PaTwD">
              <property role="3oM_SC" value="a" />
              <uo k="s:originTrace" v="n:6124797423297691512" />
            </node>
            <node concept="3oM_SD" id="sn" role="1PaTwD">
              <property role="3oM_SC" value="return" />
              <uo k="s:originTrace" v="n:6124797423297691520" />
            </node>
            <node concept="3oM_SD" id="so" role="1PaTwD">
              <property role="3oM_SC" value="type" />
              <uo k="s:originTrace" v="n:6124797423297691529" />
            </node>
            <node concept="3oM_SD" id="sp" role="1PaTwD">
              <property role="3oM_SC" value="and" />
              <uo k="s:originTrace" v="n:6124797423297691539" />
            </node>
            <node concept="3oM_SD" id="sq" role="1PaTwD">
              <property role="3oM_SC" value="not" />
              <uo k="s:originTrace" v="n:6124797423297691550" />
            </node>
            <node concept="3oM_SD" id="sr" role="1PaTwD">
              <property role="3oM_SC" value="as" />
              <uo k="s:originTrace" v="n:6124797423297691562" />
            </node>
            <node concept="3oM_SD" id="ss" role="1PaTwD">
              <property role="3oM_SC" value="Parameter" />
              <uo k="s:originTrace" v="n:6124797423297691575" />
            </node>
            <node concept="3oM_SD" id="st" role="1PaTwD">
              <property role="3oM_SC" value="types" />
              <uo k="s:originTrace" v="n:6124797423297691589" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="s6" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:6124797423297668795" />
          <node concept="3clFbS" id="su" role="3clFbx">
            <uo k="s:originTrace" v="n:6124797423297668797" />
            <node concept="3cpWs6" id="sw" role="3cqZAp">
              <uo k="s:originTrace" v="n:6124797423297682542" />
              <node concept="2ShNRf" id="sx" role="3cqZAk">
                <uo k="s:originTrace" v="n:6124797423297683308" />
                <node concept="1pGfFk" id="sy" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                  <uo k="s:originTrace" v="n:6124797423297685047" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="sv" role="3clFbw">
            <uo k="s:originTrace" v="n:6124797423297678388" />
            <node concept="2OqwBi" id="sz" role="2Oq$k0">
              <uo k="s:originTrace" v="n:6124797423297671706" />
              <node concept="37vLTw" id="s_" role="2Oq$k0">
                <ref role="3cqZAo" node="s3" resolve="contextNode" />
                <uo k="s:originTrace" v="n:6124797423297670385" />
              </node>
              <node concept="2Xjw5R" id="sA" role="2OqNvi">
                <uo k="s:originTrace" v="n:6124797423297672980" />
                <node concept="1xMEDy" id="sB" role="1xVPHs">
                  <uo k="s:originTrace" v="n:6124797423297672982" />
                  <node concept="chp4Y" id="sD" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                    <uo k="s:originTrace" v="n:6124797423297673865" />
                  </node>
                </node>
                <node concept="1xIGOp" id="sC" role="1xVPHs">
                  <uo k="s:originTrace" v="n:6124797423297677064" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="s$" role="2OqNvi">
              <uo k="s:originTrace" v="n:6124797423297681376" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="s7" role="3cqZAp">
          <uo k="s:originTrace" v="n:6124797423297667118" />
        </node>
        <node concept="3clFbJ" id="s8" role="3cqZAp">
          <uo k="s:originTrace" v="n:3016418587226477242" />
          <node concept="3clFbS" id="sE" role="3clFbx">
            <uo k="s:originTrace" v="n:3016418587226477244" />
            <node concept="3clFbJ" id="sG" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <uo k="s:originTrace" v="n:4534216578419877183" />
              <node concept="3clFbS" id="sI" role="3clFbx">
                <uo k="s:originTrace" v="n:4534216578419877185" />
                <node concept="3cpWs6" id="sK" role="3cqZAp">
                  <uo k="s:originTrace" v="n:4534216578419954212" />
                  <node concept="2YIFZM" id="sL" role="3cqZAk">
                    <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                    <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <uo k="s:originTrace" v="n:4534216578419950013" />
                    <node concept="2OqwBi" id="sM" role="37wK5m">
                      <uo k="s:originTrace" v="n:4534216578419950014" />
                      <node concept="2qgKlT" id="sN" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
                        <uo k="s:originTrace" v="n:4534216578419950015" />
                      </node>
                      <node concept="2OqwBi" id="sO" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4534216578419950016" />
                        <node concept="37vLTw" id="sP" role="2Oq$k0">
                          <ref role="3cqZAo" node="s2" resolve="query" />
                          <uo k="s:originTrace" v="n:4534216578419950017" />
                        </node>
                        <node concept="2qgKlT" id="sQ" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                          <uo k="s:originTrace" v="n:4534216578419950018" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="sJ" role="3clFbw">
                <uo k="s:originTrace" v="n:4534216578419949042" />
                <node concept="2OqwBi" id="sR" role="3fr31v">
                  <uo k="s:originTrace" v="n:4534216578419949044" />
                  <node concept="37vLTw" id="sS" role="2Oq$k0">
                    <ref role="3cqZAo" node="s2" resolve="query" />
                    <uo k="s:originTrace" v="n:4534216578419949045" />
                  </node>
                  <node concept="2qgKlT" id="sT" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5jZDGTikSOr" resolve="hasReferences" />
                    <uo k="s:originTrace" v="n:4534216578419949046" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="sH" role="3cqZAp">
              <uo k="s:originTrace" v="n:4534216578420024163" />
              <node concept="2YIFZM" id="sU" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:4534216578420025698" />
                <node concept="2OqwBi" id="sV" role="37wK5m">
                  <uo k="s:originTrace" v="n:438631690720841855" />
                  <node concept="2OqwBi" id="sW" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:438631690720838435" />
                    <node concept="2OqwBi" id="sY" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:438631690720834553" />
                      <node concept="37vLTw" id="t0" role="2Oq$k0">
                        <ref role="3cqZAo" node="s2" resolve="query" />
                        <uo k="s:originTrace" v="n:438631690720831203" />
                      </node>
                      <node concept="2qgKlT" id="t1" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:omljbwDa_r" resolve="dtoRepositories" />
                        <uo k="s:originTrace" v="n:438631690720836898" />
                      </node>
                    </node>
                    <node concept="13MTOL" id="sZ" role="2OqNvi">
                      <ref role="13MTZf" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                      <uo k="s:originTrace" v="n:438631690720839991" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="sX" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:4Wa3rAG5J$7" resolve="dto" />
                    <uo k="s:originTrace" v="n:438631690720843383" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="sF" role="3clFbw">
            <uo k="s:originTrace" v="n:4534216578420019128" />
            <node concept="2OqwBi" id="t2" role="3fr31v">
              <uo k="s:originTrace" v="n:4534216578420019130" />
              <node concept="37vLTw" id="t3" role="2Oq$k0">
                <ref role="3cqZAo" node="s2" resolve="query" />
                <uo k="s:originTrace" v="n:4534216578420019131" />
              </node>
              <node concept="2qgKlT" id="t4" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:2Bsub$Lr4Li" resolve="isInsideQueryContainer" />
                <uo k="s:originTrace" v="n:4534216578420019132" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="s9" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578420060840" />
        </node>
        <node concept="3cpWs8" id="sa" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578420094056" />
          <node concept="3cpWsn" id="t5" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <uo k="s:originTrace" v="n:4534216578420094057" />
            <node concept="_YKpA" id="t6" role="1tU5fm">
              <uo k="s:originTrace" v="n:6124797423311136679" />
              <node concept="3Tqbb2" id="t8" role="_ZDj9">
                <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
                <uo k="s:originTrace" v="n:6124797423311136681" />
              </node>
            </node>
            <node concept="2YIFZM" id="t7" role="33vP2m">
              <ref role="37wK5l" to="7ztp:5jZDGTh$T4u" resolve="merge" />
              <ref role="1Pybhc" to="7ztp:3VGLvhEm5DZ" resolve="CollectionUtils" />
              <uo k="s:originTrace" v="n:6124797423311133665" />
              <node concept="2OqwBi" id="t9" role="37wK5m">
                <uo k="s:originTrace" v="n:6124797423311133667" />
                <node concept="2OqwBi" id="tb" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:6124797423311133668" />
                  <node concept="37vLTw" id="td" role="2Oq$k0">
                    <ref role="3cqZAo" node="s2" resolve="query" />
                    <uo k="s:originTrace" v="n:6124797423311133669" />
                  </node>
                  <node concept="2qgKlT" id="te" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:6gxxZVrXJ64" resolve="getQueryContainer" />
                    <uo k="s:originTrace" v="n:6124797423311133670" />
                  </node>
                </node>
                <node concept="2qgKlT" id="tc" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:omljbwDa_r" resolve="dtoRepositories" />
                  <uo k="s:originTrace" v="n:438631690720874655" />
                </node>
              </node>
              <node concept="2OqwBi" id="ta" role="37wK5m">
                <uo k="s:originTrace" v="n:438631690720883628" />
                <node concept="37vLTw" id="tf" role="2Oq$k0">
                  <ref role="3cqZAo" node="s2" resolve="query" />
                  <uo k="s:originTrace" v="n:6124797423311133675" />
                </node>
                <node concept="2qgKlT" id="tg" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:omljbwDa_r" resolve="dtoRepositories" />
                  <uo k="s:originTrace" v="n:438631690720889101" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="sb" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578420124186" />
        </node>
        <node concept="3clFbJ" id="sc" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:4534216578420127141" />
          <node concept="3clFbS" id="th" role="3clFbx">
            <uo k="s:originTrace" v="n:4534216578420127143" />
            <node concept="3cpWs6" id="tj" role="3cqZAp">
              <uo k="s:originTrace" v="n:4534216578420140787" />
              <node concept="2YIFZM" id="tk" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:4534216578420145601" />
                <node concept="2OqwBi" id="tl" role="37wK5m">
                  <uo k="s:originTrace" v="n:4534216578420156223" />
                  <node concept="2OqwBi" id="tm" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:4534216578420150977" />
                    <node concept="37vLTw" id="to" role="2Oq$k0">
                      <ref role="3cqZAo" node="t5" resolve="references" />
                      <uo k="s:originTrace" v="n:4534216578420146573" />
                    </node>
                    <node concept="13MTOL" id="tp" role="2OqNvi">
                      <ref role="13MTZf" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                      <uo k="s:originTrace" v="n:4534216578420154521" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="tn" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:4Wa3rAG5J$7" resolve="dto" />
                    <uo k="s:originTrace" v="n:4534216578420157800" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="ti" role="3clFbw">
            <uo k="s:originTrace" v="n:4534216578420133374" />
            <node concept="37vLTw" id="tq" role="2Oq$k0">
              <ref role="3cqZAo" node="t5" resolve="references" />
              <uo k="s:originTrace" v="n:4534216578420128545" />
            </node>
            <node concept="3GX2aA" id="tr" role="2OqNvi">
              <uo k="s:originTrace" v="n:4534216578420136822" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="sd" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578420124260" />
        </node>
        <node concept="3clFbF" id="se" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578418733285" />
          <node concept="2YIFZM" id="ts" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <uo k="s:originTrace" v="n:3016418587226071039" />
            <node concept="2OqwBi" id="tt" role="37wK5m">
              <uo k="s:originTrace" v="n:3016418587226068570" />
              <node concept="2qgKlT" id="tu" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
                <uo k="s:originTrace" v="n:3016418587226069406" />
              </node>
              <node concept="2OqwBi" id="tv" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4534216578418733809" />
                <node concept="37vLTw" id="tw" role="2Oq$k0">
                  <ref role="3cqZAo" node="s2" resolve="query" />
                  <uo k="s:originTrace" v="n:4534216578418733810" />
                </node>
                <node concept="2qgKlT" id="tx" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  <uo k="s:originTrace" v="n:4534216578418733811" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="s2" role="3clF46">
        <property role="TrG5h" value="query" />
        <uo k="s:originTrace" v="n:3016418587226064594" />
        <node concept="3Tqbb2" id="ty" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
          <uo k="s:originTrace" v="n:3016418587226064595" />
        </node>
      </node>
      <node concept="37vLTG" id="s3" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:3016418587226064596" />
        <node concept="3Tqbb2" id="tz" role="1tU5fm">
          <uo k="s:originTrace" v="n:3016418587226064597" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="pg" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoRepositoryScope" />
      <uo k="s:originTrace" v="n:2238779974576219831" />
      <node concept="3uibUv" id="t$" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:2238779974576220636" />
      </node>
      <node concept="3Tm6S6" id="t_" role="1B3o_S">
        <uo k="s:originTrace" v="n:2238779974576219834" />
      </node>
      <node concept="3clFbS" id="tA" role="3clF47">
        <uo k="s:originTrace" v="n:2238779974576219833" />
        <node concept="3clFbJ" id="tD" role="3cqZAp">
          <uo k="s:originTrace" v="n:2238779974576228075" />
          <node concept="3clFbS" id="tG" role="3clFbx">
            <uo k="s:originTrace" v="n:2238779974576228077" />
            <node concept="3cpWs8" id="tI" role="3cqZAp">
              <uo k="s:originTrace" v="n:2238779974576232654" />
              <node concept="3cpWsn" id="tM" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <uo k="s:originTrace" v="n:2238779974576232655" />
                <node concept="3Tqbb2" id="tN" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                  <uo k="s:originTrace" v="n:2238779974576232163" />
                </node>
                <node concept="2OqwBi" id="tO" role="33vP2m">
                  <uo k="s:originTrace" v="n:2238779974576232656" />
                  <node concept="37vLTw" id="tP" role="2Oq$k0">
                    <ref role="3cqZAo" node="tB" resolve="repository" />
                    <uo k="s:originTrace" v="n:2238779974576232657" />
                  </node>
                  <node concept="2qgKlT" id="tQ" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:2238779974576232658" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="tJ" role="3cqZAp">
              <uo k="s:originTrace" v="n:2238779974576292445" />
              <node concept="3cpWsn" id="tR" role="3cpWs9">
                <property role="TrG5h" value="referencedDtos" />
                <uo k="s:originTrace" v="n:2238779974576292446" />
                <node concept="A3Dl8" id="tS" role="1tU5fm">
                  <uo k="s:originTrace" v="n:2238779974576292282" />
                  <node concept="3Tqbb2" id="tU" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                    <uo k="s:originTrace" v="n:2238779974576292285" />
                  </node>
                </node>
                <node concept="2OqwBi" id="tT" role="33vP2m">
                  <uo k="s:originTrace" v="n:2238779974576292447" />
                  <node concept="2OqwBi" id="tV" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:2238779974576292448" />
                    <node concept="2OqwBi" id="tX" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:2238779974576292449" />
                      <node concept="2OqwBi" id="tZ" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:2238779974576292450" />
                        <node concept="37vLTw" id="u1" role="2Oq$k0">
                          <ref role="3cqZAo" node="tM" resolve="boundedContext" />
                          <uo k="s:originTrace" v="n:2238779974576292451" />
                        </node>
                        <node concept="2qgKlT" id="u2" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:1WhJCpUS1If" resolve="dtoRepositories" />
                          <uo k="s:originTrace" v="n:2238779974576292452" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="u0" role="2OqNvi">
                        <uo k="s:originTrace" v="n:2238779974576292453" />
                        <node concept="1bVj0M" id="u3" role="23t8la">
                          <uo k="s:originTrace" v="n:2238779974576292454" />
                          <node concept="3clFbS" id="u4" role="1bW5cS">
                            <uo k="s:originTrace" v="n:2238779974576292455" />
                            <node concept="3clFbF" id="u6" role="3cqZAp">
                              <uo k="s:originTrace" v="n:2238779974576292456" />
                              <node concept="3y3z36" id="u7" role="3clFbG">
                                <uo k="s:originTrace" v="n:2238779974576292457" />
                                <node concept="37vLTw" id="u8" role="3uHU7w">
                                  <ref role="3cqZAo" node="tB" resolve="repository" />
                                  <uo k="s:originTrace" v="n:2238779974576292458" />
                                </node>
                                <node concept="37vLTw" id="u9" role="3uHU7B">
                                  <ref role="3cqZAo" node="u5" resolve="it" />
                                  <uo k="s:originTrace" v="n:2238779974576292459" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="u5" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <uo k="s:originTrace" v="n:2238779974576292460" />
                            <node concept="2jxLKc" id="ua" role="1tU5fm">
                              <uo k="s:originTrace" v="n:2238779974576292461" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="13MTOL" id="tY" role="2OqNvi">
                      <ref role="13MTZf" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                      <uo k="s:originTrace" v="n:2238779974576292462" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="tW" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:4Wa3rAG5J$7" resolve="dto" />
                    <uo k="s:originTrace" v="n:2238779974576292463" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="tK" role="3cqZAp">
              <uo k="s:originTrace" v="n:2238779974576295593" />
              <node concept="3cpWsn" id="ub" role="3cpWs9">
                <property role="TrG5h" value="nodes" />
                <uo k="s:originTrace" v="n:2238779974576295594" />
                <node concept="A3Dl8" id="uc" role="1tU5fm">
                  <uo k="s:originTrace" v="n:2238779974576295595" />
                  <node concept="3Tqbb2" id="ue" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                    <uo k="s:originTrace" v="n:2238779974576295596" />
                  </node>
                </node>
                <node concept="2OqwBi" id="ud" role="33vP2m">
                  <uo k="s:originTrace" v="n:2238779974576295597" />
                  <node concept="2OqwBi" id="uf" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:2238779974576295598" />
                    <node concept="37vLTw" id="uh" role="2Oq$k0">
                      <ref role="3cqZAo" node="tM" resolve="boundedContext" />
                      <uo k="s:originTrace" v="n:2238779974576295599" />
                    </node>
                    <node concept="2qgKlT" id="ui" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:7fqk8p4cIWm" resolve="dtos" />
                      <uo k="s:originTrace" v="n:2238779974576295600" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="ug" role="2OqNvi">
                    <uo k="s:originTrace" v="n:2238779974576295601" />
                    <node concept="1bVj0M" id="uj" role="23t8la">
                      <uo k="s:originTrace" v="n:2238779974576295602" />
                      <node concept="3clFbS" id="uk" role="1bW5cS">
                        <uo k="s:originTrace" v="n:2238779974576295603" />
                        <node concept="3clFbF" id="um" role="3cqZAp">
                          <uo k="s:originTrace" v="n:2238779974576295604" />
                          <node concept="3fqX7Q" id="un" role="3clFbG">
                            <uo k="s:originTrace" v="n:2238779974576295605" />
                            <node concept="2OqwBi" id="uo" role="3fr31v">
                              <uo k="s:originTrace" v="n:2238779974576295606" />
                              <node concept="37vLTw" id="up" role="2Oq$k0">
                                <ref role="3cqZAo" node="tR" resolve="referencedDtos" />
                                <uo k="s:originTrace" v="n:2238779974576295607" />
                              </node>
                              <node concept="3JPx81" id="uq" role="2OqNvi">
                                <uo k="s:originTrace" v="n:2238779974576295608" />
                                <node concept="37vLTw" id="ur" role="25WWJ7">
                                  <ref role="3cqZAo" node="ul" resolve="it" />
                                  <uo k="s:originTrace" v="n:2238779974576295609" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="ul" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:2238779974576295610" />
                        <node concept="2jxLKc" id="us" role="1tU5fm">
                          <uo k="s:originTrace" v="n:2238779974576295611" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="tL" role="3cqZAp">
              <uo k="s:originTrace" v="n:2238779974576296839" />
              <node concept="2YIFZM" id="ut" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:2238779974576296840" />
                <node concept="37vLTw" id="uu" role="37wK5m">
                  <ref role="3cqZAo" node="ub" resolve="nodes" />
                  <uo k="s:originTrace" v="n:2238779974576296841" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="tH" role="3clFbw">
            <uo k="s:originTrace" v="n:2238779974576229057" />
            <node concept="37vLTw" id="uv" role="3uHU7w">
              <ref role="3cqZAo" node="tC" resolve="contextNode" />
              <uo k="s:originTrace" v="n:2238779974576229632" />
            </node>
            <node concept="37vLTw" id="uw" role="3uHU7B">
              <ref role="3cqZAo" node="tB" resolve="repository" />
              <uo k="s:originTrace" v="n:2238779974576228223" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tE" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578420728640" />
        </node>
        <node concept="3clFbF" id="tF" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578418726859" />
          <node concept="2YIFZM" id="ux" role="3clFbG">
            <ref role="37wK5l" to="7ztp:3VGLvhEMgV6" resolve="ofElements" />
            <ref role="1Pybhc" to="7ztp:3VGLvhEMgQj" resolve="ScopeUtils" />
            <uo k="s:originTrace" v="n:4534216578418727687" />
            <node concept="2OqwBi" id="uy" role="37wK5m">
              <uo k="s:originTrace" v="n:2238779974576240710" />
              <node concept="2OqwBi" id="uz" role="2Oq$k0">
                <uo k="s:originTrace" v="n:2238779974576236480" />
                <node concept="37vLTw" id="u_" role="2Oq$k0">
                  <ref role="3cqZAo" node="tB" resolve="repository" />
                  <uo k="s:originTrace" v="n:2238779974576236481" />
                </node>
                <node concept="3TrEf2" id="uA" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                  <uo k="s:originTrace" v="n:2238779974576239268" />
                </node>
              </node>
              <node concept="3TrEf2" id="u$" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5J$7" resolve="dto" />
                <uo k="s:originTrace" v="n:2238779974576241858" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tB" role="3clF46">
        <property role="TrG5h" value="repository" />
        <uo k="s:originTrace" v="n:2238779974576220929" />
        <node concept="3Tqbb2" id="uB" role="1tU5fm">
          <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
          <uo k="s:originTrace" v="n:2238779974576220928" />
        </node>
      </node>
      <node concept="37vLTG" id="tC" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:2238779974576221041" />
        <node concept="3Tqbb2" id="uC" role="1tU5fm">
          <uo k="s:originTrace" v="n:2238779974576221158" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="uD">
    <property role="3GE5qa" value="entity" />
    <property role="TrG5h" value="EntityReference_Constraints" />
    <uo k="s:originTrace" v="n:8348073396880467544" />
    <node concept="3Tm1VV" id="uE" role="1B3o_S">
      <uo k="s:originTrace" v="n:8348073396880467544" />
    </node>
    <node concept="3uibUv" id="uF" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8348073396880467544" />
    </node>
    <node concept="3clFbW" id="uG" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396880467544" />
      <node concept="3cqZAl" id="uJ" role="3clF45">
        <uo k="s:originTrace" v="n:8348073396880467544" />
      </node>
      <node concept="3clFbS" id="uK" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396880467544" />
        <node concept="XkiVB" id="uM" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8348073396880467544" />
          <node concept="1BaE9c" id="uN" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EntityReference$x1" />
            <uo k="s:originTrace" v="n:8348073396880467544" />
            <node concept="2YIFZM" id="uO" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8348073396880467544" />
              <node concept="1adDum" id="uP" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396880467544" />
              </node>
              <node concept="1adDum" id="uQ" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396880467544" />
              </node>
              <node concept="1adDum" id="uR" role="37wK5m">
                <property role="1adDun" value="0x4f0a0db9ac16f900L" />
                <uo k="s:originTrace" v="n:8348073396880467544" />
              </node>
              <node concept="Xl_RD" id="uS" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EntityReference" />
                <uo k="s:originTrace" v="n:8348073396880467544" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="uL" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396880467544" />
      </node>
    </node>
    <node concept="2tJIrI" id="uH" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396880467544" />
    </node>
    <node concept="3clFb_" id="uI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:8348073396880467544" />
      <node concept="3Tm1VV" id="uT" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396880467544" />
      </node>
      <node concept="3uibUv" id="uU" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:8348073396880467544" />
        <node concept="3uibUv" id="uX" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396880467544" />
        </node>
        <node concept="3uibUv" id="uY" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396880467544" />
        </node>
      </node>
      <node concept="3clFbS" id="uV" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396880467544" />
        <node concept="3clFbF" id="uZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396880467544" />
          <node concept="2ShNRf" id="v0" role="3clFbG">
            <uo k="s:originTrace" v="n:8348073396880467544" />
            <node concept="YeOm9" id="v1" role="2ShVmc">
              <uo k="s:originTrace" v="n:8348073396880467544" />
              <node concept="1Y3b0j" id="v2" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:8348073396880467544" />
                <node concept="3Tm1VV" id="v3" role="1B3o_S">
                  <uo k="s:originTrace" v="n:8348073396880467544" />
                </node>
                <node concept="3clFb_" id="v4" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:8348073396880467544" />
                  <node concept="3Tm1VV" id="v7" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8348073396880467544" />
                  </node>
                  <node concept="2AHcQZ" id="v8" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:8348073396880467544" />
                  </node>
                  <node concept="3uibUv" id="v9" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:8348073396880467544" />
                  </node>
                  <node concept="37vLTG" id="va" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:8348073396880467544" />
                    <node concept="3uibUv" id="vd" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:8348073396880467544" />
                    </node>
                    <node concept="2AHcQZ" id="ve" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8348073396880467544" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="vb" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:8348073396880467544" />
                    <node concept="3uibUv" id="vf" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:8348073396880467544" />
                    </node>
                    <node concept="2AHcQZ" id="vg" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:8348073396880467544" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="vc" role="3clF47">
                    <uo k="s:originTrace" v="n:8348073396880467544" />
                    <node concept="3cpWs6" id="vh" role="3cqZAp">
                      <uo k="s:originTrace" v="n:8348073396880467544" />
                      <node concept="2YIFZM" id="vi" role="3cqZAk">
                        <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
                        <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                        <uo k="s:originTrace" v="n:8348073396880467549" />
                        <node concept="35c_gC" id="vj" role="37wK5m">
                          <ref role="35c_gD" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
                          <uo k="s:originTrace" v="n:8348073396880467549" />
                        </node>
                        <node concept="2ShNRf" id="vk" role="37wK5m">
                          <uo k="s:originTrace" v="n:8348073396880467549" />
                          <node concept="1pGfFk" id="vl" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:8348073396880467549" />
                            <node concept="Xl_RD" id="vm" role="37wK5m">
                              <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                              <uo k="s:originTrace" v="n:8348073396880467549" />
                            </node>
                            <node concept="Xl_RD" id="vn" role="37wK5m">
                              <property role="Xl_RC" value="8348073396880467549" />
                              <uo k="s:originTrace" v="n:8348073396880467549" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="v5" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396880467544" />
                </node>
                <node concept="3uibUv" id="v6" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396880467544" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="uW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8348073396880467544" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="vo">
    <property role="3GE5qa" value="entity" />
    <property role="TrG5h" value="Entity_Constraints" />
    <uo k="s:originTrace" v="n:8348073396880466266" />
    <node concept="3Tm1VV" id="vp" role="1B3o_S">
      <uo k="s:originTrace" v="n:8348073396880466266" />
    </node>
    <node concept="3uibUv" id="vq" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8348073396880466266" />
    </node>
    <node concept="3clFbW" id="vr" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396880466266" />
      <node concept="3cqZAl" id="vy" role="3clF45">
        <uo k="s:originTrace" v="n:8348073396880466266" />
      </node>
      <node concept="3clFbS" id="vz" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396880466266" />
        <node concept="XkiVB" id="v_" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8348073396880466266" />
          <node concept="1BaE9c" id="vA" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Entity$lp" />
            <uo k="s:originTrace" v="n:8348073396880466266" />
            <node concept="2YIFZM" id="vB" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8348073396880466266" />
              <node concept="1adDum" id="vC" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396880466266" />
              </node>
              <node concept="1adDum" id="vD" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396880466266" />
              </node>
              <node concept="1adDum" id="vE" role="37wK5m">
                <property role="1adDun" value="0x4f0a0db9ac16f8fdL" />
                <uo k="s:originTrace" v="n:8348073396880466266" />
              </node>
              <node concept="Xl_RD" id="vF" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.Entity" />
                <uo k="s:originTrace" v="n:8348073396880466266" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="v$" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396880466266" />
      </node>
    </node>
    <node concept="2tJIrI" id="vs" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396880466266" />
    </node>
    <node concept="3clFb_" id="vt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:8348073396880466266" />
      <node concept="3Tm1VV" id="vG" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396880466266" />
      </node>
      <node concept="3uibUv" id="vH" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:8348073396880466266" />
        <node concept="3uibUv" id="vK" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396880466266" />
        </node>
        <node concept="3uibUv" id="vL" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396880466266" />
        </node>
      </node>
      <node concept="3clFbS" id="vI" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396880466266" />
        <node concept="3clFbF" id="vM" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396880466266" />
          <node concept="2ShNRf" id="vN" role="3clFbG">
            <uo k="s:originTrace" v="n:8348073396880466266" />
            <node concept="YeOm9" id="vO" role="2ShVmc">
              <uo k="s:originTrace" v="n:8348073396880466266" />
              <node concept="1Y3b0j" id="vP" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:8348073396880466266" />
                <node concept="3Tm1VV" id="vQ" role="1B3o_S">
                  <uo k="s:originTrace" v="n:8348073396880466266" />
                </node>
                <node concept="3clFb_" id="vR" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:8348073396880466266" />
                  <node concept="3Tm1VV" id="vU" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8348073396880466266" />
                  </node>
                  <node concept="2AHcQZ" id="vV" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:8348073396880466266" />
                  </node>
                  <node concept="3uibUv" id="vW" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:8348073396880466266" />
                  </node>
                  <node concept="37vLTG" id="vX" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:8348073396880466266" />
                    <node concept="3uibUv" id="w0" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:8348073396880466266" />
                    </node>
                    <node concept="2AHcQZ" id="w1" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8348073396880466266" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="vY" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:8348073396880466266" />
                    <node concept="3uibUv" id="w2" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:8348073396880466266" />
                    </node>
                    <node concept="2AHcQZ" id="w3" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:8348073396880466266" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="vZ" role="3clF47">
                    <uo k="s:originTrace" v="n:8348073396880466266" />
                    <node concept="3cpWs6" id="w4" role="3cqZAp">
                      <uo k="s:originTrace" v="n:8348073396880466266" />
                      <node concept="2ShNRf" id="w5" role="3cqZAk">
                        <uo k="s:originTrace" v="n:8348073396880466271" />
                        <node concept="YeOm9" id="w6" role="2ShVmc">
                          <uo k="s:originTrace" v="n:8348073396880466271" />
                          <node concept="1Y3b0j" id="w7" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                            <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                            <uo k="s:originTrace" v="n:8348073396880466271" />
                            <node concept="3Tm1VV" id="w8" role="1B3o_S">
                              <uo k="s:originTrace" v="n:8348073396880466271" />
                            </node>
                            <node concept="3clFb_" id="w9" role="jymVt">
                              <property role="TrG5h" value="getSearchScopeValidatorNode" />
                              <uo k="s:originTrace" v="n:8348073396880466271" />
                              <node concept="3Tm1VV" id="wb" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8348073396880466271" />
                              </node>
                              <node concept="3uibUv" id="wc" role="3clF45">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                <uo k="s:originTrace" v="n:8348073396880466271" />
                              </node>
                              <node concept="3clFbS" id="wd" role="3clF47">
                                <uo k="s:originTrace" v="n:8348073396880466271" />
                                <node concept="3cpWs6" id="wf" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396880466271" />
                                  <node concept="2ShNRf" id="wg" role="3cqZAk">
                                    <uo k="s:originTrace" v="n:8348073396880466271" />
                                    <node concept="1pGfFk" id="wh" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8348073396880466271" />
                                      <node concept="Xl_RD" id="wi" role="37wK5m">
                                        <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                                        <uo k="s:originTrace" v="n:8348073396880466271" />
                                      </node>
                                      <node concept="Xl_RD" id="wj" role="37wK5m">
                                        <property role="Xl_RC" value="8348073396880466271" />
                                        <uo k="s:originTrace" v="n:8348073396880466271" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="we" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8348073396880466271" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="wa" role="jymVt">
                              <property role="TrG5h" value="createScope" />
                              <uo k="s:originTrace" v="n:8348073396880466271" />
                              <node concept="3Tm1VV" id="wk" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8348073396880466271" />
                              </node>
                              <node concept="3uibUv" id="wl" role="3clF45">
                                <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                <uo k="s:originTrace" v="n:8348073396880466271" />
                              </node>
                              <node concept="37vLTG" id="wm" role="3clF46">
                                <property role="TrG5h" value="_context" />
                                <property role="3TUv4t" value="true" />
                                <uo k="s:originTrace" v="n:8348073396880466271" />
                                <node concept="3uibUv" id="wp" role="1tU5fm">
                                  <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                  <uo k="s:originTrace" v="n:8348073396880466271" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="wn" role="3clF47">
                                <uo k="s:originTrace" v="n:8348073396880466271" />
                                <node concept="3cpWs8" id="wq" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396881741992" />
                                  <node concept="3cpWsn" id="w_" role="3cpWs9">
                                    <property role="TrG5h" value="component" />
                                    <uo k="s:originTrace" v="n:8348073396881741993" />
                                    <node concept="3Tqbb2" id="wA" role="1tU5fm">
                                      <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                      <uo k="s:originTrace" v="n:8348073396881741994" />
                                    </node>
                                    <node concept="2OqwBi" id="wB" role="33vP2m">
                                      <uo k="s:originTrace" v="n:8348073396881741995" />
                                      <node concept="1DoJHT" id="wC" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getContextNode" />
                                        <uo k="s:originTrace" v="n:8348073396881741996" />
                                        <node concept="3uibUv" id="wE" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="wF" role="1EMhIo">
                                          <ref role="3cqZAo" node="wm" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="2Xjw5R" id="wD" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:8348073396881741997" />
                                        <node concept="1xMEDy" id="wG" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:8348073396881741998" />
                                          <node concept="chp4Y" id="wI" role="ri$Ld">
                                            <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                            <uo k="s:originTrace" v="n:8348073396881741999" />
                                          </node>
                                        </node>
                                        <node concept="1xIGOp" id="wH" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:8348073396881742000" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="wr" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:6783047803578396250" />
                                </node>
                                <node concept="Jncv_" id="ws" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                                  <uo k="s:originTrace" v="n:5501684678925540388" />
                                  <node concept="37vLTw" id="wJ" role="JncvB">
                                    <ref role="3cqZAo" node="w_" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678925540525" />
                                  </node>
                                  <node concept="3clFbS" id="wK" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678925540392" />
                                    <node concept="3cpWs6" id="wM" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:8348073396881743622" />
                                      <node concept="2OqwBi" id="wN" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:6783047803564632823" />
                                        <node concept="Xjq3P" id="wO" role="2Oq$k0">
                                          <ref role="1HBi2w" node="vo" resolve="Entity_Constraints" />
                                          <uo k="s:originTrace" v="n:6783047803564632826" />
                                        </node>
                                        <node concept="liA8E" id="wP" role="2OqNvi">
                                          <ref role="37wK5l" node="vv" resolve="_additional_provideAggregateRootScope" />
                                          <uo k="s:originTrace" v="n:6783047803564632828" />
                                          <node concept="Jnkvi" id="wQ" role="37wK5m">
                                            <ref role="1M0zk5" node="wL" resolve="aggregateRoot" />
                                            <uo k="s:originTrace" v="n:5501684678925542461" />
                                          </node>
                                          <node concept="1DoJHT" id="wR" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:5501684678925542301" />
                                            <node concept="3uibUv" id="wS" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="wT" role="1EMhIo">
                                              <ref role="3cqZAo" node="wm" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="wL" role="JncvA">
                                    <property role="TrG5h" value="aggregateRoot" />
                                    <uo k="s:originTrace" v="n:5501684678925540394" />
                                    <node concept="2jxLKc" id="wU" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678925540395" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="wt" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678925540160" />
                                </node>
                                <node concept="Jncv_" id="wu" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
                                  <uo k="s:originTrace" v="n:5501684678925542767" />
                                  <node concept="37vLTw" id="wV" role="JncvB">
                                    <ref role="3cqZAo" node="w_" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678925542900" />
                                  </node>
                                  <node concept="3clFbS" id="wW" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678925542771" />
                                    <node concept="3cpWs6" id="wY" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6783047803564636991" />
                                      <node concept="2OqwBi" id="wZ" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:6783047803564638400" />
                                        <node concept="Xjq3P" id="x0" role="2Oq$k0">
                                          <ref role="1HBi2w" node="vo" resolve="Entity_Constraints" />
                                          <uo k="s:originTrace" v="n:6783047803564637185" />
                                        </node>
                                        <node concept="liA8E" id="x1" role="2OqNvi">
                                          <ref role="37wK5l" node="vu" resolve="_additional_provideEntityScope" />
                                          <uo k="s:originTrace" v="n:6783047803564638905" />
                                          <node concept="Jnkvi" id="x2" role="37wK5m">
                                            <ref role="1M0zk5" node="wX" resolve="entity" />
                                            <uo k="s:originTrace" v="n:5501684678925544042" />
                                          </node>
                                          <node concept="1DoJHT" id="x3" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:5501684678925544449" />
                                            <node concept="3uibUv" id="x4" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="x5" role="1EMhIo">
                                              <ref role="3cqZAo" node="wm" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="wX" role="JncvA">
                                    <property role="TrG5h" value="entity" />
                                    <uo k="s:originTrace" v="n:5501684678925542773" />
                                    <node concept="2jxLKc" id="x6" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678925542774" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="wv" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678925548413" />
                                </node>
                                <node concept="Jncv_" id="ww" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                                  <uo k="s:originTrace" v="n:5501684678925549188" />
                                  <node concept="37vLTw" id="x7" role="JncvB">
                                    <ref role="3cqZAo" node="w_" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678925549319" />
                                  </node>
                                  <node concept="3clFbS" id="x8" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678925549192" />
                                    <node concept="3cpWs6" id="xa" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:5501684678925549608" />
                                      <node concept="2OqwBi" id="xb" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:5501684678925549763" />
                                        <node concept="Xjq3P" id="xc" role="2Oq$k0">
                                          <ref role="1HBi2w" node="vo" resolve="Entity_Constraints" />
                                          <uo k="s:originTrace" v="n:5501684678925549766" />
                                        </node>
                                        <node concept="liA8E" id="xd" role="2OqNvi">
                                          <ref role="37wK5l" node="vw" resolve="_additional_provideDtoScope" />
                                          <uo k="s:originTrace" v="n:5501684678925549768" />
                                          <node concept="Jnkvi" id="xe" role="37wK5m">
                                            <ref role="1M0zk5" node="x9" resolve="dto" />
                                            <uo k="s:originTrace" v="n:5501684678925549871" />
                                          </node>
                                          <node concept="1DoJHT" id="xf" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:5501684678925550065" />
                                            <node concept="3uibUv" id="xg" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="xh" role="1EMhIo">
                                              <ref role="3cqZAo" node="wm" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="x9" role="JncvA">
                                    <property role="TrG5h" value="dto" />
                                    <uo k="s:originTrace" v="n:5501684678925549194" />
                                    <node concept="2jxLKc" id="xi" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678925549195" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="wx" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:4394792474634173871" />
                                </node>
                                <node concept="Jncv_" id="wy" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
                                  <uo k="s:originTrace" v="n:4394792474634174234" />
                                  <node concept="37vLTw" id="xj" role="JncvB">
                                    <ref role="3cqZAo" node="w_" resolve="component" />
                                    <uo k="s:originTrace" v="n:4394792474634174235" />
                                  </node>
                                  <node concept="3clFbS" id="xk" role="Jncv$">
                                    <uo k="s:originTrace" v="n:4394792474634174236" />
                                    <node concept="3cpWs6" id="xm" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:4394792474634174237" />
                                      <node concept="2OqwBi" id="xn" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:4394792474634174238" />
                                        <node concept="Xjq3P" id="xo" role="2Oq$k0">
                                          <ref role="1HBi2w" node="vo" resolve="Entity_Constraints" />
                                          <uo k="s:originTrace" v="n:4394792474634174239" />
                                        </node>
                                        <node concept="liA8E" id="xp" role="2OqNvi">
                                          <ref role="37wK5l" node="vx" resolve="_additional_provideDtoFlatteningRuleScope" />
                                          <uo k="s:originTrace" v="n:4394792474634174240" />
                                          <node concept="Jnkvi" id="xq" role="37wK5m">
                                            <ref role="1M0zk5" node="xl" resolve="flatteningRuleCcontainer" />
                                            <uo k="s:originTrace" v="n:4394792474634174241" />
                                          </node>
                                          <node concept="1DoJHT" id="xr" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:4394792474634174242" />
                                            <node concept="3uibUv" id="xs" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="xt" role="1EMhIo">
                                              <ref role="3cqZAo" node="wm" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="xl" role="JncvA">
                                    <property role="TrG5h" value="flatteningRuleCcontainer" />
                                    <uo k="s:originTrace" v="n:4394792474634174243" />
                                    <node concept="2jxLKc" id="xu" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:4394792474634174244" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="wz" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396882049870" />
                                </node>
                                <node concept="3clFbF" id="w$" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678947401935" />
                                  <node concept="2ShNRf" id="xv" role="3clFbG">
                                    <uo k="s:originTrace" v="n:8348073396882385646" />
                                    <node concept="1pGfFk" id="xw" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                      <uo k="s:originTrace" v="n:8348073396882386492" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="wo" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8348073396880466271" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="vS" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396880466266" />
                </node>
                <node concept="3uibUv" id="vT" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396880466266" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="vJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8348073396880466266" />
      </node>
    </node>
    <node concept="3clFb_" id="vu" role="jymVt">
      <property role="TrG5h" value="_additional_provideEntityScope" />
      <uo k="s:originTrace" v="n:6783047803564563289" />
      <node concept="3uibUv" id="xx" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:6783047803564569551" />
      </node>
      <node concept="3Tm6S6" id="xy" role="1B3o_S">
        <uo k="s:originTrace" v="n:6783047803564563292" />
      </node>
      <node concept="3clFbS" id="xz" role="3clF47">
        <uo k="s:originTrace" v="n:6783047803564563291" />
        <node concept="3clFbJ" id="xA" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:5501684678934288935" />
          <node concept="3clFbS" id="xD" role="3clFbx">
            <uo k="s:originTrace" v="n:5501684678934288936" />
            <node concept="3cpWs6" id="xF" role="3cqZAp">
              <uo k="s:originTrace" v="n:5501684678934288937" />
              <node concept="2ShNRf" id="xG" role="3cqZAk">
                <uo k="s:originTrace" v="n:5501684678934288938" />
                <node concept="1pGfFk" id="xH" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                  <uo k="s:originTrace" v="n:5501684678934288939" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="xE" role="3clFbw">
            <uo k="s:originTrace" v="n:5501684678934288940" />
            <node concept="3clFbC" id="xI" role="3uHU7B">
              <uo k="s:originTrace" v="n:5501684678934288941" />
              <node concept="37vLTw" id="xK" role="3uHU7B">
                <ref role="3cqZAo" node="x$" resolve="entity" />
                <uo k="s:originTrace" v="n:5501684678934288942" />
              </node>
              <node concept="37vLTw" id="xL" role="3uHU7w">
                <ref role="3cqZAo" node="x_" resolve="contextNode" />
                <uo k="s:originTrace" v="n:5501684678934288943" />
              </node>
            </node>
            <node concept="17R0WA" id="xJ" role="3uHU7w">
              <uo k="s:originTrace" v="n:4394792474618572871" />
              <node concept="2OqwBi" id="xM" role="3uHU7B">
                <uo k="s:originTrace" v="n:5501684678934288945" />
                <node concept="37vLTw" id="xO" role="2Oq$k0">
                  <ref role="3cqZAo" node="x_" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:5501684678934288946" />
                </node>
                <node concept="2NL2c5" id="xP" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5501684678934291484" />
                </node>
              </node>
              <node concept="359W_D" id="xN" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
                <ref role="359W_F" to="3nll:7fqk8p3V868" resolve="idType" />
                <uo k="s:originTrace" v="n:5501684678934293936" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="xB" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678934287218" />
        </node>
        <node concept="3clFbF" id="xC" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678925546605" />
          <node concept="2YIFZM" id="xQ" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <uo k="s:originTrace" v="n:6783047803564602558" />
            <node concept="2OqwBi" id="xR" role="37wK5m">
              <uo k="s:originTrace" v="n:6783047803564602559" />
              <node concept="2OqwBi" id="xS" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6783047803564602560" />
                <node concept="2OqwBi" id="xU" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:6783047803564605880" />
                  <node concept="37vLTw" id="xW" role="2Oq$k0">
                    <ref role="3cqZAo" node="x$" resolve="entity" />
                    <uo k="s:originTrace" v="n:6783047803564602561" />
                  </node>
                  <node concept="2qgKlT" id="xX" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:6783047803564607704" />
                  </node>
                </node>
                <node concept="2qgKlT" id="xV" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:7fqk8p41AIx" resolve="entities" />
                  <uo k="s:originTrace" v="n:6783047803564602562" />
                </node>
              </node>
              <node concept="3zZkjj" id="xT" role="2OqNvi">
                <uo k="s:originTrace" v="n:6783047803564602563" />
                <node concept="1bVj0M" id="xY" role="23t8la">
                  <uo k="s:originTrace" v="n:6783047803564602564" />
                  <node concept="3clFbS" id="xZ" role="1bW5cS">
                    <uo k="s:originTrace" v="n:6783047803564602565" />
                    <node concept="3clFbF" id="y1" role="3cqZAp">
                      <uo k="s:originTrace" v="n:6783047803564602566" />
                      <node concept="3y3z36" id="y2" role="3clFbG">
                        <uo k="s:originTrace" v="n:6783047803564602567" />
                        <node concept="37vLTw" id="y3" role="3uHU7B">
                          <ref role="3cqZAo" node="y0" resolve="it" />
                          <uo k="s:originTrace" v="n:6783047803564602571" />
                        </node>
                        <node concept="37vLTw" id="y4" role="3uHU7w">
                          <ref role="3cqZAo" node="x$" resolve="entity" />
                          <uo k="s:originTrace" v="n:6783047803564610823" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="y0" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6783047803564602572" />
                    <node concept="2jxLKc" id="y5" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6783047803564602573" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="x$" role="3clF46">
        <property role="TrG5h" value="entity" />
        <uo k="s:originTrace" v="n:6783047803564570062" />
        <node concept="3Tqbb2" id="y6" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
          <uo k="s:originTrace" v="n:6783047803564570165" />
        </node>
      </node>
      <node concept="37vLTG" id="x_" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:6783047803564570240" />
        <node concept="3Tqbb2" id="y7" role="1tU5fm">
          <uo k="s:originTrace" v="n:6783047803564570372" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="vv" role="jymVt">
      <property role="TrG5h" value="_additional_provideAggregateRootScope" />
      <uo k="s:originTrace" v="n:6783047803564569700" />
      <node concept="3uibUv" id="y8" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:6783047803564569913" />
      </node>
      <node concept="3Tm6S6" id="y9" role="1B3o_S">
        <uo k="s:originTrace" v="n:6783047803564569703" />
      </node>
      <node concept="3clFbS" id="ya" role="3clF47">
        <uo k="s:originTrace" v="n:6783047803564569702" />
        <node concept="3clFbJ" id="yd" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:6783047803564613631" />
          <node concept="3clFbS" id="yg" role="3clFbx">
            <uo k="s:originTrace" v="n:6783047803564613633" />
            <node concept="3cpWs6" id="yi" role="3cqZAp">
              <uo k="s:originTrace" v="n:6783047803564620960" />
              <node concept="2ShNRf" id="yj" role="3cqZAk">
                <uo k="s:originTrace" v="n:6783047803564620997" />
                <node concept="1pGfFk" id="yk" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                  <uo k="s:originTrace" v="n:6783047803564621356" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="yh" role="3clFbw">
            <uo k="s:originTrace" v="n:6783047803564616241" />
            <node concept="17R0WA" id="yl" role="3uHU7w">
              <uo k="s:originTrace" v="n:4394792474619410294" />
              <node concept="2OqwBi" id="yn" role="3uHU7B">
                <uo k="s:originTrace" v="n:6783047803564616544" />
                <node concept="37vLTw" id="yp" role="2Oq$k0">
                  <ref role="3cqZAo" node="yc" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:6783047803564616313" />
                </node>
                <node concept="2NL2c5" id="yq" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5501684678934896811" />
                </node>
              </node>
              <node concept="359W_D" id="yo" role="3uHU7w">
                <ref role="359W_E" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                <ref role="359W_F" to="3nll:4NUTY$DwDN6" resolve="idType" />
                <uo k="s:originTrace" v="n:5501684678934900578" />
              </node>
            </node>
            <node concept="3clFbC" id="ym" role="3uHU7B">
              <uo k="s:originTrace" v="n:6783047803564614490" />
              <node concept="37vLTw" id="yr" role="3uHU7B">
                <ref role="3cqZAo" node="yb" resolve="aggregateRoot" />
                <uo k="s:originTrace" v="n:6783047803564613680" />
              </node>
              <node concept="37vLTw" id="ys" role="3uHU7w">
                <ref role="3cqZAo" node="yc" resolve="contextNode" />
                <uo k="s:originTrace" v="n:6783047803564614963" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="ye" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474619412414" />
        </node>
        <node concept="3clFbF" id="yf" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678925547126" />
          <node concept="2YIFZM" id="yt" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <uo k="s:originTrace" v="n:6783047803564621502" />
            <node concept="2OqwBi" id="yu" role="37wK5m">
              <uo k="s:originTrace" v="n:6783047803564621503" />
              <node concept="2OqwBi" id="yv" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6783047803564623659" />
                <node concept="37vLTw" id="yx" role="2Oq$k0">
                  <ref role="3cqZAo" node="yb" resolve="aggregateRoot" />
                  <uo k="s:originTrace" v="n:6783047803564621504" />
                </node>
                <node concept="2qgKlT" id="yy" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  <uo k="s:originTrace" v="n:6783047803564624738" />
                </node>
              </node>
              <node concept="2qgKlT" id="yw" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p41AIx" resolve="entities" />
                <uo k="s:originTrace" v="n:6783047803564621505" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="yb" role="3clF46">
        <property role="TrG5h" value="aggregateRoot" />
        <uo k="s:originTrace" v="n:6783047803564570447" />
        <node concept="3Tqbb2" id="yz" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
          <uo k="s:originTrace" v="n:6783047803564570577" />
        </node>
      </node>
      <node concept="37vLTG" id="yc" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:6783047803564570652" />
        <node concept="3Tqbb2" id="y$" role="1tU5fm">
          <uo k="s:originTrace" v="n:6783047803564570784" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="vw" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoScope" />
      <uo k="s:originTrace" v="n:5501684678925547478" />
      <node concept="3uibUv" id="y_" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:5501684678925547874" />
      </node>
      <node concept="3Tm6S6" id="yA" role="1B3o_S">
        <uo k="s:originTrace" v="n:5501684678925547481" />
      </node>
      <node concept="3clFbS" id="yB" role="3clF47">
        <uo k="s:originTrace" v="n:5501684678925547480" />
        <node concept="3clFbJ" id="yE" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:5501684678925566177" />
          <node concept="3clFbS" id="yH" role="3clFbx">
            <uo k="s:originTrace" v="n:5501684678925566178" />
            <node concept="3cpWs8" id="yJ" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474641408311" />
              <node concept="3cpWsn" id="yL" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <uo k="s:originTrace" v="n:4394792474641408312" />
                <node concept="3Tqbb2" id="yM" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                  <uo k="s:originTrace" v="n:4394792474641408313" />
                </node>
                <node concept="2OqwBi" id="yN" role="33vP2m">
                  <uo k="s:originTrace" v="n:4394792474641408314" />
                  <node concept="37vLTw" id="yO" role="2Oq$k0">
                    <ref role="3cqZAo" node="yC" resolve="dto" />
                    <uo k="s:originTrace" v="n:4394792474641408315" />
                  </node>
                  <node concept="2qgKlT" id="yP" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641408316" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="yK" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474640042192" />
              <node concept="2YIFZM" id="yQ" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:4394792474640042193" />
                <node concept="2OqwBi" id="yR" role="37wK5m">
                  <uo k="s:originTrace" v="n:4394792474640042194" />
                  <node concept="2qgKlT" id="yS" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yo7EMe" resolve="findUnusedDtoDerivablesIncluding" />
                    <uo k="s:originTrace" v="n:4394792474640042198" />
                    <node concept="2OqwBi" id="yU" role="37wK5m">
                      <uo k="s:originTrace" v="n:4394792474641415874" />
                      <node concept="2OqwBi" id="yV" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4394792474640042199" />
                        <node concept="37vLTw" id="yX" role="2Oq$k0">
                          <ref role="3cqZAo" node="yC" resolve="dto" />
                          <uo k="s:originTrace" v="n:4394792474640042200" />
                        </node>
                        <node concept="3TrEf2" id="yY" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                          <uo k="s:originTrace" v="n:4394792474640042201" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="yW" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:4LpUh3T0tIy" resolve="getDtoDerivable" />
                        <uo k="s:originTrace" v="n:4394792474641416981" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="yT" role="2Oq$k0">
                    <ref role="3cqZAo" node="yL" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641413000" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="yI" role="3clFbw">
            <uo k="s:originTrace" v="n:5501684678925566223" />
            <node concept="3clFbC" id="yZ" role="3uHU7B">
              <uo k="s:originTrace" v="n:5501684678925566228" />
              <node concept="37vLTw" id="z1" role="3uHU7B">
                <ref role="3cqZAo" node="yD" resolve="contextNode" />
                <uo k="s:originTrace" v="n:5501684678925566229" />
              </node>
              <node concept="37vLTw" id="z2" role="3uHU7w">
                <ref role="3cqZAo" node="yC" resolve="dto" />
                <uo k="s:originTrace" v="n:5501684678925566230" />
              </node>
            </node>
            <node concept="17R0WA" id="z0" role="3uHU7w">
              <uo k="s:originTrace" v="n:5501684678934275281" />
              <node concept="359W_D" id="z3" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                <uo k="s:originTrace" v="n:5501684678934275282" />
              </node>
              <node concept="2OqwBi" id="z4" role="3uHU7B">
                <uo k="s:originTrace" v="n:5501684678934275283" />
                <node concept="37vLTw" id="z5" role="2Oq$k0">
                  <ref role="3cqZAo" node="yD" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:5501684678934275284" />
                </node>
                <node concept="2NL2c5" id="z6" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5501684678934275285" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="yF" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474641461057" />
        </node>
        <node concept="3clFbF" id="yG" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678925566231" />
          <node concept="2ShNRf" id="z7" role="3clFbG">
            <uo k="s:originTrace" v="n:5501684678925566232" />
            <node concept="1pGfFk" id="z8" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:5501684678925566233" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="yC" role="3clF46">
        <property role="TrG5h" value="dto" />
        <uo k="s:originTrace" v="n:5501684678925548007" />
        <node concept="3Tqbb2" id="z9" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          <uo k="s:originTrace" v="n:5501684678925548143" />
        </node>
      </node>
      <node concept="37vLTG" id="yD" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:5501684678925548200" />
        <node concept="3Tqbb2" id="za" role="1tU5fm">
          <uo k="s:originTrace" v="n:5501684678925548338" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="vx" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoFlatteningRuleScope" />
      <uo k="s:originTrace" v="n:4394792474634176178" />
      <node concept="3uibUv" id="zb" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:4394792474634176183" />
      </node>
      <node concept="3Tm6S6" id="zc" role="1B3o_S">
        <uo k="s:originTrace" v="n:4394792474634176211" />
      </node>
      <node concept="3clFbS" id="zd" role="3clF47">
        <uo k="s:originTrace" v="n:4394792474634176184" />
        <node concept="3cpWs8" id="zg" role="3cqZAp">
          <uo k="s:originTrace" v="n:4343604932409203389" />
          <node concept="3cpWsn" id="zl" role="3cpWs9">
            <property role="TrG5h" value="flatteningRule" />
            <uo k="s:originTrace" v="n:4343604932409203390" />
            <node concept="3Tqbb2" id="zm" role="1tU5fm">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
              <uo k="s:originTrace" v="n:4343604932409203391" />
            </node>
            <node concept="2OqwBi" id="zn" role="33vP2m">
              <uo k="s:originTrace" v="n:4343604932409203392" />
              <node concept="37vLTw" id="zo" role="2Oq$k0">
                <ref role="3cqZAo" node="zf" resolve="contextNode" />
                <uo k="s:originTrace" v="n:4343604932409203393" />
              </node>
              <node concept="2Xjw5R" id="zp" role="2OqNvi">
                <uo k="s:originTrace" v="n:4343604932409203394" />
                <node concept="1xMEDy" id="zq" role="1xVPHs">
                  <uo k="s:originTrace" v="n:4343604932409203395" />
                  <node concept="chp4Y" id="zs" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    <uo k="s:originTrace" v="n:4343604932409203396" />
                  </node>
                </node>
                <node concept="1xIGOp" id="zr" role="1xVPHs">
                  <uo k="s:originTrace" v="n:4343604932409203397" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="zh" role="3cqZAp">
          <uo k="s:originTrace" v="n:4343604932409202104" />
        </node>
        <node concept="3clFbJ" id="zi" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:4394792474634176185" />
          <node concept="3clFbS" id="zt" role="3clFbx">
            <uo k="s:originTrace" v="n:4394792474634176186" />
            <node concept="3cpWs8" id="zv" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474641420967" />
              <node concept="3cpWsn" id="zx" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <uo k="s:originTrace" v="n:4394792474641420968" />
                <node concept="3Tqbb2" id="zy" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                  <uo k="s:originTrace" v="n:4394792474641420803" />
                </node>
                <node concept="2OqwBi" id="zz" role="33vP2m">
                  <uo k="s:originTrace" v="n:4394792474641420969" />
                  <node concept="37vLTw" id="z$" role="2Oq$k0">
                    <ref role="3cqZAo" node="ze" resolve="flatteningRuleContainer" />
                    <uo k="s:originTrace" v="n:4394792474641420970" />
                  </node>
                  <node concept="2qgKlT" id="z_" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641420971" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="zw" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474634176187" />
              <node concept="2YIFZM" id="zA" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:4394792474634176188" />
                <node concept="2OqwBi" id="zB" role="37wK5m">
                  <uo k="s:originTrace" v="n:4394792474634176189" />
                  <node concept="2qgKlT" id="zC" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yo7EMe" resolve="findUnusedDtoDerivablesIncluding" />
                    <uo k="s:originTrace" v="n:4394792474634176193" />
                    <node concept="2OqwBi" id="zE" role="37wK5m">
                      <uo k="s:originTrace" v="n:4394792474641426619" />
                      <node concept="37vLTw" id="zF" role="2Oq$k0">
                        <ref role="3cqZAo" node="zl" resolve="flatteningRule" />
                        <uo k="s:originTrace" v="n:4394792474634176195" />
                      </node>
                      <node concept="2qgKlT" id="zG" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                        <uo k="s:originTrace" v="n:4394792474641427548" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="zD" role="2Oq$k0">
                    <ref role="3cqZAo" node="zx" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641423704" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="zu" role="3clFbw">
            <uo k="s:originTrace" v="n:4394792474634176198" />
            <node concept="17R0WA" id="zH" role="3uHU7w">
              <uo k="s:originTrace" v="n:4394792474634176199" />
              <node concept="359W_D" id="zJ" role="3uHU7w">
                <ref role="359W_E" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                <uo k="s:originTrace" v="n:4394792474634176200" />
              </node>
              <node concept="2OqwBi" id="zK" role="3uHU7B">
                <uo k="s:originTrace" v="n:4394792474634176201" />
                <node concept="37vLTw" id="zL" role="2Oq$k0">
                  <ref role="3cqZAo" node="zf" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:4394792474634176202" />
                </node>
                <node concept="2NL2c5" id="zM" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4394792474634176203" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="zI" role="3uHU7B">
              <uo k="s:originTrace" v="n:4394792474634176204" />
              <node concept="37vLTw" id="zN" role="3uHU7B">
                <ref role="3cqZAo" node="zf" resolve="contextNode" />
                <uo k="s:originTrace" v="n:4394792474634176205" />
              </node>
              <node concept="37vLTw" id="zO" role="3uHU7w">
                <ref role="3cqZAo" node="zl" resolve="flatteningRule" />
                <uo k="s:originTrace" v="n:4394792474634176206" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="zj" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474634176207" />
        </node>
        <node concept="3clFbF" id="zk" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474634176208" />
          <node concept="2ShNRf" id="zP" role="3clFbG">
            <uo k="s:originTrace" v="n:4394792474634176209" />
            <node concept="1pGfFk" id="zQ" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:4394792474634176210" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="ze" role="3clF46">
        <property role="TrG5h" value="flatteningRuleContainer" />
        <uo k="s:originTrace" v="n:4394792474634176179" />
        <node concept="3Tqbb2" id="zR" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
          <uo k="s:originTrace" v="n:4394792474634176180" />
        </node>
      </node>
      <node concept="37vLTG" id="zf" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:4394792474634176181" />
        <node concept="3Tqbb2" id="zS" role="1tU5fm">
          <uo k="s:originTrace" v="n:4394792474634176182" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="zT">
    <property role="3GE5qa" value="eventContainer" />
    <property role="TrG5h" value="EventContainer_Constraints" />
    <uo k="s:originTrace" v="n:8348073396882800518" />
    <node concept="3Tm1VV" id="zU" role="1B3o_S">
      <uo k="s:originTrace" v="n:8348073396882800518" />
    </node>
    <node concept="3uibUv" id="zV" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8348073396882800518" />
    </node>
    <node concept="3clFbW" id="zW" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396882800518" />
      <node concept="3cqZAl" id="$1" role="3clF45">
        <uo k="s:originTrace" v="n:8348073396882800518" />
      </node>
      <node concept="3clFbS" id="$2" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396882800518" />
        <node concept="XkiVB" id="$4" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="1BaE9c" id="$5" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EventContainer$Aq" />
            <uo k="s:originTrace" v="n:8348073396882800518" />
            <node concept="2YIFZM" id="$6" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8348073396882800518" />
              <node concept="1adDum" id="$7" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
              </node>
              <node concept="1adDum" id="$8" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
              </node>
              <node concept="1adDum" id="$9" role="37wK5m">
                <property role="1adDun" value="0x73da50864411af9fL" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
              </node>
              <node concept="Xl_RD" id="$a" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EventContainer" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="$3" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396882800518" />
      </node>
    </node>
    <node concept="2tJIrI" id="zX" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396882800518" />
    </node>
    <node concept="3clFb_" id="zY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:8348073396882800518" />
      <node concept="3Tm1VV" id="$b" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396882800518" />
      </node>
      <node concept="3uibUv" id="$c" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:8348073396882800518" />
        <node concept="3uibUv" id="$f" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
        <node concept="3uibUv" id="$g" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
      </node>
      <node concept="3clFbS" id="$d" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396882800518" />
        <node concept="3clFbF" id="$h" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="2ShNRf" id="$i" role="3clFbG">
            <uo k="s:originTrace" v="n:8348073396882800518" />
            <node concept="YeOm9" id="$j" role="2ShVmc">
              <uo k="s:originTrace" v="n:8348073396882800518" />
              <node concept="1Y3b0j" id="$k" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
                <node concept="3Tm1VV" id="$l" role="1B3o_S">
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
                <node concept="3clFb_" id="$m" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                  <node concept="3Tm1VV" id="$p" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                  </node>
                  <node concept="2AHcQZ" id="$q" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                  </node>
                  <node concept="3uibUv" id="$r" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                  </node>
                  <node concept="37vLTG" id="$s" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                    <node concept="3uibUv" id="$v" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:8348073396882800518" />
                    </node>
                    <node concept="2AHcQZ" id="$w" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8348073396882800518" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="$t" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                    <node concept="3uibUv" id="$x" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:8348073396882800518" />
                    </node>
                    <node concept="2AHcQZ" id="$y" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:8348073396882800518" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="$u" role="3clF47">
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                    <node concept="3cpWs6" id="$z" role="3cqZAp">
                      <uo k="s:originTrace" v="n:8348073396882800518" />
                      <node concept="2YIFZM" id="$$" role="3cqZAk">
                        <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
                        <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                        <uo k="s:originTrace" v="n:6783047803568399533" />
                        <node concept="35c_gC" id="$_" role="37wK5m">
                          <ref role="35c_gD" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
                          <uo k="s:originTrace" v="n:6783047803568399533" />
                        </node>
                        <node concept="2ShNRf" id="$A" role="37wK5m">
                          <uo k="s:originTrace" v="n:6783047803568399533" />
                          <node concept="1pGfFk" id="$B" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6783047803568399533" />
                            <node concept="Xl_RD" id="$C" role="37wK5m">
                              <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                              <uo k="s:originTrace" v="n:6783047803568399533" />
                            </node>
                            <node concept="Xl_RD" id="$D" role="37wK5m">
                              <property role="Xl_RC" value="6783047803568399533" />
                              <uo k="s:originTrace" v="n:6783047803568399533" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="$n" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
                <node concept="3uibUv" id="$o" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="$e" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8348073396882800518" />
      </node>
    </node>
    <node concept="312cEu" id="zZ" role="jymVt">
      <property role="TrG5h" value="Type_Property" />
      <uo k="s:originTrace" v="n:8348073396882800518" />
      <node concept="3clFbW" id="$E" role="jymVt">
        <uo k="s:originTrace" v="n:8348073396882800518" />
        <node concept="3cqZAl" id="$J" role="3clF45">
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
        <node concept="3Tm1VV" id="$K" role="1B3o_S">
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
        <node concept="3clFbS" id="$L" role="3clF47">
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="XkiVB" id="$N" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8348073396882800518" />
            <node concept="1BaE9c" id="$O" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="type$Ad2l" />
              <uo k="s:originTrace" v="n:8348073396882800518" />
              <node concept="2YIFZM" id="$T" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
                <node concept="1adDum" id="$U" role="37wK5m">
                  <property role="1adDun" value="0xfe04f903cef2451dL" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
                <node concept="1adDum" id="$V" role="37wK5m">
                  <property role="1adDun" value="0x9401426cad0a8857L" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
                <node concept="1adDum" id="$W" role="37wK5m">
                  <property role="1adDun" value="0x73da50864411af9fL" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
                <node concept="1adDum" id="$X" role="37wK5m">
                  <property role="1adDun" value="0x54ffa6ce4d17aa8cL" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
                <node concept="Xl_RD" id="$Y" role="37wK5m">
                  <property role="Xl_RC" value="type" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="$P" role="37wK5m">
              <ref role="3cqZAo" node="$M" resolve="container" />
              <uo k="s:originTrace" v="n:8348073396882800518" />
            </node>
            <node concept="3clFbT" id="$Q" role="37wK5m">
              <uo k="s:originTrace" v="n:8348073396882800518" />
            </node>
            <node concept="3clFbT" id="$R" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:8348073396882800518" />
            </node>
            <node concept="3clFbT" id="$S" role="37wK5m">
              <uo k="s:originTrace" v="n:8348073396882800518" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="$M" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="3uibUv" id="$Z" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8348073396882800518" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="$F" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setPropertyValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:8348073396882800518" />
        <node concept="3Tm1VV" id="_0" role="1B3o_S">
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
        <node concept="3cqZAl" id="_1" role="3clF45">
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
        <node concept="37vLTG" id="_2" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="3Tqbb2" id="_6" role="1tU5fm">
            <uo k="s:originTrace" v="n:8348073396882800518" />
          </node>
        </node>
        <node concept="37vLTG" id="_3" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="3uibUv" id="_7" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:8348073396882800518" />
          </node>
        </node>
        <node concept="2AHcQZ" id="_4" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
        <node concept="3clFbS" id="_5" role="3clF47">
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="3clFbF" id="_8" role="3cqZAp">
            <uo k="s:originTrace" v="n:8348073396882800518" />
            <node concept="1rXfSq" id="_9" role="3clFbG">
              <ref role="37wK5l" node="$G" resolve="staticSetPropertyValue" />
              <uo k="s:originTrace" v="n:8348073396882800518" />
              <node concept="37vLTw" id="_a" role="37wK5m">
                <ref role="3cqZAo" node="_2" resolve="node" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
              </node>
              <node concept="2YIFZM" id="_b" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                <ref role="37wK5l" to="i8bi:7xvVBHRispT" resolve="castEnummember" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
                <node concept="37vLTw" id="_c" role="37wK5m">
                  <ref role="3cqZAo" node="_3" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="$G" role="jymVt">
        <property role="TrG5h" value="staticSetPropertyValue" />
        <uo k="s:originTrace" v="n:8348073396882800518" />
        <node concept="3clFbS" id="_d" role="3clF47">
          <uo k="s:originTrace" v="n:5800372501171583553" />
          <node concept="3clFbF" id="_i" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501171583782" />
            <node concept="2OqwBi" id="_l" role="3clFbG">
              <uo k="s:originTrace" v="n:5800372501171586522" />
              <node concept="2OqwBi" id="_m" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5800372501171584675" />
                <node concept="37vLTw" id="_o" role="2Oq$k0">
                  <ref role="3cqZAo" node="_g" resolve="node" />
                  <uo k="s:originTrace" v="n:5800372501171583781" />
                </node>
                <node concept="3TrcHB" id="_p" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
                  <uo k="s:originTrace" v="n:5800372501171585912" />
                </node>
              </node>
              <node concept="tyxLq" id="_n" role="2OqNvi">
                <uo k="s:originTrace" v="n:5800372501171587269" />
                <node concept="37vLTw" id="_q" role="tz02z">
                  <ref role="3cqZAo" node="_h" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:5800372501171587318" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_j" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501171587363" />
          </node>
          <node concept="3clFbJ" id="_k" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501171587670" />
            <node concept="3clFbS" id="_r" role="3clFbx">
              <uo k="s:originTrace" v="n:5800372501171587672" />
              <node concept="3clFbF" id="_t" role="3cqZAp">
                <uo k="s:originTrace" v="n:5800372501171588135" />
                <node concept="2OqwBi" id="_u" role="3clFbG">
                  <uo k="s:originTrace" v="n:5800372501171589028" />
                  <node concept="37vLTw" id="_v" role="2Oq$k0">
                    <ref role="3cqZAo" node="_g" resolve="node" />
                    <uo k="s:originTrace" v="n:5800372501171588134" />
                  </node>
                  <node concept="2qgKlT" id="_w" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:d$u27T68WS" resolve="resetAndMergeChildRepositoryReferences" />
                    <uo k="s:originTrace" v="n:5800372501171590263" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="_s" role="3clFbw">
              <uo k="s:originTrace" v="n:5800372501171587840" />
              <node concept="37vLTw" id="_x" role="2Oq$k0">
                <ref role="3cqZAo" node="_h" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:5800372501171587734" />
              </node>
              <node concept="21noJN" id="_y" role="2OqNvi">
                <uo k="s:originTrace" v="n:5800372501171587945" />
                <node concept="21nZrQ" id="_z" role="21noJM">
                  <ref role="21nZrZ" to="3nll:3VGLvhFnWdB" resolve="EventHandler" />
                  <uo k="s:originTrace" v="n:5800372501171587947" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="_e" role="1B3o_S">
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
        <node concept="3cqZAl" id="_f" role="3clF45">
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
        <node concept="37vLTG" id="_g" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="3Tqbb2" id="_$" role="1tU5fm">
            <uo k="s:originTrace" v="n:8348073396882800518" />
          </node>
        </node>
        <node concept="37vLTG" id="_h" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="3uibUv" id="__" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SEnumerationLiteral" resolve="SEnumerationLiteral" />
            <uo k="s:originTrace" v="n:8348073396882800518" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="$H" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396882800518" />
      </node>
      <node concept="3uibUv" id="$I" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:8348073396882800518" />
      </node>
    </node>
    <node concept="3clFb_" id="$0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:8348073396882800518" />
      <node concept="3Tmbuc" id="_A" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396882800518" />
      </node>
      <node concept="3uibUv" id="_B" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:8348073396882800518" />
        <node concept="3uibUv" id="_E" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
        <node concept="3uibUv" id="_F" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8348073396882800518" />
        </node>
      </node>
      <node concept="3clFbS" id="_C" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396882800518" />
        <node concept="3cpWs8" id="_G" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="3cpWsn" id="_J" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:8348073396882800518" />
            <node concept="3uibUv" id="_K" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:8348073396882800518" />
              <node concept="3uibUv" id="_M" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
              </node>
              <node concept="3uibUv" id="_N" role="11_B2D">
                <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
              </node>
            </node>
            <node concept="2ShNRf" id="_L" role="33vP2m">
              <uo k="s:originTrace" v="n:8348073396882800518" />
              <node concept="1pGfFk" id="_O" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
                <node concept="3uibUv" id="_P" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
                <node concept="3uibUv" id="_Q" role="1pMfVU">
                  <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_H" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="2OqwBi" id="_R" role="3clFbG">
            <uo k="s:originTrace" v="n:8348073396882800518" />
            <node concept="37vLTw" id="_S" role="2Oq$k0">
              <ref role="3cqZAo" node="_J" resolve="properties" />
              <uo k="s:originTrace" v="n:8348073396882800518" />
            </node>
            <node concept="liA8E" id="_T" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:8348073396882800518" />
              <node concept="1BaE9c" id="_U" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="type$Ad2l" />
                <uo k="s:originTrace" v="n:8348073396882800518" />
                <node concept="2YIFZM" id="_W" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                  <node concept="1adDum" id="_X" role="37wK5m">
                    <property role="1adDun" value="0xfe04f903cef2451dL" />
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                  </node>
                  <node concept="1adDum" id="_Y" role="37wK5m">
                    <property role="1adDun" value="0x9401426cad0a8857L" />
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                  </node>
                  <node concept="1adDum" id="_Z" role="37wK5m">
                    <property role="1adDun" value="0x73da50864411af9fL" />
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                  </node>
                  <node concept="1adDum" id="A0" role="37wK5m">
                    <property role="1adDun" value="0x54ffa6ce4d17aa8cL" />
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                  </node>
                  <node concept="Xl_RD" id="A1" role="37wK5m">
                    <property role="Xl_RC" value="type" />
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="_V" role="37wK5m">
                <uo k="s:originTrace" v="n:8348073396882800518" />
                <node concept="1pGfFk" id="A2" role="2ShVmc">
                  <ref role="37wK5l" node="$E" resolve="EventContainer_Constraints.Type_Property" />
                  <uo k="s:originTrace" v="n:8348073396882800518" />
                  <node concept="Xjq3P" id="A3" role="37wK5m">
                    <uo k="s:originTrace" v="n:8348073396882800518" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_I" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396882800518" />
          <node concept="37vLTw" id="A4" role="3clFbG">
            <ref role="3cqZAo" node="_J" resolve="properties" />
            <uo k="s:originTrace" v="n:8348073396882800518" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8348073396882800518" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="A5">
    <property role="3GE5qa" value="event" />
    <property role="TrG5h" value="Event_Constraints" />
    <uo k="s:originTrace" v="n:8914850872824033120" />
    <node concept="3Tm1VV" id="A6" role="1B3o_S">
      <uo k="s:originTrace" v="n:8914850872824033120" />
    </node>
    <node concept="3uibUv" id="A7" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8914850872824033120" />
    </node>
    <node concept="3clFbW" id="A8" role="jymVt">
      <uo k="s:originTrace" v="n:8914850872824033120" />
      <node concept="3cqZAl" id="Ab" role="3clF45">
        <uo k="s:originTrace" v="n:8914850872824033120" />
      </node>
      <node concept="3clFbS" id="Ac" role="3clF47">
        <uo k="s:originTrace" v="n:8914850872824033120" />
        <node concept="XkiVB" id="Ae" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8914850872824033120" />
          <node concept="1BaE9c" id="Af" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Event$7G" />
            <uo k="s:originTrace" v="n:8914850872824033120" />
            <node concept="2YIFZM" id="Ag" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8914850872824033120" />
              <node concept="1adDum" id="Ah" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8914850872824033120" />
              </node>
              <node concept="1adDum" id="Ai" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8914850872824033120" />
              </node>
              <node concept="1adDum" id="Aj" role="37wK5m">
                <property role="1adDun" value="0x73da5086440e2438L" />
                <uo k="s:originTrace" v="n:8914850872824033120" />
              </node>
              <node concept="Xl_RD" id="Ak" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.Event" />
                <uo k="s:originTrace" v="n:8914850872824033120" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Ad" role="1B3o_S">
        <uo k="s:originTrace" v="n:8914850872824033120" />
      </node>
    </node>
    <node concept="2tJIrI" id="A9" role="jymVt">
      <uo k="s:originTrace" v="n:8914850872824033120" />
    </node>
    <node concept="3clFb_" id="Aa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:8914850872824033120" />
      <node concept="3Tm1VV" id="Al" role="1B3o_S">
        <uo k="s:originTrace" v="n:8914850872824033120" />
      </node>
      <node concept="3uibUv" id="Am" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:8914850872824033120" />
        <node concept="3uibUv" id="Ap" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:8914850872824033120" />
        </node>
        <node concept="3uibUv" id="Aq" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8914850872824033120" />
        </node>
      </node>
      <node concept="3clFbS" id="An" role="3clF47">
        <uo k="s:originTrace" v="n:8914850872824033120" />
        <node concept="3clFbF" id="Ar" role="3cqZAp">
          <uo k="s:originTrace" v="n:8914850872824033120" />
          <node concept="2ShNRf" id="As" role="3clFbG">
            <uo k="s:originTrace" v="n:8914850872824033120" />
            <node concept="YeOm9" id="At" role="2ShVmc">
              <uo k="s:originTrace" v="n:8914850872824033120" />
              <node concept="1Y3b0j" id="Au" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:8914850872824033120" />
                <node concept="3Tm1VV" id="Av" role="1B3o_S">
                  <uo k="s:originTrace" v="n:8914850872824033120" />
                </node>
                <node concept="3clFb_" id="Aw" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:8914850872824033120" />
                  <node concept="3Tm1VV" id="Az" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8914850872824033120" />
                  </node>
                  <node concept="2AHcQZ" id="A$" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:8914850872824033120" />
                  </node>
                  <node concept="3uibUv" id="A_" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:8914850872824033120" />
                  </node>
                  <node concept="37vLTG" id="AA" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:8914850872824033120" />
                    <node concept="3uibUv" id="AD" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:8914850872824033120" />
                    </node>
                    <node concept="2AHcQZ" id="AE" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8914850872824033120" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="AB" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:8914850872824033120" />
                    <node concept="3uibUv" id="AF" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:8914850872824033120" />
                    </node>
                    <node concept="2AHcQZ" id="AG" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:8914850872824033120" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="AC" role="3clF47">
                    <uo k="s:originTrace" v="n:8914850872824033120" />
                    <node concept="3cpWs6" id="AH" role="3cqZAp">
                      <uo k="s:originTrace" v="n:8914850872824033120" />
                      <node concept="2ShNRf" id="AI" role="3cqZAk">
                        <uo k="s:originTrace" v="n:8914850872824033125" />
                        <node concept="YeOm9" id="AJ" role="2ShVmc">
                          <uo k="s:originTrace" v="n:8914850872824033125" />
                          <node concept="1Y3b0j" id="AK" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                            <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                            <uo k="s:originTrace" v="n:8914850872824033125" />
                            <node concept="3Tm1VV" id="AL" role="1B3o_S">
                              <uo k="s:originTrace" v="n:8914850872824033125" />
                            </node>
                            <node concept="3clFb_" id="AM" role="jymVt">
                              <property role="TrG5h" value="getSearchScopeValidatorNode" />
                              <uo k="s:originTrace" v="n:8914850872824033125" />
                              <node concept="3Tm1VV" id="AO" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8914850872824033125" />
                              </node>
                              <node concept="3uibUv" id="AP" role="3clF45">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                <uo k="s:originTrace" v="n:8914850872824033125" />
                              </node>
                              <node concept="3clFbS" id="AQ" role="3clF47">
                                <uo k="s:originTrace" v="n:8914850872824033125" />
                                <node concept="3cpWs6" id="AS" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8914850872824033125" />
                                  <node concept="2ShNRf" id="AT" role="3cqZAk">
                                    <uo k="s:originTrace" v="n:8914850872824033125" />
                                    <node concept="1pGfFk" id="AU" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8914850872824033125" />
                                      <node concept="Xl_RD" id="AV" role="37wK5m">
                                        <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                                        <uo k="s:originTrace" v="n:8914850872824033125" />
                                      </node>
                                      <node concept="Xl_RD" id="AW" role="37wK5m">
                                        <property role="Xl_RC" value="8914850872824033125" />
                                        <uo k="s:originTrace" v="n:8914850872824033125" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="AR" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8914850872824033125" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="AN" role="jymVt">
                              <property role="TrG5h" value="createScope" />
                              <uo k="s:originTrace" v="n:8914850872824033125" />
                              <node concept="3Tm1VV" id="AX" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8914850872824033125" />
                              </node>
                              <node concept="3uibUv" id="AY" role="3clF45">
                                <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                <uo k="s:originTrace" v="n:8914850872824033125" />
                              </node>
                              <node concept="37vLTG" id="AZ" role="3clF46">
                                <property role="TrG5h" value="_context" />
                                <property role="3TUv4t" value="true" />
                                <uo k="s:originTrace" v="n:8914850872824033125" />
                                <node concept="3uibUv" id="B2" role="1tU5fm">
                                  <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                  <uo k="s:originTrace" v="n:8914850872824033125" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="B0" role="3clF47">
                                <uo k="s:originTrace" v="n:8914850872824033125" />
                                <node concept="3clFbF" id="B3" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8914850872824034348" />
                                  <node concept="2ShNRf" id="B4" role="3clFbG">
                                    <uo k="s:originTrace" v="n:8914850872824034346" />
                                    <node concept="1pGfFk" id="B5" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                      <uo k="s:originTrace" v="n:8914850872824039795" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="B1" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8914850872824033125" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="Ax" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:8914850872824033120" />
                </node>
                <node concept="3uibUv" id="Ay" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:8914850872824033120" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Ao" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8914850872824033120" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="B6">
    <node concept="39e2AJ" id="B7" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="Ba" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7fqk8p44MPj" resolve="AggregateRootReference_Constraints" />
        <node concept="385nmt" id="BL" role="385vvn">
          <property role="385vuF" value="AggregateRootReference_Constraints" />
          <node concept="3u3nmq" id="BN" role="385v07">
            <property role="3u3nmv" value="8348073396882582867" />
          </node>
        </node>
        <node concept="39e2AT" id="BM" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="AggregateRootReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bb" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:awtshkx08H" resolve="AggregateRootRepository_Constraints" />
        <node concept="385nmt" id="BO" role="385vvn">
          <property role="385vuF" value="AggregateRootRepository_Constraints" />
          <node concept="3u3nmq" id="BQ" role="385v07">
            <property role="3u3nmv" value="189280670441538093" />
          </node>
        </node>
        <node concept="39e2AT" id="BP" role="39e2AY">
          <ref role="39e2AS" node="J" resolve="AggregateRootRepository_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bc" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:101Kr4o_yNc" resolve="AggregateRoot_Constraints" />
        <node concept="385nmt" id="BR" role="385vvn">
          <property role="385vuF" value="AggregateRoot_Constraints" />
          <node concept="3u3nmq" id="BT" role="385v07">
            <property role="3u3nmv" value="1153415945949424844" />
          </node>
        </node>
        <node concept="39e2AT" id="BS" role="39e2AY">
          <ref role="39e2AS" node="Y" resolve="AggregateRoot_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bd" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:awtshkttTq" resolve="CommandContainer_Constraints" />
        <node concept="385nmt" id="BU" role="385vvn">
          <property role="385vuF" value="CommandContainer_Constraints" />
          <node concept="3u3nmq" id="BW" role="385v07">
            <property role="3u3nmv" value="189280670440611418" />
          </node>
        </node>
        <node concept="39e2AT" id="BV" role="39e2AY">
          <ref role="39e2AS" node="aD" resolve="CommandContainer_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Be" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:1jrq3noYw5d" resolve="Command_Constraints" />
        <node concept="385nmt" id="BX" role="385vvn">
          <property role="385vuF" value="Command_Constraints" />
          <node concept="3u3nmq" id="BZ" role="385v07">
            <property role="3u3nmv" value="1502909481141010765" />
          </node>
        </node>
        <node concept="39e2AT" id="BY" role="39e2AY">
          <ref role="39e2AS" node="d7" resolve="Command_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bf" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:3NXs7yra5nW" resolve="DtoFlatteningRule_Constraints" />
        <node concept="385nmt" id="C0" role="385vvn">
          <property role="385vuF" value="DtoFlatteningRule_Constraints" />
          <node concept="3u3nmq" id="C2" role="385v07">
            <property role="3u3nmv" value="4394792474684970492" />
          </node>
        </node>
        <node concept="39e2AT" id="C1" role="39e2AY">
          <ref role="39e2AS" node="iZ" resolve="DtoFlatteningRule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bg" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7fqk8p4cFLQ" resolve="DtoReference_Constraints" />
        <node concept="385nmt" id="C3" role="385vvn">
          <property role="385vuF" value="DtoReference_Constraints" />
          <node concept="3u3nmq" id="C5" role="385v07">
            <property role="3u3nmv" value="8348073396884651126" />
          </node>
        </node>
        <node concept="39e2AT" id="C4" role="39e2AY">
          <ref role="39e2AS" node="oo" resolve="DtoReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bh" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7fqk8p4cFLY" resolve="Dto_Constraints" />
        <node concept="385nmt" id="C6" role="385vvn">
          <property role="385vuF" value="Dto_Constraints" />
          <node concept="3u3nmq" id="C8" role="385v07">
            <property role="3u3nmv" value="8348073396884651134" />
          </node>
        </node>
        <node concept="39e2AT" id="C7" role="39e2AY">
          <ref role="39e2AS" node="p7" resolve="Dto_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bi" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7fqk8p3WIpo" resolve="EntityReference_Constraints" />
        <node concept="385nmt" id="C9" role="385vvn">
          <property role="385vuF" value="EntityReference_Constraints" />
          <node concept="3u3nmq" id="Cb" role="385v07">
            <property role="3u3nmv" value="8348073396880467544" />
          </node>
        </node>
        <node concept="39e2AT" id="Ca" role="39e2AY">
          <ref role="39e2AS" node="uD" resolve="EntityReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bj" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7fqk8p3WI5q" resolve="Entity_Constraints" />
        <node concept="385nmt" id="Cc" role="385vvn">
          <property role="385vuF" value="Entity_Constraints" />
          <node concept="3u3nmq" id="Ce" role="385v07">
            <property role="3u3nmv" value="8348073396880466266" />
          </node>
        </node>
        <node concept="39e2AT" id="Cd" role="39e2AY">
          <ref role="39e2AS" node="vo" resolve="Entity_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bk" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7fqk8p45BY6" resolve="EventContainer_Constraints" />
        <node concept="385nmt" id="Cf" role="385vvn">
          <property role="385vuF" value="EventContainer_Constraints" />
          <node concept="3u3nmq" id="Ch" role="385v07">
            <property role="3u3nmv" value="8348073396882800518" />
          </node>
        </node>
        <node concept="39e2AT" id="Cg" role="39e2AY">
          <ref role="39e2AS" node="zT" resolve="EventContainer_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bl" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7IRUqbcguXw" resolve="Event_Constraints" />
        <node concept="385nmt" id="Ci" role="385vvn">
          <property role="385vuF" value="Event_Constraints" />
          <node concept="3u3nmq" id="Ck" role="385v07">
            <property role="3u3nmv" value="8914850872824033120" />
          </node>
        </node>
        <node concept="39e2AT" id="Cj" role="39e2AY">
          <ref role="39e2AS" node="A5" resolve="Event_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bm" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:awtshk_L0M" resolve="IAggregateRootComponent_Constraints" />
        <node concept="385nmt" id="Cl" role="385vvn">
          <property role="385vuF" value="IAggregateRootComponent_Constraints" />
          <node concept="3u3nmq" id="Cn" role="385v07">
            <property role="3u3nmv" value="189280670442786866" />
          </node>
        </node>
        <node concept="39e2AT" id="Cm" role="39e2AY">
          <ref role="39e2AS" node="Fg" resolve="IAggregateRootComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bn" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7mYw4uWx4U5" resolve="IAggregateRootRepositoryComponent_Constraints" />
        <node concept="385nmt" id="Co" role="385vvn">
          <property role="385vuF" value="IAggregateRootRepositoryComponent_Constraints" />
          <node concept="3u3nmq" id="Cq" role="385v07">
            <property role="3u3nmv" value="8484359793606413957" />
          </node>
        </node>
        <node concept="39e2AT" id="Cp" role="39e2AY">
          <ref role="39e2AS" node="FF" resolve="IAggregateRootRepositoryComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bo" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7fqk8p3QkJY" resolve="IBoundedContextComponent_Constraints" />
        <node concept="385nmt" id="Cr" role="385vvn">
          <property role="385vuF" value="IBoundedContextComponent_Constraints" />
          <node concept="3u3nmq" id="Ct" role="385v07">
            <property role="3u3nmv" value="8348073396878789630" />
          </node>
        </node>
        <node concept="39e2AT" id="Cs" role="39e2AY">
          <ref role="39e2AS" node="G6" resolve="IBoundedContextComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bp" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7mYw4uWwq4o" resolve="ICommandContainerComponent_Constraints" />
        <node concept="385nmt" id="Cu" role="385vvn">
          <property role="385vuF" value="ICommandContainerComponent_Constraints" />
          <node concept="3u3nmq" id="Cw" role="385v07">
            <property role="3u3nmv" value="8484359793606238488" />
          </node>
        </node>
        <node concept="39e2AT" id="Cv" role="39e2AY">
          <ref role="39e2AS" node="Gx" resolve="ICommandContainerComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bq" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5qxF18ELq6m" resolve="ICommandGenerationSettingsComponent_Constraints" />
        <node concept="385nmt" id="Cx" role="385vvn">
          <property role="385vuF" value="ICommandGenerationSettingsComponent_Constraints" />
          <node concept="3u3nmq" id="Cz" role="385v07">
            <property role="3u3nmv" value="6242459752539201942" />
          </node>
        </node>
        <node concept="39e2AT" id="Cy" role="39e2AY">
          <ref role="39e2AS" node="GW" resolve="ICommandGenerationSettingsComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Br" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:3DbZR$PiaEB" resolve="IDataType_Constraints" />
        <node concept="385nmt" id="C$" role="385vvn">
          <property role="385vuF" value="IDataType_Constraints" />
          <node concept="3u3nmq" id="CA" role="385v07">
            <property role="3u3nmv" value="4200731973503199911" />
          </node>
        </node>
        <node concept="39e2AT" id="C_" role="39e2AY">
          <ref role="39e2AS" node="Hn" resolve="IDataType_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bs" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:oGImgOv72t" resolve="IDtoComponent_Constraints" />
        <node concept="385nmt" id="CB" role="385vvn">
          <property role="385vuF" value="IDtoComponent_Constraints" />
          <node concept="3u3nmq" id="CD" role="385v07">
            <property role="3u3nmv" value="444934303231275165" />
          </node>
        </node>
        <node concept="39e2AT" id="CC" role="39e2AY">
          <ref role="39e2AS" node="HA" resolve="IDtoComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bt" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:E4RYE9akp8" resolve="IDtoDataTypeRuleContainerComponent_Constraints" />
        <node concept="385nmt" id="CE" role="385vvn">
          <property role="385vuF" value="IDtoDataTypeRuleContainerComponent_Constraints" />
          <node concept="3u3nmq" id="CG" role="385v07">
            <property role="3u3nmv" value="757976835721610824" />
          </node>
        </node>
        <node concept="39e2AT" id="CF" role="39e2AY">
          <ref role="39e2AS" node="I1" resolve="IDtoDataTypeRuleContainerComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bu" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:E4RYE9akaY" resolve="IDtoFlatteningRuleContainerComponent_Constraints" />
        <node concept="385nmt" id="CH" role="385vvn">
          <property role="385vuF" value="IDtoFlatteningRuleContainerComponent_Constraints" />
          <node concept="3u3nmq" id="CJ" role="385v07">
            <property role="3u3nmv" value="757976835721609918" />
          </node>
        </node>
        <node concept="39e2AT" id="CI" role="39e2AY">
          <ref role="39e2AS" node="Is" resolve="IDtoFlatteningRuleContainerComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bv" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:1WhJCpUQsa8" resolve="IDtoRepositoryComponent_Constraints" />
        <node concept="385nmt" id="CK" role="385vvn">
          <property role="385vuF" value="IDtoRepositoryComponent_Constraints" />
          <node concept="3u3nmq" id="CM" role="385v07">
            <property role="3u3nmv" value="2238779974575833736" />
          </node>
        </node>
        <node concept="39e2AT" id="CL" role="39e2AY">
          <ref role="39e2AS" node="IR" resolve="IDtoRepositoryComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bw" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7fqk8p3W565" resolve="IEntityComponent_Constraints" />
        <node concept="385nmt" id="CN" role="385vvn">
          <property role="385vuF" value="IEntityComponent_Constraints" />
          <node concept="3u3nmq" id="CP" role="385v07">
            <property role="3u3nmv" value="8348073396880298373" />
          </node>
        </node>
        <node concept="39e2AT" id="CO" role="39e2AY">
          <ref role="39e2AS" node="Ji" resolve="IEntityComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bx" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7mYw4uW6toT" resolve="IEventContainerComponent_Constraints" />
        <node concept="385nmt" id="CQ" role="385vvn">
          <property role="385vuF" value="IEventContainerComponent_Constraints" />
          <node concept="3u3nmq" id="CS" role="385v07">
            <property role="3u3nmv" value="8484359793599436345" />
          </node>
        </node>
        <node concept="39e2AT" id="CR" role="39e2AY">
          <ref role="39e2AS" node="JH" resolve="IEventContainerComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="By" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5qxF18EC3$_" resolve="IEventGenerationSettingsComponent_Constraints" />
        <node concept="385nmt" id="CT" role="385vvn">
          <property role="385vuF" value="IEventGenerationSettingsComponent_Constraints" />
          <node concept="3u3nmq" id="CV" role="385v07">
            <property role="3u3nmv" value="6242459752536750373" />
          </node>
        </node>
        <node concept="39e2AT" id="CU" role="39e2AY">
          <ref role="39e2AS" node="K8" resolve="IEventGenerationSettingsComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Bz" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:omljbyVz8S" resolve="IGeneratorSettingsComponent_Constraints" />
        <node concept="385nmt" id="CW" role="385vvn">
          <property role="385vuF" value="IGeneratorSettingsComponent_Constraints" />
          <node concept="3u3nmq" id="CY" role="385v07">
            <property role="3u3nmv" value="438631690759189048" />
          </node>
        </node>
        <node concept="39e2AT" id="CX" role="39e2AY">
          <ref role="39e2AS" node="Kz" resolve="IGeneratorSettingsComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="B$" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:oGImgMSoY2" resolve="IOptionalValidIdentifier_Constraints" />
        <node concept="385nmt" id="CZ" role="385vvn">
          <property role="385vuF" value="IOptionalValidIdentifier_Constraints" />
          <node concept="3u3nmq" id="D1" role="385v07">
            <property role="3u3nmv" value="444934303204347778" />
          </node>
        </node>
        <node concept="39e2AT" id="D0" role="39e2AY">
          <ref role="39e2AS" node="KY" resolve="IOptionalValidIdentifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="B_" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:3DbZR$O1TZV" resolve="IQueryContainerComponent_Constraints" />
        <node concept="385nmt" id="D2" role="385vvn">
          <property role="385vuF" value="IQueryContainerComponent_Constraints" />
          <node concept="3u3nmq" id="D4" role="385v07">
            <property role="3u3nmv" value="4200731973482160123" />
          </node>
        </node>
        <node concept="39e2AT" id="D3" role="39e2AY">
          <ref role="39e2AS" node="MS" resolve="IQueryContainerComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BA" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5qxF18ENHI4" resolve="IQueryGenerationSettingsComponent_Constraints" />
        <node concept="385nmt" id="D5" role="385vvn">
          <property role="385vuF" value="IQueryGenerationSettingsComponent_Constraints" />
          <node concept="3u3nmq" id="D7" role="385v07">
            <property role="3u3nmv" value="6242459752539806596" />
          </node>
        </node>
        <node concept="39e2AT" id="D6" role="39e2AY">
          <ref role="39e2AS" node="Nj" resolve="IQueryGenerationSettingsComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BB" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:oGImgN2kt7" resolve="IValueObjectComponent_Constraints" />
        <node concept="385nmt" id="D8" role="385vvn">
          <property role="385vuF" value="IValueObjectComponent_Constraints" />
          <node concept="3u3nmq" id="Da" role="385v07">
            <property role="3u3nmv" value="444934303206950727" />
          </node>
        </node>
        <node concept="39e2AT" id="D9" role="39e2AY">
          <ref role="39e2AS" node="NI" resolve="IValueObjectComponent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BC" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:4LpUh3V3NVY" resolve="IVariable_Constraints" />
        <node concept="385nmt" id="Db" role="385vvn">
          <property role="385vuF" value="IVariable_Constraints" />
          <node concept="3u3nmq" id="Dd" role="385v07">
            <property role="3u3nmv" value="5501684678950600446" />
          </node>
        </node>
        <node concept="39e2AT" id="Dc" role="39e2AY">
          <ref role="39e2AS" node="O9" resolve="IVariable_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BD" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5SyewCciVqH" resolve="ImportedType_Constraints" />
        <node concept="385nmt" id="De" role="385vvn">
          <property role="385vuF" value="ImportedType_Constraints" />
          <node concept="3u3nmq" id="Dg" role="385v07">
            <property role="3u3nmv" value="6783047803603760813" />
          </node>
        </node>
        <node concept="39e2AT" id="Df" role="39e2AY">
          <ref role="39e2AS" node="SJ" resolve="ImportedType_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BE" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5SyewCa$$pS" resolve="Parameter_Constraints" />
        <node concept="385nmt" id="Dh" role="385vvn">
          <property role="385vuF" value="Parameter_Constraints" />
          <node concept="3u3nmq" id="Dj" role="385v07">
            <property role="3u3nmv" value="6783047803574830712" />
          </node>
        </node>
        <node concept="39e2AT" id="Di" role="39e2AY">
          <ref role="39e2AS" node="SY" resolve="Parameter_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BF" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:oGImgMUb_z" resolve="Property_Constraints" />
        <node concept="385nmt" id="Dk" role="385vvn">
          <property role="385vuF" value="Property_Constraints" />
          <node concept="3u3nmq" id="Dm" role="385v07">
            <property role="3u3nmv" value="444934303204817251" />
          </node>
        </node>
        <node concept="39e2AT" id="Dl" role="39e2AY">
          <ref role="39e2AS" node="Td" resolve="Property_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BG" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:2RbvdOKicKM" resolve="QueryContainer_Constraints" />
        <node concept="385nmt" id="Dn" role="385vvn">
          <property role="385vuF" value="QueryContainer_Constraints" />
          <node concept="3u3nmq" id="Dp" role="385v07">
            <property role="3u3nmv" value="3299868441418714162" />
          </node>
        </node>
        <node concept="39e2AT" id="Do" role="39e2AY">
          <ref role="39e2AS" node="Ts" resolve="QueryContainer_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BH" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:omljbzWVxz" resolve="QueryGenerationSettings_Constraints" />
        <node concept="385nmt" id="Dq" role="385vvn">
          <property role="385vuF" value="QueryGenerationSettings_Constraints" />
          <node concept="3u3nmq" id="Ds" role="385v07">
            <property role="3u3nmv" value="438631690776328291" />
          </node>
        </node>
        <node concept="39e2AT" id="Dr" role="39e2AY">
          <ref role="39e2AS" node="V9" resolve="QueryGenerationSettings_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BI" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:3VGLvhEe$5e" resolve="Query_Constraints" />
        <node concept="385nmt" id="Dt" role="385vvn">
          <property role="385vuF" value="Query_Constraints" />
          <node concept="3u3nmq" id="Dv" role="385v07">
            <property role="3u3nmv" value="4534216578400141646" />
          </node>
        </node>
        <node concept="39e2AT" id="Du" role="39e2AY">
          <ref role="39e2AS" node="Vo" resolve="Query_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BJ" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7Vh9qpGhyr9" resolve="ValueObjectReference_Constraints" />
        <node concept="385nmt" id="Dw" role="385vvn">
          <property role="385vuF" value="ValueObjectReference_Constraints" />
          <node concept="3u3nmq" id="Dy" role="385v07">
            <property role="3u3nmv" value="9138126515622782665" />
          </node>
        </node>
        <node concept="39e2AT" id="Dx" role="39e2AY">
          <ref role="39e2AS" node="XX" resolve="ValueObjectReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="BK" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7fqk8p3JV7a" resolve="ValueObject_Constraints" />
        <node concept="385nmt" id="Dz" role="385vvn">
          <property role="385vuF" value="ValueObject_Constraints" />
          <node concept="3u3nmq" id="D_" role="385v07">
            <property role="3u3nmv" value="8348073396877111754" />
          </node>
        </node>
        <node concept="39e2AT" id="D$" role="39e2AY">
          <ref role="39e2AS" node="YG" resolve="ValueObject_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="B8" role="39e2AI">
      <property role="39e3Y2" value="map_ConstraintsClassifierMethod" />
      <node concept="39e2AG" id="DA" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:awtshklmyR" resolve="provideAggregateRepositoryScope" />
        <node concept="385nmt" id="E0" role="385vvn">
          <property role="385vuF" value="_additional_provideAggregateRepositoryScope(node&lt;AggregateRootRepository&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="E2" role="385v07">
            <property role="3u3nmv" value="189280670438484151" />
          </node>
        </node>
        <node concept="39e2AT" id="E1" role="39e2AY">
          <ref role="39e2AS" node="14" resolve="_additional_provideAggregateRepositoryScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DB" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5SyewCau2jI" resolve="provideAggregateRootRepositoryScope" />
        <node concept="385nmt" id="E3" role="385vvn">
          <property role="385vuF" value="_additional_provideAggregateRootRepositoryScope(node&lt;AggregateRootRepository&gt;):Scope" />
          <node concept="3u3nmq" id="E5" role="385v07">
            <property role="3u3nmv" value="6783047803573118190" />
          </node>
        </node>
        <node concept="39e2AT" id="E4" role="39e2AY">
          <ref role="39e2AS" node="YP" resolve="_additional_provideAggregateRootRepositoryScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DC" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5SyewCatW3o" resolve="provideAggregateRootScope" />
        <node concept="385nmt" id="E6" role="385vvn">
          <property role="385vuF" value="_additional_provideAggregateRootScope(node&lt;AggregateRoot&gt;):Scope" />
          <node concept="3u3nmq" id="E8" role="385v07">
            <property role="3u3nmv" value="6783047803573092568" />
          </node>
        </node>
        <node concept="39e2AT" id="E7" role="39e2AY">
          <ref role="39e2AS" node="YO" resolve="_additional_provideAggregateRootScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DD" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:4Bg9wDFnJDP" resolve="provideAggregateRootScope" />
        <node concept="385nmt" id="E9" role="385vvn">
          <property role="385vuF" value="_additional_provideAggregateRootScope(node&lt;AggregateRoot&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="Eb" role="385v07">
            <property role="3u3nmv" value="5318792986117470837" />
          </node>
        </node>
        <node concept="39e2AT" id="Ea" role="39e2AY">
          <ref role="39e2AS" node="dd" resolve="_additional_provideAggregateRootScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DE" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5SyewC9Xrh$" resolve="provideAggregateRootScope" />
        <node concept="385nmt" id="Ec" role="385vvn">
          <property role="385vuF" value="_additional_provideAggregateRootScope(node&lt;AggregateRoot&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="Ee" role="385v07">
            <property role="3u3nmv" value="6783047803564569700" />
          </node>
        </node>
        <node concept="39e2AT" id="Ed" role="39e2AY">
          <ref role="39e2AS" node="vv" resolve="_additional_provideAggregateRootScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DF" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:awtshkmlVD" resolve="provideCommandContainerScope" />
        <node concept="385nmt" id="Ef" role="385vvn">
          <property role="385vuF" value="_additional_provideCommandContainerScope(node&lt;CommandContainer&gt;,node&lt;&gt;,SContainmentLink):Scope" />
          <node concept="3u3nmq" id="Eh" role="385v07">
            <property role="3u3nmv" value="189280670438743785" />
          </node>
        </node>
        <node concept="39e2AT" id="Eg" role="39e2AY">
          <ref role="39e2AS" node="16" resolve="_additional_provideCommandContainerScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DG" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:1jrq3npqOtG" resolve="provideCommandScope" />
        <node concept="385nmt" id="Ei" role="385vvn">
          <property role="385vuF" value="_additional_provideCommandScope(node&lt;Command&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="Ek" role="385v07">
            <property role="3u3nmv" value="1502909481148434284" />
          </node>
        </node>
        <node concept="39e2AT" id="Ej" role="39e2AY">
          <ref role="39e2AS" node="17" resolve="_additional_provideCommandScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DH" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:1pnQbpDKupR" resolve="provideDtoFlatDerivationRuleScope" />
        <node concept="385nmt" id="El" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoFlatDerivationRuleScope(node&lt;DtoFlatteningRule&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="En" role="385v07">
            <property role="3u3nmv" value="1609993669778204279" />
          </node>
        </node>
        <node concept="39e2AT" id="Em" role="39e2AY">
          <ref role="39e2AS" node="j7" resolve="_additional_provideDtoFlatDerivationRuleScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DI" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:3NXs7yo7wXH" resolve="provideDtoFlatteningRuleScope" />
        <node concept="385nmt" id="Eo" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoFlatteningRuleScope(node&lt;DtoFlatteningRuleContainer&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="Eq" role="385v07">
            <property role="3u3nmv" value="4394792474633965421" />
          </node>
        </node>
        <node concept="39e2AT" id="Ep" role="39e2AY">
          <ref role="39e2AS" node="YR" resolve="_additional_provideDtoFlatteningRuleScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DJ" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:3NXs7yo8fQX" resolve="provideDtoFlatteningRuleScope" />
        <node concept="385nmt" id="Er" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoFlatteningRuleScope(node&lt;DtoFlatteningRuleContainer&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="Et" role="385v07">
            <property role="3u3nmv" value="4394792474634157501" />
          </node>
        </node>
        <node concept="39e2AT" id="Es" role="39e2AY">
          <ref role="39e2AS" node="19" resolve="_additional_provideDtoFlatteningRuleScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DK" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:3NXs7yo8kqM" resolve="provideDtoFlatteningRuleScope" />
        <node concept="385nmt" id="Eu" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoFlatteningRuleScope(node&lt;DtoFlatteningRuleContainer&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="Ew" role="385v07">
            <property role="3u3nmv" value="4394792474634176178" />
          </node>
        </node>
        <node concept="39e2AT" id="Ev" role="39e2AY">
          <ref role="39e2AS" node="vx" resolve="_additional_provideDtoFlatteningRuleScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DL" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:3NXs7yp2unK" resolve="provideDtoFlatteningRuleScope" />
        <node concept="385nmt" id="Ex" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoFlatteningRuleScope(node&lt;DtoFlatteningRuleContainer&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="Ez" role="385v07">
            <property role="3u3nmv" value="4394792474649421296" />
          </node>
        </node>
        <node concept="39e2AT" id="Ey" role="39e2AY">
          <ref role="39e2AS" node="Og" resolve="_additional_provideDtoFlatteningRuleScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DM" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:1WhJCpURUqR" resolve="provideDtoRepositoryScope" />
        <node concept="385nmt" id="E$" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoRepositoryScope(node&lt;DtoRepository&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="EA" role="385v07">
            <property role="3u3nmv" value="2238779974576219831" />
          </node>
        </node>
        <node concept="39e2AT" id="E_" role="39e2AY">
          <ref role="39e2AS" node="pg" resolve="_additional_provideDtoRepositoryScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DN" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5YqiGT0_S8n" resolve="provideDtoRuleScope" />
        <node concept="385nmt" id="EB" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoRuleScope(node&lt;Dto&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="ED" role="385v07">
            <property role="3u3nmv" value="6888900829723984407" />
          </node>
        </node>
        <node concept="39e2AT" id="EC" role="39e2AY">
          <ref role="39e2AS" node="j8" resolve="_additional_provideDtoRuleScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DO" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:3DbZR$O3vVS" resolve="provideDtoScope" />
        <node concept="385nmt" id="EE" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoScope(node&lt;Dto&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="EG" role="385v07">
            <property role="3u3nmv" value="4200731973482577656" />
          </node>
        </node>
        <node concept="39e2AT" id="EF" role="39e2AY">
          <ref role="39e2AS" node="pd" resolve="_additional_provideDtoScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DP" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:4LpUh3T365f" resolve="provideDtoScope" />
        <node concept="385nmt" id="EH" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoScope(node&lt;Dto&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="EJ" role="385v07">
            <property role="3u3nmv" value="5501684678916858191" />
          </node>
        </node>
        <node concept="39e2AT" id="EI" role="39e2AY">
          <ref role="39e2AS" node="YQ" resolve="_additional_provideDtoScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DQ" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:4LpUh3T$fvm" resolve="provideDtoScope" />
        <node concept="385nmt" id="EK" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoScope(node&lt;Dto&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="EM" role="385v07">
            <property role="3u3nmv" value="5501684678925547478" />
          </node>
        </node>
        <node concept="39e2AT" id="EL" role="39e2AY">
          <ref role="39e2AS" node="vw" resolve="_additional_provideDtoScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DR" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:4LpUh3TY_9R" resolve="provideDtoScope" />
        <node concept="385nmt" id="EN" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoScope(node&lt;Dto&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="EP" role="385v07">
            <property role="3u3nmv" value="5501684678932451959" />
          </node>
        </node>
        <node concept="39e2AT" id="EO" role="39e2AY">
          <ref role="39e2AS" node="18" resolve="_additional_provideDtoScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DS" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:4LpUh3V3OYg" resolve="provideDtoScope" />
        <node concept="385nmt" id="EQ" role="385vvn">
          <property role="385vuF" value="_additional_provideDtoScope(node&lt;Dto&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="ES" role="385v07">
            <property role="3u3nmv" value="5501684678950604688" />
          </node>
        </node>
        <node concept="39e2AT" id="ER" role="39e2AY">
          <ref role="39e2AS" node="Of" resolve="_additional_provideDtoScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DT" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5SyewCatU_a" resolve="provideEntityScope" />
        <node concept="385nmt" id="ET" role="385vvn">
          <property role="385vuF" value="_additional_provideEntityScope(node&lt;Entity&gt;):Scope" />
          <node concept="3u3nmq" id="EV" role="385v07">
            <property role="3u3nmv" value="6783047803573086538" />
          </node>
        </node>
        <node concept="39e2AT" id="EU" role="39e2AY">
          <ref role="39e2AS" node="YN" resolve="_additional_provideEntityScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DU" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5SyewC9XpHp" resolve="provideEntityScope" />
        <node concept="385nmt" id="EW" role="385vvn">
          <property role="385vuF" value="_additional_provideEntityScope(node&lt;Entity&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="EY" role="385v07">
            <property role="3u3nmv" value="6783047803564563289" />
          </node>
        </node>
        <node concept="39e2AT" id="EX" role="39e2AY">
          <ref role="39e2AS" node="vu" resolve="_additional_provideEntityScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DV" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:awtshkjDUm" resolve="provideEventConatinerScope" />
        <node concept="385nmt" id="EZ" role="385vvn">
          <property role="385vuF" value="_additional_provideEventConatinerScope(node&lt;EventContainer&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="F1" role="385v07">
            <property role="3u3nmv" value="189280670438039190" />
          </node>
        </node>
        <node concept="39e2AT" id="F0" role="39e2AY">
          <ref role="39e2AS" node="15" resolve="_additional_provideEventConatinerScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DW" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:3DbZR$O3zKC" resolve="provideQueryContainerScope" />
        <node concept="385nmt" id="F2" role="385vvn">
          <property role="385vuF" value="_additional_provideQueryContainerScope(node&lt;QueryContainer&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="F4" role="385v07">
            <property role="3u3nmv" value="4200731973482593320" />
          </node>
        </node>
        <node concept="39e2AT" id="F3" role="39e2AY">
          <ref role="39e2AS" node="pe" resolve="_additional_provideQueryContainerScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DX" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:7IRUqbcgzl4" resolve="provideQueryMethodsScope" />
        <node concept="385nmt" id="F5" role="385vvn">
          <property role="385vuF" value="_additional_provideQueryMethodsScope(node&lt;QueryMethods&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="F7" role="385v07">
            <property role="3u3nmv" value="8914850872824051012" />
          </node>
        </node>
        <node concept="39e2AT" id="F6" role="39e2AY">
          <ref role="39e2AS" node="Vu" resolve="_additional_provideQueryMethodsScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DY" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:2Bsub$LvGgN" resolve="provideQueryScope" />
        <node concept="385nmt" id="F8" role="385vvn">
          <property role="385vuF" value="_additional_provideQueryScope(node&lt;Query&gt;,node&lt;&gt;):Scope" />
          <node concept="3u3nmq" id="Fa" role="385v07">
            <property role="3u3nmv" value="3016418587226063923" />
          </node>
        </node>
        <node concept="39e2AT" id="F9" role="39e2AY">
          <ref role="39e2AS" node="pf" resolve="_additional_provideQueryScope" />
        </node>
      </node>
      <node concept="39e2AG" id="DZ" role="39e3Y0">
        <ref role="39e2AK" to="ldtt:5SyewCatWxF" resolve="provideValueObjectScope" />
        <node concept="385nmt" id="Fb" role="385vvn">
          <property role="385vuF" value="_additional_provideValueObjectScope(node&lt;ValueObject&gt;):Scope" />
          <node concept="3u3nmq" id="Fd" role="385v07">
            <property role="3u3nmv" value="6783047803573094507" />
          </node>
        </node>
        <node concept="39e2AT" id="Fc" role="39e2AY">
          <ref role="39e2AS" node="YM" resolve="_additional_provideValueObjectScope" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="B9" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="Fe" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="Ff" role="39e2AY">
          <ref role="39e2AS" node="eZ" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Fg">
    <property role="3GE5qa" value="aggregates" />
    <property role="TrG5h" value="IAggregateRootComponent_Constraints" />
    <uo k="s:originTrace" v="n:189280670442786866" />
    <node concept="3Tm1VV" id="Fh" role="1B3o_S">
      <uo k="s:originTrace" v="n:189280670442786866" />
    </node>
    <node concept="3uibUv" id="Fi" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:189280670442786866" />
    </node>
    <node concept="3clFbW" id="Fj" role="jymVt">
      <uo k="s:originTrace" v="n:189280670442786866" />
      <node concept="3cqZAl" id="Fm" role="3clF45">
        <uo k="s:originTrace" v="n:189280670442786866" />
      </node>
      <node concept="3clFbS" id="Fn" role="3clF47">
        <uo k="s:originTrace" v="n:189280670442786866" />
        <node concept="XkiVB" id="Fp" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:189280670442786866" />
          <node concept="1BaE9c" id="Fq" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IAggregateRootComponent$hc" />
            <uo k="s:originTrace" v="n:189280670442786866" />
            <node concept="2YIFZM" id="Fr" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:189280670442786866" />
              <node concept="1adDum" id="Fs" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:189280670442786866" />
              </node>
              <node concept="1adDum" id="Ft" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:189280670442786866" />
              </node>
              <node concept="1adDum" id="Fu" role="37wK5m">
                <property role="1adDun" value="0x2a075c45497102dL" />
                <uo k="s:originTrace" v="n:189280670442786866" />
              </node>
              <node concept="Xl_RD" id="Fv" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IAggregateRootComponent" />
                <uo k="s:originTrace" v="n:189280670442786866" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Fo" role="1B3o_S">
        <uo k="s:originTrace" v="n:189280670442786866" />
      </node>
    </node>
    <node concept="2tJIrI" id="Fk" role="jymVt">
      <uo k="s:originTrace" v="n:189280670442786866" />
    </node>
    <node concept="3clFb_" id="Fl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:189280670442786866" />
      <node concept="2AHcQZ" id="Fw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:189280670442786866" />
      </node>
      <node concept="3uibUv" id="Fx" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:189280670442786866" />
      </node>
      <node concept="3Tm1VV" id="Fy" role="1B3o_S">
        <uo k="s:originTrace" v="n:189280670442786866" />
      </node>
      <node concept="3clFbS" id="Fz" role="3clF47">
        <uo k="s:originTrace" v="n:189280670442786866" />
        <node concept="3clFbF" id="F$" role="3cqZAp">
          <uo k="s:originTrace" v="n:189280670442786866" />
          <node concept="1BaE9c" id="F_" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:189280670442786866" />
            <node concept="2YIFZM" id="FA" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:189280670442786866" />
              <node concept="1adDum" id="FB" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:189280670442786866" />
              </node>
              <node concept="1adDum" id="FC" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:189280670442786866" />
              </node>
              <node concept="1adDum" id="FD" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:189280670442786866" />
              </node>
              <node concept="Xl_RD" id="FE" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:189280670442786866" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="FF">
    <property role="3GE5qa" value="aggregateRepository" />
    <property role="TrG5h" value="IAggregateRootRepositoryComponent_Constraints" />
    <uo k="s:originTrace" v="n:8484359793606413957" />
    <node concept="3Tm1VV" id="FG" role="1B3o_S">
      <uo k="s:originTrace" v="n:8484359793606413957" />
    </node>
    <node concept="3uibUv" id="FH" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8484359793606413957" />
    </node>
    <node concept="3clFbW" id="FI" role="jymVt">
      <uo k="s:originTrace" v="n:8484359793606413957" />
      <node concept="3cqZAl" id="FL" role="3clF45">
        <uo k="s:originTrace" v="n:8484359793606413957" />
      </node>
      <node concept="3clFbS" id="FM" role="3clF47">
        <uo k="s:originTrace" v="n:8484359793606413957" />
        <node concept="XkiVB" id="FO" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8484359793606413957" />
          <node concept="1BaE9c" id="FP" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IAggregateRootRepositoryComponent$wq" />
            <uo k="s:originTrace" v="n:8484359793606413957" />
            <node concept="2YIFZM" id="FQ" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:8484359793606413957" />
              <node concept="1adDum" id="FR" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8484359793606413957" />
              </node>
              <node concept="1adDum" id="FS" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8484359793606413957" />
              </node>
              <node concept="1adDum" id="FT" role="37wK5m">
                <property role="1adDun" value="0x75be8047bc84329eL" />
                <uo k="s:originTrace" v="n:8484359793606413957" />
              </node>
              <node concept="Xl_RD" id="FU" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IAggregateRootRepositoryComponent" />
                <uo k="s:originTrace" v="n:8484359793606413957" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="FN" role="1B3o_S">
        <uo k="s:originTrace" v="n:8484359793606413957" />
      </node>
    </node>
    <node concept="2tJIrI" id="FJ" role="jymVt">
      <uo k="s:originTrace" v="n:8484359793606413957" />
    </node>
    <node concept="3clFb_" id="FK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:8484359793606413957" />
      <node concept="2AHcQZ" id="FV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8484359793606413957" />
      </node>
      <node concept="3uibUv" id="FW" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:8484359793606413957" />
      </node>
      <node concept="3Tm1VV" id="FX" role="1B3o_S">
        <uo k="s:originTrace" v="n:8484359793606413957" />
      </node>
      <node concept="3clFbS" id="FY" role="3clF47">
        <uo k="s:originTrace" v="n:8484359793606413957" />
        <node concept="3clFbF" id="FZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:8484359793606413957" />
          <node concept="1BaE9c" id="G0" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:8484359793606413957" />
            <node concept="2YIFZM" id="G1" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8484359793606413957" />
              <node concept="1adDum" id="G2" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8484359793606413957" />
              </node>
              <node concept="1adDum" id="G3" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8484359793606413957" />
              </node>
              <node concept="1adDum" id="G4" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:8484359793606413957" />
              </node>
              <node concept="Xl_RD" id="G5" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:8484359793606413957" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="G6">
    <property role="3GE5qa" value="boundedContext" />
    <property role="TrG5h" value="IBoundedContextComponent_Constraints" />
    <uo k="s:originTrace" v="n:8348073396878789630" />
    <node concept="3Tm1VV" id="G7" role="1B3o_S">
      <uo k="s:originTrace" v="n:8348073396878789630" />
    </node>
    <node concept="3uibUv" id="G8" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8348073396878789630" />
    </node>
    <node concept="3clFbW" id="G9" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396878789630" />
      <node concept="3cqZAl" id="Gc" role="3clF45">
        <uo k="s:originTrace" v="n:8348073396878789630" />
      </node>
      <node concept="3clFbS" id="Gd" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396878789630" />
        <node concept="XkiVB" id="Gf" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8348073396878789630" />
          <node concept="1BaE9c" id="Gg" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IBoundedContextComponent$2H" />
            <uo k="s:originTrace" v="n:8348073396878789630" />
            <node concept="2YIFZM" id="Gh" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:8348073396878789630" />
              <node concept="1adDum" id="Gi" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396878789630" />
              </node>
              <node concept="1adDum" id="Gj" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396878789630" />
              </node>
              <node concept="1adDum" id="Gk" role="37wK5m">
                <property role="1adDun" value="0x6375c6ceebab8368L" />
                <uo k="s:originTrace" v="n:8348073396878789630" />
              </node>
              <node concept="Xl_RD" id="Gl" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IBoundedContextComponent" />
                <uo k="s:originTrace" v="n:8348073396878789630" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Ge" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396878789630" />
      </node>
    </node>
    <node concept="2tJIrI" id="Ga" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396878789630" />
    </node>
    <node concept="3clFb_" id="Gb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:8348073396878789630" />
      <node concept="2AHcQZ" id="Gm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8348073396878789630" />
      </node>
      <node concept="3uibUv" id="Gn" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:8348073396878789630" />
      </node>
      <node concept="3Tm1VV" id="Go" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396878789630" />
      </node>
      <node concept="3clFbS" id="Gp" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396878789630" />
        <node concept="3clFbF" id="Gq" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396878789630" />
          <node concept="1BaE9c" id="Gr" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:8348073396878789630" />
            <node concept="2YIFZM" id="Gs" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8348073396878789630" />
              <node concept="1adDum" id="Gt" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396878789630" />
              </node>
              <node concept="1adDum" id="Gu" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396878789630" />
              </node>
              <node concept="1adDum" id="Gv" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:8348073396878789630" />
              </node>
              <node concept="Xl_RD" id="Gw" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:8348073396878789630" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Gx">
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="ICommandContainerComponent_Constraints" />
    <uo k="s:originTrace" v="n:8484359793606238488" />
    <node concept="3Tm1VV" id="Gy" role="1B3o_S">
      <uo k="s:originTrace" v="n:8484359793606238488" />
    </node>
    <node concept="3uibUv" id="Gz" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8484359793606238488" />
    </node>
    <node concept="3clFbW" id="G$" role="jymVt">
      <uo k="s:originTrace" v="n:8484359793606238488" />
      <node concept="3cqZAl" id="GB" role="3clF45">
        <uo k="s:originTrace" v="n:8484359793606238488" />
      </node>
      <node concept="3clFbS" id="GC" role="3clF47">
        <uo k="s:originTrace" v="n:8484359793606238488" />
        <node concept="XkiVB" id="GE" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8484359793606238488" />
          <node concept="1BaE9c" id="GF" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ICommandContainerComponent$Kt" />
            <uo k="s:originTrace" v="n:8484359793606238488" />
            <node concept="2YIFZM" id="GG" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:8484359793606238488" />
              <node concept="1adDum" id="GH" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8484359793606238488" />
              </node>
              <node concept="1adDum" id="GI" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8484359793606238488" />
              </node>
              <node concept="1adDum" id="GJ" role="37wK5m">
                <property role="1adDun" value="0x75be8047bc81a103L" />
                <uo k="s:originTrace" v="n:8484359793606238488" />
              </node>
              <node concept="Xl_RD" id="GK" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.ICommandContainerComponent" />
                <uo k="s:originTrace" v="n:8484359793606238488" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="GD" role="1B3o_S">
        <uo k="s:originTrace" v="n:8484359793606238488" />
      </node>
    </node>
    <node concept="2tJIrI" id="G_" role="jymVt">
      <uo k="s:originTrace" v="n:8484359793606238488" />
    </node>
    <node concept="3clFb_" id="GA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:8484359793606238488" />
      <node concept="2AHcQZ" id="GL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8484359793606238488" />
      </node>
      <node concept="3uibUv" id="GM" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:8484359793606238488" />
      </node>
      <node concept="3Tm1VV" id="GN" role="1B3o_S">
        <uo k="s:originTrace" v="n:8484359793606238488" />
      </node>
      <node concept="3clFbS" id="GO" role="3clF47">
        <uo k="s:originTrace" v="n:8484359793606238488" />
        <node concept="3clFbF" id="GP" role="3cqZAp">
          <uo k="s:originTrace" v="n:8484359793606238488" />
          <node concept="1BaE9c" id="GQ" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:8484359793606238488" />
            <node concept="2YIFZM" id="GR" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8484359793606238488" />
              <node concept="1adDum" id="GS" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8484359793606238488" />
              </node>
              <node concept="1adDum" id="GT" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8484359793606238488" />
              </node>
              <node concept="1adDum" id="GU" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:8484359793606238488" />
              </node>
              <node concept="Xl_RD" id="GV" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:8484359793606238488" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="GW">
    <property role="3GE5qa" value="generationSettings.command" />
    <property role="TrG5h" value="ICommandGenerationSettingsComponent_Constraints" />
    <uo k="s:originTrace" v="n:6242459752539201942" />
    <node concept="3Tm1VV" id="GX" role="1B3o_S">
      <uo k="s:originTrace" v="n:6242459752539201942" />
    </node>
    <node concept="3uibUv" id="GY" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6242459752539201942" />
    </node>
    <node concept="3clFbW" id="GZ" role="jymVt">
      <uo k="s:originTrace" v="n:6242459752539201942" />
      <node concept="3cqZAl" id="H2" role="3clF45">
        <uo k="s:originTrace" v="n:6242459752539201942" />
      </node>
      <node concept="3clFbS" id="H3" role="3clF47">
        <uo k="s:originTrace" v="n:6242459752539201942" />
        <node concept="XkiVB" id="H5" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6242459752539201942" />
          <node concept="1BaE9c" id="H6" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ICommandGenerationSettingsComponent$sX" />
            <uo k="s:originTrace" v="n:6242459752539201942" />
            <node concept="2YIFZM" id="H7" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:6242459752539201942" />
              <node concept="1adDum" id="H8" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:6242459752539201942" />
              </node>
              <node concept="1adDum" id="H9" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:6242459752539201942" />
              </node>
              <node concept="1adDum" id="Ha" role="37wK5m">
                <property role="1adDun" value="0x56a1ac122ac59249L" />
                <uo k="s:originTrace" v="n:6242459752539201942" />
              </node>
              <node concept="Xl_RD" id="Hb" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.ICommandGenerationSettingsComponent" />
                <uo k="s:originTrace" v="n:6242459752539201942" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="H4" role="1B3o_S">
        <uo k="s:originTrace" v="n:6242459752539201942" />
      </node>
    </node>
    <node concept="2tJIrI" id="H0" role="jymVt">
      <uo k="s:originTrace" v="n:6242459752539201942" />
    </node>
    <node concept="3clFb_" id="H1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:6242459752539201942" />
      <node concept="2AHcQZ" id="Hc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6242459752539201942" />
      </node>
      <node concept="3uibUv" id="Hd" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:6242459752539201942" />
      </node>
      <node concept="3Tm1VV" id="He" role="1B3o_S">
        <uo k="s:originTrace" v="n:6242459752539201942" />
      </node>
      <node concept="3clFbS" id="Hf" role="3clF47">
        <uo k="s:originTrace" v="n:6242459752539201942" />
        <node concept="3clFbF" id="Hg" role="3cqZAp">
          <uo k="s:originTrace" v="n:6242459752539201942" />
          <node concept="1BaE9c" id="Hh" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:6242459752539201942" />
            <node concept="2YIFZM" id="Hi" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6242459752539201942" />
              <node concept="1adDum" id="Hj" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:6242459752539201942" />
              </node>
              <node concept="1adDum" id="Hk" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:6242459752539201942" />
              </node>
              <node concept="1adDum" id="Hl" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:6242459752539201942" />
              </node>
              <node concept="Xl_RD" id="Hm" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:6242459752539201942" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Hn">
    <property role="3GE5qa" value="typing" />
    <property role="TrG5h" value="IDataType_Constraints" />
    <uo k="s:originTrace" v="n:4200731973503199911" />
    <node concept="3Tm1VV" id="Ho" role="1B3o_S">
      <uo k="s:originTrace" v="n:4200731973503199911" />
    </node>
    <node concept="3uibUv" id="Hp" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4200731973503199911" />
    </node>
    <node concept="3clFbW" id="Hq" role="jymVt">
      <uo k="s:originTrace" v="n:4200731973503199911" />
      <node concept="3cqZAl" id="Hs" role="3clF45">
        <uo k="s:originTrace" v="n:4200731973503199911" />
      </node>
      <node concept="3clFbS" id="Ht" role="3clF47">
        <uo k="s:originTrace" v="n:4200731973503199911" />
        <node concept="XkiVB" id="Hv" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4200731973503199911" />
          <node concept="1BaE9c" id="Hw" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IDataType$Sx" />
            <uo k="s:originTrace" v="n:4200731973503199911" />
            <node concept="2YIFZM" id="Hx" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:4200731973503199911" />
              <node concept="1adDum" id="Hy" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:4200731973503199911" />
              </node>
              <node concept="1adDum" id="Hz" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:4200731973503199911" />
              </node>
              <node concept="1adDum" id="H$" role="37wK5m">
                <property role="1adDun" value="0x4cfae7e929829c9dL" />
                <uo k="s:originTrace" v="n:4200731973503199911" />
              </node>
              <node concept="Xl_RD" id="H_" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IDataType" />
                <uo k="s:originTrace" v="n:4200731973503199911" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Hu" role="1B3o_S">
        <uo k="s:originTrace" v="n:4200731973503199911" />
      </node>
    </node>
    <node concept="2tJIrI" id="Hr" role="jymVt">
      <uo k="s:originTrace" v="n:4200731973503199911" />
    </node>
  </node>
  <node concept="312cEu" id="HA">
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="IDtoComponent_Constraints" />
    <uo k="s:originTrace" v="n:444934303231275165" />
    <node concept="3Tm1VV" id="HB" role="1B3o_S">
      <uo k="s:originTrace" v="n:444934303231275165" />
    </node>
    <node concept="3uibUv" id="HC" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:444934303231275165" />
    </node>
    <node concept="3clFbW" id="HD" role="jymVt">
      <uo k="s:originTrace" v="n:444934303231275165" />
      <node concept="3cqZAl" id="HG" role="3clF45">
        <uo k="s:originTrace" v="n:444934303231275165" />
      </node>
      <node concept="3clFbS" id="HH" role="3clF47">
        <uo k="s:originTrace" v="n:444934303231275165" />
        <node concept="XkiVB" id="HJ" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:444934303231275165" />
          <node concept="1BaE9c" id="HK" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IDtoComponent$B6" />
            <uo k="s:originTrace" v="n:444934303231275165" />
            <node concept="2YIFZM" id="HL" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:444934303231275165" />
              <node concept="1adDum" id="HM" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:444934303231275165" />
              </node>
              <node concept="1adDum" id="HN" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:444934303231275165" />
              </node>
              <node concept="1adDum" id="HO" role="37wK5m">
                <property role="1adDun" value="0x62cb964347c709cL" />
                <uo k="s:originTrace" v="n:444934303231275165" />
              </node>
              <node concept="Xl_RD" id="HP" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IDtoComponent" />
                <uo k="s:originTrace" v="n:444934303231275165" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="HI" role="1B3o_S">
        <uo k="s:originTrace" v="n:444934303231275165" />
      </node>
    </node>
    <node concept="2tJIrI" id="HE" role="jymVt">
      <uo k="s:originTrace" v="n:444934303231275165" />
    </node>
    <node concept="3clFb_" id="HF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:444934303231275165" />
      <node concept="2AHcQZ" id="HQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:444934303231275165" />
      </node>
      <node concept="3uibUv" id="HR" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:444934303231275165" />
      </node>
      <node concept="3Tm1VV" id="HS" role="1B3o_S">
        <uo k="s:originTrace" v="n:444934303231275165" />
      </node>
      <node concept="3clFbS" id="HT" role="3clF47">
        <uo k="s:originTrace" v="n:444934303231275165" />
        <node concept="3clFbF" id="HU" role="3cqZAp">
          <uo k="s:originTrace" v="n:444934303231275165" />
          <node concept="1BaE9c" id="HV" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:444934303231275165" />
            <node concept="2YIFZM" id="HW" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:444934303231275165" />
              <node concept="1adDum" id="HX" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:444934303231275165" />
              </node>
              <node concept="1adDum" id="HY" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:444934303231275165" />
              </node>
              <node concept="1adDum" id="HZ" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:444934303231275165" />
              </node>
              <node concept="Xl_RD" id="I0" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:444934303231275165" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="I1">
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <property role="TrG5h" value="IDtoDataTypeRuleContainerComponent_Constraints" />
    <uo k="s:originTrace" v="n:757976835721610824" />
    <node concept="3Tm1VV" id="I2" role="1B3o_S">
      <uo k="s:originTrace" v="n:757976835721610824" />
    </node>
    <node concept="3uibUv" id="I3" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:757976835721610824" />
    </node>
    <node concept="3clFbW" id="I4" role="jymVt">
      <uo k="s:originTrace" v="n:757976835721610824" />
      <node concept="3cqZAl" id="I7" role="3clF45">
        <uo k="s:originTrace" v="n:757976835721610824" />
      </node>
      <node concept="3clFbS" id="I8" role="3clF47">
        <uo k="s:originTrace" v="n:757976835721610824" />
        <node concept="XkiVB" id="Ia" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:757976835721610824" />
          <node concept="1BaE9c" id="Ib" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IDtoDataTypeRuleContainerComponent$5N" />
            <uo k="s:originTrace" v="n:757976835721610824" />
            <node concept="2YIFZM" id="Ic" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:757976835721610824" />
              <node concept="1adDum" id="Id" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:757976835721610824" />
              </node>
              <node concept="1adDum" id="Ie" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:757976835721610824" />
              </node>
              <node concept="1adDum" id="If" role="37wK5m">
                <property role="1adDun" value="0xa84dfea89294288L" />
                <uo k="s:originTrace" v="n:757976835721610824" />
              </node>
              <node concept="Xl_RD" id="Ig" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IDtoDataTypeRuleContainerComponent" />
                <uo k="s:originTrace" v="n:757976835721610824" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="I9" role="1B3o_S">
        <uo k="s:originTrace" v="n:757976835721610824" />
      </node>
    </node>
    <node concept="2tJIrI" id="I5" role="jymVt">
      <uo k="s:originTrace" v="n:757976835721610824" />
    </node>
    <node concept="3clFb_" id="I6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:757976835721610824" />
      <node concept="2AHcQZ" id="Ih" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:757976835721610824" />
      </node>
      <node concept="3uibUv" id="Ii" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:757976835721610824" />
      </node>
      <node concept="3Tm1VV" id="Ij" role="1B3o_S">
        <uo k="s:originTrace" v="n:757976835721610824" />
      </node>
      <node concept="3clFbS" id="Ik" role="3clF47">
        <uo k="s:originTrace" v="n:757976835721610824" />
        <node concept="3clFbF" id="Il" role="3cqZAp">
          <uo k="s:originTrace" v="n:757976835721610824" />
          <node concept="1BaE9c" id="Im" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:757976835721610824" />
            <node concept="2YIFZM" id="In" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:757976835721610824" />
              <node concept="1adDum" id="Io" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:757976835721610824" />
              </node>
              <node concept="1adDum" id="Ip" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:757976835721610824" />
              </node>
              <node concept="1adDum" id="Iq" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:757976835721610824" />
              </node>
              <node concept="Xl_RD" id="Ir" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:757976835721610824" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Is">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <property role="TrG5h" value="IDtoFlatteningRuleContainerComponent_Constraints" />
    <uo k="s:originTrace" v="n:757976835721609918" />
    <node concept="3Tm1VV" id="It" role="1B3o_S">
      <uo k="s:originTrace" v="n:757976835721609918" />
    </node>
    <node concept="3uibUv" id="Iu" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:757976835721609918" />
    </node>
    <node concept="3clFbW" id="Iv" role="jymVt">
      <uo k="s:originTrace" v="n:757976835721609918" />
      <node concept="3cqZAl" id="Iy" role="3clF45">
        <uo k="s:originTrace" v="n:757976835721609918" />
      </node>
      <node concept="3clFbS" id="Iz" role="3clF47">
        <uo k="s:originTrace" v="n:757976835721609918" />
        <node concept="XkiVB" id="I_" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:757976835721609918" />
          <node concept="1BaE9c" id="IA" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IDtoFlatteningRuleContainerComponent$4m" />
            <uo k="s:originTrace" v="n:757976835721609918" />
            <node concept="2YIFZM" id="IB" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:757976835721609918" />
              <node concept="1adDum" id="IC" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:757976835721609918" />
              </node>
              <node concept="1adDum" id="ID" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:757976835721609918" />
              </node>
              <node concept="1adDum" id="IE" role="37wK5m">
                <property role="1adDun" value="0xa84dfea89294285L" />
                <uo k="s:originTrace" v="n:757976835721609918" />
              </node>
              <node concept="Xl_RD" id="IF" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IDtoFlatteningRuleContainerComponent" />
                <uo k="s:originTrace" v="n:757976835721609918" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="I$" role="1B3o_S">
        <uo k="s:originTrace" v="n:757976835721609918" />
      </node>
    </node>
    <node concept="2tJIrI" id="Iw" role="jymVt">
      <uo k="s:originTrace" v="n:757976835721609918" />
    </node>
    <node concept="3clFb_" id="Ix" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:757976835721609918" />
      <node concept="2AHcQZ" id="IG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:757976835721609918" />
      </node>
      <node concept="3uibUv" id="IH" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:757976835721609918" />
      </node>
      <node concept="3Tm1VV" id="II" role="1B3o_S">
        <uo k="s:originTrace" v="n:757976835721609918" />
      </node>
      <node concept="3clFbS" id="IJ" role="3clF47">
        <uo k="s:originTrace" v="n:757976835721609918" />
        <node concept="3clFbF" id="IK" role="3cqZAp">
          <uo k="s:originTrace" v="n:757976835721609918" />
          <node concept="1BaE9c" id="IL" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:757976835721609918" />
            <node concept="2YIFZM" id="IM" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:757976835721609918" />
              <node concept="1adDum" id="IN" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:757976835721609918" />
              </node>
              <node concept="1adDum" id="IO" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:757976835721609918" />
              </node>
              <node concept="1adDum" id="IP" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:757976835721609918" />
              </node>
              <node concept="Xl_RD" id="IQ" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:757976835721609918" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="IR">
    <property role="3GE5qa" value="dtoRepository" />
    <property role="TrG5h" value="IDtoRepositoryComponent_Constraints" />
    <uo k="s:originTrace" v="n:2238779974575833736" />
    <node concept="3Tm1VV" id="IS" role="1B3o_S">
      <uo k="s:originTrace" v="n:2238779974575833736" />
    </node>
    <node concept="3uibUv" id="IT" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2238779974575833736" />
    </node>
    <node concept="3clFbW" id="IU" role="jymVt">
      <uo k="s:originTrace" v="n:2238779974575833736" />
      <node concept="3cqZAl" id="IX" role="3clF45">
        <uo k="s:originTrace" v="n:2238779974575833736" />
      </node>
      <node concept="3clFbS" id="IY" role="3clF47">
        <uo k="s:originTrace" v="n:2238779974575833736" />
        <node concept="XkiVB" id="J0" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2238779974575833736" />
          <node concept="1BaE9c" id="J1" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IDtoRepositoryComponent$ct" />
            <uo k="s:originTrace" v="n:2238779974575833736" />
            <node concept="2YIFZM" id="J2" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:2238779974575833736" />
              <node concept="1adDum" id="J3" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:2238779974575833736" />
              </node>
              <node concept="1adDum" id="J4" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:2238779974575833736" />
              </node>
              <node concept="1adDum" id="J5" role="37wK5m">
                <property role="1adDun" value="0x1f11be867ad9aec4L" />
                <uo k="s:originTrace" v="n:2238779974575833736" />
              </node>
              <node concept="Xl_RD" id="J6" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IDtoRepositoryComponent" />
                <uo k="s:originTrace" v="n:2238779974575833736" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="IZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:2238779974575833736" />
      </node>
    </node>
    <node concept="2tJIrI" id="IV" role="jymVt">
      <uo k="s:originTrace" v="n:2238779974575833736" />
    </node>
    <node concept="3clFb_" id="IW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:2238779974575833736" />
      <node concept="2AHcQZ" id="J7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2238779974575833736" />
      </node>
      <node concept="3uibUv" id="J8" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:2238779974575833736" />
      </node>
      <node concept="3Tm1VV" id="J9" role="1B3o_S">
        <uo k="s:originTrace" v="n:2238779974575833736" />
      </node>
      <node concept="3clFbS" id="Ja" role="3clF47">
        <uo k="s:originTrace" v="n:2238779974575833736" />
        <node concept="3clFbF" id="Jb" role="3cqZAp">
          <uo k="s:originTrace" v="n:2238779974575833736" />
          <node concept="1BaE9c" id="Jc" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:2238779974575833736" />
            <node concept="2YIFZM" id="Jd" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2238779974575833736" />
              <node concept="1adDum" id="Je" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:2238779974575833736" />
              </node>
              <node concept="1adDum" id="Jf" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:2238779974575833736" />
              </node>
              <node concept="1adDum" id="Jg" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:2238779974575833736" />
              </node>
              <node concept="Xl_RD" id="Jh" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:2238779974575833736" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Ji">
    <property role="3GE5qa" value="entity" />
    <property role="TrG5h" value="IEntityComponent_Constraints" />
    <uo k="s:originTrace" v="n:8348073396880298373" />
    <node concept="3Tm1VV" id="Jj" role="1B3o_S">
      <uo k="s:originTrace" v="n:8348073396880298373" />
    </node>
    <node concept="3uibUv" id="Jk" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8348073396880298373" />
    </node>
    <node concept="3clFbW" id="Jl" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396880298373" />
      <node concept="3cqZAl" id="Jo" role="3clF45">
        <uo k="s:originTrace" v="n:8348073396880298373" />
      </node>
      <node concept="3clFbS" id="Jp" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396880298373" />
        <node concept="XkiVB" id="Jr" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8348073396880298373" />
          <node concept="1BaE9c" id="Js" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IEntityComponent$hR" />
            <uo k="s:originTrace" v="n:8348073396880298373" />
            <node concept="2YIFZM" id="Jt" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:8348073396880298373" />
              <node concept="1adDum" id="Ju" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396880298373" />
              </node>
              <node concept="1adDum" id="Jv" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396880298373" />
              </node>
              <node concept="1adDum" id="Jw" role="37wK5m">
                <property role="1adDun" value="0x73da508643ef0772L" />
                <uo k="s:originTrace" v="n:8348073396880298373" />
              </node>
              <node concept="Xl_RD" id="Jx" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IEntityComponent" />
                <uo k="s:originTrace" v="n:8348073396880298373" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Jq" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396880298373" />
      </node>
    </node>
    <node concept="2tJIrI" id="Jm" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396880298373" />
    </node>
    <node concept="3clFb_" id="Jn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:8348073396880298373" />
      <node concept="2AHcQZ" id="Jy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8348073396880298373" />
      </node>
      <node concept="3uibUv" id="Jz" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:8348073396880298373" />
      </node>
      <node concept="3Tm1VV" id="J$" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396880298373" />
      </node>
      <node concept="3clFbS" id="J_" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396880298373" />
        <node concept="3clFbF" id="JA" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396880298373" />
          <node concept="1BaE9c" id="JB" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:8348073396880298373" />
            <node concept="2YIFZM" id="JC" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8348073396880298373" />
              <node concept="1adDum" id="JD" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396880298373" />
              </node>
              <node concept="1adDum" id="JE" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396880298373" />
              </node>
              <node concept="1adDum" id="JF" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:8348073396880298373" />
              </node>
              <node concept="Xl_RD" id="JG" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:8348073396880298373" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="JH">
    <property role="3GE5qa" value="eventContainer" />
    <property role="TrG5h" value="IEventContainerComponent_Constraints" />
    <uo k="s:originTrace" v="n:8484359793599436345" />
    <node concept="3Tm1VV" id="JI" role="1B3o_S">
      <uo k="s:originTrace" v="n:8484359793599436345" />
    </node>
    <node concept="3uibUv" id="JJ" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8484359793599436345" />
    </node>
    <node concept="3clFbW" id="JK" role="jymVt">
      <uo k="s:originTrace" v="n:8484359793599436345" />
      <node concept="3cqZAl" id="JN" role="3clF45">
        <uo k="s:originTrace" v="n:8484359793599436345" />
      </node>
      <node concept="3clFbS" id="JO" role="3clF47">
        <uo k="s:originTrace" v="n:8484359793599436345" />
        <node concept="XkiVB" id="JQ" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8484359793599436345" />
          <node concept="1BaE9c" id="JR" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IEventContainerComponent$30" />
            <uo k="s:originTrace" v="n:8484359793599436345" />
            <node concept="2YIFZM" id="JS" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:8484359793599436345" />
              <node concept="1adDum" id="JT" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8484359793599436345" />
              </node>
              <node concept="1adDum" id="JU" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8484359793599436345" />
              </node>
              <node concept="1adDum" id="JV" role="37wK5m">
                <property role="1adDun" value="0x75be8047bc19d633L" />
                <uo k="s:originTrace" v="n:8484359793599436345" />
              </node>
              <node concept="Xl_RD" id="JW" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IEventContainerComponent" />
                <uo k="s:originTrace" v="n:8484359793599436345" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="JP" role="1B3o_S">
        <uo k="s:originTrace" v="n:8484359793599436345" />
      </node>
    </node>
    <node concept="2tJIrI" id="JL" role="jymVt">
      <uo k="s:originTrace" v="n:8484359793599436345" />
    </node>
    <node concept="3clFb_" id="JM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:8484359793599436345" />
      <node concept="2AHcQZ" id="JX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8484359793599436345" />
      </node>
      <node concept="3uibUv" id="JY" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:8484359793599436345" />
      </node>
      <node concept="3Tm1VV" id="JZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:8484359793599436345" />
      </node>
      <node concept="3clFbS" id="K0" role="3clF47">
        <uo k="s:originTrace" v="n:8484359793599436345" />
        <node concept="3clFbF" id="K1" role="3cqZAp">
          <uo k="s:originTrace" v="n:8484359793599436345" />
          <node concept="1BaE9c" id="K2" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:8484359793599436345" />
            <node concept="2YIFZM" id="K3" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8484359793599436345" />
              <node concept="1adDum" id="K4" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8484359793599436345" />
              </node>
              <node concept="1adDum" id="K5" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8484359793599436345" />
              </node>
              <node concept="1adDum" id="K6" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:8484359793599436345" />
              </node>
              <node concept="Xl_RD" id="K7" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:8484359793599436345" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="K8">
    <property role="3GE5qa" value="generationSettings.event" />
    <property role="TrG5h" value="IEventGenerationSettingsComponent_Constraints" />
    <uo k="s:originTrace" v="n:6242459752536750373" />
    <node concept="3Tm1VV" id="K9" role="1B3o_S">
      <uo k="s:originTrace" v="n:6242459752536750373" />
    </node>
    <node concept="3uibUv" id="Ka" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6242459752536750373" />
    </node>
    <node concept="3clFbW" id="Kb" role="jymVt">
      <uo k="s:originTrace" v="n:6242459752536750373" />
      <node concept="3cqZAl" id="Ke" role="3clF45">
        <uo k="s:originTrace" v="n:6242459752536750373" />
      </node>
      <node concept="3clFbS" id="Kf" role="3clF47">
        <uo k="s:originTrace" v="n:6242459752536750373" />
        <node concept="XkiVB" id="Kh" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6242459752536750373" />
          <node concept="1BaE9c" id="Ki" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IEventGenerationSettingsComponent$97" />
            <uo k="s:originTrace" v="n:6242459752536750373" />
            <node concept="2YIFZM" id="Kj" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:6242459752536750373" />
              <node concept="1adDum" id="Kk" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:6242459752536750373" />
              </node>
              <node concept="1adDum" id="Kl" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:6242459752536750373" />
              </node>
              <node concept="1adDum" id="Km" role="37wK5m">
                <property role="1adDun" value="0x56a1ac122a7b6f09L" />
                <uo k="s:originTrace" v="n:6242459752536750373" />
              </node>
              <node concept="Xl_RD" id="Kn" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IEventGenerationSettingsComponent" />
                <uo k="s:originTrace" v="n:6242459752536750373" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Kg" role="1B3o_S">
        <uo k="s:originTrace" v="n:6242459752536750373" />
      </node>
    </node>
    <node concept="2tJIrI" id="Kc" role="jymVt">
      <uo k="s:originTrace" v="n:6242459752536750373" />
    </node>
    <node concept="3clFb_" id="Kd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:6242459752536750373" />
      <node concept="2AHcQZ" id="Ko" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6242459752536750373" />
      </node>
      <node concept="3uibUv" id="Kp" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:6242459752536750373" />
      </node>
      <node concept="3Tm1VV" id="Kq" role="1B3o_S">
        <uo k="s:originTrace" v="n:6242459752536750373" />
      </node>
      <node concept="3clFbS" id="Kr" role="3clF47">
        <uo k="s:originTrace" v="n:6242459752536750373" />
        <node concept="3clFbF" id="Ks" role="3cqZAp">
          <uo k="s:originTrace" v="n:6242459752536750373" />
          <node concept="1BaE9c" id="Kt" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:6242459752536750373" />
            <node concept="2YIFZM" id="Ku" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6242459752536750373" />
              <node concept="1adDum" id="Kv" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:6242459752536750373" />
              </node>
              <node concept="1adDum" id="Kw" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:6242459752536750373" />
              </node>
              <node concept="1adDum" id="Kx" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:6242459752536750373" />
              </node>
              <node concept="Xl_RD" id="Ky" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:6242459752536750373" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Kz">
    <property role="3GE5qa" value="generationSettings" />
    <property role="TrG5h" value="IGeneratorSettingsComponent_Constraints" />
    <uo k="s:originTrace" v="n:438631690759189048" />
    <node concept="3Tm1VV" id="K$" role="1B3o_S">
      <uo k="s:originTrace" v="n:438631690759189048" />
    </node>
    <node concept="3uibUv" id="K_" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:438631690759189048" />
    </node>
    <node concept="3clFbW" id="KA" role="jymVt">
      <uo k="s:originTrace" v="n:438631690759189048" />
      <node concept="3cqZAl" id="KD" role="3clF45">
        <uo k="s:originTrace" v="n:438631690759189048" />
      </node>
      <node concept="3clFbS" id="KE" role="3clF47">
        <uo k="s:originTrace" v="n:438631690759189048" />
        <node concept="XkiVB" id="KG" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:438631690759189048" />
          <node concept="1BaE9c" id="KH" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IGeneratorSettingsComponent$rl" />
            <uo k="s:originTrace" v="n:438631690759189048" />
            <node concept="2YIFZM" id="KI" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:438631690759189048" />
              <node concept="1adDum" id="KJ" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:438631690759189048" />
              </node>
              <node concept="1adDum" id="KK" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:438631690759189048" />
              </node>
              <node concept="1adDum" id="KL" role="37wK5m">
                <property role="1adDun" value="0x6165532e2ee2937L" />
                <uo k="s:originTrace" v="n:438631690759189048" />
              </node>
              <node concept="Xl_RD" id="KM" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IGeneratorSettingsComponent" />
                <uo k="s:originTrace" v="n:438631690759189048" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="KF" role="1B3o_S">
        <uo k="s:originTrace" v="n:438631690759189048" />
      </node>
    </node>
    <node concept="2tJIrI" id="KB" role="jymVt">
      <uo k="s:originTrace" v="n:438631690759189048" />
    </node>
    <node concept="3clFb_" id="KC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:438631690759189048" />
      <node concept="2AHcQZ" id="KN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:438631690759189048" />
      </node>
      <node concept="3uibUv" id="KO" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:438631690759189048" />
      </node>
      <node concept="3Tm1VV" id="KP" role="1B3o_S">
        <uo k="s:originTrace" v="n:438631690759189048" />
      </node>
      <node concept="3clFbS" id="KQ" role="3clF47">
        <uo k="s:originTrace" v="n:438631690759189048" />
        <node concept="3clFbF" id="KR" role="3cqZAp">
          <uo k="s:originTrace" v="n:438631690759189048" />
          <node concept="1BaE9c" id="KS" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:438631690759189048" />
            <node concept="2YIFZM" id="KT" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:438631690759189048" />
              <node concept="1adDum" id="KU" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:438631690759189048" />
              </node>
              <node concept="1adDum" id="KV" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:438631690759189048" />
              </node>
              <node concept="1adDum" id="KW" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:438631690759189048" />
              </node>
              <node concept="Xl_RD" id="KX" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:438631690759189048" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="KY">
    <property role="3GE5qa" value="general.identifier" />
    <property role="TrG5h" value="IOptionalValidIdentifier_Constraints" />
    <uo k="s:originTrace" v="n:444934303204347778" />
    <node concept="3Tm1VV" id="KZ" role="1B3o_S">
      <uo k="s:originTrace" v="n:444934303204347778" />
    </node>
    <node concept="3uibUv" id="L0" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:444934303204347778" />
    </node>
    <node concept="3clFbW" id="L1" role="jymVt">
      <uo k="s:originTrace" v="n:444934303204347778" />
      <node concept="3cqZAl" id="L5" role="3clF45">
        <uo k="s:originTrace" v="n:444934303204347778" />
      </node>
      <node concept="3clFbS" id="L6" role="3clF47">
        <uo k="s:originTrace" v="n:444934303204347778" />
        <node concept="XkiVB" id="L8" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="1BaE9c" id="L9" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IOptionalValidIdentifier$7w" />
            <uo k="s:originTrace" v="n:444934303204347778" />
            <node concept="2YIFZM" id="La" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:444934303204347778" />
              <node concept="1adDum" id="Lb" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:444934303204347778" />
              </node>
              <node concept="1adDum" id="Lc" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:444934303204347778" />
              </node>
              <node concept="1adDum" id="Ld" role="37wK5m">
                <property role="1adDun" value="0x62cb96432e18f7fL" />
                <uo k="s:originTrace" v="n:444934303204347778" />
              </node>
              <node concept="Xl_RD" id="Le" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IOptionalValidIdentifier" />
                <uo k="s:originTrace" v="n:444934303204347778" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="L7" role="1B3o_S">
        <uo k="s:originTrace" v="n:444934303204347778" />
      </node>
    </node>
    <node concept="2tJIrI" id="L2" role="jymVt">
      <uo k="s:originTrace" v="n:444934303204347778" />
    </node>
    <node concept="312cEu" id="L3" role="jymVt">
      <property role="TrG5h" value="Name_Property" />
      <uo k="s:originTrace" v="n:444934303204347778" />
      <node concept="3clFbW" id="Lf" role="jymVt">
        <uo k="s:originTrace" v="n:444934303204347778" />
        <node concept="3cqZAl" id="Lk" role="3clF45">
          <uo k="s:originTrace" v="n:444934303204347778" />
        </node>
        <node concept="3Tm1VV" id="Ll" role="1B3o_S">
          <uo k="s:originTrace" v="n:444934303204347778" />
        </node>
        <node concept="3clFbS" id="Lm" role="3clF47">
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="XkiVB" id="Lo" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:444934303204347778" />
            <node concept="1BaE9c" id="Lp" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:444934303204347778" />
              <node concept="2YIFZM" id="Lu" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:444934303204347778" />
                <node concept="1adDum" id="Lv" role="37wK5m">
                  <property role="1adDun" value="0xceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
                <node concept="1adDum" id="Lw" role="37wK5m">
                  <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
                <node concept="1adDum" id="Lx" role="37wK5m">
                  <property role="1adDun" value="0x110396eaaa4L" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
                <node concept="1adDum" id="Ly" role="37wK5m">
                  <property role="1adDun" value="0x110396ec041L" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
                <node concept="Xl_RD" id="Lz" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Lq" role="37wK5m">
              <ref role="3cqZAo" node="Ln" resolve="container" />
              <uo k="s:originTrace" v="n:444934303204347778" />
            </node>
            <node concept="3clFbT" id="Lr" role="37wK5m">
              <uo k="s:originTrace" v="n:444934303204347778" />
            </node>
            <node concept="3clFbT" id="Ls" role="37wK5m">
              <uo k="s:originTrace" v="n:444934303204347778" />
            </node>
            <node concept="3clFbT" id="Lt" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:444934303204347778" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="Ln" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="3uibUv" id="L$" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:444934303204347778" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Lg" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:444934303204347778" />
        <node concept="3Tm1VV" id="L_" role="1B3o_S">
          <uo k="s:originTrace" v="n:444934303204347778" />
        </node>
        <node concept="10P_77" id="LA" role="3clF45">
          <uo k="s:originTrace" v="n:444934303204347778" />
        </node>
        <node concept="37vLTG" id="LB" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="3Tqbb2" id="LG" role="1tU5fm">
            <uo k="s:originTrace" v="n:444934303204347778" />
          </node>
        </node>
        <node concept="37vLTG" id="LC" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="3uibUv" id="LH" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:444934303204347778" />
          </node>
        </node>
        <node concept="37vLTG" id="LD" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="3uibUv" id="LI" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:444934303204347778" />
          </node>
        </node>
        <node concept="3clFbS" id="LE" role="3clF47">
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="3cpWs8" id="LJ" role="3cqZAp">
            <uo k="s:originTrace" v="n:444934303204347778" />
            <node concept="3cpWsn" id="LM" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:444934303204347778" />
              <node concept="10P_77" id="LN" role="1tU5fm">
                <uo k="s:originTrace" v="n:444934303204347778" />
              </node>
              <node concept="1rXfSq" id="LO" role="33vP2m">
                <ref role="37wK5l" node="Lh" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:444934303204347778" />
                <node concept="37vLTw" id="LP" role="37wK5m">
                  <ref role="3cqZAo" node="LB" resolve="node" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
                <node concept="2YIFZM" id="LQ" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                  <node concept="37vLTw" id="LR" role="37wK5m">
                    <ref role="3cqZAo" node="LC" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:444934303204347778" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="LK" role="3cqZAp">
            <uo k="s:originTrace" v="n:444934303204347778" />
            <node concept="3clFbS" id="LS" role="3clFbx">
              <uo k="s:originTrace" v="n:444934303204347778" />
              <node concept="3clFbF" id="LU" role="3cqZAp">
                <uo k="s:originTrace" v="n:444934303204347778" />
                <node concept="2OqwBi" id="LV" role="3clFbG">
                  <uo k="s:originTrace" v="n:444934303204347778" />
                  <node concept="37vLTw" id="LW" role="2Oq$k0">
                    <ref role="3cqZAo" node="LD" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:444934303204347778" />
                  </node>
                  <node concept="liA8E" id="LX" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:444934303204347778" />
                    <node concept="2ShNRf" id="LY" role="37wK5m">
                      <uo k="s:originTrace" v="n:444934303204347778" />
                      <node concept="1pGfFk" id="LZ" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:444934303204347778" />
                        <node concept="Xl_RD" id="M0" role="37wK5m">
                          <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                          <uo k="s:originTrace" v="n:444934303204347778" />
                        </node>
                        <node concept="Xl_RD" id="M1" role="37wK5m">
                          <property role="Xl_RC" value="444934303204347834" />
                          <uo k="s:originTrace" v="n:444934303204347778" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="LT" role="3clFbw">
              <uo k="s:originTrace" v="n:444934303204347778" />
              <node concept="3y3z36" id="M2" role="3uHU7w">
                <uo k="s:originTrace" v="n:444934303204347778" />
                <node concept="10Nm6u" id="M4" role="3uHU7w">
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
                <node concept="37vLTw" id="M5" role="3uHU7B">
                  <ref role="3cqZAo" node="LD" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
              </node>
              <node concept="3fqX7Q" id="M3" role="3uHU7B">
                <uo k="s:originTrace" v="n:444934303204347778" />
                <node concept="37vLTw" id="M6" role="3fr31v">
                  <ref role="3cqZAo" node="LM" resolve="result" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="LL" role="3cqZAp">
            <uo k="s:originTrace" v="n:444934303204347778" />
            <node concept="37vLTw" id="M7" role="3clFbG">
              <ref role="3cqZAo" node="LM" resolve="result" />
              <uo k="s:originTrace" v="n:444934303204347778" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="LF" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:444934303204347778" />
        </node>
      </node>
      <node concept="2YIFZL" id="Lh" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:444934303204347778" />
        <node concept="37vLTG" id="M8" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="3Tqbb2" id="Md" role="1tU5fm">
            <uo k="s:originTrace" v="n:444934303204347778" />
          </node>
        </node>
        <node concept="37vLTG" id="M9" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="3uibUv" id="Me" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:444934303204347778" />
          </node>
        </node>
        <node concept="10P_77" id="Ma" role="3clF45">
          <uo k="s:originTrace" v="n:444934303204347778" />
        </node>
        <node concept="3Tm6S6" id="Mb" role="1B3o_S">
          <uo k="s:originTrace" v="n:444934303204347778" />
        </node>
        <node concept="3clFbS" id="Mc" role="3clF47">
          <uo k="s:originTrace" v="n:444934303204347835" />
          <node concept="3clFbJ" id="Mf" role="3cqZAp">
            <uo k="s:originTrace" v="n:444934303204349276" />
            <node concept="3clFbS" id="Mh" role="3clFbx">
              <uo k="s:originTrace" v="n:444934303204349278" />
              <node concept="3cpWs6" id="Mj" role="3cqZAp">
                <uo k="s:originTrace" v="n:444934303204354924" />
                <node concept="3clFbT" id="Mk" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                  <uo k="s:originTrace" v="n:444934303204355186" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="Mi" role="3clFbw">
              <uo k="s:originTrace" v="n:444934303204352359" />
              <node concept="37vLTw" id="Ml" role="2Oq$k0">
                <ref role="3cqZAo" node="M9" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:444934303204349887" />
              </node>
              <node concept="17RlXB" id="Mm" role="2OqNvi">
                <uo k="s:originTrace" v="n:444934303204354728" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="Mg" role="3cqZAp">
            <uo k="s:originTrace" v="n:1348602402691697434" />
            <node concept="2YIFZM" id="Mn" role="3clFbG">
              <ref role="37wK5l" to="4d66:1aRcFPNFjL5" resolve="isValidKeyword" />
              <ref role="1Pybhc" to="4d66:1aRcFPNFjIB" resolve="KeywordUtil" />
              <uo k="s:originTrace" v="n:1348602402691697589" />
              <node concept="37vLTw" id="Mo" role="37wK5m">
                <ref role="3cqZAo" node="M9" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:1348602402691698253" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Li" role="1B3o_S">
        <uo k="s:originTrace" v="n:444934303204347778" />
      </node>
      <node concept="3uibUv" id="Lj" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:444934303204347778" />
      </node>
    </node>
    <node concept="3clFb_" id="L4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:444934303204347778" />
      <node concept="3Tmbuc" id="Mp" role="1B3o_S">
        <uo k="s:originTrace" v="n:444934303204347778" />
      </node>
      <node concept="3uibUv" id="Mq" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:444934303204347778" />
        <node concept="3uibUv" id="Mt" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:444934303204347778" />
        </node>
        <node concept="3uibUv" id="Mu" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:444934303204347778" />
        </node>
      </node>
      <node concept="3clFbS" id="Mr" role="3clF47">
        <uo k="s:originTrace" v="n:444934303204347778" />
        <node concept="3cpWs8" id="Mv" role="3cqZAp">
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="3cpWsn" id="My" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:444934303204347778" />
            <node concept="3uibUv" id="Mz" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:444934303204347778" />
              <node concept="3uibUv" id="M_" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:444934303204347778" />
              </node>
              <node concept="3uibUv" id="MA" role="11_B2D">
                <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:444934303204347778" />
              </node>
            </node>
            <node concept="2ShNRf" id="M$" role="33vP2m">
              <uo k="s:originTrace" v="n:444934303204347778" />
              <node concept="1pGfFk" id="MB" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:444934303204347778" />
                <node concept="3uibUv" id="MC" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
                <node concept="3uibUv" id="MD" role="1pMfVU">
                  <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Mw" role="3cqZAp">
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="2OqwBi" id="ME" role="3clFbG">
            <uo k="s:originTrace" v="n:444934303204347778" />
            <node concept="37vLTw" id="MF" role="2Oq$k0">
              <ref role="3cqZAo" node="My" resolve="properties" />
              <uo k="s:originTrace" v="n:444934303204347778" />
            </node>
            <node concept="liA8E" id="MG" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:444934303204347778" />
              <node concept="1BaE9c" id="MH" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="name$MnvL" />
                <uo k="s:originTrace" v="n:444934303204347778" />
                <node concept="2YIFZM" id="MJ" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                  <node concept="1adDum" id="MK" role="37wK5m">
                    <property role="1adDun" value="0xceab519525ea4f22L" />
                    <uo k="s:originTrace" v="n:444934303204347778" />
                  </node>
                  <node concept="1adDum" id="ML" role="37wK5m">
                    <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                    <uo k="s:originTrace" v="n:444934303204347778" />
                  </node>
                  <node concept="1adDum" id="MM" role="37wK5m">
                    <property role="1adDun" value="0x110396eaaa4L" />
                    <uo k="s:originTrace" v="n:444934303204347778" />
                  </node>
                  <node concept="1adDum" id="MN" role="37wK5m">
                    <property role="1adDun" value="0x110396ec041L" />
                    <uo k="s:originTrace" v="n:444934303204347778" />
                  </node>
                  <node concept="Xl_RD" id="MO" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <uo k="s:originTrace" v="n:444934303204347778" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="MI" role="37wK5m">
                <uo k="s:originTrace" v="n:444934303204347778" />
                <node concept="1pGfFk" id="MP" role="2ShVmc">
                  <ref role="37wK5l" node="Lf" resolve="IOptionalValidIdentifier_Constraints.Name_Property" />
                  <uo k="s:originTrace" v="n:444934303204347778" />
                  <node concept="Xjq3P" id="MQ" role="37wK5m">
                    <uo k="s:originTrace" v="n:444934303204347778" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Mx" role="3cqZAp">
          <uo k="s:originTrace" v="n:444934303204347778" />
          <node concept="37vLTw" id="MR" role="3clFbG">
            <ref role="3cqZAo" node="My" resolve="properties" />
            <uo k="s:originTrace" v="n:444934303204347778" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Ms" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:444934303204347778" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="MS">
    <property role="3GE5qa" value="queryContainer" />
    <property role="TrG5h" value="IQueryContainerComponent_Constraints" />
    <uo k="s:originTrace" v="n:4200731973482160123" />
    <node concept="3Tm1VV" id="MT" role="1B3o_S">
      <uo k="s:originTrace" v="n:4200731973482160123" />
    </node>
    <node concept="3uibUv" id="MU" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4200731973482160123" />
    </node>
    <node concept="3clFbW" id="MV" role="jymVt">
      <uo k="s:originTrace" v="n:4200731973482160123" />
      <node concept="3cqZAl" id="MY" role="3clF45">
        <uo k="s:originTrace" v="n:4200731973482160123" />
      </node>
      <node concept="3clFbS" id="MZ" role="3clF47">
        <uo k="s:originTrace" v="n:4200731973482160123" />
        <node concept="XkiVB" id="N1" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4200731973482160123" />
          <node concept="1BaE9c" id="N2" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IQueryContainerComponent$eB" />
            <uo k="s:originTrace" v="n:4200731973482160123" />
            <node concept="2YIFZM" id="N3" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:4200731973482160123" />
              <node concept="1adDum" id="N4" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:4200731973482160123" />
              </node>
              <node concept="1adDum" id="N5" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:4200731973482160123" />
              </node>
              <node concept="1adDum" id="N6" role="37wK5m">
                <property role="1adDun" value="0x3a4bff7934079ff7L" />
                <uo k="s:originTrace" v="n:4200731973482160123" />
              </node>
              <node concept="Xl_RD" id="N7" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IQueryContainerComponent" />
                <uo k="s:originTrace" v="n:4200731973482160123" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="N0" role="1B3o_S">
        <uo k="s:originTrace" v="n:4200731973482160123" />
      </node>
    </node>
    <node concept="2tJIrI" id="MW" role="jymVt">
      <uo k="s:originTrace" v="n:4200731973482160123" />
    </node>
    <node concept="3clFb_" id="MX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:4200731973482160123" />
      <node concept="2AHcQZ" id="N8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:4200731973482160123" />
      </node>
      <node concept="3uibUv" id="N9" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:4200731973482160123" />
      </node>
      <node concept="3Tm1VV" id="Na" role="1B3o_S">
        <uo k="s:originTrace" v="n:4200731973482160123" />
      </node>
      <node concept="3clFbS" id="Nb" role="3clF47">
        <uo k="s:originTrace" v="n:4200731973482160123" />
        <node concept="3clFbF" id="Nc" role="3cqZAp">
          <uo k="s:originTrace" v="n:4200731973482160123" />
          <node concept="1BaE9c" id="Nd" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:4200731973482160123" />
            <node concept="2YIFZM" id="Ne" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4200731973482160123" />
              <node concept="1adDum" id="Nf" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:4200731973482160123" />
              </node>
              <node concept="1adDum" id="Ng" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:4200731973482160123" />
              </node>
              <node concept="1adDum" id="Nh" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:4200731973482160123" />
              </node>
              <node concept="Xl_RD" id="Ni" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:4200731973482160123" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Nj">
    <property role="3GE5qa" value="generationSettings.query" />
    <property role="TrG5h" value="IQueryGenerationSettingsComponent_Constraints" />
    <uo k="s:originTrace" v="n:6242459752539806596" />
    <node concept="3Tm1VV" id="Nk" role="1B3o_S">
      <uo k="s:originTrace" v="n:6242459752539806596" />
    </node>
    <node concept="3uibUv" id="Nl" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6242459752539806596" />
    </node>
    <node concept="3clFbW" id="Nm" role="jymVt">
      <uo k="s:originTrace" v="n:6242459752539806596" />
      <node concept="3cqZAl" id="Np" role="3clF45">
        <uo k="s:originTrace" v="n:6242459752539806596" />
      </node>
      <node concept="3clFbS" id="Nq" role="3clF47">
        <uo k="s:originTrace" v="n:6242459752539806596" />
        <node concept="XkiVB" id="Ns" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6242459752539806596" />
          <node concept="1BaE9c" id="Nt" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IQueryGenerationSettingsComponent$su" />
            <uo k="s:originTrace" v="n:6242459752539806596" />
            <node concept="2YIFZM" id="Nu" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:6242459752539806596" />
              <node concept="1adDum" id="Nv" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:6242459752539806596" />
              </node>
              <node concept="1adDum" id="Nw" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:6242459752539806596" />
              </node>
              <node concept="1adDum" id="Nx" role="37wK5m">
                <property role="1adDun" value="0x56a1ac122ac59248L" />
                <uo k="s:originTrace" v="n:6242459752539806596" />
              </node>
              <node concept="Xl_RD" id="Ny" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IQueryGenerationSettingsComponent" />
                <uo k="s:originTrace" v="n:6242459752539806596" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Nr" role="1B3o_S">
        <uo k="s:originTrace" v="n:6242459752539806596" />
      </node>
    </node>
    <node concept="2tJIrI" id="Nn" role="jymVt">
      <uo k="s:originTrace" v="n:6242459752539806596" />
    </node>
    <node concept="3clFb_" id="No" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:6242459752539806596" />
      <node concept="2AHcQZ" id="Nz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6242459752539806596" />
      </node>
      <node concept="3uibUv" id="N$" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:6242459752539806596" />
      </node>
      <node concept="3Tm1VV" id="N_" role="1B3o_S">
        <uo k="s:originTrace" v="n:6242459752539806596" />
      </node>
      <node concept="3clFbS" id="NA" role="3clF47">
        <uo k="s:originTrace" v="n:6242459752539806596" />
        <node concept="3clFbF" id="NB" role="3cqZAp">
          <uo k="s:originTrace" v="n:6242459752539806596" />
          <node concept="1BaE9c" id="NC" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:6242459752539806596" />
            <node concept="2YIFZM" id="ND" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6242459752539806596" />
              <node concept="1adDum" id="NE" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:6242459752539806596" />
              </node>
              <node concept="1adDum" id="NF" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:6242459752539806596" />
              </node>
              <node concept="1adDum" id="NG" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:6242459752539806596" />
              </node>
              <node concept="Xl_RD" id="NH" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:6242459752539806596" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="NI">
    <property role="3GE5qa" value="valueObjects" />
    <property role="TrG5h" value="IValueObjectComponent_Constraints" />
    <uo k="s:originTrace" v="n:444934303206950727" />
    <node concept="3Tm1VV" id="NJ" role="1B3o_S">
      <uo k="s:originTrace" v="n:444934303206950727" />
    </node>
    <node concept="3uibUv" id="NK" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:444934303206950727" />
    </node>
    <node concept="3clFbW" id="NL" role="jymVt">
      <uo k="s:originTrace" v="n:444934303206950727" />
      <node concept="3cqZAl" id="NO" role="3clF45">
        <uo k="s:originTrace" v="n:444934303206950727" />
      </node>
      <node concept="3clFbS" id="NP" role="3clF47">
        <uo k="s:originTrace" v="n:444934303206950727" />
        <node concept="XkiVB" id="NR" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:444934303206950727" />
          <node concept="1BaE9c" id="NS" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IValueObjectComponent$_i" />
            <uo k="s:originTrace" v="n:444934303206950727" />
            <node concept="2YIFZM" id="NT" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:444934303206950727" />
              <node concept="1adDum" id="NU" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:444934303206950727" />
              </node>
              <node concept="1adDum" id="NV" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:444934303206950727" />
              </node>
              <node concept="1adDum" id="NW" role="37wK5m">
                <property role="1adDun" value="0x62cb96433094734L" />
                <uo k="s:originTrace" v="n:444934303206950727" />
              </node>
              <node concept="Xl_RD" id="NX" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IValueObjectComponent" />
                <uo k="s:originTrace" v="n:444934303206950727" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="NQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:444934303206950727" />
      </node>
    </node>
    <node concept="2tJIrI" id="NM" role="jymVt">
      <uo k="s:originTrace" v="n:444934303206950727" />
    </node>
    <node concept="3clFb_" id="NN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:444934303206950727" />
      <node concept="2AHcQZ" id="NY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:444934303206950727" />
      </node>
      <node concept="3uibUv" id="NZ" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:444934303206950727" />
      </node>
      <node concept="3Tm1VV" id="O0" role="1B3o_S">
        <uo k="s:originTrace" v="n:444934303206950727" />
      </node>
      <node concept="3clFbS" id="O1" role="3clF47">
        <uo k="s:originTrace" v="n:444934303206950727" />
        <node concept="3clFbF" id="O2" role="3cqZAp">
          <uo k="s:originTrace" v="n:444934303206950727" />
          <node concept="1BaE9c" id="O3" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EmptyLine$_9" />
            <uo k="s:originTrace" v="n:444934303206950727" />
            <node concept="2YIFZM" id="O4" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:444934303206950727" />
              <node concept="1adDum" id="O5" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:444934303206950727" />
              </node>
              <node concept="1adDum" id="O6" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:444934303206950727" />
              </node>
              <node concept="1adDum" id="O7" role="37wK5m">
                <property role="1adDun" value="0x62cb964344649a2L" />
                <uo k="s:originTrace" v="n:444934303206950727" />
              </node>
              <node concept="Xl_RD" id="O8" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.EmptyLine" />
                <uo k="s:originTrace" v="n:444934303206950727" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="O9">
    <property role="3GE5qa" value="variable" />
    <property role="TrG5h" value="IVariable_Constraints" />
    <uo k="s:originTrace" v="n:5501684678950600446" />
    <node concept="3Tm1VV" id="Oa" role="1B3o_S">
      <uo k="s:originTrace" v="n:5501684678950600446" />
    </node>
    <node concept="3uibUv" id="Ob" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5501684678950600446" />
    </node>
    <node concept="3clFbW" id="Oc" role="jymVt">
      <uo k="s:originTrace" v="n:5501684678950600446" />
      <node concept="3cqZAl" id="Oh" role="3clF45">
        <uo k="s:originTrace" v="n:5501684678950600446" />
      </node>
      <node concept="3clFbS" id="Oi" role="3clF47">
        <uo k="s:originTrace" v="n:5501684678950600446" />
        <node concept="XkiVB" id="Ok" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5501684678950600446" />
          <node concept="1BaE9c" id="Ol" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IVariable$Zo" />
            <uo k="s:originTrace" v="n:5501684678950600446" />
            <node concept="2YIFZM" id="Om" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:5501684678950600446" />
              <node concept="1adDum" id="On" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:5501684678950600446" />
              </node>
              <node concept="1adDum" id="Oo" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:5501684678950600446" />
              </node>
              <node concept="1adDum" id="Op" role="37wK5m">
                <property role="1adDun" value="0x4c59e910fb0ed95eL" />
                <uo k="s:originTrace" v="n:5501684678950600446" />
              </node>
              <node concept="Xl_RD" id="Oq" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.IVariable" />
                <uo k="s:originTrace" v="n:5501684678950600446" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Oj" role="1B3o_S">
        <uo k="s:originTrace" v="n:5501684678950600446" />
      </node>
    </node>
    <node concept="2tJIrI" id="Od" role="jymVt">
      <uo k="s:originTrace" v="n:5501684678950600446" />
    </node>
    <node concept="3clFb_" id="Oe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:5501684678950600446" />
      <node concept="3Tm1VV" id="Or" role="1B3o_S">
        <uo k="s:originTrace" v="n:5501684678950600446" />
      </node>
      <node concept="3uibUv" id="Os" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:5501684678950600446" />
        <node concept="3uibUv" id="Ov" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:5501684678950600446" />
        </node>
        <node concept="3uibUv" id="Ow" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:5501684678950600446" />
        </node>
      </node>
      <node concept="3clFbS" id="Ot" role="3clF47">
        <uo k="s:originTrace" v="n:5501684678950600446" />
        <node concept="3clFbF" id="Ox" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678950600446" />
          <node concept="2ShNRf" id="Oy" role="3clFbG">
            <uo k="s:originTrace" v="n:5501684678950600446" />
            <node concept="YeOm9" id="Oz" role="2ShVmc">
              <uo k="s:originTrace" v="n:5501684678950600446" />
              <node concept="1Y3b0j" id="O$" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:5501684678950600446" />
                <node concept="3Tm1VV" id="O_" role="1B3o_S">
                  <uo k="s:originTrace" v="n:5501684678950600446" />
                </node>
                <node concept="3clFb_" id="OA" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:5501684678950600446" />
                  <node concept="3Tm1VV" id="OD" role="1B3o_S">
                    <uo k="s:originTrace" v="n:5501684678950600446" />
                  </node>
                  <node concept="2AHcQZ" id="OE" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:5501684678950600446" />
                  </node>
                  <node concept="3uibUv" id="OF" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:5501684678950600446" />
                  </node>
                  <node concept="37vLTG" id="OG" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:5501684678950600446" />
                    <node concept="3uibUv" id="OJ" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:5501684678950600446" />
                    </node>
                    <node concept="2AHcQZ" id="OK" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:5501684678950600446" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="OH" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:5501684678950600446" />
                    <node concept="3uibUv" id="OL" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:5501684678950600446" />
                    </node>
                    <node concept="2AHcQZ" id="OM" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:5501684678950600446" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="OI" role="3clF47">
                    <uo k="s:originTrace" v="n:5501684678950600446" />
                    <node concept="3cpWs6" id="ON" role="3cqZAp">
                      <uo k="s:originTrace" v="n:5501684678950600446" />
                      <node concept="2ShNRf" id="OO" role="3cqZAk">
                        <uo k="s:originTrace" v="n:5501684678950600451" />
                        <node concept="YeOm9" id="OP" role="2ShVmc">
                          <uo k="s:originTrace" v="n:5501684678950600451" />
                          <node concept="1Y3b0j" id="OQ" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                            <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                            <uo k="s:originTrace" v="n:5501684678950600451" />
                            <node concept="3Tm1VV" id="OR" role="1B3o_S">
                              <uo k="s:originTrace" v="n:5501684678950600451" />
                            </node>
                            <node concept="3clFb_" id="OS" role="jymVt">
                              <property role="TrG5h" value="getSearchScopeValidatorNode" />
                              <uo k="s:originTrace" v="n:5501684678950600451" />
                              <node concept="3Tm1VV" id="OU" role="1B3o_S">
                                <uo k="s:originTrace" v="n:5501684678950600451" />
                              </node>
                              <node concept="3uibUv" id="OV" role="3clF45">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                <uo k="s:originTrace" v="n:5501684678950600451" />
                              </node>
                              <node concept="3clFbS" id="OW" role="3clF47">
                                <uo k="s:originTrace" v="n:5501684678950600451" />
                                <node concept="3cpWs6" id="OY" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678950600451" />
                                  <node concept="2ShNRf" id="OZ" role="3cqZAk">
                                    <uo k="s:originTrace" v="n:5501684678950600451" />
                                    <node concept="1pGfFk" id="P0" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:5501684678950600451" />
                                      <node concept="Xl_RD" id="P1" role="37wK5m">
                                        <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                                        <uo k="s:originTrace" v="n:5501684678950600451" />
                                      </node>
                                      <node concept="Xl_RD" id="P2" role="37wK5m">
                                        <property role="Xl_RC" value="5501684678950600451" />
                                        <uo k="s:originTrace" v="n:5501684678950600451" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="OX" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:5501684678950600451" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="OT" role="jymVt">
                              <property role="TrG5h" value="createScope" />
                              <uo k="s:originTrace" v="n:5501684678950600451" />
                              <node concept="3Tm1VV" id="P3" role="1B3o_S">
                                <uo k="s:originTrace" v="n:5501684678950600451" />
                              </node>
                              <node concept="3uibUv" id="P4" role="3clF45">
                                <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                <uo k="s:originTrace" v="n:5501684678950600451" />
                              </node>
                              <node concept="37vLTG" id="P5" role="3clF46">
                                <property role="TrG5h" value="_context" />
                                <property role="3TUv4t" value="true" />
                                <uo k="s:originTrace" v="n:5501684678950600451" />
                                <node concept="3uibUv" id="P8" role="1tU5fm">
                                  <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                  <uo k="s:originTrace" v="n:5501684678950600451" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="P6" role="3clF47">
                                <uo k="s:originTrace" v="n:5501684678950600451" />
                                <node concept="3cpWs8" id="P9" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678950603946" />
                                  <node concept="3cpWsn" id="Pg" role="3cpWs9">
                                    <property role="TrG5h" value="component" />
                                    <uo k="s:originTrace" v="n:5501684678950603947" />
                                    <node concept="3Tqbb2" id="Ph" role="1tU5fm">
                                      <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                      <uo k="s:originTrace" v="n:5501684678950603915" />
                                    </node>
                                    <node concept="2OqwBi" id="Pi" role="33vP2m">
                                      <uo k="s:originTrace" v="n:5501684678950603948" />
                                      <node concept="1DoJHT" id="Pj" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getContextNode" />
                                        <uo k="s:originTrace" v="n:5501684678950603949" />
                                        <node concept="3uibUv" id="Pl" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="Pm" role="1EMhIo">
                                          <ref role="3cqZAo" node="P5" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="2Xjw5R" id="Pk" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:5501684678950603950" />
                                        <node concept="1xMEDy" id="Pn" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:5501684678950603951" />
                                          <node concept="chp4Y" id="Pp" role="ri$Ld">
                                            <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                            <uo k="s:originTrace" v="n:5501684678950603952" />
                                          </node>
                                        </node>
                                        <node concept="1xIGOp" id="Po" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:5501684678950603953" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="Pa" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678978538359" />
                                </node>
                                <node concept="Jncv_" id="Pb" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                                  <uo k="s:originTrace" v="n:5501684678950604434" />
                                  <node concept="37vLTw" id="Pq" role="JncvB">
                                    <ref role="3cqZAo" node="Pg" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678950604515" />
                                  </node>
                                  <node concept="3clFbS" id="Pr" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678950604438" />
                                    <node concept="3cpWs6" id="Pt" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:5501684678950606841" />
                                      <node concept="2OqwBi" id="Pu" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:5501684678950608275" />
                                        <node concept="Xjq3P" id="Pv" role="2Oq$k0">
                                          <ref role="1HBi2w" node="O9" resolve="IVariable_Constraints" />
                                          <uo k="s:originTrace" v="n:5501684678950607075" />
                                        </node>
                                        <node concept="liA8E" id="Pw" role="2OqNvi">
                                          <ref role="37wK5l" node="Of" resolve="_additional_provideDtoScope" />
                                          <uo k="s:originTrace" v="n:5501684678950608511" />
                                          <node concept="Jnkvi" id="Px" role="37wK5m">
                                            <ref role="1M0zk5" node="Ps" resolve="dto" />
                                            <uo k="s:originTrace" v="n:5501684678950608633" />
                                          </node>
                                          <node concept="1DoJHT" id="Py" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:5501684678950608947" />
                                            <node concept="3uibUv" id="Pz" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="P$" role="1EMhIo">
                                              <ref role="3cqZAo" node="P5" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="Ps" role="JncvA">
                                    <property role="TrG5h" value="dto" />
                                    <uo k="s:originTrace" v="n:5501684678950604440" />
                                    <node concept="2jxLKc" id="P_" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678950604441" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="Pc" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678950600620" />
                                </node>
                                <node concept="Jncv_" id="Pd" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
                                  <uo k="s:originTrace" v="n:4394792474649432825" />
                                  <node concept="37vLTw" id="PA" role="JncvB">
                                    <ref role="3cqZAo" node="Pg" resolve="component" />
                                    <uo k="s:originTrace" v="n:4394792474649432953" />
                                  </node>
                                  <node concept="3clFbS" id="PB" role="Jncv$">
                                    <uo k="s:originTrace" v="n:4394792474649432829" />
                                    <node concept="3cpWs6" id="PD" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:4394792474649434683" />
                                      <node concept="2OqwBi" id="PE" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:4394792474649436017" />
                                        <node concept="Xjq3P" id="PF" role="2Oq$k0">
                                          <ref role="1HBi2w" node="O9" resolve="IVariable_Constraints" />
                                          <uo k="s:originTrace" v="n:4394792474649434858" />
                                        </node>
                                        <node concept="liA8E" id="PG" role="2OqNvi">
                                          <ref role="37wK5l" node="Og" resolve="_additional_provideDtoFlatteningRuleScope" />
                                          <uo k="s:originTrace" v="n:4394792474649436287" />
                                          <node concept="Jnkvi" id="PH" role="37wK5m">
                                            <ref role="1M0zk5" node="PC" resolve="flatteningRuleContainer" />
                                            <uo k="s:originTrace" v="n:4394792474649436491" />
                                          </node>
                                          <node concept="1DoJHT" id="PI" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:4394792474649436701" />
                                            <node concept="3uibUv" id="PJ" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="PK" role="1EMhIo">
                                              <ref role="3cqZAo" node="P5" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="PC" role="JncvA">
                                    <property role="TrG5h" value="flatteningRuleContainer" />
                                    <uo k="s:originTrace" v="n:4394792474649432831" />
                                    <node concept="2jxLKc" id="PL" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:4394792474649432832" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="Pe" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:4394792474649432499" />
                                </node>
                                <node concept="3clFbF" id="Pf" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:5501684678950602848" />
                                  <node concept="2ShNRf" id="PM" role="3clFbG">
                                    <uo k="s:originTrace" v="n:5501684678950602844" />
                                    <node concept="1pGfFk" id="PN" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                      <uo k="s:originTrace" v="n:5501684678950603305" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="P7" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:5501684678950600451" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="OB" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:5501684678950600446" />
                </node>
                <node concept="3uibUv" id="OC" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:5501684678950600446" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Ou" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:5501684678950600446" />
      </node>
    </node>
    <node concept="3clFb_" id="Of" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoScope" />
      <uo k="s:originTrace" v="n:5501684678950604688" />
      <node concept="3uibUv" id="PO" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:5501684678950604890" />
      </node>
      <node concept="3Tm6S6" id="PP" role="1B3o_S">
        <uo k="s:originTrace" v="n:5501684678950604691" />
      </node>
      <node concept="3clFbS" id="PQ" role="3clF47">
        <uo k="s:originTrace" v="n:5501684678950604690" />
        <node concept="3clFbJ" id="PT" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678951208779" />
          <node concept="3clFbS" id="PW" role="3clFbx">
            <uo k="s:originTrace" v="n:5501684678951208781" />
            <node concept="3clFbH" id="PY" role="3cqZAp">
              <uo k="s:originTrace" v="n:5501684678987820556" />
            </node>
            <node concept="3SKdUt" id="PZ" role="3cqZAp">
              <uo k="s:originTrace" v="n:5501684678995614852" />
              <node concept="1PaTwC" id="Q3" role="1aUNEU">
                <uo k="s:originTrace" v="n:5501684678995614853" />
                <node concept="3oM_SD" id="Q4" role="1PaTwD">
                  <property role="3oM_SC" value="TODO" />
                  <uo k="s:originTrace" v="n:5501684678995615370" />
                </node>
                <node concept="3oM_SD" id="Q5" role="1PaTwD">
                  <property role="3oM_SC" value="Das" />
                  <uo k="s:originTrace" v="n:5501684678995615379" />
                </node>
                <node concept="3oM_SD" id="Q6" role="1PaTwD">
                  <property role="3oM_SC" value="noch" />
                  <uo k="s:originTrace" v="n:5501684678995615382" />
                </node>
                <node concept="3oM_SD" id="Q7" role="1PaTwD">
                  <property role="3oM_SC" value="fixen," />
                  <uo k="s:originTrace" v="n:5501684678995615386" />
                </node>
                <node concept="3oM_SD" id="Q8" role="1PaTwD">
                  <property role="3oM_SC" value="dass" />
                  <uo k="s:originTrace" v="n:5501684678995615391" />
                </node>
                <node concept="3oM_SD" id="Q9" role="1PaTwD">
                  <property role="3oM_SC" value="die" />
                  <uo k="s:originTrace" v="n:5501684678995615397" />
                </node>
                <node concept="3oM_SD" id="Qa" role="1PaTwD">
                  <property role="3oM_SC" value="ausgewählte" />
                  <uo k="s:originTrace" v="n:5501684678995615404" />
                </node>
                <node concept="3oM_SD" id="Qb" role="1PaTwD">
                  <property role="3oM_SC" value="Variable" />
                  <uo k="s:originTrace" v="n:5501684678995615412" />
                </node>
                <node concept="3oM_SD" id="Qc" role="1PaTwD">
                  <property role="3oM_SC" value="nicht" />
                  <uo k="s:originTrace" v="n:5501684678995615421" />
                </node>
                <node concept="3oM_SD" id="Qd" role="1PaTwD">
                  <property role="3oM_SC" value="angezeigt" />
                  <uo k="s:originTrace" v="n:5501684678995615431" />
                </node>
                <node concept="3oM_SD" id="Qe" role="1PaTwD">
                  <property role="3oM_SC" value="wird" />
                  <uo k="s:originTrace" v="n:5501684678995615442" />
                </node>
                <node concept="3oM_SD" id="Qf" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                  <uo k="s:originTrace" v="n:5501684678995615454" />
                </node>
                <node concept="3oM_SD" id="Qg" role="1PaTwD">
                  <property role="3oM_SC" value="dem" />
                  <uo k="s:originTrace" v="n:5501684678995615467" />
                </node>
                <node concept="3oM_SD" id="Qh" role="1PaTwD">
                  <property role="3oM_SC" value="popup" />
                  <uo k="s:originTrace" v="n:5501684678995615481" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="Q0" role="3cqZAp">
              <uo k="s:originTrace" v="n:5501684678951277249" />
              <node concept="3cpWsn" id="Qi" role="3cpWs9">
                <property role="TrG5h" value="variables" />
                <uo k="s:originTrace" v="n:5501684678951277250" />
                <node concept="A3Dl8" id="Qj" role="1tU5fm">
                  <uo k="s:originTrace" v="n:5501684678951277183" />
                  <node concept="3Tqbb2" id="Ql" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
                    <uo k="s:originTrace" v="n:5501684678951277186" />
                  </node>
                </node>
                <node concept="2OqwBi" id="Qk" role="33vP2m">
                  <uo k="s:originTrace" v="n:5501684678951277253" />
                  <node concept="37vLTw" id="Qm" role="2Oq$k0">
                    <ref role="3cqZAo" node="PR" resolve="dto" />
                    <uo k="s:originTrace" v="n:5501684678951277254" />
                  </node>
                  <node concept="2qgKlT" id="Qn" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yp5UST" resolve="getAvailableVariables" />
                    <uo k="s:originTrace" v="n:4394792474650340169" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="Q1" role="3cqZAp">
              <uo k="s:originTrace" v="n:5501684678951300302" />
              <node concept="3cpWsn" id="Qo" role="3cpWs9">
                <property role="TrG5h" value="ignoredVariables" />
                <uo k="s:originTrace" v="n:5501684678951300303" />
                <node concept="A3Dl8" id="Qp" role="1tU5fm">
                  <uo k="s:originTrace" v="n:5501684678951300082" />
                  <node concept="3Tqbb2" id="Qr" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
                    <uo k="s:originTrace" v="n:5501684678951300085" />
                  </node>
                </node>
                <node concept="2OqwBi" id="Qq" role="33vP2m">
                  <uo k="s:originTrace" v="n:5501684678951324363" />
                  <node concept="2OqwBi" id="Qs" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:5501684678954472291" />
                    <node concept="2OqwBi" id="Qu" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:5501684678951300305" />
                      <node concept="37vLTw" id="Qw" role="2Oq$k0">
                        <ref role="3cqZAo" node="PR" resolve="dto" />
                        <uo k="s:originTrace" v="n:5501684678951300306" />
                      </node>
                      <node concept="3Tsc0h" id="Qx" role="2OqNvi">
                        <ref role="3TtcxE" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
                        <uo k="s:originTrace" v="n:5501684678951300307" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="Qv" role="2OqNvi">
                      <uo k="s:originTrace" v="n:5501684678951300308" />
                      <node concept="1bVj0M" id="Qy" role="23t8la">
                        <property role="3yWfEV" value="true" />
                        <uo k="s:originTrace" v="n:5501684678951300309" />
                        <node concept="3clFbS" id="Qz" role="1bW5cS">
                          <uo k="s:originTrace" v="n:5501684678951300310" />
                          <node concept="3clFbF" id="Q_" role="3cqZAp">
                            <uo k="s:originTrace" v="n:5501684678951300311" />
                            <node concept="3y3z36" id="QA" role="3clFbG">
                              <uo k="s:originTrace" v="n:5501684678951300312" />
                              <node concept="37vLTw" id="QB" role="3uHU7B">
                                <ref role="3cqZAo" node="Q$" resolve="variableReference" />
                                <uo k="s:originTrace" v="n:5501684678951300314" />
                              </node>
                              <node concept="37vLTw" id="QC" role="3uHU7w">
                                <ref role="3cqZAo" node="PS" resolve="contextNode" />
                                <uo k="s:originTrace" v="n:5501684678994322396" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="Q$" role="1bW2Oz">
                          <property role="TrG5h" value="variableReference" />
                          <uo k="s:originTrace" v="n:5501684678951300315" />
                          <node concept="2jxLKc" id="QD" role="1tU5fm">
                            <uo k="s:originTrace" v="n:5501684678951300316" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="Qt" role="2OqNvi">
                    <uo k="s:originTrace" v="n:5501684678951333752" />
                    <node concept="1bVj0M" id="QE" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <uo k="s:originTrace" v="n:5501684678951333754" />
                      <node concept="3clFbS" id="QF" role="1bW5cS">
                        <uo k="s:originTrace" v="n:5501684678951333755" />
                        <node concept="3clFbF" id="QH" role="3cqZAp">
                          <uo k="s:originTrace" v="n:5501684678951335093" />
                          <node concept="2OqwBi" id="QI" role="3clFbG">
                            <uo k="s:originTrace" v="n:5501684678951336611" />
                            <node concept="37vLTw" id="QJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="QG" resolve="variableReference" />
                              <uo k="s:originTrace" v="n:5501684678951335092" />
                            </node>
                            <node concept="2qgKlT" id="QK" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:4LpUh3V3HC0" resolve="getReferencedVariable" />
                              <uo k="s:originTrace" v="n:5501684678951337889" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="QG" role="1bW2Oz">
                        <property role="TrG5h" value="variableReference" />
                        <uo k="s:originTrace" v="n:5501684678951333756" />
                        <node concept="2jxLKc" id="QL" role="1tU5fm">
                          <uo k="s:originTrace" v="n:5501684678951333757" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="Q2" role="3cqZAp">
              <uo k="s:originTrace" v="n:5501684678951277975" />
              <node concept="2YIFZM" id="QM" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:5501684678951278839" />
                <node concept="2OqwBi" id="QN" role="37wK5m">
                  <uo k="s:originTrace" v="n:5501684678995609380" />
                  <node concept="37vLTw" id="QO" role="2Oq$k0">
                    <ref role="3cqZAo" node="Qi" resolve="variables" />
                    <uo k="s:originTrace" v="n:5501684678995609381" />
                  </node>
                  <node concept="3zZkjj" id="QP" role="2OqNvi">
                    <uo k="s:originTrace" v="n:5501684678995609382" />
                    <node concept="1bVj0M" id="QQ" role="23t8la">
                      <uo k="s:originTrace" v="n:5501684678995609383" />
                      <node concept="3clFbS" id="QR" role="1bW5cS">
                        <uo k="s:originTrace" v="n:5501684678995609384" />
                        <node concept="3clFbF" id="QT" role="3cqZAp">
                          <uo k="s:originTrace" v="n:5501684678995609385" />
                          <node concept="3fqX7Q" id="QU" role="3clFbG">
                            <uo k="s:originTrace" v="n:5501684678995609386" />
                            <node concept="2OqwBi" id="QV" role="3fr31v">
                              <uo k="s:originTrace" v="n:5501684678995609387" />
                              <node concept="37vLTw" id="QW" role="2Oq$k0">
                                <ref role="3cqZAo" node="Qo" resolve="ignoredVariables" />
                                <uo k="s:originTrace" v="n:5501684678995609388" />
                              </node>
                              <node concept="3JPx81" id="QX" role="2OqNvi">
                                <uo k="s:originTrace" v="n:5501684678995609389" />
                                <node concept="37vLTw" id="QY" role="25WWJ7">
                                  <ref role="3cqZAo" node="QS" resolve="it" />
                                  <uo k="s:originTrace" v="n:5501684678995609390" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="QS" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:5501684678995609391" />
                        <node concept="2jxLKc" id="QZ" role="1tU5fm">
                          <uo k="s:originTrace" v="n:5501684678995609392" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="PX" role="3clFbw">
            <uo k="s:originTrace" v="n:5501684678951212208" />
            <node concept="17R0WA" id="R0" role="3uHU7w">
              <uo k="s:originTrace" v="n:5501684678951215140" />
              <node concept="359W_D" id="R2" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                <ref role="359W_F" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
                <uo k="s:originTrace" v="n:5501684678951215294" />
              </node>
              <node concept="2OqwBi" id="R3" role="3uHU7B">
                <uo k="s:originTrace" v="n:5501684678951212796" />
                <node concept="37vLTw" id="R4" role="2Oq$k0">
                  <ref role="3cqZAo" node="PS" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:5501684678951212352" />
                </node>
                <node concept="2NL2c5" id="R5" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5501684678951213392" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="R1" role="3uHU7B">
              <uo k="s:originTrace" v="n:5501684678951209833" />
              <node concept="37vLTw" id="R6" role="3uHU7B">
                <ref role="3cqZAo" node="PR" resolve="dto" />
                <uo k="s:originTrace" v="n:5501684678951208901" />
              </node>
              <node concept="37vLTw" id="R7" role="3uHU7w">
                <ref role="3cqZAo" node="PS" resolve="contextNode" />
                <uo k="s:originTrace" v="n:5501684678951210640" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="PU" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678951205649" />
        </node>
        <node concept="3clFbF" id="PV" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678950605517" />
          <node concept="2ShNRf" id="R8" role="3clFbG">
            <uo k="s:originTrace" v="n:5501684678950605515" />
            <node concept="1pGfFk" id="R9" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:5501684678950606592" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="PR" role="3clF46">
        <property role="TrG5h" value="dto" />
        <uo k="s:originTrace" v="n:5501684678950604959" />
        <node concept="3Tqbb2" id="Ra" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          <uo k="s:originTrace" v="n:5501684678950605098" />
        </node>
      </node>
      <node concept="37vLTG" id="PS" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:5501684678950605137" />
        <node concept="3Tqbb2" id="Rb" role="1tU5fm">
          <uo k="s:originTrace" v="n:5501684678950605287" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="Og" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoFlatteningRuleScope" />
      <uo k="s:originTrace" v="n:4394792474649421296" />
      <node concept="3uibUv" id="Rc" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:4394792474649421303" />
      </node>
      <node concept="3Tm6S6" id="Rd" role="1B3o_S">
        <uo k="s:originTrace" v="n:4394792474649421390" />
      </node>
      <node concept="3clFbS" id="Re" role="3clF47">
        <uo k="s:originTrace" v="n:4394792474649421304" />
        <node concept="3cpWs8" id="Rh" role="3cqZAp">
          <uo k="s:originTrace" v="n:4343604932418150456" />
          <node concept="3cpWsn" id="Rm" role="3cpWs9">
            <property role="TrG5h" value="flatteningRule" />
            <uo k="s:originTrace" v="n:4343604932418150459" />
            <node concept="3Tqbb2" id="Rn" role="1tU5fm">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
              <uo k="s:originTrace" v="n:4343604932418150454" />
            </node>
            <node concept="2OqwBi" id="Ro" role="33vP2m">
              <uo k="s:originTrace" v="n:4343604932418159762" />
              <node concept="37vLTw" id="Rp" role="2Oq$k0">
                <ref role="3cqZAo" node="Rg" resolve="contextNode" />
                <uo k="s:originTrace" v="n:4343604932418158298" />
              </node>
              <node concept="2Xjw5R" id="Rq" role="2OqNvi">
                <uo k="s:originTrace" v="n:4343604932418160977" />
                <node concept="1xMEDy" id="Rr" role="1xVPHs">
                  <uo k="s:originTrace" v="n:4343604932418160979" />
                  <node concept="chp4Y" id="Rt" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    <uo k="s:originTrace" v="n:4343604932418161808" />
                  </node>
                </node>
                <node concept="1xIGOp" id="Rs" role="1xVPHs">
                  <uo k="s:originTrace" v="n:4343604932418163276" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Ri" role="3cqZAp">
          <uo k="s:originTrace" v="n:4343604932418149717" />
        </node>
        <node concept="3clFbJ" id="Rj" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474649421305" />
          <node concept="3clFbS" id="Ru" role="3clFbx">
            <uo k="s:originTrace" v="n:4394792474649421306" />
            <node concept="3clFbH" id="Rw" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474649421307" />
            </node>
            <node concept="3SKdUt" id="Rx" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474649421308" />
              <node concept="1PaTwC" id="RA" role="1aUNEU">
                <uo k="s:originTrace" v="n:4394792474649421309" />
                <node concept="3oM_SD" id="RB" role="1PaTwD">
                  <property role="3oM_SC" value="TODO" />
                  <uo k="s:originTrace" v="n:4394792474649421310" />
                </node>
                <node concept="3oM_SD" id="RC" role="1PaTwD">
                  <property role="3oM_SC" value="Das" />
                  <uo k="s:originTrace" v="n:4394792474649421311" />
                </node>
                <node concept="3oM_SD" id="RD" role="1PaTwD">
                  <property role="3oM_SC" value="noch" />
                  <uo k="s:originTrace" v="n:4394792474649421312" />
                </node>
                <node concept="3oM_SD" id="RE" role="1PaTwD">
                  <property role="3oM_SC" value="fixen," />
                  <uo k="s:originTrace" v="n:4394792474649421313" />
                </node>
                <node concept="3oM_SD" id="RF" role="1PaTwD">
                  <property role="3oM_SC" value="dass" />
                  <uo k="s:originTrace" v="n:4394792474649421314" />
                </node>
                <node concept="3oM_SD" id="RG" role="1PaTwD">
                  <property role="3oM_SC" value="die" />
                  <uo k="s:originTrace" v="n:4394792474649421315" />
                </node>
                <node concept="3oM_SD" id="RH" role="1PaTwD">
                  <property role="3oM_SC" value="ausgewählte" />
                  <uo k="s:originTrace" v="n:4394792474649421316" />
                </node>
                <node concept="3oM_SD" id="RI" role="1PaTwD">
                  <property role="3oM_SC" value="Variable" />
                  <uo k="s:originTrace" v="n:4394792474649421317" />
                </node>
                <node concept="3oM_SD" id="RJ" role="1PaTwD">
                  <property role="3oM_SC" value="nicht" />
                  <uo k="s:originTrace" v="n:4394792474649421318" />
                </node>
                <node concept="3oM_SD" id="RK" role="1PaTwD">
                  <property role="3oM_SC" value="angezeigt" />
                  <uo k="s:originTrace" v="n:4394792474649421319" />
                </node>
                <node concept="3oM_SD" id="RL" role="1PaTwD">
                  <property role="3oM_SC" value="wird" />
                  <uo k="s:originTrace" v="n:4394792474649421320" />
                </node>
                <node concept="3oM_SD" id="RM" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                  <uo k="s:originTrace" v="n:4394792474649421321" />
                </node>
                <node concept="3oM_SD" id="RN" role="1PaTwD">
                  <property role="3oM_SC" value="dem" />
                  <uo k="s:originTrace" v="n:4394792474649421322" />
                </node>
                <node concept="3oM_SD" id="RO" role="1PaTwD">
                  <property role="3oM_SC" value="popup" />
                  <uo k="s:originTrace" v="n:4394792474649421323" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="Ry" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474649421324" />
              <node concept="3cpWsn" id="RP" role="3cpWs9">
                <property role="TrG5h" value="variables" />
                <uo k="s:originTrace" v="n:4394792474649421325" />
                <node concept="A3Dl8" id="RQ" role="1tU5fm">
                  <uo k="s:originTrace" v="n:4394792474649421326" />
                  <node concept="3Tqbb2" id="RS" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
                    <uo k="s:originTrace" v="n:4394792474649421327" />
                  </node>
                </node>
                <node concept="2OqwBi" id="RR" role="33vP2m">
                  <uo k="s:originTrace" v="n:4394792474649421330" />
                  <node concept="37vLTw" id="RT" role="2Oq$k0">
                    <ref role="3cqZAo" node="Rm" resolve="flatteningRule" />
                    <uo k="s:originTrace" v="n:4394792474649421331" />
                  </node>
                  <node concept="2qgKlT" id="RU" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yp5UST" resolve="getAvailableVariables" />
                    <uo k="s:originTrace" v="n:4394792474650343510" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="Rz" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474649421335" />
              <node concept="3cpWsn" id="RV" role="3cpWs9">
                <property role="TrG5h" value="ignoredVariables" />
                <uo k="s:originTrace" v="n:4394792474649421336" />
                <node concept="A3Dl8" id="RW" role="1tU5fm">
                  <uo k="s:originTrace" v="n:4394792474649421337" />
                  <node concept="3Tqbb2" id="RY" role="A3Ik2">
                    <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
                    <uo k="s:originTrace" v="n:4394792474649421338" />
                  </node>
                </node>
                <node concept="2OqwBi" id="RX" role="33vP2m">
                  <uo k="s:originTrace" v="n:4394792474649421339" />
                  <node concept="2OqwBi" id="RZ" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:4394792474649421340" />
                    <node concept="2OqwBi" id="S1" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4394792474649421341" />
                      <node concept="37vLTw" id="S3" role="2Oq$k0">
                        <ref role="3cqZAo" node="Rm" resolve="flatteningRule" />
                        <uo k="s:originTrace" v="n:4394792474649421342" />
                      </node>
                      <node concept="3Tsc0h" id="S4" role="2OqNvi">
                        <ref role="3TtcxE" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
                        <uo k="s:originTrace" v="n:4394792474649421343" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="S2" role="2OqNvi">
                      <uo k="s:originTrace" v="n:4394792474649421344" />
                      <node concept="1bVj0M" id="S5" role="23t8la">
                        <property role="3yWfEV" value="true" />
                        <uo k="s:originTrace" v="n:4394792474649421345" />
                        <node concept="3clFbS" id="S6" role="1bW5cS">
                          <uo k="s:originTrace" v="n:4394792474649421346" />
                          <node concept="3clFbF" id="S8" role="3cqZAp">
                            <uo k="s:originTrace" v="n:4394792474649421347" />
                            <node concept="3y3z36" id="S9" role="3clFbG">
                              <uo k="s:originTrace" v="n:4394792474649421348" />
                              <node concept="37vLTw" id="Sa" role="3uHU7B">
                                <ref role="3cqZAo" node="S7" resolve="variableReference" />
                                <uo k="s:originTrace" v="n:4394792474649421349" />
                              </node>
                              <node concept="37vLTw" id="Sb" role="3uHU7w">
                                <ref role="3cqZAo" node="Rg" resolve="contextNode" />
                                <uo k="s:originTrace" v="n:4394792474649421350" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="S7" role="1bW2Oz">
                          <property role="TrG5h" value="variableReference" />
                          <uo k="s:originTrace" v="n:4394792474649421351" />
                          <node concept="2jxLKc" id="Sc" role="1tU5fm">
                            <uo k="s:originTrace" v="n:4394792474649421352" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="S0" role="2OqNvi">
                    <uo k="s:originTrace" v="n:4394792474649421353" />
                    <node concept="1bVj0M" id="Sd" role="23t8la">
                      <property role="3yWfEV" value="true" />
                      <uo k="s:originTrace" v="n:4394792474649421354" />
                      <node concept="3clFbS" id="Se" role="1bW5cS">
                        <uo k="s:originTrace" v="n:4394792474649421355" />
                        <node concept="3clFbF" id="Sg" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4394792474649421356" />
                          <node concept="2OqwBi" id="Sh" role="3clFbG">
                            <uo k="s:originTrace" v="n:4394792474649421357" />
                            <node concept="37vLTw" id="Si" role="2Oq$k0">
                              <ref role="3cqZAo" node="Sf" resolve="variableReference" />
                              <uo k="s:originTrace" v="n:4394792474649421358" />
                            </node>
                            <node concept="2qgKlT" id="Sj" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:4LpUh3V3HC0" resolve="getReferencedVariable" />
                              <uo k="s:originTrace" v="n:4394792474649421359" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="Sf" role="1bW2Oz">
                        <property role="TrG5h" value="variableReference" />
                        <uo k="s:originTrace" v="n:4394792474649421360" />
                        <node concept="2jxLKc" id="Sk" role="1tU5fm">
                          <uo k="s:originTrace" v="n:4394792474649421361" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="R$" role="3cqZAp">
              <uo k="s:originTrace" v="n:4343604932418170190" />
            </node>
            <node concept="3cpWs6" id="R_" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474649421362" />
              <node concept="2YIFZM" id="Sl" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:4394792474649421363" />
                <node concept="2OqwBi" id="Sm" role="37wK5m">
                  <uo k="s:originTrace" v="n:4394792474649421364" />
                  <node concept="37vLTw" id="Sn" role="2Oq$k0">
                    <ref role="3cqZAo" node="RP" resolve="variables" />
                    <uo k="s:originTrace" v="n:4394792474649421365" />
                  </node>
                  <node concept="3zZkjj" id="So" role="2OqNvi">
                    <uo k="s:originTrace" v="n:4394792474649421366" />
                    <node concept="1bVj0M" id="Sp" role="23t8la">
                      <uo k="s:originTrace" v="n:4394792474649421367" />
                      <node concept="3clFbS" id="Sq" role="1bW5cS">
                        <uo k="s:originTrace" v="n:4394792474649421368" />
                        <node concept="3clFbF" id="Ss" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4394792474649421369" />
                          <node concept="3fqX7Q" id="St" role="3clFbG">
                            <uo k="s:originTrace" v="n:4394792474649421370" />
                            <node concept="2OqwBi" id="Su" role="3fr31v">
                              <uo k="s:originTrace" v="n:4394792474649421371" />
                              <node concept="37vLTw" id="Sv" role="2Oq$k0">
                                <ref role="3cqZAo" node="RV" resolve="ignoredVariables" />
                                <uo k="s:originTrace" v="n:4394792474649421372" />
                              </node>
                              <node concept="3JPx81" id="Sw" role="2OqNvi">
                                <uo k="s:originTrace" v="n:4394792474649421373" />
                                <node concept="37vLTw" id="Sx" role="25WWJ7">
                                  <ref role="3cqZAo" node="Sr" resolve="it" />
                                  <uo k="s:originTrace" v="n:4394792474649421374" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="Sr" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:4394792474649421375" />
                        <node concept="2jxLKc" id="Sy" role="1tU5fm">
                          <uo k="s:originTrace" v="n:4394792474649421376" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="Rv" role="3clFbw">
            <uo k="s:originTrace" v="n:4394792474649421377" />
            <node concept="17R0WA" id="Sz" role="3uHU7w">
              <uo k="s:originTrace" v="n:4394792474649421378" />
              <node concept="359W_D" id="S_" role="3uHU7w">
                <ref role="359W_E" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                <ref role="359W_F" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
                <uo k="s:originTrace" v="n:4394792474649421379" />
              </node>
              <node concept="2OqwBi" id="SA" role="3uHU7B">
                <uo k="s:originTrace" v="n:4394792474649421380" />
                <node concept="37vLTw" id="SB" role="2Oq$k0">
                  <ref role="3cqZAo" node="Rg" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:4394792474649421381" />
                </node>
                <node concept="2NL2c5" id="SC" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4394792474649421382" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="S$" role="3uHU7B">
              <uo k="s:originTrace" v="n:4394792474649421383" />
              <node concept="37vLTw" id="SD" role="3uHU7B">
                <ref role="3cqZAo" node="Rm" resolve="flatteningRule" />
                <uo k="s:originTrace" v="n:4394792474649421384" />
              </node>
              <node concept="37vLTw" id="SE" role="3uHU7w">
                <ref role="3cqZAo" node="Rg" resolve="contextNode" />
                <uo k="s:originTrace" v="n:4394792474649421385" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Rk" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474649421386" />
        </node>
        <node concept="3clFbF" id="Rl" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474649421387" />
          <node concept="2ShNRf" id="SF" role="3clFbG">
            <uo k="s:originTrace" v="n:4394792474649421388" />
            <node concept="1pGfFk" id="SG" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:4394792474649421389" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Rf" role="3clF46">
        <property role="TrG5h" value="flatteningRuleContainer" />
        <uo k="s:originTrace" v="n:4394792474649421297" />
        <node concept="3Tqbb2" id="SH" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
          <uo k="s:originTrace" v="n:4394792474649421298" />
        </node>
      </node>
      <node concept="37vLTG" id="Rg" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:4394792474649421299" />
        <node concept="3Tqbb2" id="SI" role="1tU5fm">
          <uo k="s:originTrace" v="n:4394792474649421300" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="SJ">
    <property role="3GE5qa" value="import" />
    <property role="TrG5h" value="ImportedType_Constraints" />
    <uo k="s:originTrace" v="n:6783047803603760813" />
    <node concept="3Tm1VV" id="SK" role="1B3o_S">
      <uo k="s:originTrace" v="n:6783047803603760813" />
    </node>
    <node concept="3uibUv" id="SL" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6783047803603760813" />
    </node>
    <node concept="3clFbW" id="SM" role="jymVt">
      <uo k="s:originTrace" v="n:6783047803603760813" />
      <node concept="3cqZAl" id="SO" role="3clF45">
        <uo k="s:originTrace" v="n:6783047803603760813" />
      </node>
      <node concept="3clFbS" id="SP" role="3clF47">
        <uo k="s:originTrace" v="n:6783047803603760813" />
        <node concept="XkiVB" id="SR" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6783047803603760813" />
          <node concept="1BaE9c" id="SS" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ImportedType$3u" />
            <uo k="s:originTrace" v="n:6783047803603760813" />
            <node concept="2YIFZM" id="ST" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6783047803603760813" />
              <node concept="1adDum" id="SU" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:6783047803603760813" />
              </node>
              <node concept="1adDum" id="SV" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:6783047803603760813" />
              </node>
              <node concept="1adDum" id="SW" role="37wK5m">
                <property role="1adDun" value="0x4f0a0db9ac16f8edL" />
                <uo k="s:originTrace" v="n:6783047803603760813" />
              </node>
              <node concept="Xl_RD" id="SX" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.ImportedType" />
                <uo k="s:originTrace" v="n:6783047803603760813" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="SQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:6783047803603760813" />
      </node>
    </node>
    <node concept="2tJIrI" id="SN" role="jymVt">
      <uo k="s:originTrace" v="n:6783047803603760813" />
    </node>
  </node>
  <node concept="312cEu" id="SY">
    <property role="3GE5qa" value="variable.parameter" />
    <property role="TrG5h" value="Parameter_Constraints" />
    <uo k="s:originTrace" v="n:6783047803574830712" />
    <node concept="3Tm1VV" id="SZ" role="1B3o_S">
      <uo k="s:originTrace" v="n:6783047803574830712" />
    </node>
    <node concept="3uibUv" id="T0" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6783047803574830712" />
    </node>
    <node concept="3clFbW" id="T1" role="jymVt">
      <uo k="s:originTrace" v="n:6783047803574830712" />
      <node concept="3cqZAl" id="T3" role="3clF45">
        <uo k="s:originTrace" v="n:6783047803574830712" />
      </node>
      <node concept="3clFbS" id="T4" role="3clF47">
        <uo k="s:originTrace" v="n:6783047803574830712" />
        <node concept="XkiVB" id="T6" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6783047803574830712" />
          <node concept="1BaE9c" id="T7" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Parameter$as" />
            <uo k="s:originTrace" v="n:6783047803574830712" />
            <node concept="2YIFZM" id="T8" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6783047803574830712" />
              <node concept="1adDum" id="T9" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:6783047803574830712" />
              </node>
              <node concept="1adDum" id="Ta" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:6783047803574830712" />
              </node>
              <node concept="1adDum" id="Tb" role="37wK5m">
                <property role="1adDun" value="0x73da508643ca7d84L" />
                <uo k="s:originTrace" v="n:6783047803574830712" />
              </node>
              <node concept="Xl_RD" id="Tc" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.Parameter" />
                <uo k="s:originTrace" v="n:6783047803574830712" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="T5" role="1B3o_S">
        <uo k="s:originTrace" v="n:6783047803574830712" />
      </node>
    </node>
    <node concept="2tJIrI" id="T2" role="jymVt">
      <uo k="s:originTrace" v="n:6783047803574830712" />
    </node>
  </node>
  <node concept="312cEu" id="Td">
    <property role="3GE5qa" value="variable.property" />
    <property role="TrG5h" value="Property_Constraints" />
    <uo k="s:originTrace" v="n:444934303204817251" />
    <node concept="3Tm1VV" id="Te" role="1B3o_S">
      <uo k="s:originTrace" v="n:444934303204817251" />
    </node>
    <node concept="3uibUv" id="Tf" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:444934303204817251" />
    </node>
    <node concept="3clFbW" id="Tg" role="jymVt">
      <uo k="s:originTrace" v="n:444934303204817251" />
      <node concept="3cqZAl" id="Ti" role="3clF45">
        <uo k="s:originTrace" v="n:444934303204817251" />
      </node>
      <node concept="3clFbS" id="Tj" role="3clF47">
        <uo k="s:originTrace" v="n:444934303204817251" />
        <node concept="XkiVB" id="Tl" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:444934303204817251" />
          <node concept="1BaE9c" id="Tm" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Property$lE" />
            <uo k="s:originTrace" v="n:444934303204817251" />
            <node concept="2YIFZM" id="Tn" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:444934303204817251" />
              <node concept="1adDum" id="To" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:444934303204817251" />
              </node>
              <node concept="1adDum" id="Tp" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:444934303204817251" />
              </node>
              <node concept="1adDum" id="Tq" role="37wK5m">
                <property role="1adDun" value="0x73da508643ec6f33L" />
                <uo k="s:originTrace" v="n:444934303204817251" />
              </node>
              <node concept="Xl_RD" id="Tr" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.Property" />
                <uo k="s:originTrace" v="n:444934303204817251" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Tk" role="1B3o_S">
        <uo k="s:originTrace" v="n:444934303204817251" />
      </node>
    </node>
    <node concept="2tJIrI" id="Th" role="jymVt">
      <uo k="s:originTrace" v="n:444934303204817251" />
    </node>
  </node>
  <node concept="312cEu" id="Ts">
    <property role="3GE5qa" value="queryContainer" />
    <property role="TrG5h" value="QueryContainer_Constraints" />
    <uo k="s:originTrace" v="n:3299868441418714162" />
    <node concept="3Tm1VV" id="Tt" role="1B3o_S">
      <uo k="s:originTrace" v="n:3299868441418714162" />
    </node>
    <node concept="3uibUv" id="Tu" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:3299868441418714162" />
    </node>
    <node concept="3clFbW" id="Tv" role="jymVt">
      <uo k="s:originTrace" v="n:3299868441418714162" />
      <node concept="3cqZAl" id="Tz" role="3clF45">
        <uo k="s:originTrace" v="n:3299868441418714162" />
      </node>
      <node concept="3clFbS" id="T$" role="3clF47">
        <uo k="s:originTrace" v="n:3299868441418714162" />
        <node concept="XkiVB" id="TA" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="1BaE9c" id="TB" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="QueryContainer$da" />
            <uo k="s:originTrace" v="n:3299868441418714162" />
            <node concept="2YIFZM" id="TC" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:3299868441418714162" />
              <node concept="1adDum" id="TD" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
              </node>
              <node concept="1adDum" id="TE" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
              </node>
              <node concept="1adDum" id="TF" role="37wK5m">
                <property role="1adDun" value="0x3a4bff7934079ff4L" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
              </node>
              <node concept="Xl_RD" id="TG" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.QueryContainer" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="T_" role="1B3o_S">
        <uo k="s:originTrace" v="n:3299868441418714162" />
      </node>
    </node>
    <node concept="2tJIrI" id="Tw" role="jymVt">
      <uo k="s:originTrace" v="n:3299868441418714162" />
    </node>
    <node concept="312cEu" id="Tx" role="jymVt">
      <property role="TrG5h" value="Type_Property" />
      <uo k="s:originTrace" v="n:3299868441418714162" />
      <node concept="3clFbW" id="TH" role="jymVt">
        <uo k="s:originTrace" v="n:3299868441418714162" />
        <node concept="3cqZAl" id="TM" role="3clF45">
          <uo k="s:originTrace" v="n:3299868441418714162" />
        </node>
        <node concept="3Tm1VV" id="TN" role="1B3o_S">
          <uo k="s:originTrace" v="n:3299868441418714162" />
        </node>
        <node concept="3clFbS" id="TO" role="3clF47">
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="XkiVB" id="TQ" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:3299868441418714162" />
            <node concept="1BaE9c" id="TR" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="type$7YBQ" />
              <uo k="s:originTrace" v="n:3299868441418714162" />
              <node concept="2YIFZM" id="TW" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
                <node concept="1adDum" id="TX" role="37wK5m">
                  <property role="1adDun" value="0xfe04f903cef2451dL" />
                  <uo k="s:originTrace" v="n:3299868441418714162" />
                </node>
                <node concept="1adDum" id="TY" role="37wK5m">
                  <property role="1adDun" value="0x9401426cad0a8857L" />
                  <uo k="s:originTrace" v="n:3299868441418714162" />
                </node>
                <node concept="1adDum" id="TZ" role="37wK5m">
                  <property role="1adDun" value="0x3a4bff7934079ff4L" />
                  <uo k="s:originTrace" v="n:3299868441418714162" />
                </node>
                <node concept="1adDum" id="U0" role="37wK5m">
                  <property role="1adDun" value="0x1f11be867ad316efL" />
                  <uo k="s:originTrace" v="n:3299868441418714162" />
                </node>
                <node concept="Xl_RD" id="U1" role="37wK5m">
                  <property role="Xl_RC" value="type" />
                  <uo k="s:originTrace" v="n:3299868441418714162" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="TS" role="37wK5m">
              <ref role="3cqZAo" node="TP" resolve="container" />
              <uo k="s:originTrace" v="n:3299868441418714162" />
            </node>
            <node concept="3clFbT" id="TT" role="37wK5m">
              <uo k="s:originTrace" v="n:3299868441418714162" />
            </node>
            <node concept="3clFbT" id="TU" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:3299868441418714162" />
            </node>
            <node concept="3clFbT" id="TV" role="37wK5m">
              <uo k="s:originTrace" v="n:3299868441418714162" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="TP" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="3uibUv" id="U2" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:3299868441418714162" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="TI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setPropertyValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:3299868441418714162" />
        <node concept="3Tm1VV" id="U3" role="1B3o_S">
          <uo k="s:originTrace" v="n:3299868441418714162" />
        </node>
        <node concept="3cqZAl" id="U4" role="3clF45">
          <uo k="s:originTrace" v="n:3299868441418714162" />
        </node>
        <node concept="37vLTG" id="U5" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="3Tqbb2" id="U9" role="1tU5fm">
            <uo k="s:originTrace" v="n:3299868441418714162" />
          </node>
        </node>
        <node concept="37vLTG" id="U6" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="3uibUv" id="Ua" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:3299868441418714162" />
          </node>
        </node>
        <node concept="2AHcQZ" id="U7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:3299868441418714162" />
        </node>
        <node concept="3clFbS" id="U8" role="3clF47">
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="3clFbF" id="Ub" role="3cqZAp">
            <uo k="s:originTrace" v="n:3299868441418714162" />
            <node concept="1rXfSq" id="Uc" role="3clFbG">
              <ref role="37wK5l" node="TJ" resolve="staticSetPropertyValue" />
              <uo k="s:originTrace" v="n:3299868441418714162" />
              <node concept="37vLTw" id="Ud" role="37wK5m">
                <ref role="3cqZAo" node="U5" resolve="node" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
              </node>
              <node concept="2YIFZM" id="Ue" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                <ref role="37wK5l" to="i8bi:7xvVBHRispT" resolve="castEnummember" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
                <node concept="37vLTw" id="Uf" role="37wK5m">
                  <ref role="3cqZAo" node="U6" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:3299868441418714162" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="TJ" role="jymVt">
        <property role="TrG5h" value="staticSetPropertyValue" />
        <uo k="s:originTrace" v="n:3299868441418714162" />
        <node concept="3clFbS" id="Ug" role="3clF47">
          <uo k="s:originTrace" v="n:5800372501171591395" />
          <node concept="3clFbF" id="Ul" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501171591546" />
            <node concept="2OqwBi" id="Uo" role="3clFbG">
              <uo k="s:originTrace" v="n:5800372501171594286" />
              <node concept="2OqwBi" id="Up" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5800372501171592439" />
                <node concept="37vLTw" id="Ur" role="2Oq$k0">
                  <ref role="3cqZAo" node="Uj" resolve="node" />
                  <uo k="s:originTrace" v="n:5800372501171591545" />
                </node>
                <node concept="3TrcHB" id="Us" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                  <uo k="s:originTrace" v="n:5800372501171593676" />
                </node>
              </node>
              <node concept="tyxLq" id="Uq" role="2OqNvi">
                <uo k="s:originTrace" v="n:5800372501171595033" />
                <node concept="37vLTw" id="Ut" role="tz02z">
                  <ref role="3cqZAo" node="Uk" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:5800372501171595082" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="Um" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501171595127" />
          </node>
          <node concept="3clFbJ" id="Un" role="3cqZAp">
            <uo k="s:originTrace" v="n:5800372501171595392" />
            <node concept="3clFbS" id="Uu" role="3clFbx">
              <uo k="s:originTrace" v="n:5800372501171595394" />
              <node concept="3clFbF" id="Uw" role="3cqZAp">
                <uo k="s:originTrace" v="n:5800372501171596823" />
                <node concept="2OqwBi" id="Ux" role="3clFbG">
                  <uo k="s:originTrace" v="n:5800372501171597716" />
                  <node concept="37vLTw" id="Uy" role="2Oq$k0">
                    <ref role="3cqZAo" node="Uj" resolve="node" />
                    <uo k="s:originTrace" v="n:5800372501171596822" />
                  </node>
                  <node concept="2qgKlT" id="Uz" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:d$u27T68WS" resolve="resetAndMergeChildRepositoryReferences" />
                    <uo k="s:originTrace" v="n:5800372501171598951" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="Uv" role="3clFbw">
              <uo k="s:originTrace" v="n:5800372501171596655" />
              <node concept="2OqwBi" id="U$" role="3fr31v">
                <uo k="s:originTrace" v="n:5800372501171596657" />
                <node concept="37vLTw" id="U_" role="2Oq$k0">
                  <ref role="3cqZAo" node="Uk" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:5800372501171596658" />
                </node>
                <node concept="21noJN" id="UA" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5800372501171596659" />
                  <node concept="21nZrQ" id="UB" role="21noJM">
                    <ref role="21nZrZ" to="3nll:1WhJCpUOLrB" resolve="QueryBlock" />
                    <uo k="s:originTrace" v="n:5800372501171596660" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="Uh" role="1B3o_S">
          <uo k="s:originTrace" v="n:3299868441418714162" />
        </node>
        <node concept="3cqZAl" id="Ui" role="3clF45">
          <uo k="s:originTrace" v="n:3299868441418714162" />
        </node>
        <node concept="37vLTG" id="Uj" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="3Tqbb2" id="UC" role="1tU5fm">
            <uo k="s:originTrace" v="n:3299868441418714162" />
          </node>
        </node>
        <node concept="37vLTG" id="Uk" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="3uibUv" id="UD" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SEnumerationLiteral" resolve="SEnumerationLiteral" />
            <uo k="s:originTrace" v="n:3299868441418714162" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="TK" role="1B3o_S">
        <uo k="s:originTrace" v="n:3299868441418714162" />
      </node>
      <node concept="3uibUv" id="TL" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:3299868441418714162" />
      </node>
    </node>
    <node concept="3clFb_" id="Ty" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:3299868441418714162" />
      <node concept="3Tmbuc" id="UE" role="1B3o_S">
        <uo k="s:originTrace" v="n:3299868441418714162" />
      </node>
      <node concept="3uibUv" id="UF" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:3299868441418714162" />
        <node concept="3uibUv" id="UI" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:3299868441418714162" />
        </node>
        <node concept="3uibUv" id="UJ" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3299868441418714162" />
        </node>
      </node>
      <node concept="3clFbS" id="UG" role="3clF47">
        <uo k="s:originTrace" v="n:3299868441418714162" />
        <node concept="3cpWs8" id="UK" role="3cqZAp">
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="3cpWsn" id="UN" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:3299868441418714162" />
            <node concept="3uibUv" id="UO" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:3299868441418714162" />
              <node concept="3uibUv" id="UQ" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
              </node>
              <node concept="3uibUv" id="UR" role="11_B2D">
                <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
              </node>
            </node>
            <node concept="2ShNRf" id="UP" role="33vP2m">
              <uo k="s:originTrace" v="n:3299868441418714162" />
              <node concept="1pGfFk" id="US" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
                <node concept="3uibUv" id="UT" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:3299868441418714162" />
                </node>
                <node concept="3uibUv" id="UU" role="1pMfVU">
                  <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:3299868441418714162" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="UL" role="3cqZAp">
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="2OqwBi" id="UV" role="3clFbG">
            <uo k="s:originTrace" v="n:3299868441418714162" />
            <node concept="37vLTw" id="UW" role="2Oq$k0">
              <ref role="3cqZAo" node="UN" resolve="properties" />
              <uo k="s:originTrace" v="n:3299868441418714162" />
            </node>
            <node concept="liA8E" id="UX" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:3299868441418714162" />
              <node concept="1BaE9c" id="UY" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="type$7YBQ" />
                <uo k="s:originTrace" v="n:3299868441418714162" />
                <node concept="2YIFZM" id="V0" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:3299868441418714162" />
                  <node concept="1adDum" id="V1" role="37wK5m">
                    <property role="1adDun" value="0xfe04f903cef2451dL" />
                    <uo k="s:originTrace" v="n:3299868441418714162" />
                  </node>
                  <node concept="1adDum" id="V2" role="37wK5m">
                    <property role="1adDun" value="0x9401426cad0a8857L" />
                    <uo k="s:originTrace" v="n:3299868441418714162" />
                  </node>
                  <node concept="1adDum" id="V3" role="37wK5m">
                    <property role="1adDun" value="0x3a4bff7934079ff4L" />
                    <uo k="s:originTrace" v="n:3299868441418714162" />
                  </node>
                  <node concept="1adDum" id="V4" role="37wK5m">
                    <property role="1adDun" value="0x1f11be867ad316efL" />
                    <uo k="s:originTrace" v="n:3299868441418714162" />
                  </node>
                  <node concept="Xl_RD" id="V5" role="37wK5m">
                    <property role="Xl_RC" value="type" />
                    <uo k="s:originTrace" v="n:3299868441418714162" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="UZ" role="37wK5m">
                <uo k="s:originTrace" v="n:3299868441418714162" />
                <node concept="1pGfFk" id="V6" role="2ShVmc">
                  <ref role="37wK5l" node="TH" resolve="QueryContainer_Constraints.Type_Property" />
                  <uo k="s:originTrace" v="n:3299868441418714162" />
                  <node concept="Xjq3P" id="V7" role="37wK5m">
                    <uo k="s:originTrace" v="n:3299868441418714162" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="UM" role="3cqZAp">
          <uo k="s:originTrace" v="n:3299868441418714162" />
          <node concept="37vLTw" id="V8" role="3clFbG">
            <ref role="3cqZAo" node="UN" resolve="properties" />
            <uo k="s:originTrace" v="n:3299868441418714162" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="UH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3299868441418714162" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="V9">
    <property role="3GE5qa" value="generationSettings.query" />
    <property role="TrG5h" value="QueryGenerationSettings_Constraints" />
    <uo k="s:originTrace" v="n:438631690776328291" />
    <node concept="3Tm1VV" id="Va" role="1B3o_S">
      <uo k="s:originTrace" v="n:438631690776328291" />
    </node>
    <node concept="3uibUv" id="Vb" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:438631690776328291" />
    </node>
    <node concept="3clFbW" id="Vc" role="jymVt">
      <uo k="s:originTrace" v="n:438631690776328291" />
      <node concept="3cqZAl" id="Ve" role="3clF45">
        <uo k="s:originTrace" v="n:438631690776328291" />
      </node>
      <node concept="3clFbS" id="Vf" role="3clF47">
        <uo k="s:originTrace" v="n:438631690776328291" />
        <node concept="XkiVB" id="Vh" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:438631690776328291" />
          <node concept="1BaE9c" id="Vi" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="QueryGenerationSettings$Em" />
            <uo k="s:originTrace" v="n:438631690776328291" />
            <node concept="2YIFZM" id="Vj" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:438631690776328291" />
              <node concept="1adDum" id="Vk" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:438631690776328291" />
              </node>
              <node concept="1adDum" id="Vl" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:438631690776328291" />
              </node>
              <node concept="1adDum" id="Vm" role="37wK5m">
                <property role="1adDun" value="0x6165532e2ee2941L" />
                <uo k="s:originTrace" v="n:438631690776328291" />
              </node>
              <node concept="Xl_RD" id="Vn" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.QueryGenerationSettings" />
                <uo k="s:originTrace" v="n:438631690776328291" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Vg" role="1B3o_S">
        <uo k="s:originTrace" v="n:438631690776328291" />
      </node>
    </node>
    <node concept="2tJIrI" id="Vd" role="jymVt">
      <uo k="s:originTrace" v="n:438631690776328291" />
    </node>
  </node>
  <node concept="312cEu" id="Vo">
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="Query_Constraints" />
    <uo k="s:originTrace" v="n:4534216578400141646" />
    <node concept="3Tm1VV" id="Vp" role="1B3o_S">
      <uo k="s:originTrace" v="n:4534216578400141646" />
    </node>
    <node concept="3uibUv" id="Vq" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4534216578400141646" />
    </node>
    <node concept="3clFbW" id="Vr" role="jymVt">
      <uo k="s:originTrace" v="n:4534216578400141646" />
      <node concept="3cqZAl" id="Vv" role="3clF45">
        <uo k="s:originTrace" v="n:4534216578400141646" />
      </node>
      <node concept="3clFbS" id="Vw" role="3clF47">
        <uo k="s:originTrace" v="n:4534216578400141646" />
        <node concept="XkiVB" id="Vy" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4534216578400141646" />
          <node concept="1BaE9c" id="Vz" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Query$nF" />
            <uo k="s:originTrace" v="n:4534216578400141646" />
            <node concept="2YIFZM" id="V$" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4534216578400141646" />
              <node concept="1adDum" id="V_" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:4534216578400141646" />
              </node>
              <node concept="1adDum" id="VA" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:4534216578400141646" />
              </node>
              <node concept="1adDum" id="VB" role="37wK5m">
                <property role="1adDun" value="0x73da5086440e2444L" />
                <uo k="s:originTrace" v="n:4534216578400141646" />
              </node>
              <node concept="Xl_RD" id="VC" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.Query" />
                <uo k="s:originTrace" v="n:4534216578400141646" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Vx" role="1B3o_S">
        <uo k="s:originTrace" v="n:4534216578400141646" />
      </node>
    </node>
    <node concept="2tJIrI" id="Vs" role="jymVt">
      <uo k="s:originTrace" v="n:4534216578400141646" />
    </node>
    <node concept="3clFb_" id="Vt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:4534216578400141646" />
      <node concept="3Tm1VV" id="VD" role="1B3o_S">
        <uo k="s:originTrace" v="n:4534216578400141646" />
      </node>
      <node concept="3uibUv" id="VE" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:4534216578400141646" />
        <node concept="3uibUv" id="VH" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:4534216578400141646" />
        </node>
        <node concept="3uibUv" id="VI" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:4534216578400141646" />
        </node>
      </node>
      <node concept="3clFbS" id="VF" role="3clF47">
        <uo k="s:originTrace" v="n:4534216578400141646" />
        <node concept="3clFbF" id="VJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578400141646" />
          <node concept="2ShNRf" id="VK" role="3clFbG">
            <uo k="s:originTrace" v="n:4534216578400141646" />
            <node concept="YeOm9" id="VL" role="2ShVmc">
              <uo k="s:originTrace" v="n:4534216578400141646" />
              <node concept="1Y3b0j" id="VM" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:4534216578400141646" />
                <node concept="3Tm1VV" id="VN" role="1B3o_S">
                  <uo k="s:originTrace" v="n:4534216578400141646" />
                </node>
                <node concept="3clFb_" id="VO" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:4534216578400141646" />
                  <node concept="3Tm1VV" id="VR" role="1B3o_S">
                    <uo k="s:originTrace" v="n:4534216578400141646" />
                  </node>
                  <node concept="2AHcQZ" id="VS" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:4534216578400141646" />
                  </node>
                  <node concept="3uibUv" id="VT" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:4534216578400141646" />
                  </node>
                  <node concept="37vLTG" id="VU" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:4534216578400141646" />
                    <node concept="3uibUv" id="VX" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:4534216578400141646" />
                    </node>
                    <node concept="2AHcQZ" id="VY" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:4534216578400141646" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="VV" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:4534216578400141646" />
                    <node concept="3uibUv" id="VZ" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:4534216578400141646" />
                    </node>
                    <node concept="2AHcQZ" id="W0" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:4534216578400141646" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="VW" role="3clF47">
                    <uo k="s:originTrace" v="n:4534216578400141646" />
                    <node concept="3cpWs6" id="W1" role="3cqZAp">
                      <uo k="s:originTrace" v="n:4534216578400141646" />
                      <node concept="2ShNRf" id="W2" role="3cqZAk">
                        <uo k="s:originTrace" v="n:8914850872824045921" />
                        <node concept="YeOm9" id="W3" role="2ShVmc">
                          <uo k="s:originTrace" v="n:8914850872824045921" />
                          <node concept="1Y3b0j" id="W4" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                            <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                            <uo k="s:originTrace" v="n:8914850872824045921" />
                            <node concept="3Tm1VV" id="W5" role="1B3o_S">
                              <uo k="s:originTrace" v="n:8914850872824045921" />
                            </node>
                            <node concept="3clFb_" id="W6" role="jymVt">
                              <property role="TrG5h" value="getSearchScopeValidatorNode" />
                              <uo k="s:originTrace" v="n:8914850872824045921" />
                              <node concept="3Tm1VV" id="W8" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8914850872824045921" />
                              </node>
                              <node concept="3uibUv" id="W9" role="3clF45">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                <uo k="s:originTrace" v="n:8914850872824045921" />
                              </node>
                              <node concept="3clFbS" id="Wa" role="3clF47">
                                <uo k="s:originTrace" v="n:8914850872824045921" />
                                <node concept="3cpWs6" id="Wc" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8914850872824045921" />
                                  <node concept="2ShNRf" id="Wd" role="3cqZAk">
                                    <uo k="s:originTrace" v="n:8914850872824045921" />
                                    <node concept="1pGfFk" id="We" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8914850872824045921" />
                                      <node concept="Xl_RD" id="Wf" role="37wK5m">
                                        <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                                        <uo k="s:originTrace" v="n:8914850872824045921" />
                                      </node>
                                      <node concept="Xl_RD" id="Wg" role="37wK5m">
                                        <property role="Xl_RC" value="8914850872824045921" />
                                        <uo k="s:originTrace" v="n:8914850872824045921" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="Wb" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8914850872824045921" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="W7" role="jymVt">
                              <property role="TrG5h" value="createScope" />
                              <uo k="s:originTrace" v="n:8914850872824045921" />
                              <node concept="3Tm1VV" id="Wh" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8914850872824045921" />
                              </node>
                              <node concept="3uibUv" id="Wi" role="3clF45">
                                <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                <uo k="s:originTrace" v="n:8914850872824045921" />
                              </node>
                              <node concept="37vLTG" id="Wj" role="3clF46">
                                <property role="TrG5h" value="_context" />
                                <property role="3TUv4t" value="true" />
                                <uo k="s:originTrace" v="n:8914850872824045921" />
                                <node concept="3uibUv" id="Wm" role="1tU5fm">
                                  <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                  <uo k="s:originTrace" v="n:8914850872824045921" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="Wk" role="3clF47">
                                <uo k="s:originTrace" v="n:8914850872824045921" />
                                <node concept="3cpWs8" id="Wn" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8914850872824048084" />
                                  <node concept="3cpWsn" id="Ws" role="3cpWs9">
                                    <property role="TrG5h" value="queryMethods" />
                                    <uo k="s:originTrace" v="n:8914850872824048085" />
                                    <node concept="3Tqbb2" id="Wt" role="1tU5fm">
                                      <ref role="ehGHo" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
                                      <uo k="s:originTrace" v="n:8914850872824048060" />
                                    </node>
                                    <node concept="2OqwBi" id="Wu" role="33vP2m">
                                      <uo k="s:originTrace" v="n:8914850872824048086" />
                                      <node concept="1DoJHT" id="Wv" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getContextNode" />
                                        <uo k="s:originTrace" v="n:8914850872824048087" />
                                        <node concept="3uibUv" id="Wx" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="Wy" role="1EMhIo">
                                          <ref role="3cqZAo" node="Wj" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="2Xjw5R" id="Ww" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:8914850872824048088" />
                                        <node concept="1xMEDy" id="Wz" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:8914850872824048089" />
                                          <node concept="chp4Y" id="W_" role="ri$Ld">
                                            <ref role="cht4Q" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
                                            <uo k="s:originTrace" v="n:8914850872824048090" />
                                          </node>
                                        </node>
                                        <node concept="1xIGOp" id="W$" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:8914850872824048091" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="Wo" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8914850872824046411" />
                                </node>
                                <node concept="3clFbJ" id="Wp" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8914850872824048920" />
                                  <node concept="3clFbS" id="WA" role="3clFbx">
                                    <uo k="s:originTrace" v="n:8914850872824048922" />
                                    <node concept="3cpWs6" id="WC" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:8914850872824080553" />
                                      <node concept="2OqwBi" id="WD" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:8914850872824080833" />
                                        <node concept="Xjq3P" id="WE" role="2Oq$k0">
                                          <ref role="1HBi2w" node="Vo" resolve="Query_Constraints" />
                                          <uo k="s:originTrace" v="n:8914850872824080836" />
                                        </node>
                                        <node concept="liA8E" id="WF" role="2OqNvi">
                                          <ref role="37wK5l" node="Vu" resolve="_additional_provideQueryMethodsScope" />
                                          <uo k="s:originTrace" v="n:8914850872824080838" />
                                          <node concept="37vLTw" id="WG" role="37wK5m">
                                            <ref role="3cqZAo" node="Ws" resolve="queryMethods" />
                                            <uo k="s:originTrace" v="n:8914850872824080976" />
                                          </node>
                                          <node concept="1DoJHT" id="WH" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:8914850872824081108" />
                                            <node concept="3uibUv" id="WI" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="WJ" role="1EMhIo">
                                              <ref role="3cqZAo" node="Wj" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="WB" role="3clFbw">
                                    <uo k="s:originTrace" v="n:8914850872824049867" />
                                    <node concept="37vLTw" id="WK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="Ws" resolve="queryMethods" />
                                      <uo k="s:originTrace" v="n:8914850872824048991" />
                                    </node>
                                    <node concept="3x8VRR" id="WL" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:8914850872824050695" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="Wq" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8914850872824048285" />
                                </node>
                                <node concept="3clFbF" id="Wr" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8914850872824048340" />
                                  <node concept="2ShNRf" id="WM" role="3clFbG">
                                    <uo k="s:originTrace" v="n:8914850872824048341" />
                                    <node concept="1pGfFk" id="WN" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                      <uo k="s:originTrace" v="n:8914850872824048342" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="Wl" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8914850872824045921" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="VP" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:4534216578400141646" />
                </node>
                <node concept="3uibUv" id="VQ" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:4534216578400141646" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="VG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:4534216578400141646" />
      </node>
    </node>
    <node concept="3clFb_" id="Vu" role="jymVt">
      <property role="TrG5h" value="_additional_provideQueryMethodsScope" />
      <uo k="s:originTrace" v="n:8914850872824051012" />
      <node concept="3uibUv" id="WO" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:8914850872824051214" />
      </node>
      <node concept="3Tm6S6" id="WP" role="1B3o_S">
        <uo k="s:originTrace" v="n:8914850872824051015" />
      </node>
      <node concept="3clFbS" id="WQ" role="3clF47">
        <uo k="s:originTrace" v="n:8914850872824051014" />
        <node concept="3cpWs8" id="WT" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578414129766" />
          <node concept="3cpWsn" id="X1" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <uo k="s:originTrace" v="n:4534216578414129767" />
            <node concept="3Tqbb2" id="X2" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
              <uo k="s:originTrace" v="n:4534216578414129688" />
            </node>
            <node concept="2OqwBi" id="X3" role="33vP2m">
              <uo k="s:originTrace" v="n:4534216578414129768" />
              <node concept="37vLTw" id="X4" role="2Oq$k0">
                <ref role="3cqZAo" node="WR" resolve="node" />
                <uo k="s:originTrace" v="n:4534216578414129769" />
              </node>
              <node concept="2qgKlT" id="X5" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                <uo k="s:originTrace" v="n:4534216578414129770" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="WU" role="3cqZAp">
          <uo k="s:originTrace" v="n:3650294462798270588" />
          <node concept="3cpWsn" id="X6" role="3cpWs9">
            <property role="TrG5h" value="allowedDto" />
            <uo k="s:originTrace" v="n:3650294462798270589" />
            <node concept="3Tqbb2" id="X7" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
              <uo k="s:originTrace" v="n:3650294462798270464" />
            </node>
            <node concept="2OqwBi" id="X8" role="33vP2m">
              <uo k="s:originTrace" v="n:3650294462798300813" />
              <node concept="2OqwBi" id="X9" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3650294462798299524" />
                <node concept="2OqwBi" id="Xb" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3650294462798270590" />
                  <node concept="37vLTw" id="Xd" role="2Oq$k0">
                    <ref role="3cqZAo" node="WR" resolve="node" />
                    <uo k="s:originTrace" v="n:3650294462798270591" />
                  </node>
                  <node concept="2qgKlT" id="Xe" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5A5sGroI1gZ" resolve="dtoRepository" />
                    <uo k="s:originTrace" v="n:3650294462798270592" />
                  </node>
                </node>
                <node concept="3TrEf2" id="Xc" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                  <uo k="s:originTrace" v="n:3650294462798300157" />
                </node>
              </node>
              <node concept="3TrEf2" id="Xa" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5J$7" resolve="dto" />
                <uo k="s:originTrace" v="n:3650294462798301454" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="WV" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578414132545" />
          <node concept="3cpWsn" id="Xf" role="3cpWs9">
            <property role="TrG5h" value="queries" />
            <uo k="s:originTrace" v="n:4534216578414132546" />
            <node concept="A3Dl8" id="Xg" role="1tU5fm">
              <uo k="s:originTrace" v="n:4534216578414132465" />
              <node concept="3Tqbb2" id="Xi" role="A3Ik2">
                <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
                <uo k="s:originTrace" v="n:4534216578414132468" />
              </node>
            </node>
            <node concept="2OqwBi" id="Xh" role="33vP2m">
              <uo k="s:originTrace" v="n:4534216578414132547" />
              <node concept="37vLTw" id="Xj" role="2Oq$k0">
                <ref role="3cqZAo" node="X1" resolve="boundedContext" />
                <uo k="s:originTrace" v="n:4534216578414132548" />
              </node>
              <node concept="2qgKlT" id="Xk" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEjcqo" resolve="queries" />
                <uo k="s:originTrace" v="n:4534216578414132549" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="WW" role="3cqZAp">
          <uo k="s:originTrace" v="n:4534216578414124758" />
          <node concept="3cpWsn" id="Xl" role="3cpWs9">
            <property role="TrG5h" value="referencedQueries" />
            <uo k="s:originTrace" v="n:4534216578414124759" />
            <node concept="A3Dl8" id="Xm" role="1tU5fm">
              <uo k="s:originTrace" v="n:3650294462798916897" />
              <node concept="3Tqbb2" id="Xo" role="A3Ik2">
                <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
                <uo k="s:originTrace" v="n:3650294462798916899" />
              </node>
            </node>
            <node concept="2OqwBi" id="Xn" role="33vP2m">
              <uo k="s:originTrace" v="n:4534216578414124760" />
              <node concept="2qgKlT" id="Xp" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhF3LIJ" resolve="findReferencedQueriesInDtoRepositories" />
                <uo k="s:originTrace" v="n:4534216578414124764" />
              </node>
              <node concept="37vLTw" id="Xq" role="2Oq$k0">
                <ref role="3cqZAo" node="X1" resolve="boundedContext" />
                <uo k="s:originTrace" v="n:4534216578414133947" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="WX" role="3cqZAp">
          <uo k="s:originTrace" v="n:3650294462798899998" />
        </node>
        <node concept="3cpWs8" id="WY" role="3cqZAp">
          <uo k="s:originTrace" v="n:8914850872824070068" />
          <node concept="3cpWsn" id="Xr" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <uo k="s:originTrace" v="n:8914850872824070071" />
            <node concept="A3Dl8" id="Xs" role="1tU5fm">
              <uo k="s:originTrace" v="n:8914850872824070065" />
              <node concept="3Tqbb2" id="Xu" role="A3Ik2">
                <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
                <uo k="s:originTrace" v="n:8914850872824070322" />
              </node>
            </node>
            <node concept="2OqwBi" id="Xt" role="33vP2m">
              <uo k="s:originTrace" v="n:4534216578414136537" />
              <node concept="37vLTw" id="Xv" role="2Oq$k0">
                <ref role="3cqZAo" node="Xf" resolve="queries" />
                <uo k="s:originTrace" v="n:4534216578414135380" />
              </node>
              <node concept="3zZkjj" id="Xw" role="2OqNvi">
                <uo k="s:originTrace" v="n:4534216578414137502" />
                <node concept="1bVj0M" id="Xx" role="23t8la">
                  <property role="3yWfEV" value="true" />
                  <uo k="s:originTrace" v="n:4534216578414137504" />
                  <node concept="3clFbS" id="Xy" role="1bW5cS">
                    <uo k="s:originTrace" v="n:4534216578414137505" />
                    <node concept="3clFbF" id="X$" role="3cqZAp">
                      <uo k="s:originTrace" v="n:4534216578414138090" />
                      <node concept="22lmx$" id="X_" role="3clFbG">
                        <uo k="s:originTrace" v="n:4534216578414143636" />
                        <node concept="3clFbC" id="XA" role="3uHU7B">
                          <uo k="s:originTrace" v="n:4534216578414139579" />
                          <node concept="37vLTw" id="XC" role="3uHU7B">
                            <ref role="3cqZAo" node="Xz" resolve="query" />
                            <uo k="s:originTrace" v="n:4534216578414138089" />
                          </node>
                          <node concept="2OqwBi" id="XD" role="3uHU7w">
                            <uo k="s:originTrace" v="n:4534216578414142103" />
                            <node concept="1PxgMI" id="XE" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <uo k="s:originTrace" v="n:8914850872824064833" />
                              <node concept="chp4Y" id="XG" role="3oSUPX">
                                <ref role="cht4Q" to="3nll:7fqk8p43yh7" resolve="QueryReference" />
                                <uo k="s:originTrace" v="n:8914850872824065243" />
                              </node>
                              <node concept="37vLTw" id="XH" role="1m5AlR">
                                <ref role="3cqZAo" node="WS" resolve="contextNode" />
                                <uo k="s:originTrace" v="n:4534216578414140758" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="XF" role="2OqNvi">
                              <ref role="3Tt5mk" to="3nll:7fqk8p43yh8" resolve="query" />
                              <uo k="s:originTrace" v="n:4534216578414143065" />
                            </node>
                          </node>
                        </node>
                        <node concept="1eOMI4" id="XB" role="3uHU7w">
                          <uo k="s:originTrace" v="n:3650294462798283667" />
                          <node concept="1Wc70l" id="XI" role="1eOMHV">
                            <uo k="s:originTrace" v="n:3650294462798286043" />
                            <node concept="2OqwBi" id="XJ" role="3uHU7w">
                              <uo k="s:originTrace" v="n:3650294462798288243" />
                              <node concept="37vLTw" id="XL" role="2Oq$k0">
                                <ref role="3cqZAo" node="Xz" resolve="query" />
                                <uo k="s:originTrace" v="n:3650294462798286597" />
                              </node>
                              <node concept="2qgKlT" id="XM" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:3aCsR_csrN7" resolve="areOnlyValidDtoReferencesUsed" />
                                <uo k="s:originTrace" v="n:3650294462798291820" />
                                <node concept="37vLTw" id="XN" role="37wK5m">
                                  <ref role="3cqZAo" node="X6" resolve="allowedDto" />
                                  <uo k="s:originTrace" v="n:3650294462798292738" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="XK" role="3uHU7B">
                              <uo k="s:originTrace" v="n:4534216578414152690" />
                              <node concept="2OqwBi" id="XO" role="3fr31v">
                                <uo k="s:originTrace" v="n:4534216578414152692" />
                                <node concept="37vLTw" id="XP" role="2Oq$k0">
                                  <ref role="3cqZAo" node="Xl" resolve="referencedQueries" />
                                  <uo k="s:originTrace" v="n:4534216578414152693" />
                                </node>
                                <node concept="3JPx81" id="XQ" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:4534216578414152694" />
                                  <node concept="37vLTw" id="XR" role="25WWJ7">
                                    <ref role="3cqZAo" node="Xz" resolve="query" />
                                    <uo k="s:originTrace" v="n:4534216578414152695" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="Xz" role="1bW2Oz">
                    <property role="TrG5h" value="query" />
                    <uo k="s:originTrace" v="n:4534216578414137506" />
                    <node concept="2jxLKc" id="XS" role="1tU5fm">
                      <uo k="s:originTrace" v="n:4534216578414137507" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="WZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:8914850872824072524" />
        </node>
        <node concept="3clFbF" id="X0" role="3cqZAp">
          <uo k="s:originTrace" v="n:8914850872824073107" />
          <node concept="2YIFZM" id="XT" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <uo k="s:originTrace" v="n:8914850872824073881" />
            <node concept="37vLTw" id="XU" role="37wK5m">
              <ref role="3cqZAo" node="Xr" resolve="result" />
              <uo k="s:originTrace" v="n:8914850872824076125" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="WR" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8914850872824051283" />
        <node concept="3Tqbb2" id="XV" role="1tU5fm">
          <ref role="ehGHo" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
          <uo k="s:originTrace" v="n:8914850872824051344" />
        </node>
      </node>
      <node concept="37vLTG" id="WS" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:8914850872824051401" />
        <node concept="3Tqbb2" id="XW" role="1tU5fm">
          <uo k="s:originTrace" v="n:8914850872824051583" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="XX">
    <property role="3GE5qa" value="valueObjects" />
    <property role="TrG5h" value="ValueObjectReference_Constraints" />
    <uo k="s:originTrace" v="n:9138126515622782665" />
    <node concept="3Tm1VV" id="XY" role="1B3o_S">
      <uo k="s:originTrace" v="n:9138126515622782665" />
    </node>
    <node concept="3uibUv" id="XZ" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:9138126515622782665" />
    </node>
    <node concept="3clFbW" id="Y0" role="jymVt">
      <uo k="s:originTrace" v="n:9138126515622782665" />
      <node concept="3cqZAl" id="Y3" role="3clF45">
        <uo k="s:originTrace" v="n:9138126515622782665" />
      </node>
      <node concept="3clFbS" id="Y4" role="3clF47">
        <uo k="s:originTrace" v="n:9138126515622782665" />
        <node concept="XkiVB" id="Y6" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:9138126515622782665" />
          <node concept="1BaE9c" id="Y7" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ValueObjectReference$jW" />
            <uo k="s:originTrace" v="n:9138126515622782665" />
            <node concept="2YIFZM" id="Y8" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:9138126515622782665" />
              <node concept="1adDum" id="Y9" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:9138126515622782665" />
              </node>
              <node concept="1adDum" id="Ya" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:9138126515622782665" />
              </node>
              <node concept="1adDum" id="Yb" role="37wK5m">
                <property role="1adDun" value="0x4f0a0db9ac16f8faL" />
                <uo k="s:originTrace" v="n:9138126515622782665" />
              </node>
              <node concept="Xl_RD" id="Yc" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.ValueObjectReference" />
                <uo k="s:originTrace" v="n:9138126515622782665" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Y5" role="1B3o_S">
        <uo k="s:originTrace" v="n:9138126515622782665" />
      </node>
    </node>
    <node concept="2tJIrI" id="Y1" role="jymVt">
      <uo k="s:originTrace" v="n:9138126515622782665" />
    </node>
    <node concept="3clFb_" id="Y2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:9138126515622782665" />
      <node concept="3Tm1VV" id="Yd" role="1B3o_S">
        <uo k="s:originTrace" v="n:9138126515622782665" />
      </node>
      <node concept="3uibUv" id="Ye" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:9138126515622782665" />
        <node concept="3uibUv" id="Yh" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:9138126515622782665" />
        </node>
        <node concept="3uibUv" id="Yi" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:9138126515622782665" />
        </node>
      </node>
      <node concept="3clFbS" id="Yf" role="3clF47">
        <uo k="s:originTrace" v="n:9138126515622782665" />
        <node concept="3clFbF" id="Yj" role="3cqZAp">
          <uo k="s:originTrace" v="n:9138126515622782665" />
          <node concept="2ShNRf" id="Yk" role="3clFbG">
            <uo k="s:originTrace" v="n:9138126515622782665" />
            <node concept="YeOm9" id="Yl" role="2ShVmc">
              <uo k="s:originTrace" v="n:9138126515622782665" />
              <node concept="1Y3b0j" id="Ym" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:9138126515622782665" />
                <node concept="3Tm1VV" id="Yn" role="1B3o_S">
                  <uo k="s:originTrace" v="n:9138126515622782665" />
                </node>
                <node concept="3clFb_" id="Yo" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:9138126515622782665" />
                  <node concept="3Tm1VV" id="Yr" role="1B3o_S">
                    <uo k="s:originTrace" v="n:9138126515622782665" />
                  </node>
                  <node concept="2AHcQZ" id="Ys" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:9138126515622782665" />
                  </node>
                  <node concept="3uibUv" id="Yt" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:9138126515622782665" />
                  </node>
                  <node concept="37vLTG" id="Yu" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:9138126515622782665" />
                    <node concept="3uibUv" id="Yx" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:9138126515622782665" />
                    </node>
                    <node concept="2AHcQZ" id="Yy" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:9138126515622782665" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="Yv" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:9138126515622782665" />
                    <node concept="3uibUv" id="Yz" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:9138126515622782665" />
                    </node>
                    <node concept="2AHcQZ" id="Y$" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:9138126515622782665" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="Yw" role="3clF47">
                    <uo k="s:originTrace" v="n:9138126515622782665" />
                    <node concept="3cpWs6" id="Y_" role="3cqZAp">
                      <uo k="s:originTrace" v="n:9138126515622782665" />
                      <node concept="2YIFZM" id="YA" role="3cqZAk">
                        <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
                        <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                        <uo k="s:originTrace" v="n:8348073396877426382" />
                        <node concept="35c_gC" id="YB" role="37wK5m">
                          <ref role="35c_gD" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
                          <uo k="s:originTrace" v="n:8348073396877426382" />
                        </node>
                        <node concept="2ShNRf" id="YC" role="37wK5m">
                          <uo k="s:originTrace" v="n:8348073396877426382" />
                          <node concept="1pGfFk" id="YD" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:8348073396877426382" />
                            <node concept="Xl_RD" id="YE" role="37wK5m">
                              <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                              <uo k="s:originTrace" v="n:8348073396877426382" />
                            </node>
                            <node concept="Xl_RD" id="YF" role="37wK5m">
                              <property role="Xl_RC" value="8348073396877426382" />
                              <uo k="s:originTrace" v="n:8348073396877426382" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="Yp" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:9138126515622782665" />
                </node>
                <node concept="3uibUv" id="Yq" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:9138126515622782665" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Yg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:9138126515622782665" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="YG">
    <property role="3GE5qa" value="valueObjects" />
    <property role="TrG5h" value="ValueObject_Constraints" />
    <uo k="s:originTrace" v="n:8348073396877111754" />
    <node concept="3Tm1VV" id="YH" role="1B3o_S">
      <uo k="s:originTrace" v="n:8348073396877111754" />
    </node>
    <node concept="3uibUv" id="YI" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8348073396877111754" />
    </node>
    <node concept="3clFbW" id="YJ" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396877111754" />
      <node concept="3cqZAl" id="YS" role="3clF45">
        <uo k="s:originTrace" v="n:8348073396877111754" />
      </node>
      <node concept="3clFbS" id="YT" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396877111754" />
        <node concept="XkiVB" id="YV" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8348073396877111754" />
          <node concept="1BaE9c" id="YW" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ValueObject$iv" />
            <uo k="s:originTrace" v="n:8348073396877111754" />
            <node concept="2YIFZM" id="YX" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8348073396877111754" />
              <node concept="1adDum" id="YY" role="37wK5m">
                <property role="1adDun" value="0xfe04f903cef2451dL" />
                <uo k="s:originTrace" v="n:8348073396877111754" />
              </node>
              <node concept="1adDum" id="YZ" role="37wK5m">
                <property role="1adDun" value="0x9401426cad0a8857L" />
                <uo k="s:originTrace" v="n:8348073396877111754" />
              </node>
              <node concept="1adDum" id="Z0" role="37wK5m">
                <property role="1adDun" value="0x4f0a0db9ac16f8f7L" />
                <uo k="s:originTrace" v="n:8348073396877111754" />
              </node>
              <node concept="Xl_RD" id="Z1" role="37wK5m">
                <property role="Xl_RC" value="CQRS.structure.ValueObject" />
                <uo k="s:originTrace" v="n:8348073396877111754" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="YU" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396877111754" />
      </node>
    </node>
    <node concept="2tJIrI" id="YK" role="jymVt">
      <uo k="s:originTrace" v="n:8348073396877111754" />
    </node>
    <node concept="3clFb_" id="YL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateDefaultScopeConstraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <uo k="s:originTrace" v="n:8348073396877111754" />
      <node concept="3Tm1VV" id="Z2" role="1B3o_S">
        <uo k="s:originTrace" v="n:8348073396877111754" />
      </node>
      <node concept="3uibUv" id="Z3" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
        <uo k="s:originTrace" v="n:8348073396877111754" />
        <node concept="3uibUv" id="Z6" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396877111754" />
        </node>
        <node concept="3uibUv" id="Z7" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8348073396877111754" />
        </node>
      </node>
      <node concept="3clFbS" id="Z4" role="3clF47">
        <uo k="s:originTrace" v="n:8348073396877111754" />
        <node concept="3clFbF" id="Z8" role="3cqZAp">
          <uo k="s:originTrace" v="n:8348073396877111754" />
          <node concept="2ShNRf" id="Z9" role="3clFbG">
            <uo k="s:originTrace" v="n:8348073396877111754" />
            <node concept="YeOm9" id="Za" role="2ShVmc">
              <uo k="s:originTrace" v="n:8348073396877111754" />
              <node concept="1Y3b0j" id="Zb" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <uo k="s:originTrace" v="n:8348073396877111754" />
                <node concept="3Tm1VV" id="Zc" role="1B3o_S">
                  <uo k="s:originTrace" v="n:8348073396877111754" />
                </node>
                <node concept="3clFb_" id="Zd" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="invoke" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <uo k="s:originTrace" v="n:8348073396877111754" />
                  <node concept="3Tm1VV" id="Zg" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8348073396877111754" />
                  </node>
                  <node concept="2AHcQZ" id="Zh" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    <uo k="s:originTrace" v="n:8348073396877111754" />
                  </node>
                  <node concept="3uibUv" id="Zi" role="3clF45">
                    <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                    <uo k="s:originTrace" v="n:8348073396877111754" />
                  </node>
                  <node concept="37vLTG" id="Zj" role="3clF46">
                    <property role="TrG5h" value="context" />
                    <uo k="s:originTrace" v="n:8348073396877111754" />
                    <node concept="3uibUv" id="Zm" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                      <uo k="s:originTrace" v="n:8348073396877111754" />
                    </node>
                    <node concept="2AHcQZ" id="Zn" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8348073396877111754" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="Zk" role="3clF46">
                    <property role="TrG5h" value="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:8348073396877111754" />
                    <node concept="3uibUv" id="Zo" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                      <uo k="s:originTrace" v="n:8348073396877111754" />
                    </node>
                    <node concept="2AHcQZ" id="Zp" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:8348073396877111754" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="Zl" role="3clF47">
                    <uo k="s:originTrace" v="n:8348073396877111754" />
                    <node concept="3cpWs6" id="Zq" role="3cqZAp">
                      <uo k="s:originTrace" v="n:8348073396877111754" />
                      <node concept="2ShNRf" id="Zr" role="3cqZAk">
                        <uo k="s:originTrace" v="n:8348073396877426389" />
                        <node concept="YeOm9" id="Zs" role="2ShVmc">
                          <uo k="s:originTrace" v="n:8348073396877426389" />
                          <node concept="1Y3b0j" id="Zt" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                            <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                            <uo k="s:originTrace" v="n:8348073396877426389" />
                            <node concept="3Tm1VV" id="Zu" role="1B3o_S">
                              <uo k="s:originTrace" v="n:8348073396877426389" />
                            </node>
                            <node concept="3clFb_" id="Zv" role="jymVt">
                              <property role="TrG5h" value="getSearchScopeValidatorNode" />
                              <uo k="s:originTrace" v="n:8348073396877426389" />
                              <node concept="3Tm1VV" id="Zx" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8348073396877426389" />
                              </node>
                              <node concept="3uibUv" id="Zy" role="3clF45">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                <uo k="s:originTrace" v="n:8348073396877426389" />
                              </node>
                              <node concept="3clFbS" id="Zz" role="3clF47">
                                <uo k="s:originTrace" v="n:8348073396877426389" />
                                <node concept="3cpWs6" id="Z_" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396877426389" />
                                  <node concept="2ShNRf" id="ZA" role="3cqZAk">
                                    <uo k="s:originTrace" v="n:8348073396877426389" />
                                    <node concept="1pGfFk" id="ZB" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8348073396877426389" />
                                      <node concept="Xl_RD" id="ZC" role="37wK5m">
                                        <property role="Xl_RC" value="r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)" />
                                        <uo k="s:originTrace" v="n:8348073396877426389" />
                                      </node>
                                      <node concept="Xl_RD" id="ZD" role="37wK5m">
                                        <property role="Xl_RC" value="8348073396877426389" />
                                        <uo k="s:originTrace" v="n:8348073396877426389" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="Z$" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8348073396877426389" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="Zw" role="jymVt">
                              <property role="TrG5h" value="createScope" />
                              <uo k="s:originTrace" v="n:8348073396877426389" />
                              <node concept="3Tm1VV" id="ZE" role="1B3o_S">
                                <uo k="s:originTrace" v="n:8348073396877426389" />
                              </node>
                              <node concept="3uibUv" id="ZF" role="3clF45">
                                <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                <uo k="s:originTrace" v="n:8348073396877426389" />
                              </node>
                              <node concept="37vLTG" id="ZG" role="3clF46">
                                <property role="TrG5h" value="_context" />
                                <property role="3TUv4t" value="true" />
                                <uo k="s:originTrace" v="n:8348073396877426389" />
                                <node concept="3uibUv" id="ZJ" role="1tU5fm">
                                  <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                  <uo k="s:originTrace" v="n:8348073396877426389" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="ZH" role="3clF47">
                                <uo k="s:originTrace" v="n:8348073396877426389" />
                                <node concept="3cpWs8" id="ZK" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396879536304" />
                                  <node concept="3cpWsn" id="ZT" role="3cpWs9">
                                    <property role="TrG5h" value="component" />
                                    <uo k="s:originTrace" v="n:8348073396879536307" />
                                    <node concept="3Tqbb2" id="ZU" role="1tU5fm">
                                      <ref role="ehGHo" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                      <uo k="s:originTrace" v="n:8348073396879536302" />
                                    </node>
                                    <node concept="2OqwBi" id="ZV" role="33vP2m">
                                      <property role="hSjvv" value="true" />
                                      <uo k="s:originTrace" v="n:8348073396879539969" />
                                      <node concept="1DoJHT" id="ZW" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getContextNode" />
                                        <uo k="s:originTrace" v="n:8348073396879538628" />
                                        <node concept="3uibUv" id="ZY" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="ZZ" role="1EMhIo">
                                          <ref role="3cqZAo" node="ZG" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="2Xjw5R" id="ZX" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:8348073396879540737" />
                                        <node concept="1xMEDy" id="100" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:8348073396879540739" />
                                          <node concept="chp4Y" id="102" role="ri$Ld">
                                            <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                                            <uo k="s:originTrace" v="n:8348073396879541173" />
                                          </node>
                                        </node>
                                        <node concept="1xIGOp" id="101" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:8348073396879619494" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Jncv_" id="ZL" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
                                  <uo k="s:originTrace" v="n:5501684678916848381" />
                                  <node concept="37vLTw" id="103" role="JncvB">
                                    <ref role="3cqZAo" node="ZT" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678916848748" />
                                  </node>
                                  <node concept="3clFbS" id="104" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678916848385" />
                                    <node concept="3cpWs6" id="106" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6783047803573117332" />
                                      <node concept="2OqwBi" id="107" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:6783047803573117553" />
                                        <node concept="Xjq3P" id="108" role="2Oq$k0">
                                          <ref role="1HBi2w" node="YG" resolve="ValueObject_Constraints" />
                                          <uo k="s:originTrace" v="n:6783047803573117556" />
                                        </node>
                                        <node concept="liA8E" id="109" role="2OqNvi">
                                          <ref role="37wK5l" node="YM" resolve="_additional_provideValueObjectScope" />
                                          <uo k="s:originTrace" v="n:6783047803573117558" />
                                          <node concept="Jnkvi" id="10a" role="37wK5m">
                                            <ref role="1M0zk5" node="105" resolve="valueObject" />
                                            <uo k="s:originTrace" v="n:5501684678916850136" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="105" role="JncvA">
                                    <property role="TrG5h" value="valueObject" />
                                    <uo k="s:originTrace" v="n:5501684678916848387" />
                                    <node concept="2jxLKc" id="10b" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678916848388" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Jncv_" id="ZM" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
                                  <uo k="s:originTrace" v="n:5501684678916850676" />
                                  <node concept="37vLTw" id="10c" role="JncvB">
                                    <ref role="3cqZAo" node="ZT" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678916850862" />
                                  </node>
                                  <node concept="3clFbS" id="10d" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678916850680" />
                                    <node concept="3cpWs6" id="10f" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6783047803573112596" />
                                      <node concept="2OqwBi" id="10g" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:6783047803573113318" />
                                        <node concept="Xjq3P" id="10h" role="2Oq$k0">
                                          <ref role="1HBi2w" node="YG" resolve="ValueObject_Constraints" />
                                          <uo k="s:originTrace" v="n:6783047803573113321" />
                                        </node>
                                        <node concept="liA8E" id="10i" role="2OqNvi">
                                          <ref role="37wK5l" node="YN" resolve="_additional_provideEntityScope" />
                                          <uo k="s:originTrace" v="n:6783047803573113323" />
                                          <node concept="Jnkvi" id="10j" role="37wK5m">
                                            <ref role="1M0zk5" node="10e" resolve="entity" />
                                            <uo k="s:originTrace" v="n:5501684678916853054" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="10e" role="JncvA">
                                    <property role="TrG5h" value="entity" />
                                    <uo k="s:originTrace" v="n:5501684678916850682" />
                                    <node concept="2jxLKc" id="10k" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678916850683" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Jncv_" id="ZN" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                                  <uo k="s:originTrace" v="n:5501684678916853604" />
                                  <node concept="37vLTw" id="10l" role="JncvB">
                                    <ref role="3cqZAo" node="ZT" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678916853787" />
                                  </node>
                                  <node concept="3clFbS" id="10m" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678916853608" />
                                    <node concept="3cpWs6" id="10o" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6783047803573106956" />
                                      <node concept="2OqwBi" id="10p" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:6783047803573108008" />
                                        <node concept="Xjq3P" id="10q" role="2Oq$k0">
                                          <ref role="1HBi2w" node="YG" resolve="ValueObject_Constraints" />
                                          <uo k="s:originTrace" v="n:6783047803573108011" />
                                        </node>
                                        <node concept="liA8E" id="10r" role="2OqNvi">
                                          <ref role="37wK5l" node="YO" resolve="_additional_provideAggregateRootScope" />
                                          <uo k="s:originTrace" v="n:6783047803573108013" />
                                          <node concept="Jnkvi" id="10s" role="37wK5m">
                                            <ref role="1M0zk5" node="10n" resolve="aggregateRoot" />
                                            <uo k="s:originTrace" v="n:5501684678916854955" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="10n" role="JncvA">
                                    <property role="TrG5h" value="aggregateRoot" />
                                    <uo k="s:originTrace" v="n:5501684678916853610" />
                                    <node concept="2jxLKc" id="10t" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678916853611" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Jncv_" id="ZO" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
                                  <uo k="s:originTrace" v="n:5501684678916855878" />
                                  <node concept="37vLTw" id="10u" role="JncvB">
                                    <ref role="3cqZAo" node="ZT" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678916856058" />
                                  </node>
                                  <node concept="3clFbS" id="10v" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678916855882" />
                                    <node concept="3cpWs6" id="10x" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6783047803573131264" />
                                      <node concept="2OqwBi" id="10y" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:6783047803573132483" />
                                        <node concept="Xjq3P" id="10z" role="2Oq$k0">
                                          <ref role="1HBi2w" node="YG" resolve="ValueObject_Constraints" />
                                          <uo k="s:originTrace" v="n:6783047803573131510" />
                                        </node>
                                        <node concept="liA8E" id="10$" role="2OqNvi">
                                          <ref role="37wK5l" node="YP" resolve="_additional_provideAggregateRootRepositoryScope" />
                                          <uo k="s:originTrace" v="n:6783047803573132791" />
                                          <node concept="Jnkvi" id="10_" role="37wK5m">
                                            <ref role="1M0zk5" node="10w" resolve="repository" />
                                            <uo k="s:originTrace" v="n:5501684678916857178" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="10w" role="JncvA">
                                    <property role="TrG5h" value="repository" />
                                    <uo k="s:originTrace" v="n:5501684678916855884" />
                                    <node concept="2jxLKc" id="10A" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678916855885" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Jncv_" id="ZP" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                                  <uo k="s:originTrace" v="n:5501684678916857700" />
                                  <node concept="37vLTw" id="10B" role="JncvB">
                                    <ref role="3cqZAo" node="ZT" resolve="component" />
                                    <uo k="s:originTrace" v="n:5501684678916857877" />
                                  </node>
                                  <node concept="3clFbS" id="10C" role="Jncv$">
                                    <uo k="s:originTrace" v="n:5501684678916857704" />
                                    <node concept="3cpWs6" id="10E" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:5501684678916864207" />
                                      <node concept="2OqwBi" id="10F" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:5501684678916864209" />
                                        <node concept="Xjq3P" id="10G" role="2Oq$k0">
                                          <ref role="1HBi2w" node="YG" resolve="ValueObject_Constraints" />
                                          <uo k="s:originTrace" v="n:5501684678916864210" />
                                        </node>
                                        <node concept="liA8E" id="10H" role="2OqNvi">
                                          <ref role="37wK5l" node="YQ" resolve="_additional_provideDtoScope" />
                                          <uo k="s:originTrace" v="n:5501684678916864211" />
                                          <node concept="Jnkvi" id="10I" role="37wK5m">
                                            <ref role="1M0zk5" node="10D" resolve="dto" />
                                            <uo k="s:originTrace" v="n:5501684678916865050" />
                                          </node>
                                          <node concept="1DoJHT" id="10J" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:5501684678925535959" />
                                            <node concept="3uibUv" id="10K" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="10L" role="1EMhIo">
                                              <ref role="3cqZAo" node="ZG" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="10D" role="JncvA">
                                    <property role="TrG5h" value="dto" />
                                    <uo k="s:originTrace" v="n:5501684678916857706" />
                                    <node concept="2jxLKc" id="10M" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:5501684678916857707" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Jncv_" id="ZQ" role="3cqZAp">
                                  <ref role="JncvD" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
                                  <uo k="s:originTrace" v="n:4394792474634153375" />
                                  <node concept="37vLTw" id="10N" role="JncvB">
                                    <ref role="3cqZAo" node="ZT" resolve="component" />
                                    <uo k="s:originTrace" v="n:4394792474634153577" />
                                  </node>
                                  <node concept="3clFbS" id="10O" role="Jncv$">
                                    <uo k="s:originTrace" v="n:4394792474634153379" />
                                    <node concept="3cpWs6" id="10Q" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:4394792474634154324" />
                                      <node concept="2OqwBi" id="10R" role="3cqZAk">
                                        <uo k="s:originTrace" v="n:4394792474634155554" />
                                        <node concept="Xjq3P" id="10S" role="2Oq$k0">
                                          <ref role="1HBi2w" node="YG" resolve="ValueObject_Constraints" />
                                          <uo k="s:originTrace" v="n:4394792474634154555" />
                                        </node>
                                        <node concept="liA8E" id="10T" role="2OqNvi">
                                          <ref role="37wK5l" node="YR" resolve="_additional_provideDtoFlatteningRuleScope" />
                                          <uo k="s:originTrace" v="n:4394792474634155855" />
                                          <node concept="Jnkvi" id="10U" role="37wK5m">
                                            <ref role="1M0zk5" node="10P" resolve="flatteningRuleContainer" />
                                            <uo k="s:originTrace" v="n:4394792474634155997" />
                                          </node>
                                          <node concept="1DoJHT" id="10V" role="37wK5m">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:4394792474634156269" />
                                            <node concept="3uibUv" id="10W" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="10X" role="1EMhIo">
                                              <ref role="3cqZAo" node="ZG" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="JncvC" id="10P" role="JncvA">
                                    <property role="TrG5h" value="flatteningRuleContainer" />
                                    <uo k="s:originTrace" v="n:4394792474634153381" />
                                    <node concept="2jxLKc" id="10Y" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:4394792474634153382" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="ZR" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:4394792474634153079" />
                                </node>
                                <node concept="3cpWs6" id="ZS" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8348073396882278417" />
                                  <node concept="2ShNRf" id="10Z" role="3cqZAk">
                                    <uo k="s:originTrace" v="n:8348073396882280471" />
                                    <node concept="1pGfFk" id="110" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                      <uo k="s:originTrace" v="n:8348073396882281468" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="ZI" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                <uo k="s:originTrace" v="n:8348073396877426389" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="Ze" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ConstraintContext_DefaultScopeProvider" resolve="ConstraintContext_DefaultScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396877111754" />
                </node>
                <node concept="3uibUv" id="Zf" role="2Ghqu4">
                  <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                  <uo k="s:originTrace" v="n:8348073396877111754" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Z5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:8348073396877111754" />
      </node>
    </node>
    <node concept="3clFb_" id="YM" role="jymVt">
      <property role="TrG5h" value="_additional_provideValueObjectScope" />
      <uo k="s:originTrace" v="n:6783047803573094507" />
      <node concept="3uibUv" id="111" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:6783047803573095026" />
      </node>
      <node concept="3Tm6S6" id="112" role="1B3o_S">
        <uo k="s:originTrace" v="n:6783047803573094510" />
      </node>
      <node concept="3clFbS" id="113" role="3clF47">
        <uo k="s:originTrace" v="n:6783047803573094509" />
        <node concept="3clFbF" id="115" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678916859437" />
          <node concept="2YIFZM" id="116" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <uo k="s:originTrace" v="n:6783047803573095417" />
            <node concept="2OqwBi" id="117" role="37wK5m">
              <uo k="s:originTrace" v="n:8253185029653485694" />
              <node concept="2OqwBi" id="118" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8253185029653485695" />
                <node concept="37vLTw" id="11a" role="2Oq$k0">
                  <ref role="3cqZAo" node="114" resolve="valueObject" />
                  <uo k="s:originTrace" v="n:8253185029653485696" />
                </node>
                <node concept="2qgKlT" id="11b" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  <uo k="s:originTrace" v="n:8253185029653485697" />
                </node>
              </node>
              <node concept="2qgKlT" id="119" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
                <uo k="s:originTrace" v="n:8253185029653485698" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="114" role="3clF46">
        <property role="TrG5h" value="valueObject" />
        <uo k="s:originTrace" v="n:6783047803573095273" />
        <node concept="3Tqbb2" id="11c" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
          <uo k="s:originTrace" v="n:6783047803573095322" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="YN" role="jymVt">
      <property role="TrG5h" value="_additional_provideEntityScope" />
      <uo k="s:originTrace" v="n:6783047803573086538" />
      <node concept="3uibUv" id="11d" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:6783047803573086773" />
      </node>
      <node concept="3Tm6S6" id="11e" role="1B3o_S">
        <uo k="s:originTrace" v="n:6783047803573086541" />
      </node>
      <node concept="3clFbS" id="11f" role="3clF47">
        <uo k="s:originTrace" v="n:6783047803573086540" />
        <node concept="3clFbF" id="11h" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678916861293" />
          <node concept="2YIFZM" id="11i" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <uo k="s:originTrace" v="n:6783047803573087220" />
            <node concept="2OqwBi" id="11j" role="37wK5m">
              <uo k="s:originTrace" v="n:6783047803573091020" />
              <node concept="2OqwBi" id="11k" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6783047803573088877" />
                <node concept="37vLTw" id="11m" role="2Oq$k0">
                  <ref role="3cqZAo" node="11g" resolve="entity" />
                  <uo k="s:originTrace" v="n:6783047803573087222" />
                </node>
                <node concept="2qgKlT" id="11n" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  <uo k="s:originTrace" v="n:6783047803573089944" />
                </node>
              </node>
              <node concept="2qgKlT" id="11l" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
                <uo k="s:originTrace" v="n:6783047803573091924" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="11g" role="3clF46">
        <property role="TrG5h" value="entity" />
        <uo k="s:originTrace" v="n:6783047803573087014" />
        <node concept="3Tqbb2" id="11o" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
          <uo k="s:originTrace" v="n:6783047803573087144" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="YO" role="jymVt">
      <property role="TrG5h" value="_additional_provideAggregateRootScope" />
      <uo k="s:originTrace" v="n:6783047803573092568" />
      <node concept="3uibUv" id="11p" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:6783047803573092849" />
      </node>
      <node concept="3Tm6S6" id="11q" role="1B3o_S">
        <uo k="s:originTrace" v="n:6783047803573092571" />
      </node>
      <node concept="3clFbS" id="11r" role="3clF47">
        <uo k="s:originTrace" v="n:6783047803573092570" />
        <node concept="3clFbF" id="11t" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678916862092" />
          <node concept="2YIFZM" id="11u" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <uo k="s:originTrace" v="n:6783047803573093255" />
            <node concept="2OqwBi" id="11v" role="37wK5m">
              <uo k="s:originTrace" v="n:6783047803573093256" />
              <node concept="2OqwBi" id="11w" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6783047803573093257" />
                <node concept="37vLTw" id="11y" role="2Oq$k0">
                  <ref role="3cqZAo" node="11s" resolve="aggregateRoot" />
                  <uo k="s:originTrace" v="n:6783047803573093258" />
                </node>
                <node concept="2qgKlT" id="11z" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  <uo k="s:originTrace" v="n:6783047803573093259" />
                </node>
              </node>
              <node concept="2qgKlT" id="11x" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
                <uo k="s:originTrace" v="n:6783047803573093260" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="11s" role="3clF46">
        <property role="TrG5h" value="aggregateRoot" />
        <uo k="s:originTrace" v="n:6783047803573093031" />
        <node concept="3Tqbb2" id="11$" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
          <uo k="s:originTrace" v="n:6783047803573093161" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="YP" role="jymVt">
      <property role="TrG5h" value="_additional_provideAggregateRootRepositoryScope" />
      <uo k="s:originTrace" v="n:6783047803573118190" />
      <node concept="3uibUv" id="11_" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:6783047803573118832" />
      </node>
      <node concept="3Tm6S6" id="11A" role="1B3o_S">
        <uo k="s:originTrace" v="n:6783047803573118193" />
      </node>
      <node concept="3clFbS" id="11B" role="3clF47">
        <uo k="s:originTrace" v="n:6783047803573118192" />
        <node concept="3clFbF" id="11D" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678916862915" />
          <node concept="2YIFZM" id="11E" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <uo k="s:originTrace" v="n:6783047803573124493" />
            <node concept="2OqwBi" id="11F" role="37wK5m">
              <uo k="s:originTrace" v="n:6783047803573124494" />
              <node concept="2OqwBi" id="11G" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6783047803573124495" />
                <node concept="37vLTw" id="11I" role="2Oq$k0">
                  <ref role="3cqZAo" node="11C" resolve="repository" />
                  <uo k="s:originTrace" v="n:6783047803573124496" />
                </node>
                <node concept="2qgKlT" id="11J" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  <uo k="s:originTrace" v="n:6783047803573124497" />
                </node>
              </node>
              <node concept="2qgKlT" id="11H" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3Ma$i" resolve="valueObjects" />
                <uo k="s:originTrace" v="n:6783047803573124498" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="11C" role="3clF46">
        <property role="TrG5h" value="repository" />
        <uo k="s:originTrace" v="n:6783047803573124398" />
        <node concept="3Tqbb2" id="11K" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
          <uo k="s:originTrace" v="n:6783047803573124397" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="YQ" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoScope" />
      <uo k="s:originTrace" v="n:5501684678916858191" />
      <node concept="3uibUv" id="11L" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:5501684678916858766" />
      </node>
      <node concept="3Tm6S6" id="11M" role="1B3o_S">
        <uo k="s:originTrace" v="n:5501684678916858194" />
      </node>
      <node concept="3clFbS" id="11N" role="3clF47">
        <uo k="s:originTrace" v="n:5501684678916858193" />
        <node concept="3clFbJ" id="11Q" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:5501684678916865996" />
          <node concept="3clFbS" id="11T" role="3clFbx">
            <uo k="s:originTrace" v="n:5501684678916865998" />
            <node concept="3cpWs8" id="11V" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474641435818" />
              <node concept="3cpWsn" id="11X" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <uo k="s:originTrace" v="n:4394792474641435819" />
                <node concept="3Tqbb2" id="11Y" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                  <uo k="s:originTrace" v="n:4394792474641435820" />
                </node>
                <node concept="2OqwBi" id="11Z" role="33vP2m">
                  <uo k="s:originTrace" v="n:4394792474641435821" />
                  <node concept="37vLTw" id="120" role="2Oq$k0">
                    <ref role="3cqZAo" node="11O" resolve="dto" />
                    <uo k="s:originTrace" v="n:4394792474641435822" />
                  </node>
                  <node concept="2qgKlT" id="121" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641435823" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="11W" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474634108225" />
              <node concept="2YIFZM" id="122" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:4394792474634108226" />
                <node concept="2OqwBi" id="123" role="37wK5m">
                  <uo k="s:originTrace" v="n:4394792474634108227" />
                  <node concept="2qgKlT" id="124" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yo7EMe" resolve="findUnusedDtoDerivablesIncluding" />
                    <uo k="s:originTrace" v="n:4394792474634108231" />
                    <node concept="2OqwBi" id="126" role="37wK5m">
                      <uo k="s:originTrace" v="n:4394792474641441538" />
                      <node concept="2OqwBi" id="127" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4394792474634108233" />
                        <node concept="37vLTw" id="129" role="2Oq$k0">
                          <ref role="3cqZAo" node="11O" resolve="dto" />
                          <uo k="s:originTrace" v="n:4394792474634108234" />
                        </node>
                        <node concept="3TrEf2" id="12a" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                          <uo k="s:originTrace" v="n:4394792474634108235" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="128" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:4LpUh3T0tIy" resolve="getDtoDerivable" />
                        <uo k="s:originTrace" v="n:4394792474641443535" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="125" role="2Oq$k0">
                    <ref role="3cqZAo" node="11X" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641437837" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="11U" role="3clFbw">
            <uo k="s:originTrace" v="n:5501684678921039641" />
            <node concept="3clFbC" id="12b" role="3uHU7B">
              <uo k="s:originTrace" v="n:5501684678918658442" />
              <node concept="37vLTw" id="12d" role="3uHU7B">
                <ref role="3cqZAo" node="11P" resolve="contextNode" />
                <uo k="s:originTrace" v="n:5501684678918657733" />
              </node>
              <node concept="37vLTw" id="12e" role="3uHU7w">
                <ref role="3cqZAo" node="11O" resolve="dto" />
                <uo k="s:originTrace" v="n:5501684678918658944" />
              </node>
            </node>
            <node concept="17R0WA" id="12c" role="3uHU7w">
              <uo k="s:originTrace" v="n:5501684678934282188" />
              <node concept="359W_D" id="12f" role="3uHU7w">
                <ref role="359W_E" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                <uo k="s:originTrace" v="n:5501684678934282189" />
              </node>
              <node concept="2OqwBi" id="12g" role="3uHU7B">
                <uo k="s:originTrace" v="n:5501684678934282190" />
                <node concept="37vLTw" id="12h" role="2Oq$k0">
                  <ref role="3cqZAo" node="11P" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:5501684678934282191" />
                </node>
                <node concept="2NL2c5" id="12i" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5501684678934282192" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="11R" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474641462430" />
        </node>
        <node concept="3clFbF" id="11S" role="3cqZAp">
          <uo k="s:originTrace" v="n:5501684678916872425" />
          <node concept="2ShNRf" id="12j" role="3clFbG">
            <uo k="s:originTrace" v="n:5501684678916872423" />
            <node concept="1pGfFk" id="12k" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:5501684678916873606" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="11O" role="3clF46">
        <property role="TrG5h" value="dto" />
        <uo k="s:originTrace" v="n:5501684678916859013" />
        <node concept="3Tqbb2" id="12l" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
          <uo k="s:originTrace" v="n:5501684678916859149" />
        </node>
      </node>
      <node concept="37vLTG" id="11P" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:5501684678916859224" />
        <node concept="3Tqbb2" id="12m" role="1tU5fm">
          <uo k="s:originTrace" v="n:5501684678916859362" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="YR" role="jymVt">
      <property role="TrG5h" value="_additional_provideDtoFlatteningRuleScope" />
      <uo k="s:originTrace" v="n:4394792474633965421" />
      <node concept="3uibUv" id="12n" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:4394792474633966021" />
      </node>
      <node concept="3Tm6S6" id="12o" role="1B3o_S">
        <uo k="s:originTrace" v="n:4394792474633965424" />
      </node>
      <node concept="3clFbS" id="12p" role="3clF47">
        <uo k="s:originTrace" v="n:4394792474633965423" />
        <node concept="3cpWs8" id="12s" role="3cqZAp">
          <uo k="s:originTrace" v="n:4343604932409176302" />
          <node concept="3cpWsn" id="12x" role="3cpWs9">
            <property role="TrG5h" value="flatteningRule" />
            <uo k="s:originTrace" v="n:4343604932409176303" />
            <node concept="3Tqbb2" id="12y" role="1tU5fm">
              <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
              <uo k="s:originTrace" v="n:4343604932409176198" />
            </node>
            <node concept="2OqwBi" id="12z" role="33vP2m">
              <uo k="s:originTrace" v="n:4343604932409176304" />
              <node concept="37vLTw" id="12$" role="2Oq$k0">
                <ref role="3cqZAo" node="12r" resolve="contextNode" />
                <uo k="s:originTrace" v="n:4343604932409176305" />
              </node>
              <node concept="2Xjw5R" id="12_" role="2OqNvi">
                <uo k="s:originTrace" v="n:4343604932409176306" />
                <node concept="1xMEDy" id="12A" role="1xVPHs">
                  <uo k="s:originTrace" v="n:4343604932409176307" />
                  <node concept="chp4Y" id="12C" role="ri$Ld">
                    <ref role="cht4Q" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    <uo k="s:originTrace" v="n:4343604932409176308" />
                  </node>
                </node>
                <node concept="1xIGOp" id="12B" role="1xVPHs">
                  <uo k="s:originTrace" v="n:4343604932409176309" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12t" role="3cqZAp">
          <uo k="s:originTrace" v="n:4343604932409172986" />
        </node>
        <node concept="3clFbJ" id="12u" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <uo k="s:originTrace" v="n:4394792474633972623" />
          <node concept="3clFbS" id="12D" role="3clFbx">
            <uo k="s:originTrace" v="n:4394792474633972625" />
            <node concept="3cpWs8" id="12F" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474641447684" />
              <node concept="3cpWsn" id="12H" role="3cpWs9">
                <property role="TrG5h" value="boundedContext" />
                <uo k="s:originTrace" v="n:4394792474641447685" />
                <node concept="3Tqbb2" id="12I" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                  <uo k="s:originTrace" v="n:4394792474641447504" />
                </node>
                <node concept="2OqwBi" id="12J" role="33vP2m">
                  <uo k="s:originTrace" v="n:4394792474641447686" />
                  <node concept="37vLTw" id="12K" role="2Oq$k0">
                    <ref role="3cqZAo" node="12q" resolve="flatteningRuleContainer" />
                    <uo k="s:originTrace" v="n:4394792474641447687" />
                  </node>
                  <node concept="2qgKlT" id="12L" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641447688" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="12G" role="3cqZAp">
              <uo k="s:originTrace" v="n:4394792474633979077" />
              <node concept="2YIFZM" id="12M" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <uo k="s:originTrace" v="n:4394792474633979581" />
                <node concept="2OqwBi" id="12N" role="37wK5m">
                  <uo k="s:originTrace" v="n:4394792474634115925" />
                  <node concept="2qgKlT" id="12O" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3NXs7yowktH" resolve="findUnusedDtoDerivablesForFlatteningRulesIncluding" />
                    <uo k="s:originTrace" v="n:4394792474634116932" />
                    <node concept="2OqwBi" id="12Q" role="37wK5m">
                      <uo k="s:originTrace" v="n:4394792474634117315" />
                      <node concept="37vLTw" id="12R" role="2Oq$k0">
                        <ref role="3cqZAo" node="12x" resolve="flatteningRule" />
                        <uo k="s:originTrace" v="n:4394792474634117087" />
                      </node>
                      <node concept="2qgKlT" id="12S" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:3NXs7yomd17" resolve="getDtoDerivable" />
                        <uo k="s:originTrace" v="n:4343604932409182118" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="12P" role="2Oq$k0">
                    <ref role="3cqZAo" node="12H" resolve="boundedContext" />
                    <uo k="s:originTrace" v="n:4394792474641451462" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="12E" role="3clFbw">
            <uo k="s:originTrace" v="n:4394792474633975114" />
            <node concept="17R0WA" id="12T" role="3uHU7w">
              <uo k="s:originTrace" v="n:4394792474633978111" />
              <node concept="359W_D" id="12V" role="3uHU7w">
                <ref role="359W_E" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                <ref role="359W_F" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                <uo k="s:originTrace" v="n:4394792474633978190" />
              </node>
              <node concept="2OqwBi" id="12W" role="3uHU7B">
                <uo k="s:originTrace" v="n:4394792474633975917" />
                <node concept="37vLTw" id="12X" role="2Oq$k0">
                  <ref role="3cqZAo" node="12r" resolve="contextNode" />
                  <uo k="s:originTrace" v="n:4394792474633975183" />
                </node>
                <node concept="2NL2c5" id="12Y" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4394792474633976438" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="12U" role="3uHU7B">
              <uo k="s:originTrace" v="n:4343604932409178772" />
              <node concept="37vLTw" id="12Z" role="3uHU7w">
                <ref role="3cqZAo" node="12x" resolve="flatteningRule" />
                <uo k="s:originTrace" v="n:4343604932409179413" />
              </node>
              <node concept="37vLTw" id="130" role="3uHU7B">
                <ref role="3cqZAo" node="12r" resolve="contextNode" />
                <uo k="s:originTrace" v="n:4394792474633972669" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12v" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474633972472" />
        </node>
        <node concept="3clFbF" id="12w" role="3cqZAp">
          <uo k="s:originTrace" v="n:4394792474633966921" />
          <node concept="2ShNRf" id="131" role="3clFbG">
            <uo k="s:originTrace" v="n:4394792474633966917" />
            <node concept="1pGfFk" id="132" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
              <uo k="s:originTrace" v="n:4394792474633972363" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="12q" role="3clF46">
        <property role="TrG5h" value="flatteningRuleContainer" />
        <uo k="s:originTrace" v="n:4394792474633966333" />
        <node concept="3Tqbb2" id="133" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
          <uo k="s:originTrace" v="n:4394792474633966472" />
        </node>
      </node>
      <node concept="37vLTG" id="12r" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:4394792474633966547" />
        <node concept="3Tqbb2" id="134" role="1tU5fm">
          <uo k="s:originTrace" v="n:4394792474633966688" />
        </node>
      </node>
    </node>
  </node>
</model>

