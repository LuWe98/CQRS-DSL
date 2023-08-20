<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:14c339be-cf0b-4305-b02b-b173e5e04303(CQRS.Kotlin.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="a0t" ref="r:8452578d-f002-4957-95e6-a141b8af5326(CQRS.Generation.textGen)" />
    <import index="v95s" ref="r:80a70671-192c-4185-9509-8b98e792e24c(CQRS.Kotlin.generation)" />
    <import index="cpc8" ref="r:c29d26de-4040-4764-ba29-6361cc981593(CQRS.Generation.generation)" />
    <import index="3u0l" ref="r:05fbaab0-ab1c-4838-90da-9d54e17b6c69(CQRS.Generation.util)" />
    <import index="m7gy" ref="r:a27ce5e9-db29-4fc0-925f-cc4b526bab30(CQRS.Kotlin.structure)" implicit="true" />
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" implicit="true" />
    <import index="anwi" ref="r:7c81c792-29f8-43b8-86dd-c441406afee9(CQRS.Generation.structure)" implicit="true" />
    <import index="opxm" ref="r:ced0ccfc-c41d-432a-acf9-b1d0eb13e54c(CQRS.Kotlin.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="sx7w" ref="r:dc830b23-b722-4fd1-8178-0431aafe57ef(CQRS.behavior)" implicit="true" />
    <import index="igqx" ref="r:8d786322-2f08-42c3-9ea9-879537c9f53d(CQRS.Generation.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1201385106094" name="jetbrains.mps.baseLanguage.structure.PropertyReference" flags="nn" index="2S8uIT">
        <reference id="1201385237847" name="property" index="2S8YL0" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="4357423944233036906" name="jetbrains.mps.lang.textGen.structure.IndentPart" flags="ng" index="2BGw6n" />
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
        <child id="7844911294523354450" name="filePath" index="1Knhgg" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233752719417" name="jetbrains.mps.lang.textGen.structure.IncreaseDepthOperation" flags="nn" index="11p84A" />
      <concept id="1233752780875" name="jetbrains.mps.lang.textGen.structure.DecreaseDepthOperation" flags="nn" index="11pn5k" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1233921373471" name="jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration" flags="ig" index="1bsvg0">
        <reference id="1234781160172" name="baseTextGen" index="1YGkfN" />
        <child id="1233922432965" name="operation" index="1bwxVq" />
      </concept>
      <concept id="1233922353619" name="jetbrains.mps.lang.textGen.structure.OperationDeclaration" flags="sg" stub="3147100357551177019" index="1bwezc" />
      <concept id="1233924848298" name="jetbrains.mps.lang.textGen.structure.OperationCall" flags="ng" index="1bDJIP">
        <reference id="1234190664409" name="function" index="1rvKf6" />
        <child id="1234191323697" name="parameter" index="1ryhcI" />
      </concept>
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
      <concept id="7844911294523361055" name="jetbrains.mps.lang.textGen.structure.FilePathQuery" flags="ig" index="1KnnTt" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="CvLt7qMboG">
    <property role="3GE5qa" value="querySide.query" />
    <ref role="WuzLi" to="m7gy:CvLt7qMboF" resolve="QueryKotlinOutput" />
    <node concept="11bSqf" id="CvLt7qMboH" role="11c4hB">
      <node concept="3clFbS" id="CvLt7qMboI" role="2VODD2">
        <node concept="3cpWs8" id="51Z40VwCjlr" role="3cqZAp">
          <node concept="3cpWsn" id="51Z40VwCjls" role="3cpWs9">
            <property role="TrG5h" value="query" />
            <node concept="3Tqbb2" id="51Z40VwCjl2" role="1tU5fm">
              <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
            </node>
            <node concept="2OqwBi" id="51Z40VwCjlt" role="33vP2m">
              <node concept="117lpO" id="51Z40VwCjlu" role="2Oq$k0" />
              <node concept="3TrEf2" id="51Z40VwCjlv" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:CvLt7qMbhv" resolve="query" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VwCiyF" role="3cqZAp" />
        <node concept="3cpWs8" id="51Z40VwAV0G" role="3cqZAp">
          <node concept="3cpWsn" id="51Z40VwAV0H" role="3cpWs9">
            <property role="TrG5h" value="converter" />
            <node concept="3uibUv" id="51Z40VwAUVZ" role="1tU5fm">
              <ref role="3uigEE" to="cpc8:4p0keayIwoL" resolve="DependencyTextConverter" />
            </node>
            <node concept="2OqwBi" id="51Z40VwAV0I" role="33vP2m">
              <node concept="117lpO" id="51Z40VwAV0J" role="2Oq$k0" />
              <node concept="2qgKlT" id="51Z40VwAV0K" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBeLAT" resolve="converter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51Z40VwAUju" role="3cqZAp">
          <node concept="3cpWsn" id="51Z40VwAUjv" role="3cpWs9">
            <property role="TrG5h" value="queryInterface" />
            <node concept="17QB3L" id="51Z40VwAUhP" role="1tU5fm" />
            <node concept="10M0yZ" id="51Z40VwAUjw" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:4b$xqUATxQK" resolve="QUERY_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VwATX4" role="3cqZAp" />
        <node concept="lc7rE" id="2Np_kya4KR8" role="3cqZAp">
          <node concept="1bDJIP" id="2Np_kya4KZg" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="2Np_kya4L61" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VwCbXL" role="3cqZAp" />
        <node concept="3clFbJ" id="4b$xqUBnMlp" role="3cqZAp">
          <node concept="3clFbS" id="4b$xqUBnMlr" role="3clFbx">
            <node concept="lc7rE" id="CvLt7qMhou" role="3cqZAp">
              <node concept="1bDJIP" id="4yUYSn0FKbV" role="lcghm">
                <ref role="1rvKf6" node="4b$xqUAZJaE" resolve="_dataclass" />
                <node concept="2OqwBi" id="4yUYSn0FKNA" role="1ryhcI">
                  <node concept="3TrcHB" id="4yUYSn0FLaG" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                  <node concept="37vLTw" id="51Z40VwCjGS" role="2Oq$k0">
                    <ref role="3cqZAo" node="51Z40VwCjls" resolve="query" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="CvLt7qMh_S" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
            </node>
            <node concept="3izx1p" id="CvLt7qMhKg" role="3cqZAp">
              <node concept="3clFbS" id="CvLt7qMhKi" role="3izTki">
                <node concept="lc7rE" id="p4fyl5MNPW" role="3cqZAp">
                  <node concept="1bDJIP" id="p4fyl5MNQF" role="lcghm">
                    <ref role="1rvKf6" node="p4fyl5LJ8P" resolve="parameters" />
                    <node concept="2OqwBi" id="p4fyl5MO3v" role="1ryhcI">
                      <node concept="117lpO" id="p4fyl5MNR6" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="p4fyl5MOh9" role="2OqNvi">
                        <ref role="3TtcxE" to="anwi:p4fykY81mq" resolve="parameters" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="p4fyl5MOzq" role="1ryhcI">
                      <node concept="37vLTw" id="p4fyl5MOiJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="51Z40VwCjls" resolve="query" />
                      </node>
                      <node concept="3TrcHB" id="p4fyl5MOSA" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="4b$xqUBnOYZ" role="3cqZAp">
              <node concept="la8eA" id="4b$xqUBnP4_" role="lcghm">
                <property role="lacIc" value=")" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4b$xqUBnNlc" role="3clFbw">
            <node concept="2qgKlT" id="4b$xqUBnNIq" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5QsWOhXN7cG" resolve="hasParameters" />
            </node>
            <node concept="37vLTw" id="51Z40VwCjCh" role="2Oq$k0">
              <ref role="3cqZAo" node="51Z40VwCjls" resolve="query" />
            </node>
          </node>
          <node concept="9aQIb" id="4b$xqUBnOx0" role="9aQIa">
            <node concept="3clFbS" id="4b$xqUBnOx1" role="9aQI4">
              <node concept="lc7rE" id="4b$xqUBnOOh" role="3cqZAp">
                <node concept="1bDJIP" id="4b$xqUBnOOi" role="lcghm">
                  <ref role="1rvKf6" node="4yUYSn0FvHs" resolve="_object" />
                  <node concept="2OqwBi" id="4b$xqUBnOOj" role="1ryhcI">
                    <node concept="3TrcHB" id="4b$xqUBnOOn" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="37vLTw" id="51Z40VwCjPM" role="2Oq$k0">
                      <ref role="3cqZAo" node="51Z40VwCjls" resolve="query" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4b$xqUBnNRO" role="3cqZAp" />
        <node concept="lc7rE" id="CvLt7qMhOT" role="3cqZAp">
          <node concept="la8eA" id="CvLt7qMhQ2" role="lcghm">
            <property role="lacIc" value=" : " />
          </node>
          <node concept="l9hG8" id="51Z40VwAU$K" role="lcghm">
            <node concept="37vLTw" id="51Z40VwAUDx" role="lb14g">
              <ref role="3cqZAo" node="51Z40VwAUjv" resolve="queryInterface" />
            </node>
          </node>
          <node concept="la8eA" id="51Z40VwAUIq" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
          <node concept="l9hG8" id="4b$xqUBeVU9" role="lcghm">
            <node concept="2OqwBi" id="4b$xqUBeTOF" role="lb14g">
              <node concept="liA8E" id="4b$xqUBeU0u" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                <node concept="2OqwBi" id="4b$xqUBeULh" role="37wK5m">
                  <node concept="3TrEf2" id="4b$xqUBeVbo" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:3DbZR$O2F_T" resolve="returnType" />
                  </node>
                  <node concept="37vLTw" id="51Z40VwCjSU" role="2Oq$k0">
                    <ref role="3cqZAo" node="51Z40VwCjls" resolve="query" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="51Z40VwAVnG" role="2Oq$k0">
                <ref role="3cqZAo" node="51Z40VwAV0H" resolve="converter" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4b$xqUBeW2g" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="CvLt7qMbpx" role="29tGrW">
      <node concept="3clFbS" id="CvLt7qMbpy" role="2VODD2">
        <node concept="3clFbF" id="CvLt7qMbvN" role="3cqZAp">
          <node concept="2OqwBi" id="CvLt7qMcey" role="3clFbG">
            <node concept="2OqwBi" id="CvLt7qMbLy" role="2Oq$k0">
              <node concept="117lpO" id="CvLt7qMbvM" role="2Oq$k0" />
              <node concept="3TrEf2" id="CvLt7qMbUt" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:CvLt7qMbhv" resolve="query" />
              </node>
            </node>
            <node concept="3TrcHB" id="CvLt7qMcBC" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="CvLt7qMgvS" role="1Knhgg">
      <node concept="3clFbS" id="CvLt7qMgvU" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUAZRJw" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUAZS3w" role="3clFbG">
            <node concept="117lpO" id="4b$xqUAZRJv" role="2Oq$k0" />
            <node concept="2qgKlT" id="4b$xqUAZSeo" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="CvLt7qMhge" role="33IsuW">
      <node concept="3clFbS" id="CvLt7qMhgf" role="2VODD2">
        <node concept="3clFbF" id="CvLt7qMhiP" role="3cqZAp">
          <node concept="2OqwBi" id="4yUYSn0seM6" role="3clFbG">
            <node concept="Rm8GO" id="4yUYSn0sdSU" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="4yUYSn0sfk9" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4p0keayGWrC">
    <property role="3GE5qa" value="variable" />
    <ref role="WuzLi" to="m7gy:4p0keayGWr_" resolve="ParameterKotlinOutput" />
    <node concept="11bSqf" id="4p0keayGWrD" role="11c4hB">
      <node concept="3clFbS" id="4p0keayGWrE" role="2VODD2">
        <node concept="3cpWs8" id="p4fyl2YsOM" role="3cqZAp">
          <node concept="3cpWsn" id="p4fyl2YsON" role="3cpWs9">
            <property role="TrG5h" value="mappedType" />
            <node concept="3Tqbb2" id="p4fyl2YsFR" role="1tU5fm">
              <ref role="ehGHo" to="anwi:4yUYSn0hQWi" resolve="IDataTypeOutput" />
            </node>
            <node concept="2OqwBi" id="p4fyl2YsOO" role="33vP2m">
              <node concept="2OqwBi" id="p4fyl2YsOP" role="2Oq$k0">
                <node concept="117lpO" id="p4fyl2YsOQ" role="2Oq$k0" />
                <node concept="2qgKlT" id="p4fyl2YsOR" role="2OqNvi">
                  <ref role="37wK5l" to="opxm:2Np_kya0npo" resolve="mapper" />
                </node>
              </node>
              <node concept="liA8E" id="p4fyl2YsOS" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:2Np_kya0Fv3" resolve="mapDataType" />
                <node concept="2OqwBi" id="p4fyl2YsOT" role="37wK5m">
                  <node concept="117lpO" id="p4fyl2YsOU" role="2Oq$k0" />
                  <node concept="3TrEf2" id="p4fyl2YsOV" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:1DRRhzqSLFP" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="p4fyl2YsgC" role="3cqZAp" />
        <node concept="3SKdUt" id="p4fyl2Yurp" role="3cqZAp">
          <node concept="1PaTwC" id="p4fyl2Yurq" role="1aUNEU">
            <node concept="3oM_SD" id="p4fyl2Yu$w" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="p4fyl2Yu$A" role="1PaTwD">
              <property role="3oM_SC" value="Das" />
            </node>
            <node concept="3oM_SD" id="p4fyl2Yu$H" role="1PaTwD">
              <property role="3oM_SC" value="noch" />
            </node>
            <node concept="3oM_SD" id="p4fyl2Yu$Q" role="1PaTwD">
              <property role="3oM_SC" value="anpassen." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="p4fyl2YgWv" role="3cqZAp">
          <node concept="3clFbS" id="p4fyl2YgWx" role="3clFbx">
            <node concept="lc7rE" id="p4fyl2YhxV" role="3cqZAp">
              <node concept="l9hG8" id="p4fyl2YhxW" role="lcghm">
                <node concept="2OqwBi" id="p4fyl2YhxX" role="lb14g">
                  <node concept="117lpO" id="p4fyl2YhxY" role="2Oq$k0" />
                  <node concept="3TrcHB" id="p4fyl2YhxZ" role="2OqNvi">
                    <ref role="3TsBF5" to="anwi:1DRRhzqSLFN" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="p4fyl2Yhy0" role="lcghm">
                <property role="lacIc" value=" : " />
              </node>
              <node concept="l9hG8" id="p4fyl2Yhy1" role="lcghm">
                <node concept="37vLTw" id="p4fyl2YtHV" role="lb14g">
                  <ref role="3cqZAo" node="p4fyl2YsON" resolve="mappedType" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="p4fyl2YhJQ" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="p4fyl2Yhgg" role="3clFbw">
            <node concept="117lpO" id="p4fyl2Yh0K" role="2Oq$k0" />
            <node concept="3TrcHB" id="p4fyl2Yhvv" role="2OqNvi">
              <ref role="3TsBF5" to="anwi:p4fyl2WFYm" resolve="hideModifiers" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="p4fyl2Yl2x" role="3cqZAp" />
        <node concept="3cpWs8" id="p4fyl2YmU2" role="3cqZAp">
          <node concept="3cpWsn" id="p4fyl2YmU3" role="3cpWs9">
            <property role="TrG5h" value="modifier" />
            <node concept="17QB3L" id="p4fyl2YmT_" role="1tU5fm" />
            <node concept="3K4zz7" id="p4fyl2Yni6" role="33vP2m">
              <node concept="Xl_RD" id="p4fyl2YnkG" role="3K4GZi">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="3fqX7Q" id="p4fyl2Yu_8" role="3K4Cdx">
                <node concept="2OqwBi" id="p4fyl2Yu_a" role="3fr31v">
                  <node concept="2OqwBi" id="p4fyl2Yu_b" role="2Oq$k0">
                    <node concept="117lpO" id="p4fyl2Yu_c" role="2Oq$k0" />
                    <node concept="3TrcHB" id="p4fyl2Yu_d" role="2OqNvi">
                      <ref role="3TsBF5" to="anwi:p4fyl2V4xb" resolve="modifier" />
                    </node>
                  </node>
                  <node concept="21noJN" id="p4fyl2Yu_e" role="2OqNvi">
                    <node concept="21nZrQ" id="p4fyl2Yu_f" role="21noJM">
                      <ref role="21nZrZ" to="3nll:p4fyl2V4xh" resolve="public" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="p4fyl2YoYg" role="3K4E3e">
                <node concept="Xl_RD" id="p4fyl2YoZK" role="3uHU7w">
                  <property role="Xl_RC" value=" " />
                </node>
                <node concept="2OqwBi" id="p4fyl2Ynj8" role="3uHU7B">
                  <node concept="2OqwBi" id="p4fyl2Ynj9" role="2Oq$k0">
                    <node concept="117lpO" id="p4fyl2Ynja" role="2Oq$k0" />
                    <node concept="3TrcHB" id="p4fyl2Ynjb" role="2OqNvi">
                      <ref role="3TsBF5" to="anwi:p4fyl2V4xb" resolve="modifier" />
                    </node>
                  </node>
                  <node concept="1XCIdh" id="p4fyl2Ynjc" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="p4fyl2Yq_N" role="3cqZAp">
          <node concept="3cpWsn" id="p4fyl2Yq_Q" role="3cpWs9">
            <property role="TrG5h" value="overrideKeyword" />
            <node concept="17QB3L" id="p4fyl2Yq_L" role="1tU5fm" />
            <node concept="3K4zz7" id="p4fyl2YrCE" role="33vP2m">
              <node concept="Xl_RD" id="p4fyl2YrDw" role="3K4E3e">
                <property role="Xl_RC" value="override " />
              </node>
              <node concept="Xl_RD" id="p4fyl2YrFq" role="3K4GZi">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="p4fyl2YqXm" role="3K4Cdx">
                <node concept="117lpO" id="p4fyl2YqKY" role="2Oq$k0" />
                <node concept="3TrcHB" id="p4fyl2YraH" role="2OqNvi">
                  <ref role="3TsBF5" to="anwi:p4fyl2WFYr" resolve="isOverriding" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="p4fyl2Yp8_" role="3cqZAp">
          <node concept="3cpWsn" id="p4fyl2Yp8C" role="3cpWs9">
            <property role="TrG5h" value="keyword" />
            <node concept="17QB3L" id="p4fyl2Yp8z" role="1tU5fm" />
            <node concept="3K4zz7" id="p4fyl2Yq8Q" role="33vP2m">
              <node concept="Xl_RD" id="p4fyl2Yq9G" role="3K4E3e">
                <property role="Xl_RC" value="var " />
              </node>
              <node concept="Xl_RD" id="p4fyl2YqbA" role="3K4GZi">
                <property role="Xl_RC" value="val " />
              </node>
              <node concept="2OqwBi" id="p4fyl2YpvT" role="3K4Cdx">
                <node concept="117lpO" id="p4fyl2Ypjx" role="2Oq$k0" />
                <node concept="3TrcHB" id="p4fyl2YpHg" role="2OqNvi">
                  <ref role="3TsBF5" to="anwi:p4fyl2V4x8" resolve="isMutable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="p4fyl2YnlM" role="3cqZAp" />
        <node concept="lc7rE" id="4p0keayGWs5" role="3cqZAp">
          <node concept="l9hG8" id="p4fyl2Yijo" role="lcghm">
            <node concept="37vLTw" id="p4fyl2Youm" role="lb14g">
              <ref role="3cqZAo" node="p4fyl2YmU3" resolve="modifier" />
            </node>
          </node>
          <node concept="l9hG8" id="p4fyl2Ys9s" role="lcghm">
            <node concept="37vLTw" id="p4fyl2YsfY" role="lb14g">
              <ref role="3cqZAo" node="p4fyl2Yq_Q" resolve="overrideKeyword" />
            </node>
          </node>
          <node concept="l9hG8" id="p4fyl2Yqk4" role="lcghm">
            <node concept="37vLTw" id="p4fyl2Yqq$" role="lb14g">
              <ref role="3cqZAo" node="p4fyl2Yp8C" resolve="keyword" />
            </node>
          </node>
          <node concept="l9hG8" id="4p0keayGWsx" role="lcghm">
            <node concept="2OqwBi" id="4p0keayGX5z" role="lb14g">
              <node concept="117lpO" id="4p0keayGWyL" role="2Oq$k0" />
              <node concept="3TrcHB" id="4p0keayGXn7" role="2OqNvi">
                <ref role="3TsBF5" to="anwi:1DRRhzqSLFN" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4p0keayGXvD" role="lcghm">
            <property role="lacIc" value=" : " />
          </node>
          <node concept="l9hG8" id="4yUYSn0GKHe" role="lcghm">
            <node concept="37vLTw" id="p4fyl2YtMy" role="lb14g">
              <ref role="3cqZAo" node="p4fyl2YsON" resolve="mappedType" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4p0keayHgH9">
    <property role="3GE5qa" value="typing" />
    <ref role="WuzLi" to="m7gy:4p0keayHgH6" resolve="IDataTypeKotlinOutput" />
    <node concept="11bSqf" id="4p0keayHgHa" role="11c4hB">
      <node concept="3clFbS" id="4p0keayHgHb" role="2VODD2">
        <node concept="lc7rE" id="4p0keayHvIj" role="3cqZAp">
          <node concept="l9hG8" id="4p0keayHvIJ" role="lcghm">
            <node concept="2OqwBi" id="2Np_kya26xb" role="lb14g">
              <node concept="2OqwBi" id="2Np_kya26xc" role="2Oq$k0">
                <node concept="117lpO" id="2Np_kya26xd" role="2Oq$k0" />
                <node concept="2qgKlT" id="2Np_kya26xe" role="2OqNvi">
                  <ref role="37wK5l" to="opxm:2Np_kya0nph" resolve="converter" />
                </node>
              </node>
              <node concept="liA8E" id="2Np_kya26xf" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                <node concept="2OqwBi" id="2Np_kya26xg" role="37wK5m">
                  <node concept="117lpO" id="2Np_kya26xh" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2Np_kya26xi" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:4yUYSn0hQWj" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4yUYSn0x69N">
    <property role="3GE5qa" value="querySide.query" />
    <ref role="WuzLi" to="m7gy:3GrpC3f1Wim" resolve="QueryInterfaceKotlinOutput" />
    <node concept="29tfMY" id="4yUYSn0x69O" role="29tGrW">
      <node concept="3clFbS" id="4yUYSn0x69P" role="2VODD2">
        <node concept="3clFbF" id="4yUYSn0x6g6" role="3cqZAp">
          <node concept="Xl_RD" id="4yUYSn0x6g5" role="3clFbG">
            <property role="Xl_RC" value="Query" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="4yUYSn0x6hu" role="1Knhgg">
      <node concept="3clFbS" id="4yUYSn0x6hw" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUAZUgv" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUAZU$v" role="3clFbG">
            <node concept="117lpO" id="4b$xqUAZUgu" role="2Oq$k0" />
            <node concept="2qgKlT" id="4b$xqUAZUJn" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="4yUYSn0x6nO" role="33IsuW">
      <node concept="3clFbS" id="4yUYSn0x6nP" role="2VODD2">
        <node concept="3clFbF" id="4yUYSn0x6os" role="3cqZAp">
          <node concept="2OqwBi" id="4yUYSn0x75n" role="3clFbG">
            <node concept="Rm8GO" id="4yUYSn0x6pK" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="4yUYSn0x80x" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="4yUYSn0xcN6" role="11c4hB">
      <node concept="3clFbS" id="4yUYSn0xcN7" role="2VODD2">
        <node concept="lc7rE" id="4yUYSn0xdoA" role="3cqZAp">
          <node concept="1bDJIP" id="4yUYSn0xdp7" role="lcghm">
            <ref role="1rvKf6" node="4Wa3rAG8di5" resolve="_package" />
            <node concept="2OqwBi" id="4b$xqUAZUSv" role="1ryhcI">
              <node concept="117lpO" id="4b$xqUAZUSc" role="2Oq$k0" />
              <node concept="2qgKlT" id="4b$xqUAZUTL" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBcV62" resolve="getPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4b$xqUB7gdm" role="3cqZAp" />
        <node concept="lc7rE" id="4yUYSn0xcX4" role="3cqZAp">
          <node concept="1bDJIP" id="4yUYSn0xcXw" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="Xl_RD" id="4yUYSn0xdl5" role="1ryhcI">
              <property role="Xl_RC" value="Query&lt;out Result&gt;" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4b$xqUBiB6K">
    <property role="3GE5qa" value="querySide.dto" />
    <ref role="WuzLi" to="m7gy:4b$xqUBhCS1" resolve="DtoKotlinOutput" />
    <node concept="29tfMY" id="4b$xqUBiB6L" role="29tGrW">
      <node concept="3clFbS" id="4b$xqUBiB6M" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBiBd3" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBiBXZ" role="3clFbG">
            <node concept="2OqwBi" id="4b$xqUBiBwI" role="2Oq$k0">
              <node concept="117lpO" id="4b$xqUBiBd2" role="2Oq$k0" />
              <node concept="3TrEf2" id="4b$xqUBiBGK" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:4b$xqUBgElD" resolve="dto" />
              </node>
            </node>
            <node concept="3TrcHB" id="4b$xqUBiCiQ" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="4b$xqUBiCoY" role="1Knhgg">
      <node concept="3clFbS" id="4b$xqUBiCp0" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBiCqg" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBiCqN" role="3clFbG">
            <node concept="117lpO" id="4b$xqUBiCqf" role="2Oq$k0" />
            <node concept="2qgKlT" id="4b$xqUBiCxu" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="4b$xqUBiCyj" role="33IsuW">
      <node concept="3clFbS" id="4b$xqUBiCyk" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBiC$n" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBiDdE" role="3clFbG">
            <node concept="Rm8GO" id="4b$xqUBiCB7" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="4b$xqUBiDFw" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="4b$xqUBiDI2" role="11c4hB">
      <node concept="3clFbS" id="4b$xqUBiDI3" role="2VODD2">
        <node concept="lc7rE" id="2Np_kya4GvB" role="3cqZAp">
          <node concept="1bDJIP" id="2Np_kya4IdQ" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="2Np_kya4Igg" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="4b$xqUBiDPE" role="3cqZAp" />
        <node concept="lc7rE" id="4b$xqUBiEqB" role="3cqZAp">
          <node concept="1bDJIP" id="4b$xqUBiEse" role="lcghm">
            <ref role="1rvKf6" node="4b$xqUAZJaE" resolve="_dataclass" />
            <node concept="2OqwBi" id="4b$xqUBiEJO" role="1ryhcI">
              <node concept="2OqwBi" id="4b$xqUBiEvY" role="2Oq$k0">
                <node concept="117lpO" id="4b$xqUBiEtA" role="2Oq$k0" />
                <node concept="3TrEf2" id="4b$xqUBiExg" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:4b$xqUBgElD" resolve="dto" />
                </node>
              </node>
              <node concept="3TrcHB" id="4b$xqUBiF2f" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4b$xqUBiF7C" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3izx1p" id="4b$xqUBiFpQ" role="3cqZAp">
          <node concept="3clFbS" id="4b$xqUBiFpS" role="3izTki">
            <node concept="lc7rE" id="p4fyl5LHHJ" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl5LHJ2" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LJ8P" resolve="parameters" />
                <node concept="2OqwBi" id="p4fyl5LRhX" role="1ryhcI">
                  <node concept="117lpO" id="p4fyl5LR0W" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="p4fyl5LR$K" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:4yIxVQyOSDg" resolve="parameters" />
                  </node>
                </node>
                <node concept="2OqwBi" id="p4fyl5LQzj" role="1ryhcI">
                  <node concept="2OqwBi" id="p4fyl5LQ72" role="2Oq$k0">
                    <node concept="117lpO" id="p4fyl5LPUD" role="2Oq$k0" />
                    <node concept="3TrEf2" id="p4fyl5LQkG" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:4b$xqUBgElD" resolve="dto" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="p4fyl5LQPX" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4b$xqUBiWfC" role="3cqZAp">
          <node concept="la8eA" id="4b$xqUBiXXX" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4b$xqUBkijL">
    <property role="3GE5qa" value="commandSide" />
    <ref role="WuzLi" to="m7gy:4b$xqUBkeCY" resolve="ValueObjectKotlinOutput" />
    <node concept="11bSqf" id="4b$xqUBkijM" role="11c4hB">
      <node concept="3clFbS" id="4b$xqUBkijN" role="2VODD2">
        <node concept="lc7rE" id="2Np_kya5fgW" role="3cqZAp">
          <node concept="1bDJIP" id="2Np_kya5hdx" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="2Np_kya5hfV" role="1ryhcI" />
          </node>
        </node>
        <node concept="lc7rE" id="4b$xqUBklNu" role="3cqZAp">
          <node concept="1bDJIP" id="4b$xqUBklP4" role="lcghm">
            <ref role="1rvKf6" node="4b$xqUAZJaE" resolve="_dataclass" />
            <node concept="2OqwBi" id="4b$xqUBkm7u" role="1ryhcI">
              <node concept="2OqwBi" id="4b$xqUBklQJ" role="2Oq$k0">
                <node concept="117lpO" id="4b$xqUBklQs" role="2Oq$k0" />
                <node concept="3TrEf2" id="4b$xqUBklS1" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:4b$xqUBi0l8" resolve="valueObject" />
                </node>
              </node>
              <node concept="3TrcHB" id="4b$xqUBkmu2" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4b$xqUBkmAA" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3izx1p" id="4b$xqUBkmPn" role="3cqZAp">
          <node concept="3clFbS" id="4b$xqUBkmPp" role="3izTki">
            <node concept="lc7rE" id="p4fyl5MPnM" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl5MPqr" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LJ8P" resolve="parameters" />
                <node concept="2OqwBi" id="p4fyl5MPBf" role="1ryhcI">
                  <node concept="117lpO" id="p4fyl5MPqQ" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="p4fyl5MPOT" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:p4fykW27X5" resolve="parameters" />
                  </node>
                </node>
                <node concept="2OqwBi" id="p4fyl5MQyZ" role="1ryhcI">
                  <node concept="2OqwBi" id="p4fyl5MQ39" role="2Oq$k0">
                    <node concept="117lpO" id="p4fyl5MPQv" role="2Oq$k0" />
                    <node concept="3TrEf2" id="p4fyl5MQjh" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:4b$xqUBi0l8" resolve="valueObject" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="p4fyl5MQTQ" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4b$xqUBneLU" role="3cqZAp">
          <node concept="la8eA" id="4b$xqUBngxb" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
        <node concept="3clFbJ" id="2Np_kya7iaB" role="3cqZAp">
          <node concept="3clFbS" id="2Np_kya7iaD" role="3clFbx">
            <node concept="3cpWs6" id="2Np_kya7oO8" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2Np_kya7mz6" role="3clFbw">
            <node concept="2OqwBi" id="2Np_kya7k82" role="2Oq$k0">
              <node concept="117lpO" id="2Np_kya7jSA" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2Np_kya7kmt" role="2OqNvi">
                <ref role="3TtcxE" to="anwi:2Np_kya7awX" resolve="methods" />
              </node>
            </node>
            <node concept="1v1jN8" id="2Np_kya7oLS" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="2Np_kya7q$X" role="3cqZAp">
          <node concept="la8eA" id="2Np_kya7sjT" role="lcghm">
            <property role="lacIc" value=" { " />
          </node>
          <node concept="1bDJIP" id="2Np_kya7sud" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="2Np_kya7svF" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="2Np_kyadxb$" role="3cqZAp">
          <node concept="3clFbS" id="2Np_kyadxbA" role="3izTki">
            <node concept="lc7rE" id="2Np_kyaM$rk" role="3cqZAp">
              <node concept="1bDJIP" id="2Np_kyaM$w5" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="2Np_kyaM$GT" role="1ryhcI">
                  <node concept="117lpO" id="2Np_kyaM$ww" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2Np_kyaM$Uz" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:2Np_kya7awX" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2Np_kya7umy" role="3cqZAp">
          <node concept="la8eA" id="2Np_kya7w5y" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="4b$xqUBkikA" role="29tGrW">
      <node concept="3clFbS" id="4b$xqUBkikB" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBkiqS" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBkjcQ" role="3clFbG">
            <node concept="2OqwBi" id="4b$xqUBkiIz" role="2Oq$k0">
              <node concept="117lpO" id="4b$xqUBkiqR" role="2Oq$k0" />
              <node concept="3TrEf2" id="4b$xqUBkiU_" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:4b$xqUBi0l8" resolve="valueObject" />
              </node>
            </node>
            <node concept="3TrcHB" id="4b$xqUBkjzs" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="4b$xqUBkjBr" role="1Knhgg">
      <node concept="3clFbS" id="4b$xqUBkjBs" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBkjCF" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBkjDe" role="3clFbG">
            <node concept="117lpO" id="4b$xqUBkjCE" role="2Oq$k0" />
            <node concept="2qgKlT" id="4b$xqUBkjJT" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="4b$xqUBkjWj" role="33IsuW">
      <node concept="3clFbS" id="4b$xqUBkjWk" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBkk1v" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBkkK$" role="3clFbG">
            <node concept="Rm8GO" id="4b$xqUBkk4f" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="4b$xqUBkleq" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4b$xqUBkHm3">
    <property role="3GE5qa" value="commandSide.entity" />
    <ref role="WuzLi" to="m7gy:4b$xqUBk_kL" resolve="EntitiyKotlinOutput" />
    <node concept="11bSqf" id="4b$xqUBkHm4" role="11c4hB">
      <node concept="3clFbS" id="4b$xqUBkHm5" role="2VODD2">
        <node concept="3cpWs8" id="6ERg2TtxVB" role="3cqZAp">
          <node concept="3cpWsn" id="6ERg2TtxVC" role="3cpWs9">
            <property role="TrG5h" value="mapper" />
            <node concept="3uibUv" id="6ERg2TtxVD" role="1tU5fm">
              <ref role="3uigEE" to="cpc8:3JSfbhYdlGO" resolve="ConceptMapper" />
            </node>
            <node concept="2OqwBi" id="6ERg2TtxVE" role="33vP2m">
              <node concept="117lpO" id="6ERg2TtxVF" role="2Oq$k0" />
              <node concept="2qgKlT" id="6ERg2TtxVG" role="2OqNvi">
                <ref role="37wK5l" to="opxm:Sy32QQY46b" resolve="mapper" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ERg2TtxVH" role="3cqZAp">
          <node concept="3cpWsn" id="6ERg2TtxVI" role="3cpWs9">
            <property role="TrG5h" value="converter" />
            <node concept="3uibUv" id="6ERg2TtxVJ" role="1tU5fm">
              <ref role="3uigEE" to="cpc8:4p0keayIwoL" resolve="DependencyTextConverter" />
            </node>
            <node concept="2OqwBi" id="6ERg2TtxVK" role="33vP2m">
              <node concept="117lpO" id="6ERg2TtxVL" role="2Oq$k0" />
              <node concept="2qgKlT" id="6ERg2TtxVM" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBeLAT" resolve="converter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ERg2TtxVN" role="3cqZAp">
          <node concept="3cpWsn" id="6ERg2TtxVO" role="3cpWs9">
            <property role="TrG5h" value="entity" />
            <node concept="3Tqbb2" id="6ERg2TtxVP" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
            </node>
            <node concept="2OqwBi" id="6ERg2TtxVQ" role="33vP2m">
              <node concept="117lpO" id="6ERg2TtxVR" role="2Oq$k0" />
              <node concept="3TrEf2" id="6ERg2TtxVS" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:4b$xqUBigd2" resolve="entity" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ERg2TtxVT" role="3cqZAp">
          <node concept="3cpWsn" id="6ERg2TtxVU" role="3cpWs9">
            <property role="TrG5h" value="idType" />
            <node concept="17QB3L" id="6ERg2TtxVV" role="1tU5fm" />
            <node concept="2OqwBi" id="6ERg2TtxVW" role="33vP2m">
              <node concept="37vLTw" id="6ERg2TtxVX" role="2Oq$k0">
                <ref role="3cqZAo" node="6ERg2TtxVI" resolve="converter" />
              </node>
              <node concept="liA8E" id="6ERg2TtxVY" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                <node concept="2OqwBi" id="6ERg2TtxVZ" role="37wK5m">
                  <node concept="3TrEf2" id="6ERg2TtxW0" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7fqk8p3V868" resolve="idType" />
                  </node>
                  <node concept="37vLTw" id="6ERg2TtxW1" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ERg2TtxVO" resolve="entity" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ERg2TtxWk" role="3cqZAp" />
        <node concept="lc7rE" id="6ERg2TtxWl" role="3cqZAp">
          <node concept="1bDJIP" id="6ERg2TtxWm" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="6ERg2TtxWn" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="6ERg2TtxWo" role="3cqZAp" />
        <node concept="lc7rE" id="6ERg2TtxWp" role="3cqZAp">
          <node concept="1bDJIP" id="6ERg2TtxWq" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="2OqwBi" id="6ERg2TtxWr" role="1ryhcI">
              <node concept="3TrcHB" id="6ERg2TtxWs" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="37vLTw" id="6ERg2TtxWt" role="2Oq$k0">
                <ref role="3cqZAo" node="6ERg2TtxVO" resolve="entity" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6ERg2TtxWu" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3izx1p" id="6ERg2TtxWv" role="3cqZAp">
          <node concept="3clFbS" id="6ERg2TtxWw" role="3izTki">
            <node concept="lc7rE" id="6ERg2TtxWx" role="3cqZAp">
              <node concept="1bDJIP" id="6ERg2TtxWy" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LJ8P" resolve="parameters" />
                <node concept="2OqwBi" id="6ERg2TtxWz" role="1ryhcI">
                  <node concept="117lpO" id="6ERg2TtxW$" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6ERg2TtxW_" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:p4fykW$8i_" resolve="parameters" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6ERg2TtxWA" role="1ryhcI">
                  <node concept="2OqwBi" id="6ERg2TtxWB" role="2Oq$k0">
                    <node concept="117lpO" id="6ERg2TtxWC" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6ERg2TtxWD" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:4b$xqUBigd2" resolve="entity" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="6ERg2TtxWE" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6ERg2TtxWF" role="3cqZAp">
          <node concept="la8eA" id="6ERg2TtxWG" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="6ERg2TtxWK" role="lcghm">
            <node concept="10M0yZ" id="6ERg2TuU5i" role="lb14g">
              <ref role="3cqZAo" to="cpc8:6ERg2T3qv7" resolve="ENTITY_BASE_CLASS_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="6ERg2TtxWM" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
          <node concept="l9hG8" id="6ERg2TtxWN" role="lcghm">
            <node concept="37vLTw" id="6ERg2TtxWO" role="lb14g">
              <ref role="3cqZAo" node="6ERg2TtxVU" resolve="idType" />
            </node>
          </node>
          <node concept="la8eA" id="6ERg2TtxWS" role="lcghm">
            <property role="lacIc" value="&gt;(id) {" />
          </node>
          <node concept="1bDJIP" id="6ERg2TtxWT" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="6ERg2TtxWU" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ERg2TtxWV" role="3cqZAp" />
        <node concept="3izx1p" id="6ERg2TtxWW" role="3cqZAp">
          <node concept="3clFbS" id="6ERg2TtxWX" role="3izTki">
            <node concept="lc7rE" id="6ERg2TtxWY" role="3cqZAp">
              <node concept="1bDJIP" id="6ERg2TtxWZ" role="lcghm">
                <ref role="1rvKf6" node="p4fyl77GCR" resolve="properties" />
                <node concept="2OqwBi" id="6ERg2TtxX0" role="1ryhcI">
                  <node concept="37vLTw" id="6ERg2TtxX1" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ERg2TtxVO" resolve="entity" />
                  </node>
                  <node concept="2qgKlT" id="6ERg2TtxX2" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3DbZR$NYkue" resolve="properties" />
                  </node>
                </node>
                <node concept="37vLTw" id="6ERg2TtxX3" role="1ryhcI">
                  <ref role="3cqZAo" node="6ERg2TtxVC" resolve="mapper" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="6ERg2TtxX4" role="3cqZAp">
              <node concept="1bDJIP" id="6ERg2TtxX5" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="6ERg2TtxX6" role="1ryhcI">
                  <node concept="117lpO" id="6ERg2TtxX7" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6ERg2TtxX8" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:p4fykW$8iA" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6ERg2TtxX9" role="3cqZAp">
          <node concept="la8eA" id="6ERg2TtxXa" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
        <node concept="3clFbH" id="4b$xqUBkKc0" role="3cqZAp" />
      </node>
    </node>
    <node concept="29tfMY" id="4b$xqUBkHmT" role="29tGrW">
      <node concept="3clFbS" id="4b$xqUBkHmU" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBkHtb" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBkIef" role="3clFbG">
            <node concept="2OqwBi" id="4b$xqUBkHKQ" role="2Oq$k0">
              <node concept="117lpO" id="4b$xqUBkHta" role="2Oq$k0" />
              <node concept="3TrEf2" id="4b$xqUBkHWS" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:4b$xqUBigd2" resolve="entity" />
              </node>
            </node>
            <node concept="3TrcHB" id="4b$xqUBkIzn" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="4b$xqUBkIBd" role="1Knhgg">
      <node concept="3clFbS" id="4b$xqUBkIBe" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBkICt" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBkID0" role="3clFbG">
            <node concept="117lpO" id="4b$xqUBkICs" role="2Oq$k0" />
            <node concept="2qgKlT" id="4b$xqUBkIEk" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="4b$xqUBkIIy" role="33IsuW">
      <node concept="3clFbS" id="4b$xqUBkIIz" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBkIKA" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBkJFC" role="3clFbG">
            <node concept="Rm8GO" id="4b$xqUBkJzZ" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="4b$xqUBkK9u" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4b$xqUBkHmw">
    <property role="3GE5qa" value="commandSide.aggregate" />
    <ref role="WuzLi" to="m7gy:4b$xqUBk_kO" resolve="AggregateKotlinOutput" />
    <node concept="29tfMY" id="4b$xqUBkKdx" role="29tGrW">
      <node concept="3clFbS" id="4b$xqUBkKdy" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBkKjN" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBkL6N" role="3clFbG">
            <node concept="2OqwBi" id="4b$xqUBkKBu" role="2Oq$k0">
              <node concept="117lpO" id="4b$xqUBkKjM" role="2Oq$k0" />
              <node concept="3TrEf2" id="4b$xqUBkKNw" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:4b$xqUBih0W" resolve="aggregate" />
              </node>
            </node>
            <node concept="3TrcHB" id="4b$xqUBkLv8" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="4b$xqUBkLzl" role="1Knhgg">
      <node concept="3clFbS" id="4b$xqUBkLzm" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBkL$_" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBkL_8" role="3clFbG">
            <node concept="117lpO" id="4b$xqUBkL$$" role="2Oq$k0" />
            <node concept="2qgKlT" id="4b$xqUBkLAs" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="4b$xqUBkLEE" role="33IsuW">
      <node concept="3clFbS" id="4b$xqUBkLEF" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBkLGI" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBkMo9" role="3clFbG">
            <node concept="Rm8GO" id="4b$xqUBkLLA" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="4b$xqUBkMPZ" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="4b$xqUBkMSx" role="11c4hB">
      <node concept="3clFbS" id="4b$xqUBkMSy" role="2VODD2">
        <node concept="3cpWs8" id="1DRRhzt5R6a" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzt5R6b" role="3cpWs9">
            <property role="TrG5h" value="mapper" />
            <node concept="3uibUv" id="1DRRhzt5R16" role="1tU5fm">
              <ref role="3uigEE" to="cpc8:3JSfbhYdlGO" resolve="ConceptMapper" />
            </node>
            <node concept="2OqwBi" id="1DRRhzt5R6c" role="33vP2m">
              <node concept="117lpO" id="1DRRhzt5R6d" role="2Oq$k0" />
              <node concept="2qgKlT" id="1DRRhzt5R6e" role="2OqNvi">
                <ref role="37wK5l" to="opxm:Sy32QQY46b" resolve="mapper" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzt5xWE" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzt5xWF" role="3cpWs9">
            <property role="TrG5h" value="converter" />
            <node concept="3uibUv" id="1DRRhzt5xWG" role="1tU5fm">
              <ref role="3uigEE" to="cpc8:4p0keayIwoL" resolve="DependencyTextConverter" />
            </node>
            <node concept="2OqwBi" id="1DRRhzt5xWH" role="33vP2m">
              <node concept="117lpO" id="1DRRhzt5xWI" role="2Oq$k0" />
              <node concept="2qgKlT" id="1DRRhzt5xWJ" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBeLAT" resolve="converter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzt5_1E" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzt5_1F" role="3cpWs9">
            <property role="TrG5h" value="aggregate" />
            <node concept="3Tqbb2" id="1DRRhzt5_1i" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
            </node>
            <node concept="2OqwBi" id="1DRRhzt5_1G" role="33vP2m">
              <node concept="117lpO" id="1DRRhzt5_1H" role="2Oq$k0" />
              <node concept="3TrEf2" id="1DRRhzt5_1I" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:4b$xqUBih0W" resolve="aggregate" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzt5xWK" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzt5xWL" role="3cpWs9">
            <property role="TrG5h" value="idType" />
            <node concept="17QB3L" id="1DRRhzt5xWM" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzt5xWN" role="33vP2m">
              <node concept="37vLTw" id="1DRRhzt5xWO" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzt5xWF" resolve="converter" />
              </node>
              <node concept="liA8E" id="1DRRhzt5xWP" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                <node concept="2OqwBi" id="1DRRhzt5xWQ" role="37wK5m">
                  <node concept="3TrEf2" id="1DRRhzt5xWW" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:4NUTY$DwDN6" resolve="idType" />
                  </node>
                  <node concept="37vLTw" id="1DRRhzt5_iQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DRRhzt5_1F" resolve="aggregate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzt5xWX" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzt5xWY" role="3cpWs9">
            <property role="TrG5h" value="eventType" />
            <node concept="17QB3L" id="1DRRhzt5xWZ" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzt5xX0" role="33vP2m">
              <node concept="37vLTw" id="1DRRhzt5xX1" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzt5xWF" resolve="converter" />
              </node>
              <node concept="liA8E" id="1DRRhzt5xX2" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:7IRUqbcA1uk" resolve="convertEvent" />
                <node concept="2OqwBi" id="1DRRhzt5$ju" role="37wK5m">
                  <node concept="3TrEf2" id="1DRRhzt5$wP" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:1DRRhzrJ_Rj" resolve="substitudeEvent" />
                  </node>
                  <node concept="2OqwBi" id="1DRRhzt5_FG" role="2Oq$k0">
                    <node concept="117lpO" id="1DRRhzt5_wY" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1DRRhzt5_TU" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:1DRRhzrCEUZ" resolve="eventWrapper" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzt5HaJ" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzt5HaM" role="3cpWs9">
            <property role="TrG5h" value="interfaceName" />
            <node concept="17QB3L" id="1DRRhzt5HaH" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzt5Hq2" role="33vP2m">
              <node concept="37vLTw" id="1DRRhzt5HiR" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzt5xWF" resolve="converter" />
              </node>
              <node concept="liA8E" id="1DRRhzt5Hxx" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:1DRRhzt5DBo" resolve="convertAggregateConcreteInterface" />
                <node concept="37vLTw" id="1DRRhzt5I5P" role="37wK5m">
                  <ref role="3cqZAo" node="1DRRhzt5_1F" resolve="aggregate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzt5Atb" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzt5xXb" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzt5xXc" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="1DRRhzt5xXd" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzt5xXe" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzt5xXf" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzt5xXg" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="2OqwBi" id="1DRRhzt5xXh" role="1ryhcI">
              <node concept="3TrcHB" id="1DRRhzt5xXn" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="37vLTw" id="1DRRhztes6X" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzt5_1F" resolve="aggregate" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1DRRhztBj4C" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3izx1p" id="1DRRhztEvCa" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhztEvCc" role="3izTki">
            <node concept="lc7rE" id="p4fyl6vjyi" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl6vjz1" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LJ8P" resolve="parameters" />
                <node concept="2OqwBi" id="p4fyl6vjJP" role="1ryhcI">
                  <node concept="117lpO" id="p4fyl6vjzs" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="p4fyl6vjXv" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:p4fykWPSa0" resolve="parameters" />
                  </node>
                </node>
                <node concept="2OqwBi" id="p4fyl6vkmv" role="1ryhcI">
                  <node concept="2OqwBi" id="p4fyl6vk4g" role="2Oq$k0">
                    <node concept="117lpO" id="p4fyl6vk1s" role="2Oq$k0" />
                    <node concept="3TrEf2" id="p4fyl6vk5S" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:4b$xqUBih0W" resolve="aggregate" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="p4fyl6vkGI" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1DRRhztBjQt" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzt5xXo" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="1DRRhzt5Ixr" role="lcghm">
            <node concept="37vLTw" id="1DRRhzt5IAI" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzt5HaM" resolve="interfaceName" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzt5Ao0" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="l9hG8" id="1DRRhzt5xXp" role="lcghm">
            <node concept="10M0yZ" id="1DRRhzt5Acs" role="lb14g">
              <ref role="3cqZAo" to="cpc8:2Np_kya2A3Z" resolve="BASE_EVENT_AGGREGATE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzt5xXr" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
          <node concept="l9hG8" id="1DRRhzt5xXs" role="lcghm">
            <node concept="37vLTw" id="1DRRhzt5xXt" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzt5xWL" resolve="idType" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzt5xXu" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="l9hG8" id="1DRRhzt5xXv" role="lcghm">
            <node concept="37vLTw" id="1DRRhzt5xXw" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzt5xWY" resolve="eventType" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzt5xXx" role="lcghm">
            <property role="lacIc" value="&gt;(id) {" />
          </node>
          <node concept="1bDJIP" id="1DRRhzt5J72" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="1DRRhzt5Jc6" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhztBka2" role="3cqZAp" />
        <node concept="3izx1p" id="1DRRhzt5xXK" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzt5xXL" role="3izTki">
            <node concept="lc7rE" id="p4fyl781Ii" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl781Od" role="lcghm">
                <ref role="1rvKf6" node="p4fyl77GCR" resolve="properties" />
                <node concept="2OqwBi" id="p4fyl7824m" role="1ryhcI">
                  <node concept="37vLTw" id="p4fyl781OC" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DRRhzt5_1F" resolve="aggregate" />
                  </node>
                  <node concept="2qgKlT" id="p4fyl782oh" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3DbZR$NYzvO" resolve="properties" />
                  </node>
                </node>
                <node concept="37vLTw" id="p4fyl782sz" role="1ryhcI">
                  <ref role="3cqZAo" node="1DRRhzt5R6b" resolve="mapper" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1DRRhzt5xXM" role="3cqZAp">
              <node concept="1bDJIP" id="1DRRhzt5xXN" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="1DRRhzt5xXO" role="1ryhcI">
                  <node concept="117lpO" id="1DRRhzt5xXP" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1DRRhzt5xXQ" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:1DRRhzt5JyR" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1DRRhzt5xXU" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzt5xXV" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4b$xqUBouVz">
    <property role="3GE5qa" value="commandSide.command" />
    <ref role="WuzLi" to="m7gy:4b$xqUBouBf" resolve="CommandKotlinOutput" />
    <node concept="29tfMY" id="4b$xqUBov1P" role="29tGrW">
      <node concept="3clFbS" id="4b$xqUBov1Q" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBov2l" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBovQ7" role="3clFbG">
            <node concept="2OqwBi" id="4b$xqUBovm0" role="2Oq$k0">
              <node concept="117lpO" id="4b$xqUBov2k" role="2Oq$k0" />
              <node concept="3TrEf2" id="4b$xqUBovy2" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:4b$xqUBnBBf" resolve="command" />
              </node>
            </node>
            <node concept="3TrcHB" id="4b$xqUBowfD" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="4b$xqUBowkN" role="1Knhgg">
      <node concept="3clFbS" id="4b$xqUBowkP" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBowm5" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBowmC" role="3clFbG">
            <node concept="117lpO" id="4b$xqUBowm4" role="2Oq$k0" />
            <node concept="2qgKlT" id="4b$xqUBowRj" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="4b$xqUBowS8" role="33IsuW">
      <node concept="3clFbS" id="4b$xqUBowS9" role="2VODD2">
        <node concept="3clFbF" id="4b$xqUBox9i" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBoy7z" role="3clFbG">
            <node concept="Rm8GO" id="4b$xqUBoxU8" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="4b$xqUBoy_p" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="4b$xqUBoyC1" role="11c4hB">
      <node concept="3clFbS" id="4b$xqUBoyC2" role="2VODD2">
        <node concept="3cpWs8" id="51Z40VwChVO" role="3cqZAp">
          <node concept="3cpWsn" id="51Z40VwChVP" role="3cpWs9">
            <property role="TrG5h" value="command" />
            <node concept="3Tqbb2" id="51Z40VwChVr" role="1tU5fm">
              <ref role="ehGHo" to="3nll:7fqk8p43ygY" resolve="Command" />
            </node>
            <node concept="2OqwBi" id="51Z40VwChVQ" role="33vP2m">
              <node concept="117lpO" id="51Z40VwChVR" role="2Oq$k0" />
              <node concept="3TrEf2" id="51Z40VwChVS" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:4b$xqUBnBBf" resolve="command" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51Z40VBujo7" role="3cqZAp">
          <node concept="3cpWsn" id="51Z40VBujo8" role="3cpWs9">
            <property role="TrG5h" value="commandWrapper" />
            <node concept="3Tqbb2" id="51Z40VBujnJ" role="1tU5fm">
              <ref role="ehGHo" to="anwi:7x9oRL8JBrw" resolve="CommandWrapperInterfaceOutput" />
            </node>
            <node concept="2OqwBi" id="51Z40VBujo9" role="33vP2m">
              <node concept="117lpO" id="51Z40VBujoa" role="2Oq$k0" />
              <node concept="2qgKlT" id="51Z40VBujob" role="2OqNvi">
                <ref role="37wK5l" to="igqx:51Z40VBuhV2" resolve="getParentCommandWrapper" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VwChdU" role="3cqZAp" />
        <node concept="3clFbJ" id="51Z40VBuj$R" role="3cqZAp">
          <node concept="3clFbS" id="51Z40VBuj$T" role="3clFbx">
            <node concept="lc7rE" id="2Np_kya4MNt" role="3cqZAp">
              <node concept="1bDJIP" id="2Np_kya4MUH" role="lcghm">
                <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
                <node concept="117lpO" id="2Np_kya4N0m" role="1ryhcI" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="51Z40VBujOj" role="3clFbw">
            <node concept="37vLTw" id="51Z40VBujCA" role="2Oq$k0">
              <ref role="3cqZAo" node="51Z40VBujo8" resolve="commandWrapper" />
            </node>
            <node concept="3w_OXm" id="51Z40VBukdM" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="4b$xqUBoyNE" role="3cqZAp" />
        <node concept="3clFbJ" id="51Z40VwCeyO" role="3cqZAp">
          <node concept="3clFbS" id="51Z40VwCeyP" role="3clFbx">
            <node concept="lc7rE" id="51Z40VwCeyQ" role="3cqZAp">
              <node concept="1bDJIP" id="51Z40VwCeyR" role="lcghm">
                <ref role="1rvKf6" node="4b$xqUAZJaE" resolve="_dataclass" />
                <node concept="2OqwBi" id="51Z40VwCeyS" role="1ryhcI">
                  <node concept="3TrcHB" id="51Z40VwCeyW" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                  <node concept="37vLTw" id="51Z40VwCicr" role="2Oq$k0">
                    <ref role="3cqZAo" node="51Z40VwChVP" resolve="command" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="51Z40VwCeyX" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
            </node>
            <node concept="3izx1p" id="51Z40VwCeyZ" role="3cqZAp">
              <node concept="3clFbS" id="51Z40VwCez0" role="3izTki">
                <node concept="lc7rE" id="p4fyl5MGkb" role="3cqZAp">
                  <node concept="1bDJIP" id="p4fyl5MGkU" role="lcghm">
                    <ref role="1rvKf6" node="p4fyl5LJ8P" resolve="parameters" />
                    <node concept="2OqwBi" id="p4fyl5MGxI" role="1ryhcI">
                      <node concept="117lpO" id="p4fyl5MGll" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="p4fyl5MGJo" role="2OqNvi">
                        <ref role="3TtcxE" to="anwi:p4fykY80kE" resolve="parameters" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="p4fyl5MHlK" role="1ryhcI">
                      <node concept="37vLTw" id="p4fyl5MH55" role="2Oq$k0">
                        <ref role="3cqZAo" node="51Z40VwChVP" resolve="command" />
                      </node>
                      <node concept="3TrcHB" id="p4fyl5MHEW" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="51Z40VwCezi" role="3cqZAp">
              <node concept="la8eA" id="51Z40VwCezj" role="lcghm">
                <property role="lacIc" value=")" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="51Z40VwCezk" role="3clFbw">
            <node concept="2qgKlT" id="51Z40VwCezo" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5QsWOhXN7cG" resolve="hasParameters" />
            </node>
            <node concept="37vLTw" id="51Z40VwCi8I" role="2Oq$k0">
              <ref role="3cqZAo" node="51Z40VwChVP" resolve="command" />
            </node>
          </node>
          <node concept="9aQIb" id="51Z40VwCezp" role="9aQIa">
            <node concept="3clFbS" id="51Z40VwCezq" role="9aQI4">
              <node concept="lc7rE" id="51Z40VwCezr" role="3cqZAp">
                <node concept="1bDJIP" id="51Z40VwCezs" role="lcghm">
                  <ref role="1rvKf6" node="4yUYSn0FvHs" resolve="_object" />
                  <node concept="2OqwBi" id="51Z40VwCezt" role="1ryhcI">
                    <node concept="3TrcHB" id="51Z40VwCezx" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="37vLTw" id="51Z40VwCihU" role="2Oq$k0">
                      <ref role="3cqZAo" node="51Z40VwChVP" resolve="command" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VwCeu3" role="3cqZAp" />
        <node concept="lc7rE" id="4b$xqUBoyOh" role="3cqZAp">
          <node concept="la8eA" id="4b$xqUBoyOi" role="lcghm">
            <property role="lacIc" value=": " />
          </node>
          <node concept="l9hG8" id="51Z40VBukmp" role="lcghm">
            <node concept="3K4zz7" id="51Z40VBukZI" role="lb14g">
              <node concept="2OqwBi" id="51Z40VBungL" role="3K4GZi">
                <node concept="2OqwBi" id="51Z40VBulT8" role="2Oq$k0">
                  <node concept="37vLTw" id="51Z40VBul71" role="2Oq$k0">
                    <ref role="3cqZAo" node="51Z40VBujo8" resolve="commandWrapper" />
                  </node>
                  <node concept="3TrEf2" id="51Z40VBum4_" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:7x9oRL8JBrz" resolve="substitudeCommand" />
                  </node>
                </node>
                <node concept="3TrcHB" id="51Z40VBunCW" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="2OqwBi" id="51Z40VBukpV" role="3K4Cdx">
                <node concept="37vLTw" id="51Z40VBukpc" role="2Oq$k0">
                  <ref role="3cqZAo" node="51Z40VBujo8" resolve="commandWrapper" />
                </node>
                <node concept="3w_OXm" id="51Z40VBukrL" role="2OqNvi" />
              </node>
              <node concept="10M0yZ" id="51Z40VBul13" role="3K4E3e">
                <ref role="3cqZAo" to="cpc8:4b$xqUBr8NX" resolve="COMMAND_INTERFACE_NAME" />
                <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4b$xqUBpNWJ">
    <property role="TrG5h" value="TextGenHelper" />
    <node concept="2tJIrI" id="4b$xqUBpNYH" role="jymVt" />
    <node concept="2YIFZL" id="4b$xqUBpTVh" role="jymVt">
      <property role="TrG5h" value="generateClass" />
      <node concept="37vLTG" id="4b$xqUBpUO2" role="3clF46">
        <property role="TrG5h" value="className" />
        <node concept="17QB3L" id="4b$xqUBpUWE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4b$xqUBpUYp" role="3clF46">
        <property role="TrG5h" value="parameters" />
        <node concept="A3Dl8" id="4b$xqUBpV3n" role="1tU5fm">
          <node concept="3Tqbb2" id="4b$xqUBpV46" role="A3Ik2">
            <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4b$xqUBpTVk" role="1B3o_S" />
      <node concept="3clFbS" id="4b$xqUBpTVl" role="3clF47">
        <node concept="3cpWs8" id="4b$xqUBpO0U" role="3cqZAp">
          <node concept="3cpWsn" id="4b$xqUBpO0V" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4b$xqUBpO0W" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="4b$xqUBpO0X" role="33vP2m">
              <node concept="1pGfFk" id="4b$xqUBpO0Y" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4b$xqUBpO0Z" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBpO10" role="3clFbG">
            <node concept="37vLTw" id="4b$xqUBpO11" role="2Oq$k0">
              <ref role="3cqZAo" node="4b$xqUBpO0V" resolve="builder" />
            </node>
            <node concept="liA8E" id="4b$xqUBpO12" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="4b$xqUBpO13" role="37wK5m">
                <property role="Xl_RC" value="class ${CLASSNAME} (${PARAMETER}){\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4b$xqUBpO14" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBpO15" role="3clFbG">
            <node concept="37vLTw" id="4b$xqUBpO16" role="2Oq$k0">
              <ref role="3cqZAo" node="4b$xqUBpO0V" resolve="builder" />
            </node>
            <node concept="liA8E" id="4b$xqUBpO17" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="4b$xqUBpO18" role="37wK5m">
                <property role="Xl_RC" value="}" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4b$xqUBpO1f" role="3cqZAp" />
        <node concept="3clFbF" id="4b$xqUBpO1g" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBpO1h" role="3clFbG">
            <property role="hSjvv" value="true" />
            <node concept="liA8E" id="4b$xqUBpO1j" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
              <node concept="Xl_RD" id="4b$xqUBpO1k" role="37wK5m">
                <property role="Xl_RC" value="${CLASSNAME}" />
              </node>
              <node concept="37vLTw" id="4b$xqUBpW6M" role="37wK5m">
                <ref role="3cqZAo" node="4b$xqUBpUO2" resolve="className" />
              </node>
            </node>
            <node concept="2OqwBi" id="4b$xqUBpWv7" role="2Oq$k0">
              <property role="hSjvv" value="true" />
              <node concept="37vLTw" id="4b$xqUBpWv8" role="2Oq$k0">
                <ref role="3cqZAo" node="4b$xqUBpO0V" resolve="builder" />
              </node>
              <node concept="liA8E" id="4b$xqUBpWv9" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4b$xqUBpTWi" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4b$xqUBpNYM" role="jymVt" />
    <node concept="2YIFZL" id="4b$xqUBq73k" role="jymVt">
      <property role="TrG5h" value="generateObject" />
      <node concept="37vLTG" id="4b$xqUBq73l" role="3clF46">
        <property role="TrG5h" value="className" />
        <node concept="17QB3L" id="4b$xqUBq73m" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4b$xqUBq73n" role="3clF46">
        <property role="TrG5h" value="parameters" />
        <node concept="A3Dl8" id="4b$xqUBq73o" role="1tU5fm">
          <node concept="3Tqbb2" id="4b$xqUBq73p" role="A3Ik2">
            <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4b$xqUBq73q" role="1B3o_S" />
      <node concept="3clFbS" id="4b$xqUBq73r" role="3clF47">
        <node concept="3cpWs8" id="4b$xqUBq73s" role="3cqZAp">
          <node concept="3cpWsn" id="4b$xqUBq73t" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4b$xqUBq73u" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="4b$xqUBq73v" role="33vP2m">
              <node concept="1pGfFk" id="4b$xqUBq73w" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4b$xqUBq73x" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBq73y" role="3clFbG">
            <node concept="37vLTw" id="4b$xqUBq73z" role="2Oq$k0">
              <ref role="3cqZAo" node="4b$xqUBq73t" resolve="builder" />
            </node>
            <node concept="liA8E" id="4b$xqUBq73$" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="4b$xqUBq73_" role="37wK5m">
                <property role="Xl_RC" value="object ${CLASSNAME} {\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4b$xqUBq73A" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBq73B" role="3clFbG">
            <node concept="37vLTw" id="4b$xqUBq73C" role="2Oq$k0">
              <ref role="3cqZAo" node="4b$xqUBq73t" resolve="builder" />
            </node>
            <node concept="liA8E" id="4b$xqUBq73D" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="4b$xqUBq73E" role="37wK5m">
                <property role="Xl_RC" value="}" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4b$xqUBq73F" role="3cqZAp" />
        <node concept="3clFbF" id="4b$xqUBq73G" role="3cqZAp">
          <node concept="2OqwBi" id="4b$xqUBq73H" role="3clFbG">
            <property role="hSjvv" value="true" />
            <node concept="liA8E" id="4b$xqUBq73I" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
              <node concept="Xl_RD" id="4b$xqUBq73J" role="37wK5m">
                <property role="Xl_RC" value="${CLASSNAME}" />
              </node>
              <node concept="37vLTw" id="4b$xqUBq73K" role="37wK5m">
                <ref role="3cqZAo" node="4b$xqUBq73l" resolve="className" />
              </node>
            </node>
            <node concept="2OqwBi" id="4b$xqUBq73L" role="2Oq$k0">
              <property role="hSjvv" value="true" />
              <node concept="37vLTw" id="4b$xqUBq73M" role="2Oq$k0">
                <ref role="3cqZAo" node="4b$xqUBq73t" resolve="builder" />
              </node>
              <node concept="liA8E" id="4b$xqUBq73N" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4b$xqUBq73O" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4b$xqUBq6TB" role="jymVt" />
    <node concept="2tJIrI" id="4b$xqUBq6Uc" role="jymVt" />
    <node concept="3Tm1VV" id="4b$xqUBpNWK" role="1B3o_S" />
  </node>
  <node concept="WtQ9Q" id="34BkNnboqDG">
    <property role="3GE5qa" value="connecting" />
    <ref role="WuzLi" to="m7gy:4b$xqUByBWg" resolve="EventKotlinOutput" />
    <node concept="11bSqf" id="34BkNnboqDH" role="11c4hB">
      <node concept="3clFbS" id="34BkNnboqDI" role="2VODD2">
        <node concept="3cpWs8" id="1DRRhzrqCE$" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzrqCE_" role="3cpWs9">
            <property role="TrG5h" value="event" />
            <node concept="3Tqbb2" id="1DRRhzrqCCy" role="1tU5fm">
              <ref role="ehGHo" to="3nll:7fqk8p43ygS" resolve="Event" />
            </node>
            <node concept="2OqwBi" id="1DRRhzrqCEA" role="33vP2m">
              <node concept="117lpO" id="1DRRhzrqCEB" role="2Oq$k0" />
              <node concept="3TrEf2" id="1DRRhzrqCEC" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:4b$xqUBsCpd" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzrqFWD" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzrqFWE" role="3cpWs9">
            <property role="TrG5h" value="wrapperName" />
            <node concept="17QB3L" id="1DRRhzrqFTQ" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzrURl7" role="33vP2m">
              <node concept="2OqwBi" id="1DRRhzrGSxH" role="2Oq$k0">
                <node concept="2OqwBi" id="1DRRhzrqFWJ" role="2Oq$k0">
                  <node concept="117lpO" id="1DRRhzrqFWK" role="2Oq$k0" />
                  <node concept="2qgKlT" id="1DRRhzrqFWL" role="2OqNvi">
                    <ref role="37wK5l" to="igqx:1DRRhzrq_wB" resolve="parentEventWrapper" />
                  </node>
                </node>
                <node concept="3TrEf2" id="1DRRhzrUR3U" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:1DRRhzrJ_Rj" resolve="substitudeEvent" />
                </node>
              </node>
              <node concept="3TrcHB" id="1DRRhzrURFh" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VwCkH4" role="3cqZAp" />
        <node concept="3clFbJ" id="51Z40VwCl2x" role="3cqZAp">
          <node concept="3clFbS" id="51Z40VwCl2y" role="3clFbx">
            <node concept="lc7rE" id="51Z40VwCl2z" role="3cqZAp">
              <node concept="1bDJIP" id="51Z40VwCl2$" role="lcghm">
                <ref role="1rvKf6" node="4b$xqUAZJaE" resolve="_dataclass" />
                <node concept="2OqwBi" id="51Z40VwCl2_" role="1ryhcI">
                  <node concept="3TrcHB" id="51Z40VwCl2A" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                  <node concept="37vLTw" id="51Z40VwCl2B" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DRRhzrqCE_" resolve="event" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="51Z40VwCl2C" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
            </node>
            <node concept="3izx1p" id="51Z40VwCl2D" role="3cqZAp">
              <node concept="3clFbS" id="51Z40VwCl2E" role="3izTki">
                <node concept="lc7rE" id="p4fyl5MJR0" role="3cqZAp">
                  <node concept="1bDJIP" id="p4fyl5MJRJ" role="lcghm">
                    <ref role="1rvKf6" node="p4fyl5LJ8P" resolve="parameters" />
                    <node concept="2OqwBi" id="p4fyl5MK4z" role="1ryhcI">
                      <node concept="117lpO" id="p4fyl5MJSa" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="p4fyl5MKid" role="2OqNvi">
                        <ref role="3TtcxE" to="anwi:p4fykY80SC" resolve="parameters" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="p4fyl5MKyV" role="1ryhcI">
                      <node concept="37vLTw" id="p4fyl5MKj9" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DRRhzrqCE_" resolve="event" />
                      </node>
                      <node concept="3TrcHB" id="p4fyl5MKQr" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="51Z40VwCl2R" role="3cqZAp">
              <node concept="la8eA" id="51Z40VwCl2S" role="lcghm">
                <property role="lacIc" value=")" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="51Z40VwCl2T" role="3clFbw">
            <node concept="2qgKlT" id="51Z40VwCl2U" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5QsWOhXN7cG" resolve="hasParameters" />
            </node>
            <node concept="37vLTw" id="51Z40VwCl2V" role="2Oq$k0">
              <ref role="3cqZAo" node="1DRRhzrqCE_" resolve="event" />
            </node>
          </node>
          <node concept="9aQIb" id="51Z40VwCl2W" role="9aQIa">
            <node concept="3clFbS" id="51Z40VwCl2X" role="9aQI4">
              <node concept="lc7rE" id="51Z40VwCl2Y" role="3cqZAp">
                <node concept="1bDJIP" id="51Z40VwCl2Z" role="lcghm">
                  <ref role="1rvKf6" node="4yUYSn0FvHs" resolve="_object" />
                  <node concept="2OqwBi" id="51Z40VwCl30" role="1ryhcI">
                    <node concept="3TrcHB" id="51Z40VwCl31" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="37vLTw" id="51Z40VwCl32" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DRRhzrqCE_" resolve="event" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VwCl33" role="3cqZAp" />
        <node concept="lc7rE" id="51Z40VwCl34" role="3cqZAp">
          <node concept="la8eA" id="51Z40VwCl35" role="lcghm">
            <property role="lacIc" value=": " />
          </node>
          <node concept="l9hG8" id="51Z40VwCl36" role="lcghm">
            <node concept="37vLTw" id="51Z40VwCmxk" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzrqFWE" resolve="wrapperName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="34BkNnboqEx" role="29tGrW">
      <node concept="3clFbS" id="34BkNnboqEy" role="2VODD2">
        <node concept="3clFbF" id="34BkNnboqKN" role="3cqZAp">
          <node concept="2OqwBi" id="34BkNnborzz" role="3clFbG">
            <node concept="2OqwBi" id="34BkNnbor4u" role="2Oq$k0">
              <node concept="117lpO" id="34BkNnboqKM" role="2Oq$k0" />
              <node concept="3TrEf2" id="34BkNnborgw" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:4b$xqUBsCpd" resolve="event" />
              </node>
            </node>
            <node concept="3TrcHB" id="34BkNnborVm" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="34BkNnborZv" role="1Knhgg">
      <node concept="3clFbS" id="34BkNnborZw" role="2VODD2">
        <node concept="3clFbF" id="34BkNnbos0J" role="3cqZAp">
          <node concept="2OqwBi" id="34BkNnbos1i" role="3clFbG">
            <node concept="117lpO" id="34BkNnbos0I" role="2Oq$k0" />
            <node concept="2qgKlT" id="34BkNnbos2A" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="34BkNnbos6O" role="33IsuW">
      <node concept="3clFbS" id="34BkNnbos6P" role="2VODD2">
        <node concept="3clFbF" id="34BkNnbos8S" role="3cqZAp">
          <node concept="2OqwBi" id="34BkNnbot0V" role="3clFbG">
            <node concept="Rm8GO" id="34BkNnbosp8" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="34BkNnbotNJ" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1bsvg0" id="34BkNnbow2J">
    <property role="TrG5h" value="KotlinTextGenComponents" />
    <ref role="1YGkfN" to="a0t:CvLt7q$9sh" resolve="CqrsTextGenComponents" />
    <node concept="1bwezc" id="4yUYSn0topi" role="1bwxVq">
      <property role="TrG5h" value="header" />
      <node concept="3cqZAl" id="4yUYSn0topj" role="3clF45" />
      <node concept="3clFbS" id="4yUYSn0topk" role="3clF47">
        <node concept="lc7rE" id="34BkNnbowzt" role="3cqZAp">
          <node concept="1bDJIP" id="34BkNnbowzO" role="lcghm">
            <ref role="1rvKf6" node="4Wa3rAG8di5" resolve="_package" />
            <node concept="2OqwBi" id="34BkNnbowHT" role="1ryhcI">
              <node concept="37vLTw" id="34BkNnbow$a" role="2Oq$k0">
                <ref role="3cqZAo" node="4yUYSn0top$" resolve="fileOutput" />
              </node>
              <node concept="2qgKlT" id="34BkNnbowQr" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBcV62" resolve="getPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="34BkNnbowZZ" role="3cqZAp">
          <node concept="1bDJIP" id="34BkNnbox0J" role="lcghm">
            <ref role="1rvKf6" node="2Np_kya3HBY" resolve="_imports" />
            <node concept="2OqwBi" id="34BkNnboxbo" role="1ryhcI">
              <node concept="37vLTw" id="34BkNnbox1n" role="2Oq$k0">
                <ref role="3cqZAo" node="4yUYSn0top$" resolve="fileOutput" />
              </node>
              <node concept="2qgKlT" id="34BkNnboxkr" role="2OqNvi">
                <ref role="37wK5l" to="igqx:4yUYSn0sW9K" resolve="getImports" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4yUYSn0top$" role="3clF46">
        <property role="TrG5h" value="fileOutput" />
        <node concept="3Tqbb2" id="34BkNnbowbD" role="1tU5fm">
          <ref role="ehGHo" to="m7gy:4b$xqUBa5Fa" resolve="KotlinFileOutput" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="2Np_kya3HBY" role="1bwxVq">
      <property role="TrG5h" value="_imports" />
      <node concept="3cqZAl" id="2Np_kya3HBZ" role="3clF45" />
      <node concept="3clFbS" id="2Np_kya3HC0" role="3clF47">
        <node concept="3clFbF" id="4yUYSn0topl" role="3cqZAp">
          <node concept="2OqwBi" id="4yUYSn0topm" role="3clFbG">
            <node concept="37vLTw" id="4yUYSn0topn" role="2Oq$k0">
              <ref role="3cqZAo" node="2Np_kya3HC1" resolve="importValue" />
            </node>
            <node concept="2es0OD" id="4yUYSn0topo" role="2OqNvi">
              <node concept="1bVj0M" id="4yUYSn0topp" role="23t8la">
                <node concept="3clFbS" id="4yUYSn0topq" role="1bW5cS">
                  <node concept="lc7rE" id="4yUYSn0topr" role="3cqZAp">
                    <node concept="la8eA" id="4yUYSn0tops" role="lcghm">
                      <property role="lacIc" value="import " />
                    </node>
                    <node concept="l9hG8" id="4yUYSn0topt" role="lcghm">
                      <node concept="2OqwBi" id="4yUYSn0toGD" role="lb14g">
                        <node concept="37vLTw" id="4yUYSn0topu" role="2Oq$k0">
                          <ref role="3cqZAo" node="4yUYSn0topw" resolve="it" />
                        </node>
                        <node concept="2S8uIT" id="4yUYSn0toQe" role="2OqNvi">
                          <ref role="2S8YL0" to="cpc8:4yUYSn0779n" resolve="qualifiedName" />
                        </node>
                      </node>
                    </node>
                    <node concept="l8MVK" id="4yUYSn0topv" role="lcghm" />
                  </node>
                </node>
                <node concept="Rh6nW" id="4yUYSn0topw" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4yUYSn0topx" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4yUYSn0topy" role="3cqZAp">
          <node concept="l8MVK" id="4yUYSn0topz" role="lcghm" />
        </node>
      </node>
      <node concept="37vLTG" id="2Np_kya3HC1" role="3clF46">
        <property role="TrG5h" value="importValue" />
        <node concept="A3Dl8" id="4yUYSn0top_" role="1tU5fm">
          <node concept="3uibUv" id="4yUYSn0tovi" role="A3Ik2">
            <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="4Wa3rAGadZF" role="1bwxVq">
      <property role="TrG5h" value="_import" />
      <node concept="3cqZAl" id="4Wa3rAGadZG" role="3clF45" />
      <node concept="3clFbS" id="4Wa3rAGadZH" role="3clF47">
        <node concept="lc7rE" id="4Wa3rAGae34" role="3cqZAp">
          <node concept="la8eA" id="4Wa3rAGae42" role="lcghm">
            <property role="lacIc" value="import " />
          </node>
          <node concept="l9hG8" id="4Wa3rAGae5t" role="lcghm">
            <node concept="37vLTw" id="4Wa3rAGae6n" role="lb14g">
              <ref role="3cqZAo" node="4Wa3rAGae1A" resolve="importValue" />
            </node>
          </node>
          <node concept="l8MVK" id="4Wa3rAGae7k" role="lcghm" />
          <node concept="l8MVK" id="4Wa3rAGae86" role="lcghm" />
        </node>
      </node>
      <node concept="37vLTG" id="4Wa3rAGae1A" role="3clF46">
        <property role="TrG5h" value="importValue" />
        <node concept="17QB3L" id="4Wa3rAGae1_" role="1tU5fm" />
      </node>
    </node>
    <node concept="1bwezc" id="4Wa3rAG8di5" role="1bwxVq">
      <property role="TrG5h" value="_package" />
      <node concept="37vLTG" id="4Wa3rAG8djO" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="4Wa3rAG8dka" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4Wa3rAG8di6" role="3clF45" />
      <node concept="3clFbS" id="4Wa3rAG8di7" role="3clF47">
        <node concept="lc7rE" id="4Wa3rAG8dkL" role="3cqZAp">
          <node concept="la8eA" id="4Wa3rAG8dl8" role="lcghm">
            <property role="lacIc" value="package " />
          </node>
          <node concept="l9hG8" id="4Wa3rAG8dmH" role="lcghm">
            <node concept="37vLTw" id="4Wa3rAG8dnB" role="lb14g">
              <ref role="3cqZAo" node="4Wa3rAG8djO" resolve="value" />
            </node>
          </node>
          <node concept="l8MVK" id="4Wa3rAG8doX" role="lcghm" />
          <node concept="l8MVK" id="4Wa3rAG8dpJ" role="lcghm" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="4yUYSn0xddb" role="1bwxVq">
      <property role="TrG5h" value="_interface" />
      <node concept="37vLTG" id="4yUYSn0xdia" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4yUYSn0xdiw" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4yUYSn0xddc" role="3clF45" />
      <node concept="3clFbS" id="4yUYSn0xddd" role="3clF47">
        <node concept="lc7rE" id="4yUYSn0xdj7" role="3cqZAp">
          <node concept="la8eA" id="4yUYSn0xdju" role="lcghm">
            <property role="lacIc" value="interface " />
          </node>
          <node concept="l9hG8" id="4yUYSn0FfQ2" role="lcghm">
            <node concept="37vLTw" id="4yUYSn0FfQW" role="lb14g">
              <ref role="3cqZAo" node="4yUYSn0xdia" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="4yUYSn0FvC7" role="1bwxVq">
      <property role="TrG5h" value="_class" />
      <node concept="37vLTG" id="4yUYSn0FvC8" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4yUYSn0FvC9" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4yUYSn0FvCa" role="3clF45" />
      <node concept="3clFbS" id="4yUYSn0FvCb" role="3clF47">
        <node concept="lc7rE" id="4yUYSn0FvCc" role="3cqZAp">
          <node concept="la8eA" id="4yUYSn0FvCd" role="lcghm">
            <property role="lacIc" value="class " />
          </node>
          <node concept="l9hG8" id="4yUYSn0FvCe" role="lcghm">
            <node concept="37vLTw" id="4yUYSn0FvCf" role="lb14g">
              <ref role="3cqZAo" node="4yUYSn0FvC8" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="Sy32QR5O4k" role="1bwxVq">
      <property role="TrG5h" value="_abstractclass" />
      <node concept="37vLTG" id="Sy32QR5O4l" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="Sy32QR5O4m" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="Sy32QR5O4n" role="3clF45" />
      <node concept="3clFbS" id="Sy32QR5O4o" role="3clF47">
        <node concept="lc7rE" id="Sy32QR5O4p" role="3cqZAp">
          <node concept="la8eA" id="Sy32QR5O4q" role="lcghm">
            <property role="lacIc" value="abstract class " />
          </node>
          <node concept="l9hG8" id="Sy32QR5O4r" role="lcghm">
            <node concept="37vLTw" id="Sy32QR5O4s" role="lb14g">
              <ref role="3cqZAo" node="Sy32QR5O4l" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="4b$xqUAZJaE" role="1bwxVq">
      <property role="TrG5h" value="_dataclass" />
      <node concept="37vLTG" id="4b$xqUAZJaF" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4b$xqUAZJaG" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4b$xqUAZJaH" role="3clF45" />
      <node concept="3clFbS" id="4b$xqUAZJaI" role="3clF47">
        <node concept="lc7rE" id="4b$xqUAZJaJ" role="3cqZAp">
          <node concept="la8eA" id="4b$xqUAZJaK" role="lcghm">
            <property role="lacIc" value="data class " />
          </node>
          <node concept="l9hG8" id="4b$xqUAZJaL" role="lcghm">
            <node concept="37vLTw" id="4b$xqUAZJaM" role="lb14g">
              <ref role="3cqZAo" node="4b$xqUAZJaF" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="4yUYSn0FvHs" role="1bwxVq">
      <property role="TrG5h" value="_object" />
      <node concept="37vLTG" id="4yUYSn0FvHt" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4yUYSn0FvHu" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4yUYSn0FvHv" role="3clF45" />
      <node concept="3clFbS" id="4yUYSn0FvHw" role="3clF47">
        <node concept="lc7rE" id="4yUYSn0FvHx" role="3cqZAp">
          <node concept="la8eA" id="4yUYSn0FvHy" role="lcghm">
            <property role="lacIc" value="object " />
          </node>
          <node concept="l9hG8" id="4yUYSn0FvHz" role="lcghm">
            <node concept="37vLTw" id="4yUYSn0FvH$" role="lb14g">
              <ref role="3cqZAo" node="4yUYSn0FvHt" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="p4fyl5LJ8P" role="1bwxVq">
      <property role="TrG5h" value="parameters" />
      <node concept="37vLTG" id="p4fyl5LJtj" role="3clF46">
        <property role="TrG5h" value="parameters" />
        <node concept="A3Dl8" id="p4fyl5LLIX" role="1tU5fm">
          <node concept="3Tqbb2" id="p4fyl5LJtD" role="A3Ik2">
            <ref role="ehGHo" to="anwi:4yUYSn0hQGy" resolve="ParameterOutput" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="p4fyl5LJvo" role="3clF46">
        <property role="TrG5h" value="isVertical" />
        <node concept="10P_77" id="p4fyl5LJvK" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="p4fyl5LJ8Q" role="3clF45" />
      <node concept="3clFbS" id="p4fyl5LJ8R" role="3clF47">
        <node concept="3clFbJ" id="p4fyl5LJxM" role="3cqZAp">
          <node concept="37vLTw" id="p4fyl5LKAs" role="3clFbw">
            <ref role="3cqZAo" node="p4fyl5LJvo" resolve="isVertical" />
          </node>
          <node concept="3clFbS" id="p4fyl5LJxO" role="3clFbx">
            <node concept="lc7rE" id="p4fyl5LLTT" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl5LLUi" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LKBf" resolve="verticalParameters" />
                <node concept="37vLTw" id="p4fyl5LLUS" role="1ryhcI">
                  <ref role="3cqZAo" node="p4fyl5LJtj" resolve="parameters" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="p4fyl5LKAQ" role="9aQIa">
            <node concept="3clFbS" id="p4fyl5LKAR" role="9aQI4">
              <node concept="lc7rE" id="p4fyl5LPtj" role="3cqZAp">
                <node concept="1bDJIP" id="p4fyl5LPtE" role="lcghm">
                  <ref role="1rvKf6" node="p4fyl5LNju" resolve="horizontalParameters" />
                  <node concept="37vLTw" id="p4fyl5LPug" role="1ryhcI">
                    <ref role="3cqZAo" node="p4fyl5LJtj" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="p4fyl5LJwD" role="lGtFl">
        <node concept="TZ5HA" id="p4fyl5LJwE" role="TZ5H$">
          <node concept="1dT_AC" id="p4fyl5LJwF" role="1dT_Ay">
            <property role="1dT_AB" value="Hier könnte man auch noch just in Time Modifikationen durchfähren, indem man den Parameter copied und dann noch Dinge abändert." />
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="p4fyl5LKBf" role="1bwxVq">
      <property role="TrG5h" value="verticalParameters" />
      <node concept="37vLTG" id="p4fyl5LKWs" role="3clF46">
        <property role="TrG5h" value="parameters" />
        <node concept="A3Dl8" id="p4fyl5LLOn" role="1tU5fm">
          <node concept="3Tqbb2" id="p4fyl5LLOo" role="A3Ik2">
            <ref role="ehGHo" to="anwi:4yUYSn0hQGy" resolve="ParameterOutput" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="p4fyl5LKBg" role="3clF45" />
      <node concept="3clFbS" id="p4fyl5LKBh" role="3clF47">
        <node concept="3clFbJ" id="p4fyl5LKXF" role="3cqZAp">
          <node concept="3clFbS" id="p4fyl5LKXG" role="3clFbx">
            <node concept="3cpWs6" id="p4fyl5LKXH" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="p4fyl5LKXI" role="3clFbw">
            <node concept="37vLTw" id="p4fyl5LKXJ" role="2Oq$k0">
              <ref role="3cqZAo" node="p4fyl5LKWs" resolve="parameters" />
            </node>
            <node concept="1v1jN8" id="p4fyl5LKXK" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="p4fyl5LKXL" role="3cqZAp">
          <node concept="3cpWsn" id="p4fyl5LKXM" role="3cpWs9">
            <property role="TrG5h" value="parameterList" />
            <node concept="_YKpA" id="p4fyl5LKXN" role="1tU5fm">
              <node concept="3Tqbb2" id="p4fyl5LKXO" role="_ZDj9">
                <ref role="ehGHo" to="anwi:4yUYSn0hQGy" resolve="ParameterOutput" />
              </node>
            </node>
            <node concept="2OqwBi" id="p4fyl5LKXP" role="33vP2m">
              <node concept="37vLTw" id="p4fyl5LKXQ" role="2Oq$k0">
                <ref role="3cqZAo" node="p4fyl5LKWs" resolve="parameters" />
              </node>
              <node concept="ANE8D" id="p4fyl5LKXR" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="p4fyl5LKXS" role="3cqZAp" />
        <node concept="11p84A" id="p4fyl5LKXT" role="3cqZAp" />
        <node concept="lc7rE" id="p4fyl5LKXU" role="3cqZAp">
          <node concept="1bDJIP" id="p4fyl5LKXV" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="1Dw8fO" id="p4fyl5LKXW" role="3cqZAp">
          <node concept="3clFbS" id="p4fyl5LKXX" role="2LFqv$">
            <node concept="lc7rE" id="p4fyl5LKXY" role="3cqZAp">
              <node concept="2BGw6n" id="p4fyl5LKXZ" role="lcghm" />
              <node concept="l9hG8" id="p4fyl5LKY2" role="lcghm">
                <node concept="1y4W85" id="p4fyl5LKY3" role="lb14g">
                  <node concept="37vLTw" id="p4fyl5LKY4" role="1y58nS">
                    <ref role="3cqZAo" node="p4fyl5LKYj" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="p4fyl5LKY5" role="1y566C">
                    <ref role="3cqZAo" node="p4fyl5LKXM" resolve="parameterList" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="p4fyl5LKY6" role="3cqZAp">
              <node concept="3clFbS" id="p4fyl5LKY7" role="3clFbx">
                <node concept="lc7rE" id="p4fyl5LKY8" role="3cqZAp">
                  <node concept="la8eA" id="p4fyl5LKY9" role="lcghm">
                    <property role="lacIc" value="," />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="p4fyl5LKYa" role="3clFbw">
                <node concept="3cpWsd" id="p4fyl5LKYb" role="3uHU7w">
                  <node concept="3cmrfG" id="p4fyl5LKYc" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="p4fyl5LKYd" role="3uHU7B">
                    <node concept="37vLTw" id="p4fyl5LKYe" role="2Oq$k0">
                      <ref role="3cqZAo" node="p4fyl5LKXM" resolve="parameterList" />
                    </node>
                    <node concept="34oBXx" id="p4fyl5LKYf" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="p4fyl5LKYg" role="3uHU7B">
                  <ref role="3cqZAo" node="p4fyl5LKYj" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="p4fyl5LKYh" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl5LKYi" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="p4fyl5LKYj" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="p4fyl5LKYk" role="1tU5fm" />
            <node concept="3cmrfG" id="p4fyl5LKYl" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="p4fyl5LKYm" role="1Dwp0S">
            <node concept="2OqwBi" id="p4fyl5LKYn" role="3uHU7w">
              <node concept="37vLTw" id="p4fyl5LKYo" role="2Oq$k0">
                <ref role="3cqZAo" node="p4fyl5LKXM" resolve="parameterList" />
              </node>
              <node concept="34oBXx" id="p4fyl5LKYp" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="p4fyl5LKYq" role="3uHU7B">
              <ref role="3cqZAo" node="p4fyl5LKYj" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="p4fyl5LKYr" role="1Dwrff">
            <node concept="37vLTw" id="p4fyl5LKYs" role="2$L3a6">
              <ref role="3cqZAo" node="p4fyl5LKYj" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="p4fyl5LKYt" role="3cqZAp" />
      </node>
    </node>
    <node concept="1bwezc" id="p4fyl5LNju" role="1bwxVq">
      <property role="TrG5h" value="horizontalParameters" />
      <node concept="3cqZAl" id="p4fyl5LNjv" role="3clF45" />
      <node concept="3clFbS" id="p4fyl5LNjw" role="3clF47">
        <node concept="3clFbJ" id="p4fyl5LNGN" role="3cqZAp">
          <node concept="3clFbS" id="p4fyl5LNGO" role="3clFbx">
            <node concept="3cpWs6" id="p4fyl5LNGP" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="p4fyl5LNGQ" role="3clFbw">
            <node concept="37vLTw" id="p4fyl5LNGR" role="2Oq$k0">
              <ref role="3cqZAo" node="p4fyl5LNEo" resolve="parameters" />
            </node>
            <node concept="1v1jN8" id="p4fyl5LNGS" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="p4fyl5LNGT" role="3cqZAp">
          <node concept="3cpWsn" id="p4fyl5LNGU" role="3cpWs9">
            <property role="TrG5h" value="parameterList" />
            <node concept="_YKpA" id="p4fyl5LNGV" role="1tU5fm">
              <node concept="3Tqbb2" id="p4fyl5LNGW" role="_ZDj9">
                <ref role="ehGHo" to="anwi:4yUYSn0hQGy" resolve="ParameterOutput" />
              </node>
            </node>
            <node concept="2OqwBi" id="p4fyl5LNGX" role="33vP2m">
              <node concept="37vLTw" id="p4fyl5LNGY" role="2Oq$k0">
                <ref role="3cqZAo" node="p4fyl5LNEo" resolve="parameters" />
              </node>
              <node concept="ANE8D" id="p4fyl5LO3s" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="p4fyl5LPa8" role="3cqZAp" />
        <node concept="1Dw8fO" id="p4fyl5LNH1" role="3cqZAp">
          <node concept="3clFbS" id="p4fyl5LNH2" role="2LFqv$">
            <node concept="lc7rE" id="p4fyl5LNH3" role="3cqZAp">
              <node concept="l9hG8" id="p4fyl5LNH6" role="lcghm">
                <node concept="1y4W85" id="p4fyl5LNHa" role="lb14g">
                  <node concept="37vLTw" id="p4fyl5LNHb" role="1y58nS">
                    <ref role="3cqZAo" node="p4fyl5LNHo" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="p4fyl5LNHc" role="1y566C">
                    <ref role="3cqZAo" node="p4fyl5LNGU" resolve="parameterList" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="p4fyl5LNHd" role="3cqZAp">
              <node concept="3clFbS" id="p4fyl5LNHe" role="3clFbx">
                <node concept="lc7rE" id="p4fyl5LNHf" role="3cqZAp">
                  <node concept="la8eA" id="p4fyl5LNHg" role="lcghm">
                    <property role="lacIc" value=", " />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="p4fyl5LNHh" role="3clFbw">
                <node concept="3cpWsd" id="p4fyl5LNHi" role="3uHU7w">
                  <node concept="3cmrfG" id="p4fyl5LNHj" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="p4fyl5LNHk" role="3uHU7B">
                    <node concept="37vLTw" id="p4fyl5LNHl" role="2Oq$k0">
                      <ref role="3cqZAo" node="p4fyl5LNGU" resolve="parameterList" />
                    </node>
                    <node concept="34oBXx" id="p4fyl5LNHm" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="p4fyl5LNHn" role="3uHU7B">
                  <ref role="3cqZAo" node="p4fyl5LNHo" resolve="i" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="p4fyl5LNHo" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="p4fyl5LNHp" role="1tU5fm" />
            <node concept="3cmrfG" id="p4fyl5LNHq" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="p4fyl5LNHr" role="1Dwp0S">
            <node concept="2OqwBi" id="p4fyl5LNHs" role="3uHU7w">
              <node concept="37vLTw" id="p4fyl5LNHt" role="2Oq$k0">
                <ref role="3cqZAo" node="p4fyl5LNGU" resolve="parameterList" />
              </node>
              <node concept="34oBXx" id="p4fyl5LNHu" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="p4fyl5LNHv" role="3uHU7B">
              <ref role="3cqZAo" node="p4fyl5LNHo" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="p4fyl5LNHw" role="1Dwrff">
            <node concept="37vLTw" id="p4fyl5LNHx" role="2$L3a6">
              <ref role="3cqZAo" node="p4fyl5LNHo" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="p4fyl5LNEo" role="3clF46">
        <property role="TrG5h" value="parameters" />
        <node concept="A3Dl8" id="p4fyl5LNEm" role="1tU5fm">
          <node concept="3Tqbb2" id="p4fyl5LNEM" role="A3Ik2">
            <ref role="ehGHo" to="anwi:4yUYSn0hQGy" resolve="ParameterOutput" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="2Np_kyaM6hs" role="1bwxVq">
      <property role="TrG5h" value="methods_" />
      <node concept="3cqZAl" id="2Np_kyaM6ht" role="3clF45" />
      <node concept="3clFbS" id="2Np_kyaM6hu" role="3clF47">
        <node concept="3clFbF" id="2Np_kyaM8Ih" role="3cqZAp">
          <node concept="2OqwBi" id="2Np_kyaM8YY" role="3clFbG">
            <node concept="37vLTw" id="2Np_kyaM8If" role="2Oq$k0">
              <ref role="3cqZAo" node="2Np_kyaM6oC" resolve="methods" />
            </node>
            <node concept="2es0OD" id="2Np_kyaM9bQ" role="2OqNvi">
              <node concept="1bVj0M" id="2Np_kyaM9bS" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="2Np_kyaM9bT" role="1bW5cS">
                  <node concept="lc7rE" id="2Np_kyaM6qc" role="3cqZAp">
                    <node concept="2BGw6n" id="2Np_kyaM6qd" role="lcghm" />
                    <node concept="l9hG8" id="2Np_kyaM6qe" role="lcghm">
                      <node concept="2OqwBi" id="2Np_kyaM6qf" role="lb14g">
                        <node concept="liA8E" id="2Np_kyaM6qj" role="2OqNvi">
                          <ref role="37wK5l" to="cpc8:2Np_kyaekFi" resolve="mapMethod" />
                          <node concept="37vLTw" id="2Np_kyaM6qk" role="37wK5m">
                            <ref role="3cqZAo" node="2Np_kyaM9bU" resolve="it" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2Np_kyaMAv1" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Np_kyaMAls" resolve="mapper" />
                        </node>
                      </node>
                    </node>
                    <node concept="1bDJIP" id="2Np_kyaM6ql" role="lcghm">
                      <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                      <node concept="3cmrfG" id="2Np_kyaM6qm" role="1ryhcI">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2Np_kyaM9bU" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2Np_kyaM9bV" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2Np_kyaM6oC" role="3clF46">
        <property role="TrG5h" value="methods" />
        <node concept="A3Dl8" id="2Np_kyaM6oA" role="1tU5fm">
          <node concept="3Tqbb2" id="2Np_kyaM6p2" role="A3Ik2">
            <ref role="ehGHo" to="anwi:61W7Av0nhk$" resolve="MethodOutput" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2Np_kyaMAls" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="2Np_kyaMAlt" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:3JSfbhYdlGO" resolve="ConceptMapper" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="3fVLq_nUdkX" role="1bwxVq">
      <property role="TrG5h" value="methods" />
      <node concept="37vLTG" id="3fVLq_nUdz4" role="3clF46">
        <property role="TrG5h" value="methods" />
        <node concept="A3Dl8" id="3fVLq_nUdz5" role="1tU5fm">
          <node concept="3Tqbb2" id="3fVLq_nUdz6" role="A3Ik2">
            <ref role="ehGHo" to="anwi:61W7Av0nhk$" resolve="MethodOutput" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3fVLq_nUdkY" role="3clF45" />
      <node concept="3clFbS" id="3fVLq_nUdkZ" role="3clF47">
        <node concept="3clFbF" id="3fVLq_nUdzv" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_nUdzw" role="3clFbG">
            <node concept="37vLTw" id="3fVLq_nUdzx" role="2Oq$k0">
              <ref role="3cqZAo" node="3fVLq_nUdz4" resolve="methods" />
            </node>
            <node concept="2es0OD" id="3fVLq_nUdzy" role="2OqNvi">
              <node concept="1bVj0M" id="3fVLq_nUdzz" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="3fVLq_nUdz$" role="1bW5cS">
                  <node concept="lc7rE" id="3fVLq_nUdz_" role="3cqZAp">
                    <node concept="2BGw6n" id="3fVLq_nUdzA" role="lcghm" />
                    <node concept="l9hG8" id="3fVLq_nUdzB" role="lcghm">
                      <node concept="37vLTw" id="3fVLq_nUdTz" role="lb14g">
                        <ref role="3cqZAo" node="3fVLq_nUdzI" resolve="it" />
                      </node>
                    </node>
                    <node concept="1bDJIP" id="3fVLq_nUdzG" role="lcghm">
                      <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                      <node concept="3cmrfG" id="3fVLq_nUdzH" role="1ryhcI">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3fVLq_nUdzI" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3fVLq_nUdzJ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="p4fyl77GCR" role="1bwxVq">
      <property role="TrG5h" value="properties" />
      <node concept="3cqZAl" id="p4fyl77GCS" role="3clF45" />
      <node concept="3clFbS" id="p4fyl77GCT" role="3clF47">
        <node concept="3clFbJ" id="p4fyl780k4" role="3cqZAp">
          <node concept="3clFbS" id="p4fyl780k6" role="3clFbx">
            <node concept="3cpWs6" id="p4fyl780Vl" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="p4fyl780Ft" role="3clFbw">
            <node concept="37vLTw" id="p4fyl780pc" role="2Oq$k0">
              <ref role="3cqZAo" node="p4fyl77GZq" resolve="properties" />
            </node>
            <node concept="1v1jN8" id="p4fyl780RA" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="p4fyl780f8" role="3cqZAp" />
        <node concept="3clFbF" id="p4fyl77Zxm" role="3cqZAp">
          <node concept="2OqwBi" id="p4fyl77Zxn" role="3clFbG">
            <node concept="2es0OD" id="p4fyl77Zxr" role="2OqNvi">
              <node concept="1bVj0M" id="p4fyl77Zxs" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="p4fyl77Zxt" role="1bW5cS">
                  <node concept="1bpajm" id="p4fyl77Zxk" role="3cqZAp" />
                  <node concept="lc7rE" id="p4fyl77Zxu" role="3cqZAp">
                    <node concept="l9hG8" id="p4fyl77Zxv" role="lcghm">
                      <node concept="2OqwBi" id="p4fyl77Zxw" role="lb14g">
                        <node concept="37vLTw" id="p4fyl77Zxx" role="2Oq$k0">
                          <ref role="3cqZAo" node="p4fyl7805I" resolve="mapper" />
                        </node>
                        <node concept="liA8E" id="p4fyl77Zxy" role="2OqNvi">
                          <ref role="37wK5l" to="cpc8:1DRRhzt79hp" resolve="mapProperty" />
                          <node concept="37vLTw" id="p4fyl77Zxz" role="37wK5m">
                            <ref role="3cqZAo" node="p4fyl77ZxA" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1bDJIP" id="p4fyl77Zx$" role="lcghm">
                      <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                      <node concept="3cmrfG" id="p4fyl77Zx_" role="1ryhcI">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="p4fyl77ZxA" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="p4fyl77ZxB" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="p4fyl7800O" role="2Oq$k0">
              <ref role="3cqZAo" node="p4fyl77GZq" resolve="properties" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="p4fyl77GZq" role="3clF46">
        <property role="TrG5h" value="properties" />
        <node concept="A3Dl8" id="p4fyl77GZo" role="1tU5fm">
          <node concept="3Tqbb2" id="p4fyl77H09" role="A3Ik2">
            <ref role="ehGHo" to="3nll:7fqk8p3V6WN" resolve="Property" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="p4fyl7805I" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="p4fyl780aI" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:3JSfbhYdlGO" resolve="ConceptMapper" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="34BkNnbu0ml">
    <property role="3GE5qa" value="commandSide.command" />
    <ref role="WuzLi" to="m7gy:34BkNnbtXnR" resolve="CommandInterfaceKotlinOutput" />
    <node concept="11bSqf" id="34BkNnbu0mm" role="11c4hB">
      <node concept="3clFbS" id="34BkNnbu0mn" role="2VODD2">
        <node concept="lc7rE" id="34BkNnbu2qk" role="3cqZAp">
          <node concept="1bDJIP" id="34BkNnbu2qN" role="lcghm">
            <ref role="1rvKf6" node="4Wa3rAG8di5" resolve="_package" />
            <node concept="2OqwBi" id="34BkNnbu2AM" role="1ryhcI">
              <node concept="117lpO" id="34BkNnbu2re" role="2Oq$k0" />
              <node concept="2qgKlT" id="34BkNnbu2MM" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBcV62" resolve="getPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kya4NSH" role="3cqZAp" />
        <node concept="lc7rE" id="34BkNnbu2Tg" role="3cqZAp">
          <node concept="1bDJIP" id="34BkNnbu2Vw" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="Xl_RD" id="34BkNnbu2We" role="1ryhcI">
              <property role="Xl_RC" value="Command" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="34BkNnbu0na" role="29tGrW">
      <node concept="3clFbS" id="34BkNnbu0nb" role="2VODD2">
        <node concept="3clFbF" id="34BkNnbu0XC" role="3cqZAp">
          <node concept="10M0yZ" id="34BkNnbu0ZH" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:4b$xqUBr8NX" resolve="COMMAND_INTERFACE_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="34BkNnbu11S" role="1Knhgg">
      <node concept="3clFbS" id="34BkNnbu11U" role="2VODD2">
        <node concept="3clFbF" id="34BkNnbu13p" role="3cqZAp">
          <node concept="2OqwBi" id="34BkNnbu13W" role="3clFbG">
            <node concept="117lpO" id="34BkNnbu13o" role="2Oq$k0" />
            <node concept="2qgKlT" id="34BkNnbu15g" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="34BkNnbu1bS" role="33IsuW">
      <node concept="3clFbS" id="34BkNnbu1bT" role="2VODD2">
        <node concept="3clFbF" id="34BkNnbu1eb" role="3cqZAp">
          <node concept="2OqwBi" id="34BkNnbu1Rm" role="3clFbG">
            <node concept="Rm8GO" id="34BkNnbu1gU" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="34BkNnbu2n1" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="34BkNnbu350">
    <property role="3GE5qa" value="commandSide.command.handler" />
    <ref role="WuzLi" to="m7gy:34BkNnbtXnS" resolve="CommandHandlerInterfaceKotlinOutput" />
    <node concept="29tfMY" id="34BkNnbu351" role="29tGrW">
      <node concept="3clFbS" id="34BkNnbu352" role="2VODD2">
        <node concept="3clFbF" id="34BkNnbu3bj" role="3cqZAp">
          <node concept="10M0yZ" id="34BkNnbu3do" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:4b$xqUBr$KS" resolve="COMMAND_HANDLER_INTERFACE_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="34BkNnbu3ey" role="1Knhgg">
      <node concept="3clFbS" id="34BkNnbu3ez" role="2VODD2">
        <node concept="3clFbF" id="34BkNnbu3fi" role="3cqZAp">
          <node concept="2OqwBi" id="34BkNnbu3yX" role="3clFbG">
            <node concept="117lpO" id="34BkNnbu3fh" role="2Oq$k0" />
            <node concept="2qgKlT" id="34BkNnbu3IZ" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="34BkNnbu3PB" role="33IsuW">
      <node concept="3clFbS" id="34BkNnbu3PC" role="2VODD2">
        <node concept="3clFbF" id="34BkNnbu3Rb" role="3cqZAp">
          <node concept="2OqwBi" id="34BkNnbu4KT" role="3clFbG">
            <node concept="Rm8GO" id="34BkNnbu44U" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="34BkNnbu5e2" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="34BkNnbu5fR" role="11c4hB">
      <node concept="3clFbS" id="34BkNnbu5fS" role="2VODD2">
        <node concept="lc7rE" id="5QWt25hgtu8" role="3cqZAp">
          <node concept="1bDJIP" id="5QWt25hgtuA" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="5QWt25hgtv1" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="5QWt25hgtv4" role="3cqZAp" />
        <node concept="lc7rE" id="5QWt25hgvif" role="3cqZAp">
          <node concept="1bDJIP" id="5QWt25hgvk4" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="10M0yZ" id="5QWt25hgvng" role="1ryhcI">
              <ref role="3cqZAo" to="cpc8:4b$xqUBr$KS" resolve="COMMAND_HANDLER_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="5QWt25hgvpe" role="lcghm">
            <property role="lacIc" value="&lt;in T: " />
          </node>
          <node concept="l9hG8" id="Sy32QQZeWG" role="lcghm">
            <node concept="10M0yZ" id="Sy32QQZf1D" role="lb14g">
              <ref role="3cqZAo" to="cpc8:4b$xqUBr8NX" resolve="COMMAND_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="Sy32QQZeSm" role="lcghm">
            <property role="lacIc" value="&gt; {" />
          </node>
          <node concept="1bDJIP" id="5QWt25hgvt1" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="5GA9_3MePRq" role="3cqZAp">
          <node concept="3clFbS" id="5GA9_3MePRs" role="3izTki">
            <node concept="lc7rE" id="5QWt25hgvuv" role="3cqZAp">
              <node concept="2BGw6n" id="5QWt25hgvvq" role="lcghm" />
              <node concept="la8eA" id="5QWt25hgvwg" role="lcghm">
                <property role="lacIc" value="fun handle(command: T)" />
              </node>
              <node concept="1bDJIP" id="5QWt25hgvzi" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5QWt25hgv_M" role="3cqZAp">
          <node concept="la8eA" id="5QWt25hgvAL" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Sy32QQZ8oC">
    <property role="3GE5qa" value="connecting.handler" />
    <ref role="WuzLi" to="m7gy:Sy32QQYsRc" resolve="EventHandlerInterfaceKotlinOutput" />
    <node concept="11bSqf" id="Sy32QQZ8oD" role="11c4hB">
      <node concept="3clFbS" id="Sy32QQZ8oE" role="2VODD2">
        <node concept="lc7rE" id="Sy32QQZaBO" role="3cqZAp">
          <node concept="1bDJIP" id="Sy32QQZaCj" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="Sy32QQZaCI" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="Sy32QQZaB4" role="3cqZAp" />
        <node concept="lc7rE" id="Sy32QQZaEe" role="3cqZAp">
          <node concept="1bDJIP" id="Sy32QQZaES" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="10M0yZ" id="Sy32QR0kOW" role="1ryhcI">
              <ref role="3cqZAo" to="cpc8:4b$xqUBxHGe" resolve="EVENT_HANDLER_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="Sy32QQZaJ9" role="lcghm">
            <property role="lacIc" value="&lt;in E: " />
          </node>
          <node concept="l9hG8" id="Sy32QQZaNm" role="lcghm">
            <node concept="10M0yZ" id="Sy32QQZaQL" role="lb14g">
              <ref role="3cqZAo" to="cpc8:4b$xqUBxGD0" resolve="EVENT_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="Sy32QQZaTr" role="lcghm">
            <property role="lacIc" value="&gt; {" />
          </node>
          <node concept="1bDJIP" id="Sy32QQZb57" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="Sy32QQZaW3" role="3cqZAp">
          <node concept="3clFbS" id="Sy32QQZaW5" role="3izTki">
            <node concept="lc7rE" id="Sy32QQZaX9" role="3cqZAp">
              <node concept="2BGw6n" id="Sy32QQZaX_" role="lcghm" />
              <node concept="la8eA" id="Sy32QQZaYr" role="lcghm">
                <property role="lacIc" value="fun handle(event: E)" />
              </node>
              <node concept="1bDJIP" id="Sy32QQZb6s" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="Sy32QQZb1S" role="3cqZAp">
          <node concept="la8eA" id="Sy32QQZb36" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="Sy32QQZ8pt" role="29tGrW">
      <node concept="3clFbS" id="Sy32QQZ8pu" role="2VODD2">
        <node concept="3clFbF" id="Sy32QQZ8vJ" role="3cqZAp">
          <node concept="10M0yZ" id="1DRRhzqWD7M" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:4b$xqUBxHGe" resolve="EVENT_HANDLER_INTERFACE_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="Sy32QQZ8zM" role="1Knhgg">
      <node concept="3clFbS" id="Sy32QQZ8zO" role="2VODD2">
        <node concept="3clFbF" id="Sy32QQZ8Em" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQZ8XT" role="3clFbG">
            <node concept="117lpO" id="Sy32QQZ8El" role="2Oq$k0" />
            <node concept="2qgKlT" id="Sy32QQZ9le" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="Sy32QQZ9rA" role="33IsuW">
      <node concept="3clFbS" id="Sy32QQZ9rB" role="2VODD2">
        <node concept="3clFbF" id="Sy32QQZ9ta" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQZa7F" role="3clFbG">
            <node concept="Rm8GO" id="Sy32QQZ9w_" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="Sy32QQZa$O" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Sy32QQZbqg">
    <property role="3GE5qa" value="connecting" />
    <ref role="WuzLi" to="m7gy:Sy32QQZbqd" resolve="EventInterfaceKotlinOutput" />
    <node concept="11bSqf" id="Sy32QQZbqh" role="11c4hB">
      <node concept="3clFbS" id="Sy32QQZbqi" role="2VODD2">
        <node concept="lc7rE" id="Sy32QQZdDN" role="3cqZAp">
          <node concept="1bDJIP" id="Sy32QQZdEi" role="lcghm">
            <ref role="1rvKf6" node="4Wa3rAG8di5" resolve="_package" />
            <node concept="2OqwBi" id="Sy32QQZdF0" role="1ryhcI">
              <node concept="117lpO" id="Sy32QQZdEH" role="2Oq$k0" />
              <node concept="2qgKlT" id="Sy32QQZdGi" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBcV62" resolve="getPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="Sy32QQZdKk" role="3cqZAp">
          <node concept="1bDJIP" id="Sy32QR040q" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="10M0yZ" id="Sy32QQZdUz" role="1ryhcI">
              <ref role="3cqZAo" to="cpc8:4b$xqUBxGD0" resolve="EVENT_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="Sy32QQZbr5" role="29tGrW">
      <node concept="3clFbS" id="Sy32QQZbr6" role="2VODD2">
        <node concept="3clFbF" id="Sy32QQZbxn" role="3cqZAp">
          <node concept="10M0yZ" id="Sy32QQZbDe" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:4b$xqUBxGD0" resolve="EVENT_INTERFACE_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="Sy32QQZbEE" role="1Knhgg">
      <node concept="3clFbS" id="Sy32QQZbEG" role="2VODD2">
        <node concept="3clFbF" id="Sy32QQZbLe" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQZc4T" role="3clFbG">
            <node concept="117lpO" id="Sy32QQZbLd" role="2Oq$k0" />
            <node concept="2qgKlT" id="Sy32QQZcgV" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="Sy32QQZcno" role="33IsuW">
      <node concept="3clFbS" id="Sy32QQZcnp" role="2VODD2">
        <node concept="3clFbF" id="Sy32QQZcoW" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQZda6" role="3clFbG">
            <node concept="Rm8GO" id="Sy32QQZd8K" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="Sy32QQZdBf" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Sy32QR0COg">
    <property role="3GE5qa" value="querySide.query.handler" />
    <ref role="WuzLi" to="m7gy:Sy32QR0wXm" resolve="QueryHandlerInterfaceKotlinOutput" />
    <node concept="29tfMY" id="Sy32QR0COh" role="29tGrW">
      <node concept="3clFbS" id="Sy32QR0COi" role="2VODD2">
        <node concept="3clFbF" id="Sy32QR0CUz" role="3cqZAp">
          <node concept="10M0yZ" id="Sy32QR0CW9" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:4b$xqUATzHo" resolve="QUERY_HANDLER_INTERFACE_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="Sy32QR0D3n" role="1Knhgg">
      <node concept="3clFbS" id="Sy32QR0D3p" role="2VODD2">
        <node concept="3clFbF" id="Sy32QR0D49" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QR0DmM" role="3clFbG">
            <node concept="117lpO" id="Sy32QR0D48" role="2Oq$k0" />
            <node concept="2qgKlT" id="Sy32QR0DAU" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="Sy32QR0DGN" role="33IsuW">
      <node concept="3clFbS" id="Sy32QR0DGO" role="2VODD2">
        <node concept="3clFbF" id="Sy32QR0DIn" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QR0EmB" role="3clFbG">
            <node concept="Rm8GO" id="Sy32QR0DKq" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="Sy32QR0ENK" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="Sy32QR0EP_" role="11c4hB">
      <node concept="3clFbS" id="Sy32QR0EPA" role="2VODD2">
        <node concept="lc7rE" id="Sy32QR0ESq" role="3cqZAp">
          <node concept="1bDJIP" id="Sy32QR0EST" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="Sy32QR0ETk" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="Sy32QR0ES2" role="3cqZAp" />
        <node concept="lc7rE" id="Sy32QR0EUG" role="3cqZAp">
          <node concept="1bDJIP" id="Sy32QR0EVm" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="10M0yZ" id="Sy32QR0EYy" role="1ryhcI">
              <ref role="3cqZAo" to="cpc8:4b$xqUATzHo" resolve="QUERY_HANDLER_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="Sy32QR0F0w" role="lcghm">
            <property role="lacIc" value="&lt;QueryType: " />
          </node>
          <node concept="l9hG8" id="Sy32QR0F3_" role="lcghm">
            <node concept="10M0yZ" id="Sy32QR0F8O" role="lb14g">
              <ref role="3cqZAo" to="cpc8:4b$xqUATxQK" resolve="QUERY_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="Sy32QR0Fbu" role="lcghm">
            <property role="lacIc" value="&lt;Result&gt;, out Result&gt; {" />
          </node>
          <node concept="1bDJIP" id="Sy32QR0Fg6" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="Sy32QR0Fio" role="3cqZAp">
          <node concept="3clFbS" id="Sy32QR0Fiq" role="3izTki">
            <node concept="lc7rE" id="Sy32QR0Fjv" role="3cqZAp">
              <node concept="2BGw6n" id="Sy32QR0FjV" role="lcghm" />
              <node concept="la8eA" id="Sy32QR0FkL" role="lcghm">
                <property role="lacIc" value="fun handle(query: QueryType): Result" />
              </node>
              <node concept="1bDJIP" id="Sy32QR0Fpf" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="Sy32QR0FqP" role="3cqZAp">
          <node concept="la8eA" id="Sy32QR0Fsr" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Sy32QR422R">
    <property role="3GE5qa" value="commandSide.aggregate" />
    <ref role="WuzLi" to="m7gy:Sy32QR3Z04" resolve="AggregateInterfaceKotlinOutput" />
    <node concept="11bSqf" id="Sy32QR422S" role="11c4hB">
      <node concept="3clFbS" id="Sy32QR422T" role="2VODD2">
        <node concept="lc7rE" id="Sy32QR43X6" role="3cqZAp">
          <node concept="1bDJIP" id="Sy32QR43X_" role="lcghm">
            <ref role="1rvKf6" node="4Wa3rAG8di5" resolve="_package" />
            <node concept="2OqwBi" id="Sy32QR43Yj" role="1ryhcI">
              <node concept="117lpO" id="Sy32QR43Y0" role="2Oq$k0" />
              <node concept="2qgKlT" id="Sy32QR43Z_" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBcV62" resolve="getPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kya4Cmj" role="3cqZAp" />
        <node concept="lc7rE" id="Sy32QR440g" role="3cqZAp">
          <node concept="1bDJIP" id="Sy32QR4416" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="10M0yZ" id="Sy32QR443G" role="1ryhcI">
              <ref role="3cqZAo" to="cpc8:Sy32QR2Qmw" resolve="AGGREGATE_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="Sy32QR445X" role="lcghm">
            <property role="lacIc" value="&lt;ID&gt; {" />
          </node>
          <node concept="1bDJIP" id="Sy32QR44sa" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="Sy32QR44h6" role="3cqZAp">
          <node concept="3clFbS" id="Sy32QR44h8" role="3izTki">
            <node concept="lc7rE" id="Sy32QR44mt" role="3cqZAp">
              <node concept="2BGw6n" id="Sy32QR44mT" role="lcghm" />
              <node concept="la8eA" id="Sy32QR44nJ" role="lcghm">
                <property role="lacIc" value="fun getId(): ID" />
              </node>
              <node concept="1bDJIP" id="Sy32QR44qL" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="Sy32QR44ud" role="3cqZAp">
          <node concept="la8eA" id="Sy32QR44vq" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="Sy32QR423G" role="29tGrW">
      <node concept="3clFbS" id="Sy32QR423H" role="2VODD2">
        <node concept="3clFbF" id="Sy32QR429Y" role="3cqZAp">
          <node concept="10M0yZ" id="Sy32QR42b$" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:Sy32QR2Qmw" resolve="AGGREGATE_INTERFACE_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="Sy32QR42d0" role="1Knhgg">
      <node concept="3clFbS" id="Sy32QR42d2" role="2VODD2">
        <node concept="3clFbF" id="Sy32QR42dM" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QR42xt" role="3clFbG">
            <node concept="117lpO" id="Sy32QR42dL" role="2Oq$k0" />
            <node concept="2qgKlT" id="Sy32QR42Hv" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="Sy32QR42NW" role="33IsuW">
      <node concept="3clFbS" id="Sy32QR42NX" role="2VODD2">
        <node concept="3clFbF" id="Sy32QR42Pw" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QR43tH" role="3clFbG">
            <node concept="Rm8GO" id="Sy32QR42Rw" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="Sy32QR43UQ" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Sy32QR5Dt4">
    <property role="3GE5qa" value="commandSide.aggregate" />
    <ref role="WuzLi" to="m7gy:Sy32QR3Z07" resolve="EventAggregateInterfaceKotlinOutput" />
    <node concept="11bSqf" id="Sy32QR5Dt5" role="11c4hB">
      <node concept="3clFbS" id="Sy32QR5Dt6" role="2VODD2">
        <node concept="lc7rE" id="Sy32QR5NIt" role="3cqZAp">
          <node concept="1bDJIP" id="Sy32QR5NIW" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="Sy32QR5NM9" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="Sy32QR5NI5" role="3cqZAp" />
        <node concept="lc7rE" id="Sy32QR5NNE" role="3cqZAp">
          <node concept="1bDJIP" id="Sy32QR5NOk" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="10M0yZ" id="Sy32QR5Og$" role="1ryhcI">
              <ref role="3cqZAo" to="cpc8:Sy32QR2R8C" resolve="EVENT_AGGREGATE_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="Sy32QR5Oiy" role="lcghm">
            <property role="lacIc" value="&lt;ID, EventType: " />
          </node>
          <node concept="l9hG8" id="Sy32QR5OlY" role="lcghm">
            <node concept="10M0yZ" id="Sy32QR5Opp" role="lb14g">
              <ref role="3cqZAo" to="cpc8:4b$xqUBxGD0" resolve="EVENT_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="Sy32QR5Os3" role="lcghm">
            <property role="lacIc" value="&gt; : " />
          </node>
        </node>
        <node concept="lc7rE" id="2Np_kya3Iox" role="3cqZAp">
          <node concept="l9hG8" id="2Np_kya3IcN" role="lcghm">
            <node concept="10M0yZ" id="2Np_kya3IcO" role="lb14g">
              <ref role="3cqZAo" to="cpc8:Sy32QR2Qmw" resolve="AGGREGATE_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="2Np_kya3Iup" role="lcghm">
            <property role="lacIc" value="&lt;ID&gt; { " />
          </node>
          <node concept="1bDJIP" id="Sy32QR5Oux" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="2Np_kya3I8j" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="Sy32QR5Pbz" role="3cqZAp">
          <node concept="3clFbS" id="Sy32QR5Pb_" role="3izTki">
            <node concept="lc7rE" id="Sy32QR5Pum" role="3cqZAp">
              <node concept="2BGw6n" id="Sy32QR5PuY" role="lcghm" />
              <node concept="la8eA" id="Sy32QR5PvO" role="lcghm">
                <property role="lacIc" value="fun getChanges(): List&lt;EventType&gt;" />
              </node>
              <node concept="1bDJIP" id="Sy32QR5P_n" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="Sy32QR5P_O" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="Sy32QR5PAT" role="3cqZAp">
              <node concept="2BGw6n" id="Sy32QR5PBA" role="lcghm" />
              <node concept="la8eA" id="Sy32QR5PCs" role="lcghm">
                <property role="lacIc" value="fun recreateWith(events: List&lt;EventType&gt;)" />
              </node>
              <node concept="1bDJIP" id="Sy32QR5PLW" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="Sy32QR5PMp" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="Sy32QR5PNz" role="3cqZAp">
              <node concept="2BGw6n" id="Sy32QR5POl" role="lcghm" />
              <node concept="la8eA" id="Sy32QR5PPW" role="lcghm">
                <property role="lacIc" value="fun cacheChange(event: EventType)" />
              </node>
              <node concept="1bDJIP" id="2Np_kya6m15" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="2Np_kya6m1b" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="Sy32QR5P07" role="3cqZAp">
          <node concept="la8eA" id="Sy32QR5P1E" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="Sy32QR5DFJ" role="29tGrW">
      <node concept="3clFbS" id="Sy32QR5DFK" role="2VODD2">
        <node concept="3clFbF" id="Sy32QR5DM1" role="3cqZAp">
          <node concept="10M0yZ" id="Sy32QR5DO6" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:Sy32QR2R8C" resolve="EVENT_AGGREGATE_INTERFACE_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="Sy32QR5KQm" role="1Knhgg">
      <node concept="3clFbS" id="Sy32QR5KQo" role="2VODD2">
        <node concept="3clFbF" id="Sy32QR5KR8" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QR5LaN" role="3clFbG">
            <node concept="117lpO" id="Sy32QR5KR7" role="2Oq$k0" />
            <node concept="2qgKlT" id="Sy32QR5LmP" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="Sy32QR5Lti" role="33IsuW">
      <node concept="3clFbS" id="Sy32QR5Ltj" role="2VODD2">
        <node concept="3clFbF" id="Sy32QR5LuQ" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QR5M7W" role="3clFbG">
            <node concept="Rm8GO" id="Sy32QR5LwQ" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="Sy32QR5M_5" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2Np_kya0gNc">
    <property role="3GE5qa" value="method" />
    <ref role="WuzLi" to="m7gy:61W7Av0ngXN" resolve="MethodKotlinOutput" />
    <node concept="11bSqf" id="2Np_kya0gNd" role="11c4hB">
      <node concept="3clFbS" id="2Np_kya0gNe" role="2VODD2">
        <node concept="3cpWs8" id="51Z40Vwz5$E" role="3cqZAp">
          <node concept="3cpWsn" id="51Z40Vwz5$F" role="3cpWs9">
            <property role="TrG5h" value="modifier" />
            <node concept="17QB3L" id="51Z40Vwz5$g" role="1tU5fm" />
            <node concept="3K4zz7" id="51Z40Vwz5$G" role="33vP2m">
              <node concept="Xl_RD" id="51Z40Vwz5$H" role="3K4E3e">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="51Z40Vwz5$I" role="3K4Cdx">
                <node concept="2OqwBi" id="51Z40Vwz5$J" role="2Oq$k0">
                  <node concept="117lpO" id="p4fykJ0hTg" role="2Oq$k0" />
                  <node concept="3TrcHB" id="51Z40Vwz5$L" role="2OqNvi">
                    <ref role="3TsBF5" to="anwi:p4fykIIUjg" resolve="modifier" />
                  </node>
                </node>
                <node concept="21noJN" id="51Z40Vwz5$M" role="2OqNvi">
                  <node concept="21nZrQ" id="51Z40Vwz5$N" role="21noJM">
                    <ref role="21nZrZ" to="3nll:awtshksDjd" resolve="public" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="51Z40VISYji" role="3K4GZi">
                <node concept="Xl_RD" id="51Z40VISYkD" role="3uHU7w">
                  <property role="Xl_RC" value=" " />
                </node>
                <node concept="2OqwBi" id="51Z40Vwz5$O" role="3uHU7B">
                  <node concept="2OqwBi" id="51Z40Vwz5$P" role="2Oq$k0">
                    <node concept="117lpO" id="p4fykJ0iit" role="2Oq$k0" />
                    <node concept="3TrcHB" id="51Z40Vwz5$R" role="2OqNvi">
                      <ref role="3TsBF5" to="anwi:p4fykIIUjg" resolve="modifier" />
                    </node>
                  </node>
                  <node concept="1XCIdh" id="51Z40Vwz5$S" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="p4fyl5KT3p" role="3cqZAp">
          <node concept="3cpWsn" id="p4fyl5KT3s" role="3cpWs9">
            <property role="TrG5h" value="overrideModifier" />
            <node concept="17QB3L" id="p4fyl5KT3n" role="1tU5fm" />
            <node concept="3K4zz7" id="p4fyl5KTdQ" role="33vP2m">
              <node concept="Xl_RD" id="p4fyl5KTdR" role="3K4E3e">
                <property role="Xl_RC" value="override " />
              </node>
              <node concept="Xl_RD" id="p4fyl5KTdS" role="3K4GZi">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="p4fyl5KTdT" role="3K4Cdx">
                <node concept="117lpO" id="p4fyl5KTdU" role="2Oq$k0" />
                <node concept="3TrcHB" id="p4fyl5KTdV" role="2OqNvi">
                  <ref role="3TsBF5" to="anwi:2Np_kya7NCH" resolve="isOverriding" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40Vwz6Mr" role="3cqZAp" />
        <node concept="lc7rE" id="2Np_kya0hYj" role="3cqZAp">
          <node concept="l9hG8" id="2Np_kya0i0t" role="lcghm">
            <node concept="37vLTw" id="51Z40Vwz6jP" role="lb14g">
              <ref role="3cqZAo" node="51Z40Vwz5$F" resolve="modifier" />
            </node>
          </node>
          <node concept="l9hG8" id="2Np_kyaTPdU" role="lcghm">
            <node concept="37vLTw" id="p4fyl5KTgn" role="lb14g">
              <ref role="3cqZAo" node="p4fyl5KT3s" resolve="overrideModifier" />
            </node>
          </node>
          <node concept="la8eA" id="2Np_kya0iPp" role="lcghm">
            <property role="lacIc" value="fun " />
          </node>
          <node concept="l9hG8" id="2Np_kya0iSu" role="lcghm">
            <node concept="2OqwBi" id="2Np_kya0jaT" role="lb14g">
              <node concept="117lpO" id="p4fykJ0jfz" role="2Oq$k0" />
              <node concept="3TrcHB" id="2Np_kya0jcL" role="2OqNvi">
                <ref role="3TsBF5" to="anwi:1DRRhzqUGBH" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2Np_kya0jed" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="lc7rE" id="p4fyl5LSRU" role="3cqZAp">
          <node concept="1bDJIP" id="p4fyl5LT1q" role="lcghm">
            <ref role="1rvKf6" node="p4fyl5LJ8P" resolve="parameters" />
            <node concept="2OqwBi" id="p4fyl5LTgl" role="1ryhcI">
              <node concept="117lpO" id="p4fyl5LT3W" role="2Oq$k0" />
              <node concept="3Tsc0h" id="p4fyl5LTtZ" role="2OqNvi">
                <ref role="3TtcxE" to="anwi:1DRRhzqKHGP" resolve="parameters" />
              </node>
            </node>
            <node concept="2OqwBi" id="p4fyl5LTGf" role="1ryhcI">
              <node concept="117lpO" id="p4fyl5LTv_" role="2Oq$k0" />
              <node concept="3TrcHB" id="p4fyl5LTWn" role="2OqNvi">
                <ref role="3TsBF5" to="anwi:p4fykIXUQO" resolve="hasVerticallyAlignedParameters" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2Np_kya2gXX" role="3cqZAp">
          <node concept="la8eA" id="2Np_kya2h2k" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kya2gMo" role="3cqZAp" />
        <node concept="3clFbJ" id="2Np_kya0jFd" role="3cqZAp">
          <node concept="3clFbS" id="2Np_kya0jFf" role="3clFbx">
            <node concept="lc7rE" id="2Np_kya0k9v" role="3cqZAp">
              <node concept="la8eA" id="2Np_kya0k9Z" role="lcghm">
                <property role="lacIc" value=" : " />
              </node>
              <node concept="l9hG8" id="2Np_kya0kHI" role="lcghm">
                <node concept="2OqwBi" id="2Np_kya2fJG" role="lb14g">
                  <node concept="2OqwBi" id="2Np_kya2fkZ" role="2Oq$k0">
                    <node concept="117lpO" id="2Np_kya2fab" role="2Oq$k0" />
                    <node concept="2qgKlT" id="2Np_kya2fyX" role="2OqNvi">
                      <ref role="37wK5l" to="opxm:2Np_kya0npo" resolve="mapper" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2Np_kya2fSI" role="2OqNvi">
                    <ref role="37wK5l" to="cpc8:2Np_kya0Fv3" resolve="mapDataType" />
                    <node concept="2OqwBi" id="p4fykJ0jMN" role="37wK5m">
                      <node concept="117lpO" id="p4fykJ0jIB" role="2Oq$k0" />
                      <node concept="3TrEf2" id="p4fykJ0jQV" role="2OqNvi">
                        <ref role="3Tt5mk" to="anwi:1DRRhzqKHGT" resolve="returnType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2Np_kya0jKM" role="3clFbw">
            <node concept="117lpO" id="p4fykJ0jTd" role="2Oq$k0" />
            <node concept="2qgKlT" id="2Np_kyaxjrO" role="2OqNvi">
              <ref role="37wK5l" to="igqx:p4fykJ0jWj" resolve="hasReturnValue" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kyaivKP" role="3cqZAp" />
        <node concept="3clFbJ" id="2Np_kyaiw0q" role="3cqZAp">
          <node concept="3clFbS" id="2Np_kyaiw0s" role="3clFbx">
            <node concept="3cpWs6" id="2Np_kyai$Ef" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2Np_kyaizQm" role="3clFbw">
            <node concept="117lpO" id="2Np_kyaizIc" role="2Oq$k0" />
            <node concept="3TrcHB" id="2Np_kyai$0w" role="2OqNvi">
              <ref role="3TsBF5" to="anwi:2Np_kya0jhk" resolve="isInInterface" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kyai$EC" role="3cqZAp" />
        <node concept="lc7rE" id="2Np_kyai_yk" role="3cqZAp">
          <node concept="la8eA" id="2Np_kyai_KE" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="2Np_kyaiA3k" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kyankhE" role="3cqZAp" />
        <node concept="11p84A" id="2Np_kyauhfd" role="3cqZAp" />
        <node concept="3clFbJ" id="2Np_kyaiBTQ" role="3cqZAp">
          <node concept="3clFbS" id="2Np_kyaiBTS" role="3clFbx">
            <node concept="lc7rE" id="2Np_kyaiCe1" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kyaugYM" role="lcghm" />
              <node concept="la8eA" id="2Np_kyaiCfj" role="lcghm">
                <property role="lacIc" value="return " />
              </node>
              <node concept="l9hG8" id="2Np_kyaiCgy" role="lcghm">
                <node concept="2OqwBi" id="2Np_kyaiCRS" role="lb14g">
                  <node concept="2OqwBi" id="2Np_kyaiCsm" role="2Oq$k0">
                    <node concept="117lpO" id="2Np_kyaiChy" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2Np_kyaiCEi" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:2Np_kya7QJe" resolve="property" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="2Np_kyaiDeU" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="1bDJIP" id="2Np_kyajATE" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2Np_kyaiygJ" role="3clFbw">
            <node concept="2OqwBi" id="2Np_kyaixpl" role="2Oq$k0">
              <node concept="117lpO" id="2Np_kyaix9L" role="2Oq$k0" />
              <node concept="3TrEf2" id="2Np_kyaixJi" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:2Np_kya7QJe" resolve="property" />
              </node>
            </node>
            <node concept="3x8VRR" id="2Np_kyaiC3a" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="2Np_kyaiBWQ" role="9aQIa">
            <node concept="3clFbS" id="2Np_kyaiBWR" role="9aQI4">
              <node concept="lc7rE" id="2Np_kyaiCb_" role="3cqZAp">
                <node concept="2BGw6n" id="2Np_kyauh0e" role="lcghm" />
                <node concept="la8eA" id="2Np_kyaiCcR" role="lcghm">
                  <property role="lacIc" value="TODO(&quot;Not yet implemented&quot;)" />
                </node>
                <node concept="1bDJIP" id="2Np_kyajAN5" role="lcghm">
                  <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11pn5k" id="2Np_kyauhGm" role="3cqZAp" />
        <node concept="3clFbH" id="2Np_kyaufj2" role="3cqZAp" />
        <node concept="lc7rE" id="2Np_kyaiAR9" role="3cqZAp">
          <node concept="2BGw6n" id="2Np_kyaug$X" role="lcghm" />
          <node concept="la8eA" id="2Np_kyaiB5y" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2Np_kya3E6G">
    <property role="3GE5qa" value="commandSide.aggregate" />
    <ref role="WuzLi" to="m7gy:2Np_kya3D3X" resolve="EventAggregateBaseClassKotlinOutput" />
    <node concept="29tfMY" id="2Np_kya3Ed_" role="29tGrW">
      <node concept="3clFbS" id="2Np_kya3EdA" role="2VODD2">
        <node concept="3clFbF" id="2Np_kya3EjQ" role="3cqZAp">
          <node concept="10M0yZ" id="2Np_kya3Esf" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:2Np_kya2A3Z" resolve="BASE_EVENT_AGGREGATE_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="2Np_kya3EtL" role="1Knhgg">
      <node concept="3clFbS" id="2Np_kya3EtN" role="2VODD2">
        <node concept="3clFbF" id="2Np_kya3Eu_" role="3cqZAp">
          <node concept="2OqwBi" id="2Np_kya3EM8" role="3clFbG">
            <node concept="117lpO" id="2Np_kya3Eu$" role="2Oq$k0" />
            <node concept="2qgKlT" id="2Np_kya3EXT" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="2Np_kya3F4h" role="33IsuW">
      <node concept="3clFbS" id="2Np_kya3F4i" role="2VODD2">
        <node concept="3clFbF" id="2Np_kya3F5R" role="3cqZAp">
          <node concept="2OqwBi" id="2Np_kya3FI4" role="3clFbG">
            <node concept="Rm8GO" id="2Np_kya3F7R" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="2Np_kya3Gbd" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="2Np_kya3Gd2" role="11c4hB">
      <node concept="3clFbS" id="2Np_kya3Gd3" role="2VODD2">
        <node concept="lc7rE" id="2Np_kya3Ggd" role="3cqZAp">
          <node concept="1bDJIP" id="2Np_kya3GgG" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="2Np_kya3Gh7" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kya3GfP" role="3cqZAp" />
        <node concept="lc7rE" id="2Np_kya3Gv2" role="3cqZAp">
          <node concept="1bDJIP" id="2Np_kya3Gv3" role="lcghm">
            <ref role="1rvKf6" node="Sy32QR5O4k" resolve="_abstractclass" />
            <node concept="10M0yZ" id="2Np_kya68pJ" role="1ryhcI">
              <ref role="3cqZAo" to="cpc8:2Np_kya2A3Z" resolve="BASE_EVENT_AGGREGATE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="2Np_kya3Gv5" role="lcghm">
            <property role="lacIc" value="&lt;ID, EventType: " />
          </node>
          <node concept="l9hG8" id="2Np_kya3Gv6" role="lcghm">
            <node concept="10M0yZ" id="2Np_kya3Gv7" role="lb14g">
              <ref role="3cqZAo" to="cpc8:4b$xqUBxGD0" resolve="EVENT_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="2Np_kya3Gv8" role="lcghm">
            <property role="lacIc" value="&gt;(" />
          </node>
          <node concept="1bDJIP" id="2Np_kya3Gv9" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="2Np_kya3Gva" role="3cqZAp">
          <node concept="3clFbS" id="2Np_kya3Gvb" role="3izTki">
            <node concept="lc7rE" id="2Np_kya3Gvc" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kya3Gvd" role="lcghm" />
              <node concept="la8eA" id="2Np_kya3Gve" role="lcghm">
                <property role="lacIc" value="private val id: ID" />
              </node>
              <node concept="1bDJIP" id="2Np_kya3Gvf" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2Np_kya3Gvg" role="3cqZAp">
          <node concept="la8eA" id="2Np_kya3Gvh" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="2Np_kya3Gvi" role="lcghm">
            <node concept="10M0yZ" id="2Np_kya3GCY" role="lb14g">
              <ref role="3cqZAo" to="cpc8:Sy32QR2R8C" resolve="EVENT_AGGREGATE_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="2Np_kya3Gvk" role="lcghm">
            <property role="lacIc" value="&lt;ID, EventType&gt; {" />
          </node>
          <node concept="1bDJIP" id="2Np_kya3Gvl" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="2Np_kya3Gvm" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kya3Gvn" role="3cqZAp" />
        <node concept="3izx1p" id="2Np_kya3Gvo" role="3cqZAp">
          <node concept="3clFbS" id="2Np_kya3Gvp" role="3izTki">
            <node concept="lc7rE" id="2Np_kya3Gvq" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kya3Gvr" role="lcghm" />
              <node concept="la8eA" id="2Np_kya3Gvs" role="lcghm">
                <property role="lacIc" value="private val changes = mutableListOf&lt;EventType&gt;()" />
              </node>
              <node concept="1bDJIP" id="2Np_kya3Gvt" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="2Np_kya3Gvu" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2Np_kya3Gvv" role="3cqZAp" />
            <node concept="lc7rE" id="2Np_kya3Gvw" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kya3Gvx" role="lcghm" />
              <node concept="la8eA" id="2Np_kya3Gvy" role="lcghm">
                <property role="lacIc" value="final override fun getId(): ID = id" />
              </node>
              <node concept="1bDJIP" id="2Np_kya3Gvz" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="2Np_kya3Gv$" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2Np_kya3Gv_" role="3cqZAp" />
            <node concept="lc7rE" id="2Np_kya3GvA" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kya3GvB" role="lcghm" />
              <node concept="la8eA" id="2Np_kya3GvC" role="lcghm">
                <property role="lacIc" value="final override fun getChanges(): List&lt;EventType&gt; = changes.toList()" />
              </node>
              <node concept="1bDJIP" id="2Np_kya3GvD" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="2Np_kya3GvE" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2Np_kya3GvF" role="3cqZAp" />
            <node concept="lc7rE" id="2Np_kya3GvG" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kya3GvH" role="lcghm" />
              <node concept="la8eA" id="2Np_kya3GvI" role="lcghm">
                <property role="lacIc" value="final override fun recreateWith(events: List&lt;EventType&gt;) = events.forEach(::handleEvent)" />
              </node>
              <node concept="1bDJIP" id="2Np_kya3GvJ" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="2Np_kya3GvK" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2Np_kya3GvL" role="3cqZAp" />
            <node concept="lc7rE" id="2Np_kya3GvM" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kya3GvN" role="lcghm" />
              <node concept="la8eA" id="2Np_kya3GvO" role="lcghm">
                <property role="lacIc" value="final override fun cacheChange(event: EventType) {" />
              </node>
              <node concept="1bDJIP" id="2Np_kya6m6e" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="2Np_kya3GvR" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kya3GvS" role="lcghm" />
              <node concept="2BGw6n" id="2Np_kya3GvT" role="lcghm" />
              <node concept="la8eA" id="2Np_kya3GvU" role="lcghm">
                <property role="lacIc" value="changes.add(event)" />
              </node>
              <node concept="1bDJIP" id="2Np_kya3GvV" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="2Np_kya3GvW" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kya3GvX" role="lcghm" />
              <node concept="2BGw6n" id="2Np_kya3GvY" role="lcghm" />
              <node concept="la8eA" id="2Np_kya3GvZ" role="lcghm">
                <property role="lacIc" value="handleEvent(event)" />
              </node>
              <node concept="1bDJIP" id="2Np_kya3Gw0" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="2Np_kya3Gw1" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kya3Gw2" role="lcghm" />
              <node concept="la8eA" id="2Np_kya3Gw3" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="1bDJIP" id="2Np_kya3Gw4" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="2Np_kya3Gw5" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2Np_kya3Gw6" role="3cqZAp" />
            <node concept="lc7rE" id="2Np_kya3Gw7" role="3cqZAp">
              <node concept="2BGw6n" id="2Np_kya3Gw8" role="lcghm" />
              <node concept="la8eA" id="2Np_kya3Gw9" role="lcghm">
                <property role="lacIc" value="abstract fun handleEvent(event: EventType)" />
              </node>
              <node concept="1bDJIP" id="2Np_kya3Gwa" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="2Np_kya3Gwb" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kya3Gwc" role="3cqZAp" />
        <node concept="lc7rE" id="2Np_kya3Gwd" role="3cqZAp">
          <node concept="la8eA" id="2Np_kya3Gwe" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kya3GiC" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2Np_kyaTFaw">
    <property role="3GE5qa" value="commandSide.command.handler" />
    <ref role="WuzLi" to="m7gy:2Np_kyaTCyS" resolve="CommandHandlerSeparatedKotlinOutput" />
    <node concept="29tfMY" id="2Np_kyaTFax" role="29tGrW">
      <node concept="3clFbS" id="2Np_kyaTFay" role="2VODD2">
        <node concept="3clFbF" id="2Np_kyaTFL4" role="3cqZAp">
          <node concept="3cpWs3" id="2Np_kyaTHuZ" role="3clFbG">
            <node concept="Xl_RD" id="2Np_kyaTHw3" role="3uHU7w">
              <property role="Xl_RC" value="Handler" />
            </node>
            <node concept="2OqwBi" id="2Np_kyaTGt2" role="3uHU7B">
              <node concept="2OqwBi" id="2Np_kyaTFOb" role="2Oq$k0">
                <node concept="117lpO" id="2Np_kyaTFL3" role="2Oq$k0" />
                <node concept="3TrEf2" id="2Np_kyaTG3b" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:2Np_kyaSuJQ" resolve="command" />
                </node>
              </node>
              <node concept="3TrcHB" id="2Np_kyaTGWj" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="2Np_kyaTHCO" role="1Knhgg">
      <node concept="3clFbS" id="2Np_kyaTHCQ" role="2VODD2">
        <node concept="3clFbF" id="2Np_kyaTHEk" role="3cqZAp">
          <node concept="2OqwBi" id="2Np_kyaTHSA" role="3clFbG">
            <node concept="117lpO" id="2Np_kyaTHEj" role="2Oq$k0" />
            <node concept="2qgKlT" id="2Np_kyaTHTU" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="2Np_kyaTHYv" role="33IsuW">
      <node concept="3clFbS" id="2Np_kyaTHYw" role="2VODD2">
        <node concept="3clFbF" id="2Np_kyaTI0L" role="3cqZAp">
          <node concept="2OqwBi" id="2Np_kyaTIKe" role="3clFbG">
            <node concept="Rm8GO" id="2Np_kyaTI3G" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="2Np_kyaTJei" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="2Np_kyaTJh2" role="11c4hB">
      <node concept="3clFbS" id="2Np_kyaTJh3" role="2VODD2">
        <node concept="lc7rE" id="2Np_kyaTJmP" role="3cqZAp">
          <node concept="1bDJIP" id="2Np_kyaTJnj" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="2Np_kyaTJnI" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kyaTJqr" role="3cqZAp" />
        <node concept="lc7rE" id="2Np_kyaTKMP" role="3cqZAp">
          <node concept="1bDJIP" id="2Np_kyaTKNw" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="3cpWs3" id="2Np_kyaTMlC" role="1ryhcI">
              <node concept="Xl_RD" id="2Np_kyaTMmD" role="3uHU7w">
                <property role="Xl_RC" value="Handler" />
              </node>
              <node concept="2OqwBi" id="2Np_kyaTLv$" role="3uHU7B">
                <node concept="2OqwBi" id="2Np_kyaTL18" role="2Oq$k0">
                  <node concept="117lpO" id="2Np_kyaTKOM" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2Np_kyaTLez" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:2Np_kyaSuJQ" resolve="command" />
                  </node>
                </node>
                <node concept="3TrcHB" id="2Np_kyaTLT1" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2Np_kyaTMvb" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_tuxqO" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_tuxqP" role="3izTki">
            <node concept="lc7rE" id="p4fyl5MFqF" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl5MFrn" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LKBf" resolve="verticalParameters" />
                <node concept="2OqwBi" id="p4fyl5MFCb" role="1ryhcI">
                  <node concept="117lpO" id="p4fyl5MFrM" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="p4fyl5MFPP" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_srsR6" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2Np_kyaTMA0" role="3cqZAp">
          <node concept="la8eA" id="2Np_kyaTMBk" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="2Np_kyaTMCS" role="lcghm">
            <node concept="10M0yZ" id="2Np_kyaTMFA" role="lb14g">
              <ref role="3cqZAo" to="cpc8:4b$xqUBr$KS" resolve="COMMAND_HANDLER_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="2Np_kyaTMHv" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
          <node concept="l9hG8" id="2Np_kyaTMJe" role="lcghm">
            <node concept="2OqwBi" id="2Np_kyaTNoi" role="lb14g">
              <node concept="2OqwBi" id="2Np_kyaTMVi" role="2Oq$k0">
                <node concept="117lpO" id="2Np_kyaTMKu" role="2Oq$k0" />
                <node concept="2qgKlT" id="2Np_kyaTN9e" role="2OqNvi">
                  <ref role="37wK5l" to="opxm:4b$xqUBeLAT" resolve="converter" />
                </node>
              </node>
              <node concept="liA8E" id="2Np_kyaTNwT" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:7IRUqbcA0He" resolve="convertCommand" />
                <node concept="2OqwBi" id="2Np_kyaTNDL" role="37wK5m">
                  <node concept="117lpO" id="2Np_kyaTNAp" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2Np_kyaTNGj" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:2Np_kyaSuJQ" resolve="command" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2Np_kyaTNK6" role="lcghm">
            <property role="lacIc" value="&gt; {" />
          </node>
          <node concept="1bDJIP" id="2Np_kyaTNPw" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="2Np_kyaTNRS" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kyaTJqx" role="3cqZAp" />
        <node concept="3izx1p" id="2Np_kyaTO9P" role="3cqZAp">
          <node concept="3clFbS" id="2Np_kyaTO9R" role="3izTki">
            <node concept="lc7rE" id="2Np_kyaTYW6" role="3cqZAp">
              <node concept="1bDJIP" id="2Np_kyaTYWy" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="2Np_kyaU09K" role="1ryhcI">
                  <node concept="117lpO" id="2Np_kyaTZMw" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2Np_kyaU0bu" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:2Np_kyaTQp5" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Np_kyaTOBg" role="3cqZAp" />
        <node concept="lc7rE" id="2Np_kyaTOy6" role="3cqZAp">
          <node concept="la8eA" id="2Np_kyaTO_r" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1DRRhzr3ccx">
    <property role="3GE5qa" value="connecting.handler" />
    <ref role="WuzLi" to="m7gy:1DRRhzqWD9_" resolve="EventHandlerSeparatedKotlinOutput" />
    <node concept="29tfMY" id="1DRRhzr3ccy" role="29tGrW">
      <node concept="3clFbS" id="1DRRhzr3ccz" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzr3ciO" role="3cqZAp">
          <node concept="3cpWs3" id="1DRRhzr3e2C" role="3clFbG">
            <node concept="Xl_RD" id="1DRRhzr3e3J" role="3uHU7w">
              <property role="Xl_RC" value="Handler" />
            </node>
            <node concept="2OqwBi" id="1DRRhzr3d7T" role="3uHU7B">
              <node concept="2OqwBi" id="1DRRhzr3cBp" role="2Oq$k0">
                <node concept="117lpO" id="1DRRhzr3ciN" role="2Oq$k0" />
                <node concept="3TrEf2" id="1DRRhzr3cOQ" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:1DRRhzqYTMq" resolve="event" />
                </node>
              </node>
              <node concept="3TrcHB" id="1DRRhzr3dvK" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="1DRRhzr3ecw" role="1Knhgg">
      <node concept="3clFbS" id="1DRRhzr3ecy" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzr3ee0" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzr3eez" role="3clFbG">
            <node concept="117lpO" id="1DRRhzr3edZ" role="2Oq$k0" />
            <node concept="2qgKlT" id="1DRRhzr3efR" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="1DRRhzr3eks" role="33IsuW">
      <node concept="3clFbS" id="1DRRhzr3ekt" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzr3emI" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzr3fvu" role="3clFbG">
            <node concept="Rm8GO" id="1DRRhzr3eHa" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="1DRRhzr3fXy" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="1DRRhzr3g0i" role="11c4hB">
      <node concept="3clFbS" id="1DRRhzr3g0j" role="2VODD2">
        <node concept="3cpWs8" id="p4fykVGckz" role="3cqZAp">
          <node concept="3cpWsn" id="p4fykVGck$" role="3cpWs9">
            <property role="TrG5h" value="eventName" />
            <node concept="17QB3L" id="p4fykVGchg" role="1tU5fm" />
            <node concept="2OqwBi" id="p4fykVGck_" role="33vP2m">
              <node concept="2OqwBi" id="p4fykVGckA" role="2Oq$k0">
                <node concept="117lpO" id="p4fykVGckB" role="2Oq$k0" />
                <node concept="2qgKlT" id="p4fykVGckC" role="2OqNvi">
                  <ref role="37wK5l" to="opxm:4b$xqUBeLAT" resolve="converter" />
                </node>
              </node>
              <node concept="liA8E" id="p4fykVGckD" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:7IRUqbcA1uk" resolve="convertEvent" />
                <node concept="2OqwBi" id="p4fykVGckE" role="37wK5m">
                  <node concept="117lpO" id="p4fykVGckF" role="2Oq$k0" />
                  <node concept="3TrEf2" id="p4fykVGckG" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:1DRRhzqYTMq" resolve="event" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="p4fykVGcFS" role="3cqZAp">
          <node concept="3cpWsn" id="p4fykVGcFT" role="3cpWs9">
            <property role="TrG5h" value="eventHandlerInterface" />
            <node concept="17QB3L" id="p4fykVGcDA" role="1tU5fm" />
            <node concept="10M0yZ" id="p4fykVGcFU" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:4b$xqUBxHGe" resolve="EVENT_HANDLER_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="p4fykVGbLv" role="3cqZAp" />
        <node concept="3clFbH" id="p4fykVGbMi" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzr3gz_" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzr3gzA" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="1DRRhzr3gzB" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzr3gzC" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzr3gzD" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzr3gzE" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="3cpWs3" id="1DRRhzr3gzF" role="1ryhcI">
              <node concept="Xl_RD" id="1DRRhzr3gzG" role="3uHU7w">
                <property role="Xl_RC" value="Handler" />
              </node>
              <node concept="2OqwBi" id="1DRRhzr3gzH" role="3uHU7B">
                <node concept="2OqwBi" id="1DRRhzr3gzI" role="2Oq$k0">
                  <node concept="117lpO" id="1DRRhzr3gzJ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1DRRhzr3gzK" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:1DRRhzqYTMq" resolve="event" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1DRRhzr3gzL" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzr3gzM" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_AJTQV" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_AJTQW" role="3izTki">
            <node concept="lc7rE" id="p4fyl5MJ1H" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl5MJ2p" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LKBf" resolve="verticalParameters" />
                <node concept="2OqwBi" id="p4fyl5MJfd" role="1ryhcI">
                  <node concept="117lpO" id="p4fyl5MJ2O" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="p4fyl5MJsR" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_AJ2nG" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1DRRhzr3gzN" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzr3gzO" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="1DRRhzr3gzP" role="lcghm">
            <node concept="37vLTw" id="p4fykVGcW5" role="lb14g">
              <ref role="3cqZAo" node="p4fykVGcFT" resolve="eventHandlerInterface" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzr3gzR" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
          <node concept="l9hG8" id="1DRRhzr3gzS" role="lcghm">
            <node concept="37vLTw" id="p4fykVGc_t" role="lb14g">
              <ref role="3cqZAo" node="p4fykVGck$" resolve="eventName" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzr3g$1" role="lcghm">
            <property role="lacIc" value="&gt; {" />
          </node>
          <node concept="1bDJIP" id="1DRRhzr3g$2" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="1DRRhzr3g$3" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="1DRRhzr3g$5" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzr3g$6" role="3izTki">
            <node concept="lc7rE" id="1DRRhzr3g$7" role="3cqZAp">
              <node concept="1bDJIP" id="1DRRhzr3g$8" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="1DRRhzr3iRk" role="1ryhcI">
                  <node concept="117lpO" id="1DRRhzr3iGM" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1DRRhzr3j9Q" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:1DRRhzr3hdU" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1DRRhzr3g$g" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzr3g$h" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1DRRhzrau88">
    <property role="3GE5qa" value="querySide.query.handler" />
    <ref role="WuzLi" to="m7gy:1DRRhzr7q3S" resolve="QueryHandlerSeparatedKotlinOutput" />
    <node concept="29tfMY" id="1DRRhzrau89" role="29tGrW">
      <node concept="3clFbS" id="1DRRhzrau8a" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzrauer" role="3cqZAp">
          <node concept="3cpWs3" id="1DRRhzraw71" role="3clFbG">
            <node concept="Xl_RD" id="1DRRhzraw85" role="3uHU7w">
              <property role="Xl_RC" value="Handler" />
            </node>
            <node concept="2OqwBi" id="1DRRhzravak" role="3uHU7B">
              <node concept="2OqwBi" id="1DRRhzrauz0" role="2Oq$k0">
                <node concept="117lpO" id="1DRRhzraueq" role="2Oq$k0" />
                <node concept="3TrEf2" id="1DRRhzrauQf" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:1DRRhzr7q3Y" resolve="query" />
                </node>
              </node>
              <node concept="3TrcHB" id="1DRRhzravzU" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="1DRRhzrawfS" role="1Knhgg">
      <node concept="3clFbS" id="1DRRhzrawfU" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzrawho" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzrawhV" role="3clFbG">
            <node concept="117lpO" id="1DRRhzrawhn" role="2Oq$k0" />
            <node concept="2qgKlT" id="1DRRhzrawjf" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="1DRRhzrawnO" role="33IsuW">
      <node concept="3clFbS" id="1DRRhzrawnP" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzrawq6" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzrax9z" role="3clFbG">
            <node concept="Rm8GO" id="1DRRhzrawt1" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="1DRRhzraxBB" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="1DRRhzraxY7" role="11c4hB">
      <node concept="3clFbS" id="1DRRhzraxY8" role="2VODD2">
        <node concept="3cpWs8" id="1DRRhzrdf7g" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzrdf7h" role="3cpWs9">
            <property role="TrG5h" value="converter" />
            <node concept="3uibUv" id="1DRRhzrdf6Q" role="1tU5fm">
              <ref role="3uigEE" to="cpc8:4p0keayIwoL" resolve="DependencyTextConverter" />
            </node>
            <node concept="2OqwBi" id="1DRRhzrdf7i" role="33vP2m">
              <node concept="117lpO" id="1DRRhzrdf7j" role="2Oq$k0" />
              <node concept="2qgKlT" id="1DRRhzrdf7k" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBeLAT" resolve="converter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzrq03r" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzrq03s" role="3cpWs9">
            <property role="TrG5h" value="queryString" />
            <node concept="17QB3L" id="1DRRhzrq00J" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzrq03t" role="33vP2m">
              <node concept="liA8E" id="1DRRhzrq03u" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:7IRUqbcA23F" resolve="convertQuery" />
                <node concept="2OqwBi" id="1DRRhzrq03v" role="37wK5m">
                  <node concept="117lpO" id="1DRRhzrq03w" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1DRRhzrq03x" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:1DRRhzr7q3Y" resolve="query" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1DRRhzrq03y" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzrdf7h" resolve="converter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzrq0NU" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzrq0NV" role="3cpWs9">
            <property role="TrG5h" value="returnValueString" />
            <node concept="17QB3L" id="1DRRhzrq0DE" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzrq0NW" role="33vP2m">
              <node concept="37vLTw" id="1DRRhzrq0NX" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzrdf7h" resolve="converter" />
              </node>
              <node concept="liA8E" id="1DRRhzrq0NY" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                <node concept="2OqwBi" id="1DRRhzrq0NZ" role="37wK5m">
                  <node concept="2OqwBi" id="1DRRhzrq0O0" role="2Oq$k0">
                    <node concept="117lpO" id="1DRRhzrq0O1" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1DRRhzrq0O2" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:1DRRhzr7q3Y" resolve="query" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1DRRhzrq0O3" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:3DbZR$O2F_T" resolve="returnType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzrpZKb" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzrayxb" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzrayxc" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="1DRRhzrayxd" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzrayxe" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzrayxf" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzrayxg" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="3cpWs3" id="1DRRhzrayxh" role="1ryhcI">
              <node concept="Xl_RD" id="1DRRhzrayxi" role="3uHU7w">
                <property role="Xl_RC" value="Handler" />
              </node>
              <node concept="2OqwBi" id="1DRRhzrayxj" role="3uHU7B">
                <node concept="2OqwBi" id="1DRRhzrayxk" role="2Oq$k0">
                  <node concept="117lpO" id="1DRRhzrayxl" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1DRRhzrayxm" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:1DRRhzr7q3Y" resolve="query" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1DRRhzrayxn" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzrayxo" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_OYPAB" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_OYPAC" role="3izTki">
            <node concept="lc7rE" id="p4fyl5MMjp" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl5MMk5" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LKBf" resolve="verticalParameters" />
                <node concept="2OqwBi" id="p4fyl5MMwT" role="1ryhcI">
                  <node concept="117lpO" id="p4fyl5MMkw" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="p4fyl5MMIz" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_OuuwJ" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1DRRhzrayxp" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzrayxq" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="1DRRhzrayxr" role="lcghm">
            <node concept="10M0yZ" id="1DRRhzrazp6" role="lb14g">
              <ref role="3cqZAo" to="cpc8:4b$xqUATzHo" resolve="QUERY_HANDLER_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzrayxt" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
          <node concept="l9hG8" id="1DRRhzrayxu" role="lcghm">
            <node concept="37vLTw" id="1DRRhzrq0sE" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzrq03s" resolve="queryString" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzrdfzc" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="l9hG8" id="1DRRhzrdfDU" role="lcghm">
            <node concept="37vLTw" id="1DRRhzrq1kR" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzrq0NV" resolve="returnValueString" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzrayxB" role="lcghm">
            <property role="lacIc" value="&gt; {" />
          </node>
          <node concept="1bDJIP" id="1DRRhzrayxC" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="1DRRhzrayxD" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzrayxE" role="3cqZAp" />
        <node concept="3izx1p" id="1DRRhzrayxF" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzrayxG" role="3izTki">
            <node concept="lc7rE" id="1DRRhzrayxH" role="3cqZAp">
              <node concept="1bDJIP" id="1DRRhzrayxI" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="1DRRhzrayxJ" role="1ryhcI">
                  <node concept="117lpO" id="1DRRhzrayxK" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1DRRhzrayxL" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:1DRRhzr7q40" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzrayxP" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzrayxQ" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzrayxR" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1DRRhzrqOuk">
    <property role="3GE5qa" value="connecting" />
    <ref role="WuzLi" to="m7gy:1DRRhzrpYig" resolve="EventWrapperInterfaceKotlinOutput" />
    <node concept="11bSqf" id="1DRRhzrqOul" role="11c4hB">
      <node concept="3clFbS" id="1DRRhzrqOum" role="2VODD2">
        <node concept="lc7rE" id="1DRRhzrqSxc" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzrqSxd" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="1DRRhzrqSxe" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzrqSxf" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzrqSxg" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzrqSxh" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="2OqwBi" id="1DRRhzrUA9i" role="1ryhcI">
              <node concept="2OqwBi" id="1DRRhzrqSxk" role="2Oq$k0">
                <node concept="117lpO" id="1DRRhzrqSxm" role="2Oq$k0" />
                <node concept="3TrEf2" id="1DRRhzrUA8l" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:1DRRhzrJ_Rj" resolve="substitudeEvent" />
                </node>
              </node>
              <node concept="3TrcHB" id="1DRRhzrUAaY" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzrqUgK" role="lcghm">
            <property role="lacIc" value=": " />
          </node>
          <node concept="l9hG8" id="1DRRhzrqUbl" role="lcghm">
            <node concept="10M0yZ" id="1DRRhzrqUbm" role="lb14g">
              <ref role="3cqZAo" to="cpc8:4b$xqUBxGD0" resolve="EVENT_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="1bDJIP" id="1DRRhzrqUky" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="1DRRhzrqUkJ" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzrqSxB" role="3cqZAp" />
        <node concept="3clFbF" id="1DRRhzrqUDm" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzrqXwa" role="3clFbG">
            <node concept="2OqwBi" id="1DRRhzrqUQF" role="2Oq$k0">
              <node concept="117lpO" id="1DRRhzrqUDl" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1DRRhzrqV4k" role="2OqNvi">
                <ref role="3TtcxE" to="anwi:1DRRhzrpWuK" resolve="wrappedEvents" />
              </node>
            </node>
            <node concept="2es0OD" id="1DRRhzrqZdS" role="2OqNvi">
              <node concept="1bVj0M" id="1DRRhzrqZdU" role="23t8la">
                <node concept="3clFbS" id="1DRRhzrqZdV" role="1bW5cS">
                  <node concept="lc7rE" id="1DRRhzrqZoZ" role="3cqZAp">
                    <node concept="l9hG8" id="1DRRhzrqZrG" role="lcghm">
                      <node concept="37vLTw" id="1DRRhzrqZuS" role="lb14g">
                        <ref role="3cqZAo" node="1DRRhzrqZdW" resolve="event" />
                      </node>
                    </node>
                    <node concept="1bDJIP" id="1DRRhzrqZBs" role="lcghm">
                      <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                      <node concept="3cmrfG" id="1DRRhzrqZBy" role="1ryhcI">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1DRRhzrqZdW" role="1bW2Oz">
                  <property role="TrG5h" value="event" />
                  <node concept="2jxLKc" id="1DRRhzrqZdX" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="1DRRhzrqOSw" role="29tGrW">
      <node concept="3clFbS" id="1DRRhzrqOSx" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzrqOYM" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzrU_Cr" role="3clFbG">
            <node concept="2OqwBi" id="1DRRhzrqPNR" role="2Oq$k0">
              <node concept="117lpO" id="1DRRhzrqOYL" role="2Oq$k0" />
              <node concept="3TrEf2" id="1DRRhzrU_fA" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:1DRRhzrJ_Rj" resolve="substitudeEvent" />
              </node>
            </node>
            <node concept="3TrcHB" id="1DRRhzrU_XO" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="1DRRhzrqQgD" role="1Knhgg">
      <node concept="3clFbS" id="1DRRhzrqQgF" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzrqQhV" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzrqQAw" role="3clFbG">
            <node concept="117lpO" id="1DRRhzrqQhU" role="2Oq$k0" />
            <node concept="2qgKlT" id="1DRRhzrqQTJ" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="1DRRhzrqR6$" role="33IsuW">
      <node concept="3clFbS" id="1DRRhzrqR6_" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzrqRbU" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzrqRUW" role="3clFbG">
            <node concept="Rm8GO" id="1DRRhzrqReB" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="1DRRhzrqSoM" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1DRRhzs6igA">
    <property role="3GE5qa" value="commandSide.aggregate" />
    <ref role="WuzLi" to="m7gy:1DRRhzs4VKz" resolve="AggregateConcreteInterfaceKotlinOutput" />
    <node concept="29tfMY" id="1DRRhzs6igB" role="29tGrW">
      <node concept="3clFbS" id="1DRRhzs6igC" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzs6kAO" role="3cqZAp">
          <node concept="3cpWs3" id="1DRRhzs6l6c" role="3clFbG">
            <node concept="Xl_RD" id="1DRRhzs6kAN" role="3uHU7B">
              <property role="Xl_RC" value="I" />
            </node>
            <node concept="2OqwBi" id="1DRRhzs6k66" role="3uHU7w">
              <node concept="2OqwBi" id="1DRRhzs6jnF" role="2Oq$k0">
                <node concept="2OqwBi" id="1DRRhzs6iDh" role="2Oq$k0">
                  <node concept="117lpO" id="1DRRhzs6imS" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1DRRhzs6iQI" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:1DRRhzs480K" resolve="g_aggregate" />
                  </node>
                </node>
                <node concept="3TrEf2" id="1DRRhzs6jGf" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:4b$xqUBih0W" resolve="aggregate" />
                </node>
              </node>
              <node concept="3TrcHB" id="1DRRhzs6ksh" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="1DRRhzs6llr" role="1Knhgg">
      <node concept="3clFbS" id="1DRRhzs6llt" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzs6lmX" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzs6l_f" role="3clFbG">
            <node concept="117lpO" id="1DRRhzs6lmW" role="2Oq$k0" />
            <node concept="2qgKlT" id="1DRRhzs6lAz" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="1DRRhzs6lF8" role="33IsuW">
      <node concept="3clFbS" id="1DRRhzs6lF9" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzs6lHs" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzs6myA" role="3clFbG">
            <node concept="Rm8GO" id="1DRRhzs6lVQ" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="1DRRhzs6n0G" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="1DRRhzs6n3u" role="11c4hB">
      <node concept="3clFbS" id="1DRRhzs6n3v" role="2VODD2">
        <node concept="3cpWs8" id="1DRRhzs6qsL" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzs6qsM" role="3cpWs9">
            <property role="TrG5h" value="converter" />
            <node concept="3uibUv" id="1DRRhzs6qsn" role="1tU5fm">
              <ref role="3uigEE" to="cpc8:4p0keayIwoL" resolve="DependencyTextConverter" />
            </node>
            <node concept="2OqwBi" id="1DRRhzs6qsN" role="33vP2m">
              <node concept="117lpO" id="1DRRhzs6qsO" role="2Oq$k0" />
              <node concept="2qgKlT" id="1DRRhzs6qsP" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBeLAT" resolve="converter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzs6sK_" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzs6sKA" role="3cpWs9">
            <property role="TrG5h" value="idType" />
            <node concept="17QB3L" id="1DRRhzs6sJS" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzs6sKB" role="33vP2m">
              <node concept="37vLTw" id="1DRRhzs6sKC" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzs6qsM" resolve="converter" />
              </node>
              <node concept="liA8E" id="1DRRhzs6sKD" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                <node concept="2OqwBi" id="1DRRhzs6sKE" role="37wK5m">
                  <node concept="2OqwBi" id="1DRRhzs6sKF" role="2Oq$k0">
                    <node concept="2OqwBi" id="1DRRhzs6sKG" role="2Oq$k0">
                      <node concept="117lpO" id="1DRRhzs6sKH" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1DRRhzs6sKI" role="2OqNvi">
                        <ref role="3Tt5mk" to="anwi:1DRRhzs480K" resolve="g_aggregate" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1DRRhzs6sKJ" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:4b$xqUBih0W" resolve="aggregate" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1DRRhzs6sKK" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:4NUTY$DwDN6" resolve="idType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzs6tKS" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzs6tKT" role="3cpWs9">
            <property role="TrG5h" value="eventType" />
            <node concept="17QB3L" id="1DRRhzs6tI4" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzs6tKU" role="33vP2m">
              <node concept="37vLTw" id="1DRRhzs6tKV" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzs6qsM" resolve="converter" />
              </node>
              <node concept="liA8E" id="1DRRhzs6tKW" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:7IRUqbcA1uk" resolve="convertEvent" />
                <node concept="2OqwBi" id="1DRRhzs6tKX" role="37wK5m">
                  <node concept="2OqwBi" id="1DRRhzs6tKY" role="2Oq$k0">
                    <node concept="2OqwBi" id="1DRRhzs6tKZ" role="2Oq$k0">
                      <node concept="117lpO" id="1DRRhzs6tL0" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1DRRhzs6tL1" role="2OqNvi">
                        <ref role="3Tt5mk" to="anwi:1DRRhzs480K" resolve="g_aggregate" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1DRRhzs6tL2" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:1DRRhzrCEUZ" resolve="eventWrapper" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1DRRhzs6tL3" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:1DRRhzrJ_Rj" resolve="substitudeEvent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzs6qBX" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzs6nw0" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzs6nw1" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="1DRRhzs6nw2" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzs6nw3" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzs6nw4" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzs6nw5" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="3cpWs3" id="1DRRhzt9P0N" role="1ryhcI">
              <node concept="Xl_RD" id="1DRRhzt9OBI" role="3uHU7B">
                <property role="Xl_RC" value="I" />
              </node>
              <node concept="2OqwBi" id="1DRRhzs6p4X" role="3uHU7w">
                <node concept="2OqwBi" id="1DRRhzs6oCl" role="2Oq$k0">
                  <node concept="2OqwBi" id="1DRRhzs6nw7" role="2Oq$k0">
                    <node concept="117lpO" id="1DRRhzs6nw8" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1DRRhzs6nw9" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:1DRRhzs480K" resolve="g_aggregate" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1DRRhzs6oR8" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:4b$xqUBih0W" resolve="aggregate" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1DRRhzs6ptk" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzs6nwb" role="lcghm">
            <property role="lacIc" value=": " />
          </node>
          <node concept="l9hG8" id="1DRRhzs6pGf" role="lcghm">
            <node concept="10M0yZ" id="1DRRhzs6pK2" role="lb14g">
              <ref role="3cqZAo" to="cpc8:Sy32QR2R8C" resolve="EVENT_AGGREGATE_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzs6pN0" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
          <node concept="l9hG8" id="1DRRhzs6u5n" role="lcghm">
            <node concept="37vLTw" id="1DRRhzs6um7" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzs6sKA" resolve="idType" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzs6pRj" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="l9hG8" id="1DRRhzs6uBv" role="lcghm">
            <node concept="37vLTw" id="1DRRhzs6uGc" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzs6tKT" resolve="eventType" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzs6pUU" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzs6nwc" role="3cqZAp" />
        <node concept="3clFbJ" id="1DRRhzs6nwL" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzs6nwM" role="3clFbx">
            <node concept="3cpWs6" id="1DRRhzs6nwN" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="1DRRhzs6nwO" role="3clFbw">
            <node concept="2OqwBi" id="1DRRhzs6nwP" role="2Oq$k0">
              <node concept="117lpO" id="1DRRhzs6nwQ" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1DRRhzs6nwR" role="2OqNvi">
                <ref role="3TtcxE" to="anwi:1DRRhzs4VKw" resolve="methods" />
              </node>
            </node>
            <node concept="1v1jN8" id="1DRRhzs6nwS" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzs6nwT" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzs6nwU" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzs6nwV" role="lcghm">
            <property role="lacIc" value=" { " />
          </node>
          <node concept="1bDJIP" id="1DRRhzs6nwW" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="1DRRhzs6nwX" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="1DRRhzs6nwY" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzs6nwZ" role="3izTki">
            <node concept="lc7rE" id="1DRRhzs6nx0" role="3cqZAp">
              <node concept="1bDJIP" id="1DRRhzs6nx1" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="1DRRhzs6nx2" role="1ryhcI">
                  <node concept="117lpO" id="1DRRhzs6nx3" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1DRRhzs6nx4" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:1DRRhzs4VKw" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1DRRhzs6nx8" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzs6nx9" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1DRRhzt5LHT">
    <property role="3GE5qa" value="variable" />
    <ref role="WuzLi" to="m7gy:1DRRhzt5LHL" resolve="PropertyKotlinOutput" />
    <node concept="11bSqf" id="1DRRhzt5LHU" role="11c4hB">
      <node concept="3clFbS" id="1DRRhzt5LHV" role="2VODD2">
        <node concept="lc7rE" id="1DRRhzt5LJC" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzt5LK4" role="lcghm">
            <property role="lacIc" value="private var " />
          </node>
          <node concept="l9hG8" id="1DRRhzt5LLF" role="lcghm">
            <node concept="2OqwBi" id="1DRRhzt5Mq8" role="lb14g">
              <node concept="2OqwBi" id="1DRRhzt5LXM" role="2Oq$k0">
                <node concept="117lpO" id="1DRRhzt5LME" role="2Oq$k0" />
                <node concept="3TrEf2" id="1DRRhzt5MbI" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:1DRRhzt5LHR" resolve="property" />
                </node>
              </node>
              <node concept="3TrcHB" id="1DRRhzt5MLh" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzt5MQa" role="lcghm">
            <property role="lacIc" value=" : " />
          </node>
          <node concept="l9hG8" id="1DRRhzt5N7N" role="lcghm">
            <node concept="2OqwBi" id="1DRRhzt5NeR" role="lb14g">
              <node concept="2OqwBi" id="1DRRhzt5NeS" role="2Oq$k0">
                <node concept="117lpO" id="1DRRhzt5NeT" role="2Oq$k0" />
                <node concept="2qgKlT" id="1DRRhzt5NeU" role="2OqNvi">
                  <ref role="37wK5l" to="opxm:2Np_kya0npo" resolve="mapper" />
                </node>
              </node>
              <node concept="liA8E" id="1DRRhzt5NeV" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:2Np_kya0Fv3" resolve="mapDataType" />
                <node concept="2OqwBi" id="1DRRhzt5NeW" role="37wK5m">
                  <node concept="2OqwBi" id="1DRRhzt5NeX" role="2Oq$k0">
                    <node concept="117lpO" id="1DRRhzt5NeY" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1DRRhzt5NeZ" role="2OqNvi">
                      <ref role="3Tt5mk" to="anwi:1DRRhzt5LHR" resolve="property" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1DRRhzt5Nf0" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:4LpUh3YaKVD" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzt5NZO" role="lcghm">
            <property role="lacIc" value=" = TODO(&quot;Not yet implemented&quot;)" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1DRRhzugezm">
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <ref role="WuzLi" to="m7gy:1DRRhzucU7x" resolve="AggregateRepositoryInterfaceKotlinOutput" />
    <node concept="29tfMY" id="1DRRhzugezn" role="29tGrW">
      <node concept="3clFbS" id="1DRRhzugezo" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzugfs1" role="3cqZAp">
          <node concept="10M0yZ" id="1DRRhzugftL" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:1DRRhzud4TO" resolve="AGGREGATE_REPOSITORY_INTERFACE_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="1DRRhzugfw4" role="1Knhgg">
      <node concept="3clFbS" id="1DRRhzugfw6" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzugfxD" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzugfQe" role="3clFbG">
            <node concept="117lpO" id="1DRRhzugfxC" role="2Oq$k0" />
            <node concept="2qgKlT" id="1DRRhzugg3F" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="1DRRhzuggaI" role="33IsuW">
      <node concept="3clFbS" id="1DRRhzuggaJ" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzuggd5" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzuggQi" role="3clFbG">
            <node concept="Rm8GO" id="1DRRhzuggfQ" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="1DRRhzughkc" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="1DRRhzughmM" role="11c4hB">
      <node concept="3clFbS" id="1DRRhzughmN" role="2VODD2">
        <node concept="lc7rE" id="1DRRhzughqI" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzughrd" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="1DRRhzughrC" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzughqm" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzughsW" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzughtA" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="10M0yZ" id="1DRRhzughw5" role="1ryhcI">
              <ref role="3cqZAo" to="cpc8:1DRRhzud4TO" resolve="AGGREGATE_REPOSITORY_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzughyb" role="lcghm">
            <property role="lacIc" value="&lt;Aggregate: AggregateRoot&lt;*&gt;&gt; {" />
          </node>
          <node concept="1bDJIP" id="1DRRhzughE2" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="1DRRhzughE9" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="1DRRhzughJe" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzughJg" role="3izTki">
            <node concept="lc7rE" id="1DRRhzughNJ" role="3cqZAp">
              <node concept="2BGw6n" id="1DRRhzunvJr" role="lcghm" />
              <node concept="la8eA" id="1DRRhzughOh" role="lcghm">
                <property role="lacIc" value="fun save(aggregate: Aggregate)" />
              </node>
              <node concept="1bDJIP" id="1DRRhzughRh" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="1DRRhzughRm" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1DRRhzughRP" role="3cqZAp">
              <node concept="2BGw6n" id="1DRRhzunvLg" role="lcghm" />
              <node concept="la8eA" id="1DRRhzughSq" role="lcghm">
                <property role="lacIc" value="fun add(aggregate: Aggregate)" />
              </node>
              <node concept="1bDJIP" id="1DRRhzughVO" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="1DRRhzughVT" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1DRRhzughGR" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzughHQ" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1DRRhzugi5i">
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <ref role="WuzLi" to="m7gy:1DRRhzucU7$" resolve="AggregateIdRepositoryInterfaceKotlinOutput" />
    <node concept="29tfMY" id="1DRRhzugi5j" role="29tGrW">
      <node concept="3clFbS" id="1DRRhzugi5k" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzugib_" role="3cqZAp">
          <node concept="10M0yZ" id="1DRRhzugidO" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:1DRRhzud6xX" resolve="AGGREGATE_ID_REPOSITORY_INTERFACE_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="1DRRhzugifm" role="1Knhgg">
      <node concept="3clFbS" id="1DRRhzugifo" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzugiga" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzugi$J" role="3clFbG">
            <node concept="117lpO" id="1DRRhzugig9" role="2Oq$k0" />
            <node concept="2qgKlT" id="1DRRhzugiMc" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="1DRRhzugiTf" role="33IsuW">
      <node concept="3clFbS" id="1DRRhzugiTg" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzugiUP" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzugjCO" role="3clFbG">
            <node concept="Rm8GO" id="1DRRhzugiWP" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="1DRRhzugkgq" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="1DRRhzugkif" role="11c4hB">
      <node concept="3clFbS" id="1DRRhzugkig" role="2VODD2">
        <node concept="3cpWs8" id="1DRRhzugkQi" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzugkQj" role="3cpWs9">
            <property role="TrG5h" value="className" />
            <node concept="17QB3L" id="1DRRhzugkO6" role="1tU5fm" />
            <node concept="10M0yZ" id="1DRRhzugkQk" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:1DRRhzud6xX" resolve="AGGREGATE_ID_REPOSITORY_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzugl39" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzugl3a" role="3cpWs9">
            <property role="TrG5h" value="aggregateInterfaceName" />
            <node concept="17QB3L" id="1DRRhzugl1r" role="1tU5fm" />
            <node concept="10M0yZ" id="1DRRhzugl3b" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:Sy32QR2Qmw" resolve="AGGREGATE_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzuglfS" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzuglfT" role="3cpWs9">
            <property role="TrG5h" value="repositoryInterfaceName" />
            <node concept="17QB3L" id="1DRRhzuglfU" role="1tU5fm" />
            <node concept="10M0yZ" id="1DRRhzugll$" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:1DRRhzud4TO" resolve="AGGREGATE_REPOSITORY_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzuglcE" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzugkn3" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzugknz" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="1DRRhzugknY" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzugkmD" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzugkpP" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzugkqv" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="37vLTw" id="1DRRhzugkYD" role="1ryhcI">
              <ref role="3cqZAo" node="1DRRhzugkQj" resolve="className" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzugkvZ" role="lcghm">
            <property role="lacIc" value="&lt;ID, Aggregate:  " />
          </node>
          <node concept="l9hG8" id="1DRRhzugkDX" role="lcghm">
            <node concept="37vLTw" id="1DRRhzugl9h" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzugl3a" resolve="aggregateInterfaceName" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzugkBP" role="lcghm">
            <property role="lacIc" value="&lt;ID&gt;&gt;:" />
          </node>
          <node concept="l9hG8" id="1DRRhzuglnz" role="lcghm">
            <node concept="37vLTw" id="1DRRhzugloB" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzuglfT" resolve="repositoryInterfaceName" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzuglpN" role="lcghm">
            <property role="lacIc" value="&lt;Aggregate&gt; {" />
          </node>
          <node concept="1bDJIP" id="1DRRhzuglsJ" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="1DRRhzugluT" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzugluV" role="3izTki">
            <node concept="1bpajm" id="1DRRhzugly8" role="3cqZAp" />
            <node concept="11p84A" id="1DRRhzuglyU" role="3cqZAp" />
            <node concept="lc7rE" id="1DRRhzuglzZ" role="3cqZAp">
              <node concept="la8eA" id="1DRRhzugl$w" role="lcghm">
                <property role="lacIc" value="fun getById(id: ID): Aggregate" />
              </node>
              <node concept="1bDJIP" id="1DRRhzulIlZ" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="11pn5k" id="1DRRhzuglzx" role="3cqZAp" />
          </node>
        </node>
        <node concept="lc7rE" id="1DRRhzuglBC" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzuglDr" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1DRRhzvYS$W">
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <ref role="WuzLi" to="m7gy:1DRRhzucU7y" resolve="AggregateConcreteRepositoryInterfaceKotlinOutput" />
    <node concept="29tfMY" id="1DRRhzvYS$X" role="29tGrW">
      <node concept="3clFbS" id="1DRRhzvYS$Y" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzvYU4m" role="3cqZAp">
          <node concept="3cpWs3" id="1DRRhzvYUzI" role="3clFbG">
            <node concept="Xl_RD" id="1DRRhzvYU4l" role="3uHU7B">
              <property role="Xl_RC" value="I" />
            </node>
            <node concept="2OqwBi" id="1DRRhzvYTBe" role="3uHU7w">
              <node concept="2OqwBi" id="1DRRhzvYSZO" role="2Oq$k0">
                <node concept="117lpO" id="1DRRhzvYSFe" role="2Oq$k0" />
                <node concept="3TrEf2" id="1DRRhzvYTj3" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VJJbDY" resolve="repository" />
                </node>
              </node>
              <node concept="2qgKlT" id="1DRRhzvYTRu" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5qxF18G6I2Y" resolve="repositoryName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="1DRRhzvYUNo" role="1Knhgg">
      <node concept="3clFbS" id="1DRRhzvYUNq" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzvYUOV" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzvYURF" role="3clFbG">
            <node concept="117lpO" id="1DRRhzvYUOU" role="2Oq$k0" />
            <node concept="2qgKlT" id="1DRRhzvYUSZ" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="1DRRhzvYUX$" role="33IsuW">
      <node concept="3clFbS" id="1DRRhzvYUX_" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzvYVat" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzvYVOg" role="3clFbG">
            <node concept="Rm8GO" id="1DRRhzvYVdu" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="1DRRhzvYWin" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="1DRRhzvYWla" role="11c4hB">
      <node concept="3clFbS" id="1DRRhzvYWlb" role="2VODD2">
        <node concept="3cpWs8" id="1DRRhzvYZul" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzvYZum" role="3cpWs9">
            <property role="TrG5h" value="converter" />
            <node concept="3uibUv" id="1DRRhzvYZqd" role="1tU5fm">
              <ref role="3uigEE" to="cpc8:4p0keayIwoL" resolve="DependencyTextConverter" />
            </node>
            <node concept="2OqwBi" id="1DRRhzvYZun" role="33vP2m">
              <node concept="117lpO" id="1DRRhzvYZuo" role="2Oq$k0" />
              <node concept="2qgKlT" id="1DRRhzvYZup" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBeLAT" resolve="converter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51Z40VJNbxr" role="3cqZAp">
          <node concept="3cpWsn" id="51Z40VJNbxs" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3Tqbb2" id="51Z40VJNbvz" role="1tU5fm">
              <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
            </node>
            <node concept="2OqwBi" id="51Z40VJNbxt" role="33vP2m">
              <node concept="117lpO" id="51Z40VJNbxu" role="2Oq$k0" />
              <node concept="3TrEf2" id="51Z40VJNbxv" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:51Z40VJJbDY" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzvZ294" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzvZ295" role="3cpWs9">
            <property role="TrG5h" value="aggregate" />
            <node concept="3Tqbb2" id="1DRRhzvZ27k" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
            </node>
            <node concept="2OqwBi" id="1DRRhzvZ296" role="33vP2m">
              <node concept="2OqwBi" id="1DRRhzvZ297" role="2Oq$k0">
                <node concept="3TrEf2" id="1DRRhzvZ29b" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:5SyewC9Zz9D" resolve="aggregateReference" />
                </node>
                <node concept="37vLTw" id="51Z40VJNbUn" role="2Oq$k0">
                  <ref role="3cqZAo" node="51Z40VJNbxs" resolve="repository" />
                </node>
              </node>
              <node concept="3TrEf2" id="1DRRhzvZ29c" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzvZ1nN" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzvZ1nO" role="3cpWs9">
            <property role="TrG5h" value="aggregateName" />
            <node concept="17QB3L" id="1DRRhzvZ1kJ" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzvZ1nP" role="33vP2m">
              <node concept="37vLTw" id="1DRRhzvZ1nQ" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzvYZum" resolve="converter" />
              </node>
              <node concept="liA8E" id="1DRRhzvZ1nR" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:4yUYSn07MK7" resolve="convertAggregate" />
                <node concept="37vLTw" id="1DRRhzvZ2o_" role="37wK5m">
                  <ref role="3cqZAo" node="1DRRhzvZ295" resolve="aggregate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzvZ3Z$" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzvZ3Z_" role="3cpWs9">
            <property role="TrG5h" value="idType" />
            <node concept="17QB3L" id="1DRRhzvZ3VB" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzvZ3ZA" role="33vP2m">
              <node concept="37vLTw" id="1DRRhzvZ3ZB" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzvYZum" resolve="converter" />
              </node>
              <node concept="liA8E" id="1DRRhzvZ3ZC" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:4p0keayIx2o" resolve="convertType" />
                <node concept="2OqwBi" id="1DRRhzvZ3ZD" role="37wK5m">
                  <node concept="37vLTw" id="1DRRhzvZ3ZE" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DRRhzvZ295" resolve="aggregate" />
                  </node>
                  <node concept="3TrEf2" id="1DRRhzvZ3ZF" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:4NUTY$DwDN6" resolve="idType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzvZ2qL" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzvYWp4" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzvYWpz" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="1DRRhzvYWpY" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzvYWoG" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzvYWrQ" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzvYWsx" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="3cpWs3" id="1DRRhzvYWyL" role="1ryhcI">
              <node concept="Xl_RD" id="1DRRhzvYWyM" role="3uHU7B">
                <property role="Xl_RC" value="I" />
              </node>
              <node concept="2OqwBi" id="1DRRhzvYWyN" role="3uHU7w">
                <node concept="2qgKlT" id="1DRRhzvYWyR" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5qxF18G6I2Y" resolve="repositoryName" />
                </node>
                <node concept="37vLTw" id="51Z40VJNbY0" role="2Oq$k0">
                  <ref role="3cqZAo" node="51Z40VJNbxs" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzvYWOb" role="lcghm">
            <property role="lacIc" value=": " />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzvYWri" role="3cqZAp" />
        <node concept="3clFbJ" id="1DRRhzvYWRO" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzvYWRQ" role="3clFbx">
            <node concept="lc7rE" id="1DRRhzvYYoe" role="3cqZAp">
              <node concept="l9hG8" id="1DRRhzvYYof" role="lcghm">
                <node concept="10M0yZ" id="1DRRhzwXXyy" role="lb14g">
                  <ref role="3cqZAo" to="cpc8:1DRRhzud6xX" resolve="AGGREGATE_ID_REPOSITORY_INTERFACE_NAME" />
                  <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
                </node>
              </node>
              <node concept="la8eA" id="1DRRhzvYYwR" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9hG8" id="1DRRhzvZ4h6" role="lcghm">
                <node concept="37vLTw" id="1DRRhzvZ4ip" role="lb14g">
                  <ref role="3cqZAo" node="1DRRhzvZ3Z_" resolve="idType" />
                </node>
              </node>
              <node concept="la8eA" id="1DRRhzvYY$G" role="lcghm">
                <property role="lacIc" value=", " />
              </node>
              <node concept="l9hG8" id="1DRRhzvZ1OR" role="lcghm">
                <node concept="37vLTw" id="1DRRhzvZ1Q9" role="lb14g">
                  <ref role="3cqZAo" node="1DRRhzvZ1nO" resolve="aggregateName" />
                </node>
              </node>
              <node concept="la8eA" id="1DRRhzvYYyg" role="lcghm">
                <property role="lacIc" value="&gt;" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1DRRhzvYXP4" role="3clFbw">
            <node concept="3TrcHB" id="1DRRhzvYY3k" role="2OqNvi">
              <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
            </node>
            <node concept="37vLTw" id="51Z40VJNc1f" role="2Oq$k0">
              <ref role="3cqZAo" node="51Z40VJNbxs" resolve="repository" />
            </node>
          </node>
          <node concept="9aQIb" id="1DRRhzvYY4$" role="9aQIa">
            <node concept="3clFbS" id="1DRRhzvYY4_" role="9aQI4">
              <node concept="lc7rE" id="1DRRhzvYYiR" role="3cqZAp">
                <node concept="l9hG8" id="1DRRhzvYYjl" role="lcghm">
                  <node concept="10M0yZ" id="1DRRhzwXX$H" role="lb14g">
                    <ref role="3cqZAo" to="cpc8:1DRRhzud4TO" resolve="AGGREGATE_REPOSITORY_INTERFACE_NAME" />
                    <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
                  </node>
                </node>
                <node concept="la8eA" id="1DRRhzvYYtr" role="lcghm">
                  <property role="lacIc" value="&lt;" />
                </node>
                <node concept="l9hG8" id="1DRRhzvZ1MH" role="lcghm">
                  <node concept="37vLTw" id="1DRRhzvZ1NX" role="lb14g">
                    <ref role="3cqZAo" node="1DRRhzvZ1nO" resolve="aggregateName" />
                  </node>
                </node>
                <node concept="la8eA" id="1DRRhzvYYv8" role="lcghm">
                  <property role="lacIc" value="&gt;" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzvYY5J" role="3cqZAp" />
        <node concept="3clFbJ" id="1DRRhzvZ5Eo" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzvZ5Eq" role="3clFbx">
            <node concept="3cpWs6" id="1DRRhzvZaJe" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="1DRRhzvZ8Ng" role="3clFbw">
            <node concept="2OqwBi" id="1DRRhzvZ66Y" role="2Oq$k0">
              <node concept="117lpO" id="1DRRhzvZ5M0" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1DRRhzvZ6$r" role="2OqNvi">
                <ref role="3TtcxE" to="anwi:1DRRhzut$Pb" resolve="methods" />
              </node>
            </node>
            <node concept="1v1jN8" id="1DRRhzvZbmP" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzvZaJB" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzvYY7S" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzvYY9F" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
          <node concept="1bDJIP" id="1DRRhzvYYhl" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="1DRRhzvYYij" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="1DRRhzvZ4Is" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzvZ4It" role="3izTki">
            <node concept="lc7rE" id="3fVLq_nUe62" role="3cqZAp">
              <node concept="1bDJIP" id="3fVLq_nUe7e" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="3fVLq_nUek2" role="1ryhcI">
                  <node concept="117lpO" id="3fVLq_nUe7D" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3fVLq_nUexG" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:1DRRhzut$Pb" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1DRRhzvYYde" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzvYYf4" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1DRRhzwHlcB">
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <ref role="WuzLi" to="m7gy:1DRRhzucU7z" resolve="AggregateRepositoryKotlinOutput" />
    <node concept="29tfMY" id="1DRRhzwHlcC" role="29tGrW">
      <node concept="3clFbS" id="1DRRhzwHlcD" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzwHliU" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzwHm3l" role="3clFbG">
            <node concept="2OqwBi" id="1DRRhzwHlBv" role="2Oq$k0">
              <node concept="117lpO" id="1DRRhzwHliT" role="2Oq$k0" />
              <node concept="3TrEf2" id="1DRRhzwHlOW" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:51Z40VJRXXe" resolve="repository" />
              </node>
            </node>
            <node concept="2qgKlT" id="1DRRhzwHmj_" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:5qxF18G6I2Y" resolve="repositoryName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="1DRRhzwHmr4" role="1Knhgg">
      <node concept="3clFbS" id="1DRRhzwHmr6" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzwHmss" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzwHmsZ" role="3clFbG">
            <node concept="117lpO" id="1DRRhzwHmsr" role="2Oq$k0" />
            <node concept="2qgKlT" id="1DRRhzwHmuj" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="1DRRhzwHmyS" role="33IsuW">
      <node concept="3clFbS" id="1DRRhzwHmyT" role="2VODD2">
        <node concept="3clFbF" id="1DRRhzwHm_2" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzwHnfI" role="3clFbG">
            <node concept="Rm8GO" id="1DRRhzwHmBP" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="1DRRhzwHnHE" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="1DRRhzwHnZb" role="11c4hB">
      <node concept="3clFbS" id="1DRRhzwHnZc" role="2VODD2">
        <node concept="3cpWs8" id="1DRRhzwYT43" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzwYT44" role="3cpWs9">
            <property role="TrG5h" value="converter" />
            <node concept="3uibUv" id="1DRRhzwYT45" role="1tU5fm">
              <ref role="3uigEE" to="cpc8:4p0keayIwoL" resolve="DependencyTextConverter" />
            </node>
            <node concept="2OqwBi" id="1DRRhzwYT46" role="33vP2m">
              <node concept="117lpO" id="1DRRhzwYT47" role="2Oq$k0" />
              <node concept="2qgKlT" id="1DRRhzwYT48" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBeLAT" resolve="converter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DRRhzwYT4j" role="3cqZAp">
          <node concept="3cpWsn" id="1DRRhzwYT4k" role="3cpWs9">
            <property role="TrG5h" value="repositoryInterfaceName" />
            <node concept="17QB3L" id="1DRRhzwYT4l" role="1tU5fm" />
            <node concept="2OqwBi" id="1DRRhzwYT4m" role="33vP2m">
              <node concept="37vLTw" id="1DRRhzwYT4n" role="2Oq$k0">
                <ref role="3cqZAo" node="1DRRhzwYT44" resolve="converter" />
              </node>
              <node concept="liA8E" id="1DRRhzwYT4o" role="2OqNvi">
                <ref role="37wK5l" to="cpc8:1DRRhzwYXiN" resolve="convertAggregateConcreteRepositoryInterface" />
                <node concept="2OqwBi" id="1DRRhzwZ2RY" role="37wK5m">
                  <node concept="117lpO" id="1DRRhzwZ2Fj" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1DRRhzwZ36i" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:51Z40VJRXXe" resolve="repository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzwYT4z" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzwYT4$" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzwYT4_" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="1DRRhzwYT4A" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="1DRRhzwYT4B" role="3cqZAp" />
        <node concept="lc7rE" id="1DRRhzwYT4C" role="3cqZAp">
          <node concept="1bDJIP" id="1DRRhzwYT4D" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="2OqwBi" id="1DRRhzwYT4G" role="1ryhcI">
              <node concept="2OqwBi" id="1DRRhzwYT4H" role="2Oq$k0">
                <node concept="117lpO" id="1DRRhzwYT4I" role="2Oq$k0" />
                <node concept="3TrEf2" id="1DRRhzwYT4J" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VJRXXe" resolve="repository" />
                </node>
              </node>
              <node concept="2qgKlT" id="1DRRhzwYT4K" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5qxF18G6I2Y" resolve="repositoryName" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzwYT4L" role="lcghm">
            <property role="lacIc" value="(): " />
          </node>
          <node concept="l9hG8" id="1DRRhzwZ3Ed" role="lcghm">
            <node concept="37vLTw" id="1DRRhzwZ3Qr" role="lb14g">
              <ref role="3cqZAo" node="1DRRhzwYT4k" resolve="repositoryInterfaceName" />
            </node>
          </node>
          <node concept="la8eA" id="1DRRhzwZ3Ud" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="1DRRhzwZ41p" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="1DRRhzwZ41B" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="1DRRhzwYT5r" role="3cqZAp">
          <node concept="3clFbS" id="1DRRhzwYT5s" role="3izTki">
            <node concept="lc7rE" id="3fVLq_nVtmd" role="3cqZAp">
              <node concept="1bDJIP" id="3fVLq_nVtnp" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="3fVLq_nVt$d" role="1ryhcI">
                  <node concept="117lpO" id="3fVLq_nVtnO" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3fVLq_nVtLR" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:1DRRhzuQ6e$" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1DRRhzwYT5_" role="3cqZAp">
          <node concept="la8eA" id="1DRRhzwYT5A" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3fVLq_pv$H7">
    <property role="3GE5qa" value="commandSide.command.handler" />
    <ref role="WuzLi" to="m7gy:3fVLq_pobny" resolve="CommandHandlerGroupedKotlinOutput" />
    <node concept="29tfMY" id="3fVLq_pv$H8" role="29tGrW">
      <node concept="3clFbS" id="3fVLq_pv$H9" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_pv$Nq" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_pv_L7" role="3clFbG">
            <node concept="2OqwBi" id="3fVLq_pv_7Z" role="2Oq$k0">
              <node concept="117lpO" id="3fVLq_pv$Np" role="2Oq$k0" />
              <node concept="3TrEf2" id="3fVLq_pv_uY" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:51Z40VIXNN7" resolve="container" />
              </node>
            </node>
            <node concept="2qgKlT" id="51Z40Vz_EVX" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:51Z40Vzx6GO" resolve="getCommandContainerName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="3fVLq_pvAbi" role="1Knhgg">
      <node concept="3clFbS" id="3fVLq_pvAbk" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_pvAc$" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_pvAd7" role="3clFbG">
            <node concept="117lpO" id="3fVLq_pvAcz" role="2Oq$k0" />
            <node concept="2qgKlT" id="3fVLq_pvAer" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="3fVLq_pvAfg" role="33IsuW">
      <node concept="3clFbS" id="3fVLq_pvAfh" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_pvAhk" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_pvAU$" role="3clFbG">
            <node concept="Rm8GO" id="3fVLq_pvAk1" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="3fVLq_pvBoq" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="3fVLq_pvBqW" role="11c4hB">
      <node concept="3clFbS" id="3fVLq_pvBqX" role="2VODD2">
        <node concept="3cpWs8" id="51Z40Vz_FY0" role="3cqZAp">
          <node concept="3cpWsn" id="51Z40Vz_FY1" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="51Z40Vz_FVU" role="1tU5fm" />
            <node concept="2OqwBi" id="51Z40Vz_FY2" role="33vP2m">
              <node concept="2OqwBi" id="51Z40Vz_FY3" role="2Oq$k0">
                <node concept="117lpO" id="51Z40Vz_FY4" role="2Oq$k0" />
                <node concept="3TrEf2" id="51Z40Vz_FY5" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VIXNN7" resolve="container" />
                </node>
              </node>
              <node concept="2qgKlT" id="51Z40Vz_FY6" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:51Z40Vzx6GO" resolve="getCommandContainerName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40Vz_F3o" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_pvBWJ" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_pvBWK" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="3fVLq_pvBWL" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_pvBWM" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_pvBWN" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_pvBWO" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="37vLTw" id="51Z40Vz_GtM" role="1ryhcI">
              <ref role="3cqZAo" node="51Z40Vz_FY1" resolve="name" />
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_pvBWW" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_ubKym" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_ubKyn" role="3izTki">
            <node concept="lc7rE" id="p4fyl5MEtL" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl5MEut" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LKBf" resolve="verticalParameters" />
                <node concept="2OqwBi" id="p4fyl5MEFh" role="1ryhcI">
                  <node concept="117lpO" id="p4fyl5MEuS" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="p4fyl5MESV" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_srJi7" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_pvBWX" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_pvBWY" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="3fVLq_qooJ6" role="lcghm">
            <node concept="3cpWs3" id="3fVLq_qop9z" role="lb14g">
              <node concept="Xl_RD" id="3fVLq_qooK8" role="3uHU7B">
                <property role="Xl_RC" value="I" />
              </node>
              <node concept="37vLTw" id="51Z40Vz_GvD" role="3uHU7w">
                <ref role="3cqZAo" node="51Z40Vz_FY1" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_qooH2" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="3fVLq_pvBXc" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="3fVLq_pvBXd" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_pvBXf" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_pvBXg" role="3izTki">
            <node concept="lc7rE" id="3fVLq_pvBXh" role="3cqZAp">
              <node concept="1bDJIP" id="3fVLq_pvBXi" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="3fVLq_pvBXj" role="1ryhcI">
                  <node concept="117lpO" id="3fVLq_pvBXk" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3fVLq_pvBXl" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_p7pyV" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_pvBXn" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_pvBXo" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3fVLq_pRNgb">
    <property role="3GE5qa" value="commandSide.command.handler" />
    <ref role="WuzLi" to="m7gy:3fVLq_pR_8f" resolve="CommandHandlerGroupedInterfaceKotlinOutput" />
    <node concept="11bSqf" id="3fVLq_pRNgc" role="11c4hB">
      <node concept="3clFbS" id="3fVLq_pRNgd" role="2VODD2">
        <node concept="3cpWs8" id="51Z40Vz_H3J" role="3cqZAp">
          <node concept="3cpWsn" id="51Z40Vz_H3K" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="51Z40Vz_H3L" role="1tU5fm" />
            <node concept="2OqwBi" id="51Z40Vz_H3M" role="33vP2m">
              <node concept="2OqwBi" id="51Z40Vz_H3N" role="2Oq$k0">
                <node concept="117lpO" id="51Z40Vz_H3O" role="2Oq$k0" />
                <node concept="3TrEf2" id="51Z40Vz_H3P" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VJ70k3" resolve="container" />
                </node>
              </node>
              <node concept="2qgKlT" id="51Z40Vz_H3Q" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:51Z40Vzx6GO" resolve="getCommandContainerName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40Vz_H0J" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_pRNgC" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_pRNgD" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="3fVLq_pRNgE" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_pRNgF" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_pRNgR" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_pRNgS" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="3cpWs3" id="3fVLq_pRNNL" role="1ryhcI">
              <node concept="Xl_RD" id="3fVLq_pRNqG" role="3uHU7B">
                <property role="Xl_RC" value="I" />
              </node>
              <node concept="37vLTw" id="51Z40Vz_Hrd" role="3uHU7w">
                <ref role="3cqZAo" node="51Z40Vz_H3K" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_pRNgY" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="3fVLq_pRO32" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="3fVLq_pRO42" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_pRNh3" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_pRNh4" role="3izTki">
            <node concept="lc7rE" id="3fVLq_pRNh5" role="3cqZAp">
              <node concept="1bDJIP" id="3fVLq_pRNh6" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="3fVLq_pRNh7" role="1ryhcI">
                  <node concept="117lpO" id="3fVLq_pRNh8" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3fVLq_pRNh9" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_pQ_pI" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_pRNha" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_pRNhb" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="3fVLq_pRO7W" role="33IsuW">
      <node concept="3clFbS" id="3fVLq_pRO7X" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_pROfv" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_pROYk" role="3clFbG">
            <node concept="Rm8GO" id="3fVLq_pROhT" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="3fVLq_pRPrR" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="3fVLq_pRPLG" role="1Knhgg">
      <node concept="3clFbS" id="3fVLq_pRPLI" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_pRPOp" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_pRQ8Y" role="3clFbG">
            <node concept="117lpO" id="3fVLq_pRPOo" role="2Oq$k0" />
            <node concept="2qgKlT" id="3fVLq_pRQsd" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="3fVLq_pRQzg" role="29tGrW">
      <node concept="3clFbS" id="3fVLq_pRQzh" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_pRRx2" role="3cqZAp">
          <node concept="3cpWs3" id="3fVLq_pRS0p" role="3clFbG">
            <node concept="Xl_RD" id="3fVLq_pRRx1" role="3uHU7B">
              <property role="Xl_RC" value="I" />
            </node>
            <node concept="2OqwBi" id="3fVLq_pRRbO" role="3uHU7w">
              <node concept="2OqwBi" id="3fVLq_pRQSn" role="2Oq$k0">
                <node concept="117lpO" id="3fVLq_pRQJO" role="2Oq$k0" />
                <node concept="3TrEf2" id="3fVLq_pRQTF" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VJ70k3" resolve="container" />
                </node>
              </node>
              <node concept="2qgKlT" id="51Z40Vz_HiO" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:51Z40Vzx6GO" resolve="getCommandContainerName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3fVLq_AGb3s">
    <property role="3GE5qa" value="connecting.handler" />
    <ref role="WuzLi" to="m7gy:3fVLq_AkU0e" resolve="EventHandlerGroupedInterfaceKotlinOutput" />
    <node concept="29tfMY" id="3fVLq_AGb3t" role="29tGrW">
      <node concept="3clFbS" id="3fVLq_AGb3u" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_AGbiV" role="3cqZAp">
          <node concept="3cpWs3" id="3fVLq_AGbRI" role="3clFbG">
            <node concept="Xl_RD" id="3fVLq_AGbiU" role="3uHU7B">
              <property role="Xl_RC" value="I" />
            </node>
            <node concept="10M0yZ" id="3fVLq_AGbhh" role="3uHU7w">
              <ref role="3cqZAo" to="cpc8:3fVLq_xzI3O" resolve="GROUPED_EVENT_HANDLER_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="3fVLq_AGbZo" role="1Knhgg">
      <node concept="3clFbS" id="3fVLq_AGbZq" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_AGc0c" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_AGceZ" role="3clFbG">
            <node concept="117lpO" id="3fVLq_AGc0b" role="2Oq$k0" />
            <node concept="2qgKlT" id="3fVLq_AGcss" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="3fVLq_AGczv" role="33IsuW">
      <node concept="3clFbS" id="3fVLq_AGczw" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_AGc_5" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_AGddl" role="3clFbG">
            <node concept="Rm8GO" id="3fVLq_AGcB8" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="3fVLq_AGdEu" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="3fVLq_AGdGj" role="11c4hB">
      <node concept="3clFbS" id="3fVLq_AGdGk" role="2VODD2">
        <node concept="lc7rE" id="3fVLq_AGdN8" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_AGdN9" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="3fVLq_AGdNa" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_AGdNb" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_AGdNc" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_AGdNd" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="3cpWs3" id="3fVLq_AGe7z" role="1ryhcI">
              <node concept="Xl_RD" id="3fVLq_AGe7$" role="3uHU7B">
                <property role="Xl_RC" value="I" />
              </node>
              <node concept="10M0yZ" id="3fVLq_AGe7_" role="3uHU7w">
                <ref role="3cqZAo" to="cpc8:3fVLq_xzI3O" resolve="GROUPED_EVENT_HANDLER_NAME" />
                <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_AGdNl" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="3fVLq_AGdNm" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="3fVLq_AGdNn" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_AGdNo" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_AGdNp" role="3izTki">
            <node concept="lc7rE" id="3fVLq_AGdNq" role="3cqZAp">
              <node concept="1bDJIP" id="3fVLq_AGdNr" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="3fVLq_AGdNs" role="1ryhcI">
                  <node concept="117lpO" id="3fVLq_AGdNt" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3fVLq_AGdNu" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_Ajq6o" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_AGdNv" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_AGdNw" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3fVLq_AGgD0">
    <property role="3GE5qa" value="connecting.handler" />
    <ref role="WuzLi" to="m7gy:1DRRhzrJ_Rf" resolve="EventHandlerGroupedKotlinOutput" />
    <node concept="29tfMY" id="3fVLq_AGgD1" role="29tGrW">
      <node concept="3clFbS" id="3fVLq_AGgD2" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_AGgJj" role="3cqZAp">
          <node concept="10M0yZ" id="3fVLq_AGgL3" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:3fVLq_xzI3O" resolve="GROUPED_EVENT_HANDLER_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="3fVLq_AGgM_" role="1Knhgg">
      <node concept="3clFbS" id="3fVLq_AGgMB" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_AGgNp" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_AGh7Y" role="3clFbG">
            <node concept="117lpO" id="3fVLq_AGgNo" role="2Oq$k0" />
            <node concept="2qgKlT" id="3fVLq_AGhlr" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="3fVLq_AGhlv" role="33IsuW">
      <node concept="3clFbS" id="3fVLq_AGhlw" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_AGhtj" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_AGi5w" role="3clFbG">
            <node concept="Rm8GO" id="3fVLq_AGhvj" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="3fVLq_AGiyD" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="3fVLq_AGi$u" role="11c4hB">
      <node concept="3clFbS" id="3fVLq_AGi$v" role="2VODD2">
        <node concept="lc7rE" id="3fVLq_AGuTw" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_AGuTx" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="3fVLq_AGuTy" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_AGuTz" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_AGuT$" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_AGuT_" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="10M0yZ" id="3fVLq_AGvrz" role="1ryhcI">
              <ref role="3cqZAo" to="cpc8:3fVLq_xzI3O" resolve="GROUPED_EVENT_HANDLER_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_AGuTF" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_AGuTG" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_AGuTH" role="3izTki">
            <node concept="lc7rE" id="p4fyl5MI78" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl5MI7O" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LKBf" resolve="verticalParameters" />
                <node concept="2OqwBi" id="p4fyl5MIkC" role="1ryhcI">
                  <node concept="117lpO" id="p4fyl5MI8f" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="p4fyl5MIyi" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_Ajq6q" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_AGuTO" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_AGuTP" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="3fVLq_AGuTQ" role="lcghm">
            <node concept="3cpWs3" id="3fVLq_AGuTR" role="lb14g">
              <node concept="Xl_RD" id="3fVLq_AGuTX" role="3uHU7B">
                <property role="Xl_RC" value="I" />
              </node>
              <node concept="10M0yZ" id="3fVLq_AGvuo" role="3uHU7w">
                <ref role="3cqZAo" to="cpc8:3fVLq_xzI3O" resolve="GROUPED_EVENT_HANDLER_NAME" />
                <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_AGuTY" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="3fVLq_AGuTZ" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="3fVLq_AGuU0" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_AGuU1" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_AGuU2" role="3izTki">
            <node concept="lc7rE" id="3fVLq_AGuU3" role="3cqZAp">
              <node concept="1bDJIP" id="3fVLq_AGuU4" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="3fVLq_AGuU5" role="1ryhcI">
                  <node concept="117lpO" id="3fVLq_AGuU6" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3fVLq_AGuU7" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_AhNa6" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_AGuU8" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_AGuU9" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3fVLq_Dru7y">
    <property role="3GE5qa" value="querySide.query.handler" />
    <ref role="WuzLi" to="m7gy:3fVLq_Dpf2P" resolve="QueryHandlerGroupedInterfaceKotlinOutput" />
    <node concept="29tfMY" id="3fVLq_Dru7z" role="29tGrW">
      <node concept="3clFbS" id="3fVLq_Dru7$" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_Drv$A" role="3cqZAp">
          <node concept="3cpWs3" id="3fVLq_Drw3X" role="3clFbG">
            <node concept="Xl_RD" id="3fVLq_Drv$_" role="3uHU7B">
              <property role="Xl_RC" value="I" />
            </node>
            <node concept="2OqwBi" id="3fVLq_Drv16" role="3uHU7w">
              <node concept="2OqwBi" id="3fVLq_Druyq" role="2Oq$k0">
                <node concept="117lpO" id="3fVLq_DrudO" role="2Oq$k0" />
                <node concept="3TrEf2" id="3fVLq_DruJR" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VK7C76" resolve="container" />
                </node>
              </node>
              <node concept="2qgKlT" id="3fVLq_Drvm1" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:2RbvdOKU0GT" resolve="getQueryContainerName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="3fVLq_DrwjB" role="1Knhgg">
      <node concept="3clFbS" id="3fVLq_DrwjD" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_Drwla" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_DrwlH" role="3clFbG">
            <node concept="117lpO" id="3fVLq_Drwl9" role="2Oq$k0" />
            <node concept="2qgKlT" id="3fVLq_Drwn1" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="3fVLq_DrwrA" role="33IsuW">
      <node concept="3clFbS" id="3fVLq_DrwrB" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_DrwtV" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_Drx90" role="3clFbG">
            <node concept="Rm8GO" id="3fVLq_DrwwW" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="3fVLq_DrxB7" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="3fVLq_DrxDU" role="11c4hB">
      <node concept="3clFbS" id="3fVLq_DrxDV" role="2VODD2">
        <node concept="lc7rE" id="3fVLq_DrBBg" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_DrBBh" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="3fVLq_DrBBi" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_DrBBj" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_DrBBk" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_DrBBl" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="3cpWs3" id="3fVLq_DrC9O" role="1ryhcI">
              <node concept="Xl_RD" id="3fVLq_DrCbc" role="3uHU7B">
                <property role="Xl_RC" value="I" />
              </node>
              <node concept="2OqwBi" id="3fVLq_DrBBm" role="3uHU7w">
                <node concept="2OqwBi" id="3fVLq_DrBBn" role="2Oq$k0">
                  <node concept="117lpO" id="3fVLq_DrBBo" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3fVLq_DrBBp" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:51Z40VK7C76" resolve="container" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3fVLq_DrBBq" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:2RbvdOKU0GT" resolve="getQueryContainerName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_DrBBr" role="lcghm">
            <property role="lacIc" value=" { " />
          </node>
          <node concept="1bDJIP" id="3fVLq_DrCo5" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="3fVLq_DrCpS" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_DrBBL" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_DrBBM" role="3izTki">
            <node concept="lc7rE" id="3fVLq_DrBBN" role="3cqZAp">
              <node concept="1bDJIP" id="3fVLq_DrBBO" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="3fVLq_DrBBP" role="1ryhcI">
                  <node concept="117lpO" id="3fVLq_DrBBQ" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3fVLq_DrBBR" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_Dpf2B" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_DrBBS" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_DrBBT" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3fVLq_DrxMp">
    <property role="3GE5qa" value="querySide.query.handler" />
    <ref role="WuzLi" to="m7gy:3fVLq_Dpf2M" resolve="QueryHandlerGroupedKotlinOutput" />
    <node concept="29tfMY" id="3fVLq_DrxMq" role="29tGrW">
      <node concept="3clFbS" id="3fVLq_DrxMr" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_DrxSG" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_Drz5K" role="3clFbG">
            <node concept="2OqwBi" id="3fVLq_Drydh" role="2Oq$k0">
              <node concept="117lpO" id="3fVLq_DrxSF" role="2Oq$k0" />
              <node concept="3TrEf2" id="3fVLq_Dryx3" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:51Z40VK7C6Y" resolve="container" />
              </node>
            </node>
            <node concept="2qgKlT" id="3fVLq_Drzwt" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:2RbvdOKU0GT" resolve="getQueryContainerName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="3fVLq_DrzDD" role="1Knhgg">
      <node concept="3clFbS" id="3fVLq_DrzDF" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_DrzF1" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_DrzTj" role="3clFbG">
            <node concept="117lpO" id="3fVLq_DrzF0" role="2Oq$k0" />
            <node concept="2qgKlT" id="3fVLq_DrzUB" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="3fVLq_DrzZc" role="33IsuW">
      <node concept="3clFbS" id="3fVLq_DrzZd" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_Dr$i3" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_Dr$Vu" role="3clFbG">
            <node concept="Rm8GO" id="3fVLq_Dr$kQ" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="3fVLq_Dr_pq" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="3fVLq_Dr_s2" role="11c4hB">
      <node concept="3clFbS" id="3fVLq_Dr_s3" role="2VODD2">
        <node concept="3cpWs8" id="51Z40VK7HGw" role="3cqZAp">
          <node concept="3cpWsn" id="51Z40VK7HGx" role="3cpWs9">
            <property role="TrG5h" value="queryContainerName" />
            <node concept="17QB3L" id="51Z40VK7HFx" role="1tU5fm" />
            <node concept="2OqwBi" id="51Z40VK7HGy" role="33vP2m">
              <node concept="2OqwBi" id="51Z40VK7HGz" role="2Oq$k0">
                <node concept="117lpO" id="51Z40VK7HG$" role="2Oq$k0" />
                <node concept="3TrEf2" id="51Z40VK7HG_" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VK7C6Y" resolve="container" />
                </node>
              </node>
              <node concept="2qgKlT" id="51Z40VK7HGA" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:2RbvdOKU0GT" resolve="getQueryContainerName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VK7HxY" role="3cqZAp" />
        <node concept="3clFbH" id="51Z40VK7HyF" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_DrA6Z" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_DrA70" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="3fVLq_DrA71" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_DrA72" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_DrA73" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_DrA74" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="37vLTw" id="51Z40VK7I2o" role="1ryhcI">
              <ref role="3cqZAo" node="51Z40VK7HGx" resolve="queryContainerName" />
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_DrA7a" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_DrA7b" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_DrA7c" role="3izTki">
            <node concept="lc7rE" id="p4fyl5MLmW" role="3cqZAp">
              <node concept="1bDJIP" id="p4fyl5MLnC" role="lcghm">
                <ref role="1rvKf6" node="p4fyl5LKBf" resolve="verticalParameters" />
                <node concept="2OqwBi" id="p4fyl5ML$s" role="1ryhcI">
                  <node concept="117lpO" id="p4fyl5MLo3" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="p4fyl5MLM6" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_Dpf2F" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_DrA7j" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_DrA7k" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="3fVLq_DrA7l" role="lcghm">
            <node concept="3cpWs3" id="3fVLq_DrA7m" role="lb14g">
              <node concept="Xl_RD" id="3fVLq_DrA7s" role="3uHU7B">
                <property role="Xl_RC" value="I" />
              </node>
              <node concept="37vLTw" id="51Z40VK7I2T" role="3uHU7w">
                <ref role="3cqZAo" node="51Z40VK7HGx" resolve="queryContainerName" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_DrA7t" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="3fVLq_DrA7u" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="3fVLq_DrA7v" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_DrA7w" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_DrA7x" role="3izTki">
            <node concept="lc7rE" id="3fVLq_DrA7y" role="3cqZAp">
              <node concept="1bDJIP" id="3fVLq_DrA7z" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="3fVLq_DrA7$" role="1ryhcI">
                  <node concept="117lpO" id="3fVLq_DrA7_" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3fVLq_DrA7A" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_Dpf2D" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_DrA7B" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_DrA7C" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3fVLq_LwGyV">
    <property role="3GE5qa" value="querySide.dto" />
    <ref role="WuzLi" to="m7gy:3fVLq_LvZRX" resolve="DtoRepositoryKotlinOutput" />
    <node concept="29tfMY" id="3fVLq_LwGyW" role="29tGrW">
      <node concept="3clFbS" id="3fVLq_LwGyX" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_LwGDe" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_LwHFW" role="3clFbG">
            <node concept="2OqwBi" id="3fVLq_LwGVA" role="2Oq$k0">
              <node concept="117lpO" id="3fVLq_LwGDd" role="2Oq$k0" />
              <node concept="3TrEf2" id="3fVLq_LwH93" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:3fVLq_LuoV0" resolve="repository" />
              </node>
            </node>
            <node concept="2qgKlT" id="3fVLq_LwI3H" role="2OqNvi">
              <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="3fVLq_LwIoU" role="1Knhgg">
      <node concept="3clFbS" id="3fVLq_LwIoW" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_LwIqi" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_LwIIR" role="3clFbG">
            <node concept="117lpO" id="3fVLq_LwIqh" role="2Oq$k0" />
            <node concept="2qgKlT" id="3fVLq_LwIWk" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="3fVLq_LwJ0T" role="33IsuW">
      <node concept="3clFbS" id="3fVLq_LwJ0U" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_LwJ33" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_LwJGu" role="3clFbG">
            <node concept="Rm8GO" id="3fVLq_LwJ5Q" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="3fVLq_LwKaq" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="3fVLq_LwKd2" role="11c4hB">
      <node concept="3clFbS" id="3fVLq_LwKd3" role="2VODD2">
        <node concept="lc7rE" id="3fVLq_LwQCE" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_LwQCF" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="3fVLq_LwQCG" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_LwQCH" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_LwQCI" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_LwQCJ" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="2OqwBi" id="3fVLq_LwQCM" role="1ryhcI">
              <node concept="2OqwBi" id="3fVLq_LwQCN" role="2Oq$k0">
                <node concept="117lpO" id="3fVLq_LwQCO" role="2Oq$k0" />
                <node concept="3TrEf2" id="3fVLq_LwQCP" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:3fVLq_LuoV0" resolve="repository" />
                </node>
              </node>
              <node concept="2qgKlT" id="3fVLq_LwQCQ" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_LwQCR" role="lcghm">
            <property role="lacIc" value="(): " />
          </node>
          <node concept="l9hG8" id="3fVLq_O3jN_" role="lcghm">
            <node concept="3cpWs3" id="3fVLq_O3kew" role="lb14g">
              <node concept="2OqwBi" id="3fVLq_O3kSR" role="3uHU7w">
                <node concept="2OqwBi" id="3fVLq_O3kvO" role="2Oq$k0">
                  <node concept="117lpO" id="3fVLq_O3kf$" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3fVLq_O3kHJ" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:3fVLq_LuoV0" resolve="repository" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3fVLq_O3lbk" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
                </node>
              </node>
              <node concept="Xl_RD" id="3fVLq_O3jP5" role="3uHU7B">
                <property role="Xl_RC" value="I" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_O3jGN" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="3fVLq_LwQCS" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="3fVLq_LwQCT" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_LwQCU" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_LwQCV" role="3izTki">
            <node concept="lc7rE" id="3fVLq_LwQCW" role="3cqZAp">
              <node concept="1bDJIP" id="3fVLq_LwQCX" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="3fVLq_LwQCY" role="1ryhcI">
                  <node concept="117lpO" id="3fVLq_LwQCZ" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3fVLq_LwQD0" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_LuoV2" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_LwQD1" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_LwQD2" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_LwMSX" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3fVLq_LwKhq">
    <property role="3GE5qa" value="querySide.dto" />
    <ref role="WuzLi" to="m7gy:3fVLq_LvZS0" resolve="DtoRepositoryInterfaceKotlinOutput" />
    <node concept="29tfMY" id="3fVLq_LwKhr" role="29tGrW">
      <node concept="3clFbS" id="3fVLq_LwKhs" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_LwKnH" role="3cqZAp">
          <node concept="3cpWs3" id="3fVLq_LwPRa" role="3clFbG">
            <node concept="Xl_RD" id="3fVLq_LwPcC" role="3uHU7B">
              <property role="Xl_RC" value="I" />
            </node>
            <node concept="2OqwBi" id="3fVLq_LwL9a" role="3uHU7w">
              <node concept="2OqwBi" id="3fVLq_LwKGi" role="2Oq$k0">
                <node concept="117lpO" id="3fVLq_LwKnG" role="2Oq$k0" />
                <node concept="3TrEf2" id="3fVLq_LwKTJ" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:3fVLq_LuoVc" resolve="repository" />
                </node>
              </node>
              <node concept="2qgKlT" id="3fVLq_LwLr9" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="3fVLq_LwLzi" role="1Knhgg">
      <node concept="3clFbS" id="3fVLq_LwLzk" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_LwL$E" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_LwL_d" role="3clFbG">
            <node concept="117lpO" id="3fVLq_LwL$D" role="2Oq$k0" />
            <node concept="2qgKlT" id="3fVLq_LwLAx" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="3fVLq_LwLF6" role="33IsuW">
      <node concept="3clFbS" id="3fVLq_LwLF7" role="2VODD2">
        <node concept="3clFbF" id="3fVLq_LwLHg" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_LwMgI" role="3clFbG">
            <node concept="Rm8GO" id="3fVLq_LwLK3" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="3fVLq_LwMIE" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="3fVLq_LwMLi" role="11c4hB">
      <node concept="3clFbS" id="3fVLq_LwMLj" role="2VODD2">
        <node concept="lc7rE" id="3fVLq_LwOE6" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_LwOE7" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="3fVLq_LwOE8" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_LwOE9" role="3cqZAp" />
        <node concept="lc7rE" id="3fVLq_LwOEa" role="3cqZAp">
          <node concept="1bDJIP" id="3fVLq_LwOEb" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="3cpWs3" id="3fVLq_LwQ6n" role="1ryhcI">
              <node concept="Xl_RD" id="3fVLq_LwQ6o" role="3uHU7B">
                <property role="Xl_RC" value="I" />
              </node>
              <node concept="2OqwBi" id="3fVLq_LwQ6p" role="3uHU7w">
                <node concept="2OqwBi" id="3fVLq_LwQ6q" role="2Oq$k0">
                  <node concept="117lpO" id="3fVLq_LwQ6r" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3fVLq_LwQ6s" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:3fVLq_LuoVc" resolve="repository" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3fVLq_LwQ6t" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3fVLq_LwQmU" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="3fVLq_LwQpM" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="3fVLq_LwQpZ" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="3fVLq_LwOEH" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_LwOEI" role="3izTki">
            <node concept="lc7rE" id="3fVLq_LwOEJ" role="3cqZAp">
              <node concept="1bDJIP" id="3fVLq_LwOEK" role="lcghm">
                <ref role="1rvKf6" node="3fVLq_nUdkX" resolve="methods" />
                <node concept="2OqwBi" id="3fVLq_LwOEL" role="1ryhcI">
                  <node concept="117lpO" id="3fVLq_LwOEM" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3fVLq_LwOEN" role="2OqNvi">
                    <ref role="3TtcxE" to="anwi:3fVLq_LuoV5" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3fVLq_LwOEO" role="3cqZAp">
          <node concept="la8eA" id="3fVLq_LwOEP" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7x9oRL9e1E2">
    <property role="3GE5qa" value="querySide.query.processor" />
    <ref role="WuzLi" to="m7gy:7x9oRL9dU8j" resolve="QueryProcessorKotlinOutput" />
    <node concept="29tfMY" id="7x9oRL9e1E3" role="29tGrW">
      <node concept="3clFbS" id="7x9oRL9e1E4" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9e1Kl" role="3cqZAp">
          <node concept="10M0yZ" id="7x9oRL9e1MC" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:7x9oRL8OULB" resolve="QUERY_PROCESSOR_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="7x9oRL9e1Oa" role="1Knhgg">
      <node concept="3clFbS" id="7x9oRL9e1Oc" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9e1OY" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL9e29z" role="3clFbG">
            <node concept="117lpO" id="7x9oRL9e1OX" role="2Oq$k0" />
            <node concept="2qgKlT" id="7x9oRL9e2n0" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="7x9oRL9e2u3" role="33IsuW">
      <node concept="3clFbS" id="7x9oRL9e2u4" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9e2vD" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL9e3o8" role="3clFbG">
            <node concept="Rm8GO" id="7x9oRL9e2G9" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="7x9oRL9e3Ph" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="7x9oRL9e3R6" role="11c4hB">
      <node concept="3clFbS" id="7x9oRL9e3R7" role="2VODD2">
        <node concept="3cpWs8" id="7x9oRLa8CUe" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRLa8CUf" role="3cpWs9">
            <property role="TrG5h" value="converter" />
            <node concept="3uibUv" id="7x9oRLa8CPb" role="1tU5fm">
              <ref role="3uigEE" to="cpc8:4p0keayIwoL" resolve="DependencyTextConverter" />
            </node>
            <node concept="2OqwBi" id="7x9oRLa8CUg" role="33vP2m">
              <node concept="117lpO" id="7x9oRLa8CUh" role="2Oq$k0" />
              <node concept="2qgKlT" id="7x9oRLa8CUi" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBeLAT" resolve="converter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9BOe3" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9BOe4" role="3cpWs9">
            <property role="TrG5h" value="query" />
            <node concept="17QB3L" id="7x9oRL9BOck" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9BOe5" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:4b$xqUATxQK" resolve="QUERY_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9BO0W" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9BO0X" role="3cpWs9">
            <property role="TrG5h" value="queryProcessor" />
            <node concept="17QB3L" id="7x9oRL9BNZa" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9BO0Y" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:7x9oRL8OULB" resolve="QUERY_PROCESSOR_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9BOol" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9BOom" role="3cpWs9">
            <property role="TrG5h" value="queryProcessorImpl" />
            <node concept="17QB3L" id="7x9oRL9BOon" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9BOuo" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:7x9oRL8OW3o" resolve="QUERY_PROCESSOR_IMPL_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9BOwq" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9BOwr" role="3cpWs9">
            <property role="TrG5h" value="queryContainer" />
            <node concept="17QB3L" id="7x9oRL9BOws" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9BOOm" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:7x9oRL8OXYf" resolve="QUERY_HANDLER_CONTAINER_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9BO$S" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9BO$T" role="3cpWs9">
            <property role="TrG5h" value="queryContainerImpl" />
            <node concept="17QB3L" id="7x9oRL9BO$U" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9BORD" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:7x9oRL8OZrz" resolve="QUERY_HANDLER_CONTAINER_IMPL_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7x9oRL9BNT4" role="3cqZAp" />
        <node concept="lc7rE" id="7x9oRL9e4v9" role="3cqZAp">
          <node concept="1bDJIP" id="7x9oRL9e4vE" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="7x9oRL9e4w5" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="7x9oRL9e4w8" role="3cqZAp" />
        <node concept="lc7rE" id="7x9oRL9e4nm" role="3cqZAp">
          <node concept="1bDJIP" id="7x9oRL9e4nn" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="37vLTw" id="7x9oRL9BOnR" role="1ryhcI">
              <ref role="3cqZAo" node="7x9oRL9BO0X" resolve="queryProcessor" />
            </node>
          </node>
          <node concept="la8eA" id="7x9oRL9e4_x" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="7x9oRL9AYNH" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="7x9oRL9e4DB" role="3cqZAp">
          <node concept="3clFbS" id="7x9oRL9e4DD" role="3izTki">
            <node concept="lc7rE" id="7x9oRL9e4Ey" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9e4EY" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9e4FO" role="lcghm">
                <property role="lacIc" value="fun &lt;Result&gt; process(query: " />
              </node>
              <node concept="l9hG8" id="7x9oRL9e4Ln" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9BOnd" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9BOe4" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9e4Se" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;): Result" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9e4Vr" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7x9oRL9e4XD" role="3cqZAp">
          <node concept="la8eA" id="7x9oRL9e4Zg" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="1bDJIP" id="7x9oRL9B$x2" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="7x9oRL9B$xu" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7x9oRL9B$xX" role="3cqZAp" />
        <node concept="3clFbH" id="7x9oRL9CrjD" role="3cqZAp" />
        <node concept="3SKdUt" id="7x9oRL9Crpm" role="3cqZAp">
          <node concept="1PaTwC" id="7x9oRL9Crpn" role="1aUNEU">
            <node concept="3oM_SD" id="7x9oRL9CrsT" role="1PaTwD">
              <property role="3oM_SC" value="Generation" />
            </node>
            <node concept="3oM_SD" id="7x9oRL9Crt4" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="7x9oRL9Crta" role="1PaTwD">
              <property role="3oM_SC" value="init" />
            </node>
            <node concept="3oM_SD" id="7x9oRL9Crtj" role="1PaTwD">
              <property role="3oM_SC" value="function" />
            </node>
            <node concept="3oM_SD" id="7x9oRL9Crtx" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7x9oRL9CrtE" role="1PaTwD">
              <property role="3oM_SC" value="fill" />
            </node>
            <node concept="3oM_SD" id="7x9oRL9CrtQ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7x9oRL9Cru2" role="1PaTwD">
              <property role="3oM_SC" value="processor" />
            </node>
            <node concept="3oM_SD" id="7x9oRL9Crul" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="7x9oRL9Cru$" role="1PaTwD">
              <property role="3oM_SC" value="handlers." />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7x9oRL9BNvl" role="3cqZAp">
          <node concept="la8eA" id="7x9oRL9BNwJ" role="lcghm">
            <property role="lacIc" value="fun initProcessor(" />
          </node>
          <node concept="1bDJIP" id="7x9oRL9BNyE" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="7x9oRL9BN_f" role="3cqZAp">
          <node concept="3clFbS" id="7x9oRL9BN_h" role="3izTki">
            <node concept="3clFbF" id="7x9oRLa8D5K" role="3cqZAp">
              <node concept="2OqwBi" id="7x9oRLa8Ipa" role="3clFbG">
                <node concept="2OqwBi" id="7x9oRLa8FzX" role="2Oq$k0">
                  <node concept="2OqwBi" id="7x9oRLa8D6T" role="2Oq$k0">
                    <node concept="117lpO" id="7x9oRLa8D5J" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7x9oRLa8D85" role="2OqNvi">
                      <ref role="3TtcxE" to="anwi:7x9oRL8NhTh" resolve="queryReferences" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="7x9oRLa8HKY" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:7fqk8p43yh8" resolve="query" />
                  </node>
                </node>
                <node concept="2es0OD" id="7x9oRLa8I_Q" role="2OqNvi">
                  <node concept="1bVj0M" id="7x9oRLa8I_S" role="23t8la">
                    <node concept="3clFbS" id="7x9oRLa8I_T" role="1bW5cS">
                      <node concept="3cpWs8" id="7x9oRLad3oL" role="3cqZAp">
                        <node concept="3cpWsn" id="7x9oRLad3oM" role="3cpWs9">
                          <property role="TrG5h" value="queryHandlerName" />
                          <node concept="17QB3L" id="7x9oRLad3ms" role="1tU5fm" />
                          <node concept="2OqwBi" id="7x9oRLad3oN" role="33vP2m">
                            <node concept="37vLTw" id="7x9oRLad3oO" role="2Oq$k0">
                              <ref role="3cqZAo" node="7x9oRLa8CUf" resolve="converter" />
                            </node>
                            <node concept="liA8E" id="7x9oRLad3oP" role="2OqNvi">
                              <ref role="37wK5l" to="cpc8:7x9oRLacXM6" resolve="convertQueryHandlerSeparated" />
                              <node concept="37vLTw" id="7x9oRLad3oQ" role="37wK5m">
                                <ref role="3cqZAo" node="7x9oRLa8I_U" resolve="query" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="lc7rE" id="7x9oRLacU$z" role="3cqZAp">
                        <node concept="2BGw6n" id="7x9oRLacUDe" role="lcghm" />
                        <node concept="l9hG8" id="7x9oRLacUJy" role="lcghm">
                          <node concept="2YIFZM" id="7x9oRLad3Tz" role="lb14g">
                            <ref role="37wK5l" to="3u0l:3fVLq_sAaSt" resolve="firstToLower" />
                            <ref role="1Pybhc" to="3u0l:4yUYSn07am5" resolve="StringUtil" />
                            <node concept="37vLTw" id="7x9oRLad3X2" role="37wK5m">
                              <ref role="3cqZAo" node="7x9oRLad3oM" resolve="queryHandlerName" />
                            </node>
                          </node>
                        </node>
                        <node concept="la8eA" id="7x9oRLacUQS" role="lcghm">
                          <property role="lacIc" value=": " />
                        </node>
                        <node concept="l9hG8" id="7x9oRLacUXl" role="lcghm">
                          <node concept="37vLTw" id="7x9oRLad3MP" role="lb14g">
                            <ref role="3cqZAo" node="7x9oRLad3oM" resolve="queryHandlerName" />
                          </node>
                        </node>
                        <node concept="la8eA" id="7x9oRLad4mK" role="lcghm">
                          <property role="lacIc" value="," />
                        </node>
                        <node concept="1bDJIP" id="7x9oRLad4qG" role="lcghm">
                          <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7x9oRLa8I_U" role="1bW2Oz">
                      <property role="TrG5h" value="query" />
                      <node concept="2jxLKc" id="7x9oRLa8I_V" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7x9oRLa8D3s" role="3cqZAp" />
            <node concept="lc7rE" id="7x9oRL9BOZi" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9BP0o" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9BP1e" role="lcghm">
                <property role="lacIc" value="queryContainer: " />
              </node>
              <node concept="l9hG8" id="7x9oRL9BP3y" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9BP4y" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9BOwr" resolve="queryContainer" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9BP5E" role="lcghm">
                <property role="lacIc" value=" = " />
              </node>
              <node concept="l9hG8" id="7x9oRL9BP6Z" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9BP82" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9BO$T" resolve="queryContainerImpl" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9BP9d" role="lcghm">
                <property role="lacIc" value="()" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9BPaC" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7x9oRL9BPcc" role="3cqZAp">
          <node concept="la8eA" id="7x9oRL9BPfJ" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="7x9oRL9BPgY" role="lcghm">
            <node concept="37vLTw" id="7x9oRL9BPhX" role="lb14g">
              <ref role="3cqZAo" node="7x9oRL9BO0X" resolve="queryProcessor" />
            </node>
          </node>
          <node concept="la8eA" id="7x9oRL9BPj4" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="7x9oRL9BPkI" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="7x9oRL9BPoJ" role="3cqZAp">
          <node concept="3clFbS" id="7x9oRL9BPoL" role="3izTki">
            <node concept="3clFbF" id="7x9oRLaerOE" role="3cqZAp">
              <node concept="2OqwBi" id="7x9oRLaerOF" role="3clFbG">
                <node concept="2OqwBi" id="7x9oRLaerOG" role="2Oq$k0">
                  <node concept="2OqwBi" id="7x9oRLaerOH" role="2Oq$k0">
                    <node concept="117lpO" id="7x9oRLaerOI" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7x9oRLaerOJ" role="2OqNvi">
                      <ref role="3TtcxE" to="anwi:7x9oRL8NhTh" resolve="queryReferences" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="7x9oRLaerOK" role="2OqNvi">
                    <ref role="13MTZf" to="3nll:7fqk8p43yh8" resolve="query" />
                  </node>
                </node>
                <node concept="2es0OD" id="7x9oRLaerOL" role="2OqNvi">
                  <node concept="1bVj0M" id="7x9oRLaerOM" role="23t8la">
                    <node concept="3clFbS" id="7x9oRLaerON" role="1bW5cS">
                      <node concept="3cpWs8" id="7x9oRLaesyB" role="3cqZAp">
                        <node concept="3cpWsn" id="7x9oRLaesyE" role="3cpWs9">
                          <property role="TrG5h" value="queryName" />
                          <node concept="17QB3L" id="7x9oRLaesy_" role="1tU5fm" />
                          <node concept="2OqwBi" id="7x9oRLaesVG" role="33vP2m">
                            <node concept="37vLTw" id="7x9oRLaesK$" role="2Oq$k0">
                              <ref role="3cqZAo" node="7x9oRLa8CUf" resolve="converter" />
                            </node>
                            <node concept="liA8E" id="7x9oRLaet6Y" role="2OqNvi">
                              <ref role="37wK5l" to="cpc8:7IRUqbcA23F" resolve="convertQuery" />
                              <node concept="37vLTw" id="7x9oRLaeteh" role="37wK5m">
                                <ref role="3cqZAo" node="7x9oRLaerP5" resolve="query" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7x9oRLaerOO" role="3cqZAp">
                        <node concept="3cpWsn" id="7x9oRLaerOP" role="3cpWs9">
                          <property role="TrG5h" value="queryHandlerName" />
                          <node concept="17QB3L" id="7x9oRLaerOQ" role="1tU5fm" />
                          <node concept="2OqwBi" id="7x9oRLaerOR" role="33vP2m">
                            <node concept="37vLTw" id="7x9oRLaerOS" role="2Oq$k0">
                              <ref role="3cqZAo" node="7x9oRLa8CUf" resolve="converter" />
                            </node>
                            <node concept="liA8E" id="7x9oRLaerOT" role="2OqNvi">
                              <ref role="37wK5l" to="cpc8:7x9oRLacXM6" resolve="convertQueryHandlerSeparated" />
                              <node concept="37vLTw" id="7x9oRLaerOU" role="37wK5m">
                                <ref role="3cqZAo" node="7x9oRLaerP5" resolve="query" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="lc7rE" id="7x9oRLaetN2" role="3cqZAp">
                        <node concept="2BGw6n" id="7x9oRLaetYI" role="lcghm" />
                        <node concept="la8eA" id="7x9oRLaetRG" role="lcghm">
                          <property role="lacIc" value="queryContainer.registerQueryHandler(" />
                        </node>
                        <node concept="l9hG8" id="7x9oRLaeutX" role="lcghm">
                          <node concept="37vLTw" id="7x9oRLaeu$x" role="lb14g">
                            <ref role="3cqZAo" node="7x9oRLaesyE" resolve="queryName" />
                          </node>
                        </node>
                        <node concept="la8eA" id="7x9oRLaeuG7" role="lcghm">
                          <property role="lacIc" value="::class, " />
                        </node>
                        <node concept="l9hG8" id="7x9oRLaev5f" role="lcghm">
                          <node concept="2YIFZM" id="7x9oRLaeve3" role="lb14g">
                            <ref role="37wK5l" to="3u0l:3fVLq_sAaSt" resolve="firstToLower" />
                            <ref role="1Pybhc" to="3u0l:4yUYSn07am5" resolve="StringUtil" />
                            <node concept="37vLTw" id="7x9oRLaeviz" role="37wK5m">
                              <ref role="3cqZAo" node="7x9oRLaerOP" resolve="queryHandlerName" />
                            </node>
                          </node>
                        </node>
                        <node concept="la8eA" id="7x9oRLaevri" role="lcghm">
                          <property role="lacIc" value=")" />
                        </node>
                        <node concept="1bDJIP" id="7x9oRLaf7ZH" role="lcghm">
                          <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7x9oRLaerP5" role="1bW2Oz">
                      <property role="TrG5h" value="query" />
                      <node concept="2jxLKc" id="7x9oRLaerP6" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7x9oRLafJx6" role="3cqZAp" />
            <node concept="lc7rE" id="7x9oRL9BPD$" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9D1ed" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9BPE3" role="lcghm">
                <property role="lacIc" value="return " />
              </node>
              <node concept="l9hG8" id="7x9oRL9BPFg" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9BPGf" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9BOom" resolve="queryProcessorImpl" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9BPHm" role="lcghm">
                <property role="lacIc" value="(queryContainer)" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9D1fb" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7x9oRL9BPvl" role="3cqZAp">
          <node concept="la8eA" id="7x9oRL9BPyI" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7x9oRL9eaGu">
    <property role="3GE5qa" value="querySide.query.processor" />
    <ref role="WuzLi" to="m7gy:7x9oRL9dU8p" resolve="QueryHandlerContainerKotlinOutput" />
    <node concept="29tfMY" id="7x9oRL9eaGv" role="29tGrW">
      <node concept="3clFbS" id="7x9oRL9eaGw" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9eaML" role="3cqZAp">
          <node concept="10M0yZ" id="7x9oRL9eaOx" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:7x9oRL8OXYf" resolve="QUERY_HANDLER_CONTAINER_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="7x9oRL9eaVP" role="1Knhgg">
      <node concept="3clFbS" id="7x9oRL9eaVR" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9eaWD" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL9ebhe" role="3clFbG">
            <node concept="117lpO" id="7x9oRL9eaWC" role="2Oq$k0" />
            <node concept="2qgKlT" id="7x9oRL9ebuF" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="7x9oRL9ebFw" role="33IsuW">
      <node concept="3clFbS" id="7x9oRL9ebFx" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9ebH6" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL9ecr8" role="3clFbG">
            <node concept="Rm8GO" id="7x9oRL9ebJ9" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="7x9oRL9ecSh" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="7x9oRL9ecU6" role="11c4hB">
      <node concept="3clFbS" id="7x9oRL9ecU7" role="2VODD2">
        <node concept="3cpWs8" id="7x9oRL9edrq" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9edrr" role="3cpWs9">
            <property role="TrG5h" value="query" />
            <node concept="17QB3L" id="7x9oRL9edpg" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9edrs" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:4b$xqUATxQK" resolve="QUERY_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9edzj" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9edzk" role="3cpWs9">
            <property role="TrG5h" value="queryHandler" />
            <node concept="17QB3L" id="7x9oRL9edzl" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9edCD" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:4b$xqUATzHo" resolve="QUERY_HANDLER_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7x9oRL9edxJ" role="3cqZAp" />
        <node concept="lc7rE" id="7x9oRL9ediz" role="3cqZAp">
          <node concept="1bDJIP" id="7x9oRL9edi$" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="7x9oRL9edi_" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="7x9oRL9ediA" role="3cqZAp" />
        <node concept="lc7rE" id="7x9oRL9ediB" role="3cqZAp">
          <node concept="1bDJIP" id="7x9oRL9ediC" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="10M0yZ" id="7x9oRL9edGA" role="1ryhcI">
              <ref role="3cqZAo" to="cpc8:7x9oRL8OXYf" resolve="QUERY_HANDLER_CONTAINER_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="la8eA" id="7x9oRL9ediE" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="7x9oRL9ediF" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="7x9oRL9ediH" role="3cqZAp">
          <node concept="3clFbS" id="7x9oRL9ediI" role="3izTki">
            <node concept="lc7rE" id="7x9oRL9ediJ" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9ediK" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9ediL" role="lcghm">
                <property role="lacIc" value="fun &lt;Result&gt; registerQueryHandler(clazz: KClass&lt;out " />
              </node>
              <node concept="l9hG8" id="7x9oRL9ediM" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9edVC" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edrr" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9ediO" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;&gt;, queryHandler: " />
              </node>
              <node concept="l9hG8" id="7x9oRL9edZE" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9ee0I" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edzk" resolve="queryHandler" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9ee1U" role="lcghm">
                <property role="lacIc" value="&lt;out " />
              </node>
              <node concept="l9hG8" id="7x9oRL9ee48" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9ee5f" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edrr" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9ee6u" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;, Result&gt;)" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9ediP" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9ee9M" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eeat" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eebk" role="lcghm">
                <property role="lacIc" value="fun unregisterQueryHandler(clazz: KClass&lt;out " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eeey" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eefz" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edrr" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eecz" role="lcghm">
                <property role="lacIc" value="&lt;*&gt;&gt;)" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eegG" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eehS" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eeiE" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eejw" role="lcghm">
                <property role="lacIc" value="fun getRegisteredQueryHandlers(): List&lt;" />
              </node>
              <node concept="l9hG8" id="7x9oRL9eenK" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eeoM" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edzk" resolve="queryHandler" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eel9" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9hG8" id="7x9oRL9eero" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eess" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edrr" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eemt" role="lcghm">
                <property role="lacIc" value="&lt;*&gt;, *&gt;&gt;" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eCIC" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eetU" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eeuP" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eevG" role="lcghm">
                <property role="lacIc" value="fun &lt;Result&gt; findQueryHandler(clazz: KClass&lt;out " />
              </node>
              <node concept="l9hG8" id="7x9oRL9ee$X" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eeA0" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edrr" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eewY" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;&gt;): " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eeBy" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eeCB" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edzk" resolve="queryHandler" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eeyi" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9hG8" id="7x9oRL9eeEy" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eeFD" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edrr" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eezC" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;, Result&gt;?" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eCJK" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eeHF" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eeIM" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eeQd" role="lcghm">
                <property role="lacIc" value="fun &lt;Result&gt; getQueryHandler(clazz: KClass&lt;out " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eeZO" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9ef0R" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edrr" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eeVP" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;&gt;): " />
              </node>
              <node concept="l9hG8" id="7x9oRL9ef2p" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9ef3u" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edzk" resolve="queryHandler" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eeX9" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9hG8" id="7x9oRL9ef52" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9ef69" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9edrr" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eeYv" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;, Result&gt; = findQueryHandler(clazz)!!" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eCKV" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7x9oRL9ediQ" role="3cqZAp">
          <node concept="la8eA" id="7x9oRL9ediR" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7x9oRL9eoqr">
    <property role="3GE5qa" value="querySide.query.processor" />
    <ref role="WuzLi" to="m7gy:7x9oRL9dU8m" resolve="QueryProcessorImplKotlinOutput" />
    <node concept="29tfMY" id="7x9oRL9eoIx" role="29tGrW">
      <node concept="3clFbS" id="7x9oRL9eoIy" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9eoON" role="3cqZAp">
          <node concept="10M0yZ" id="7x9oRL9eoQz" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:7x9oRL8OW3o" resolve="QUERY_PROCESSOR_IMPL_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="7x9oRL9eoRL" role="1Knhgg">
      <node concept="3clFbS" id="7x9oRL9eoRM" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9eoSz" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL9epd8" role="3clFbG">
            <node concept="117lpO" id="7x9oRL9eoSy" role="2Oq$k0" />
            <node concept="2qgKlT" id="7x9oRL9epwn" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="7x9oRL9epBq" role="33IsuW">
      <node concept="3clFbS" id="7x9oRL9epBr" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9epD0" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL9eqxv" role="3clFbG">
            <node concept="Rm8GO" id="7x9oRL9epPw" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="7x9oRL9eqYC" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="7x9oRL9er0t" role="11c4hB">
      <node concept="3clFbS" id="7x9oRL9er0u" role="2VODD2">
        <node concept="3cpWs8" id="7x9oRL9erF5" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9erF6" role="3cpWs9">
            <property role="TrG5h" value="queryContainer" />
            <node concept="17QB3L" id="7x9oRL9erDo" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9erF7" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:7x9oRL8OXYf" resolve="QUERY_HANDLER_CONTAINER_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9Aosk" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9Aosn" role="3cpWs9">
            <property role="TrG5h" value="queryProcessor" />
            <node concept="17QB3L" id="7x9oRL9Aosi" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9AoyN" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:7x9oRL8OULB" resolve="QUERY_PROCESSOR_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9Ao_h" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9Ao_i" role="3cpWs9">
            <property role="TrG5h" value="queryProcessorImpl" />
            <node concept="17QB3L" id="7x9oRL9Ao_j" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9DC8W" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:7x9oRL8OW3o" resolve="QUERY_PROCESSOR_IMPL_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7x9oRL9AopR" role="3cqZAp" />
        <node concept="lc7rE" id="7x9oRL9er4s" role="3cqZAp">
          <node concept="1bDJIP" id="7x9oRL9er4t" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="7x9oRL9er4u" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="7x9oRL9er4v" role="3cqZAp" />
        <node concept="lc7rE" id="7x9oRL9er4w" role="3cqZAp">
          <node concept="1bDJIP" id="7x9oRL9er4x" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="37vLTw" id="7x9oRL9AoIL" role="1ryhcI">
              <ref role="3cqZAo" node="7x9oRL9Ao_i" resolve="queryProcessorImpl" />
            </node>
          </node>
          <node concept="la8eA" id="7x9oRL9er4z" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="1bDJIP" id="7x9oRL9er4$" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="7x9oRL9erwN" role="3cqZAp">
          <node concept="3clFbS" id="7x9oRL9erwP" role="3izTki">
            <node concept="lc7rE" id="7x9oRL9ery7" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eryz" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9erzp" role="lcghm">
                <property role="lacIc" value="private val queryHandlerContainer: " />
              </node>
              <node concept="l9hG8" id="7x9oRL9erZQ" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9es0Q" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9erF6" resolve="queryContainer" />
                </node>
              </node>
              <node concept="1bDJIP" id="7x9oRL9_LYN" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7x9oRL9erMf" role="3cqZAp">
          <node concept="la8eA" id="7x9oRL9erNY" role="lcghm">
            <property role="lacIc" value="): " />
          </node>
          <node concept="l9hG8" id="7x9oRL9erPy" role="lcghm">
            <node concept="37vLTw" id="7x9oRL9AoKC" role="lb14g">
              <ref role="3cqZAo" node="7x9oRL9Aosn" resolve="queryProcessor" />
            </node>
          </node>
          <node concept="la8eA" id="7x9oRL9es2b" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
          <node concept="1bDJIP" id="7x9oRL9es3U" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="7x9oRL9es4B" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="7x9oRL9er4A" role="3cqZAp">
          <node concept="3clFbS" id="7x9oRL9er4B" role="3izTki">
            <node concept="lc7rE" id="7x9oRL9er4C" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9er4D" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9er4E" role="lcghm">
                <property role="lacIc" value="override fun &lt;Result&gt; process(query: " />
              </node>
              <node concept="l9hG8" id="7x9oRL9er4F" role="lcghm">
                <node concept="10M0yZ" id="7x9oRL9er4G" role="lb14g">
                  <ref role="3cqZAo" to="cpc8:4b$xqUATxQK" resolve="QUERY_INTERFACE_NAME" />
                  <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9er4H" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;): Result {" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9escx" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9esei" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9esej" role="lcghm" />
              <node concept="2BGw6n" id="7x9oRL9esr_" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9esek" role="lcghm">
                <property role="lacIc" value="return queryHandlerContainer.getQueryHandler(query::class).handle(query)" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eseo" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eshE" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eshF" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9esq4" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9essK" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="7x9oRL9essQ" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7x9oRL9er4J" role="3cqZAp">
          <node concept="la8eA" id="7x9oRL9er4K" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7x9oRL9e_fo">
    <property role="3GE5qa" value="querySide.query.processor" />
    <ref role="WuzLi" to="m7gy:7x9oRL9dU8s" resolve="QueryHandlerContainerImplKotlinOutput" />
    <node concept="29tfMY" id="7x9oRL9e_fp" role="29tGrW">
      <node concept="3clFbS" id="7x9oRL9e_fq" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9e_lF" role="3cqZAp">
          <node concept="10M0yZ" id="7x9oRL9e_nr" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:7x9oRL8OZrz" resolve="QUERY_HANDLER_CONTAINER_IMPL_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="7x9oRL9e_oX" role="1Knhgg">
      <node concept="3clFbS" id="7x9oRL9e_oZ" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9e_pL" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL9e_CV" role="3clFbG">
            <node concept="117lpO" id="7x9oRL9e_pK" role="2Oq$k0" />
            <node concept="2qgKlT" id="7x9oRL9e_Wa" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="7x9oRL9eA3d" role="33IsuW">
      <node concept="3clFbS" id="7x9oRL9eA3e" role="2VODD2">
        <node concept="3clFbF" id="7x9oRL9eA4N" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL9eAH3" role="3clFbG">
            <node concept="Rm8GO" id="7x9oRL9eA6Q" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="7x9oRL9eBac" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="7x9oRL9eBc1" role="11c4hB">
      <node concept="3clFbS" id="7x9oRL9eBc2" role="2VODD2">
        <node concept="3cpWs8" id="7x9oRL9eBs1" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9eBs2" role="3cpWs9">
            <property role="TrG5h" value="query" />
            <node concept="17QB3L" id="7x9oRL9eBs3" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9eBs4" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:4b$xqUATxQK" resolve="QUERY_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9eBs5" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9eBs6" role="3cpWs9">
            <property role="TrG5h" value="queryHandler" />
            <node concept="17QB3L" id="7x9oRL9eBs7" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9eBs8" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:4b$xqUATzHo" resolve="QUERY_HANDLER_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9eBRs" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9eBRv" role="3cpWs9">
            <property role="TrG5h" value="queryHandlerContainer" />
            <node concept="17QB3L" id="7x9oRL9eBRq" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9eC0M" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:7x9oRL8OXYf" resolve="QUERY_HANDLER_CONTAINER_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7x9oRL9eC6h" role="3cqZAp">
          <node concept="3cpWsn" id="7x9oRL9eC6i" role="3cpWs9">
            <property role="TrG5h" value="queryHandlerContainerImpl" />
            <node concept="17QB3L" id="7x9oRL9eC6j" role="1tU5fm" />
            <node concept="10M0yZ" id="7x9oRL9eCdD" role="33vP2m">
              <ref role="3cqZAo" to="cpc8:7x9oRL8OZrz" resolve="QUERY_HANDLER_CONTAINER_IMPL_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7x9oRL9eC37" role="3cqZAp" />
        <node concept="lc7rE" id="7x9oRL9eBsa" role="3cqZAp">
          <node concept="1bDJIP" id="7x9oRL9eBsb" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="7x9oRL9eBsc" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="7x9oRL9eBsd" role="3cqZAp" />
        <node concept="lc7rE" id="7x9oRL9eBse" role="3cqZAp">
          <node concept="1bDJIP" id="7x9oRL9eBsf" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0FvC7" resolve="_class" />
            <node concept="37vLTw" id="7x9oRL9eCic" role="1ryhcI">
              <ref role="3cqZAo" node="7x9oRL9eC6i" resolve="queryHandlerContainerImpl" />
            </node>
          </node>
          <node concept="la8eA" id="7x9oRL9eBsh" role="lcghm">
            <property role="lacIc" value="(): " />
          </node>
          <node concept="l9hG8" id="7x9oRL9eBGb" role="lcghm">
            <node concept="37vLTw" id="7x9oRL9eCmu" role="lb14g">
              <ref role="3cqZAo" node="7x9oRL9eBRv" resolve="queryHandlerContainer" />
            </node>
          </node>
          <node concept="la8eA" id="7x9oRL9eBNv" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
          <node concept="1bDJIP" id="7x9oRL9eBsi" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="7x9oRL9eBsj" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="7x9oRL9eBsk" role="3cqZAp">
          <node concept="3clFbS" id="7x9oRL9eBsl" role="3izTki">
            <node concept="lc7rE" id="7x9oRL9eCqf" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eCrn" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eCsd" role="lcghm">
                <property role="lacIc" value="private val container = mutableMapOf&lt;KClass&lt;*&gt;, " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eCxd" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eCyf" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs6" resolve="queryHandler" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eCuA" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9hG8" id="7x9oRL9eC$7" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eC_b" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs2" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eCvU" role="lcghm">
                <property role="lacIc" value="&lt;*&gt;, *&gt;&gt;()" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eCD0" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="7x9oRL9eCDz" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7x9oRL9eCpe" role="3cqZAp" />
            <node concept="lc7rE" id="7x9oRL9eCQz" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eCRQ" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eCSl" role="lcghm">
                <property role="lacIc" value="@Suppress(&quot;UNCHECKED_CAST&quot;)" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eCXx" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eBsm" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eBsn" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eBso" role="lcghm">
                <property role="lacIc" value="override fun &lt;Result&gt; registerQueryHandler(clazz: KClass&lt;out " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eBsp" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eBsq" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs2" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eBsr" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;&gt;, queryHandler: " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eBss" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eBst" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs6" resolve="queryHandler" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eBsu" role="lcghm">
                <property role="lacIc" value="&lt;out " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eBsv" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eBsw" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs2" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eBsx" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;, Result&gt;) {" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eBsy" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eD7o" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eD8Q" role="lcghm" />
              <node concept="2BGw6n" id="7x9oRL9eD9G" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eDeM" role="lcghm">
                <property role="lacIc" value="container[clazz] = queryHandler as " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eDj5" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eDk8" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs6" resolve="queryHandler" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eDgq" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9hG8" id="7x9oRL9eDm1" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eDn6" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs2" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eDhK" role="lcghm">
                <property role="lacIc" value="&lt;*&gt;, *&gt;" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eDoE" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eDby" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eDd3" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eDdT" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eDpE" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="7x9oRL9eDq7" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7x9oRL9eDa8" role="3cqZAp" />
            <node concept="lc7rE" id="7x9oRL9eBsz" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eBs$" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eBs_" role="lcghm">
                <property role="lacIc" value="override fun unregisterQueryHandler(clazz: KClass&lt;out " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eBsA" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eBsB" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs2" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eBsC" role="lcghm">
                <property role="lacIc" value="&lt;*&gt;&gt;) {" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eBsD" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eDsd" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eDtV" role="lcghm" />
              <node concept="2BGw6n" id="7x9oRL9eDuL" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eDvD" role="lcghm">
                <property role="lacIc" value="container.remove(clazz)" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eDwB" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eDzC" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eD_r" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eDAh" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eDBc" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="7x9oRL9eDBi" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7x9oRL9eD4k" role="3cqZAp" />
            <node concept="lc7rE" id="7x9oRL9eBsE" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eBsF" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eBsG" role="lcghm">
                <property role="lacIc" value="override fun getRegisteredQueryHandlers(): List&lt;" />
              </node>
              <node concept="l9hG8" id="7x9oRL9eBsH" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eBsI" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs6" resolve="queryHandler" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eBsJ" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9hG8" id="7x9oRL9eBsK" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eBsL" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs2" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eBsM" role="lcghm">
                <property role="lacIc" value="&lt;*&gt;, *&gt;&gt; {" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eDD1" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eDGP" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eDIJ" role="lcghm" />
              <node concept="2BGw6n" id="7x9oRL9eDJ_" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eDKt" role="lcghm">
                <property role="lacIc" value="return container.values.toList()" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eDM6" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eDOs" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eDOt" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eDOu" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eDOv" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="7x9oRL9eDOw" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7x9oRL9eDF2" role="3cqZAp" />
            <node concept="lc7rE" id="7x9oRL9eD0b" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eD0c" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eD0d" role="lcghm">
                <property role="lacIc" value="@Suppress(&quot;UNCHECKED_CAST&quot;)" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eD0e" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eBsN" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eBsO" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eBsP" role="lcghm">
                <property role="lacIc" value="override fun &lt;Result&gt; findQueryHandler(clazz: KClass&lt;out " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eBsQ" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eBsR" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs2" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eBsS" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;&gt;): " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eBsT" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eBsU" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs6" resolve="queryHandler" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eBsV" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9hG8" id="7x9oRL9eBsW" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eBsX" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs2" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eBsY" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;, Result&gt;? {" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eEn5" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eE2H" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eE2I" role="lcghm" />
              <node concept="2BGw6n" id="7x9oRL9eE2J" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eE7X" role="lcghm">
                <property role="lacIc" value="return container[clazz] as " />
              </node>
              <node concept="l9hG8" id="7x9oRL9eEcp" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eEdt" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs6" resolve="queryHandler" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eE9E" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9hG8" id="7x9oRL9eEgr" role="lcghm">
                <node concept="37vLTw" id="7x9oRL9eEhx" role="lb14g">
                  <ref role="3cqZAo" node="7x9oRL9eBs2" resolve="query" />
                </node>
              </node>
              <node concept="la8eA" id="7x9oRL9eEb2" role="lcghm">
                <property role="lacIc" value="&lt;Result&gt;, Result&gt;?" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eE2L" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="7x9oRL9eDYp" role="3cqZAp">
              <node concept="2BGw6n" id="7x9oRL9eDYq" role="lcghm" />
              <node concept="la8eA" id="7x9oRL9eDYr" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="1bDJIP" id="7x9oRL9eDYs" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                <node concept="3cmrfG" id="7x9oRL9eDYt" role="1ryhcI">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7x9oRL9eBtb" role="3cqZAp">
          <node concept="la8eA" id="7x9oRL9eBtc" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="51Z40VBua4e">
    <property role="3GE5qa" value="commandSide.command" />
    <ref role="WuzLi" to="m7gy:7x9oRL8JBrB" resolve="CommandWrapperInterfaceKotlinOutput" />
    <node concept="29tfMY" id="51Z40VBua4f" role="29tGrW">
      <node concept="3clFbS" id="51Z40VBua4g" role="2VODD2">
        <node concept="3clFbF" id="51Z40VBuaax" role="3cqZAp">
          <node concept="2OqwBi" id="51Z40VBubsu" role="3clFbG">
            <node concept="2OqwBi" id="51Z40VBuav6" role="2Oq$k0">
              <node concept="117lpO" id="51Z40VBuaaw" role="2Oq$k0" />
              <node concept="3TrEf2" id="51Z40VBub8p" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:7x9oRL8JBrz" resolve="substitudeCommand" />
              </node>
            </node>
            <node concept="3TrcHB" id="51Z40VBubVF" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="51Z40VBubZz" role="1Knhgg">
      <node concept="3clFbS" id="51Z40VBubZ$" role="2VODD2">
        <node concept="3clFbF" id="51Z40VBuc0N" role="3cqZAp">
          <node concept="2OqwBi" id="51Z40VBuc1m" role="3clFbG">
            <node concept="117lpO" id="51Z40VBuc0M" role="2Oq$k0" />
            <node concept="2qgKlT" id="51Z40VBuc2E" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="51Z40VBuc7f" role="33IsuW">
      <node concept="3clFbS" id="51Z40VBuc7g" role="2VODD2">
        <node concept="3clFbF" id="51Z40VBuc9j" role="3cqZAp">
          <node concept="2OqwBi" id="51Z40VBucMA" role="3clFbG">
            <node concept="Rm8GO" id="51Z40VBucc3" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="51Z40VBudgs" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="51Z40VBudiY" role="11c4hB">
      <node concept="3clFbS" id="51Z40VBudiZ" role="2VODD2">
        <node concept="lc7rE" id="51Z40VBudrg" role="3cqZAp">
          <node concept="1bDJIP" id="51Z40VBudrh" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0topi" resolve="header" />
            <node concept="117lpO" id="51Z40VBudri" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VBudrj" role="3cqZAp" />
        <node concept="lc7rE" id="51Z40VBudrk" role="3cqZAp">
          <node concept="1bDJIP" id="51Z40VBudrl" role="lcghm">
            <ref role="1rvKf6" node="4yUYSn0xddb" resolve="_interface" />
            <node concept="2OqwBi" id="51Z40VBudrm" role="1ryhcI">
              <node concept="2OqwBi" id="51Z40VBudrn" role="2Oq$k0">
                <node concept="117lpO" id="51Z40VBudro" role="2Oq$k0" />
                <node concept="3TrEf2" id="51Z40VBudrp" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:7x9oRL8JBrz" resolve="substitudeCommand" />
                </node>
              </node>
              <node concept="3TrcHB" id="51Z40VBudrq" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="51Z40VBudrr" role="lcghm">
            <property role="lacIc" value=": " />
          </node>
          <node concept="l9hG8" id="51Z40VBudrs" role="lcghm">
            <node concept="10M0yZ" id="51Z40VBudK7" role="lb14g">
              <ref role="3cqZAo" to="cpc8:4b$xqUBr8NX" resolve="COMMAND_INTERFACE_NAME" />
              <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
            </node>
          </node>
          <node concept="1bDJIP" id="51Z40VBudru" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
            <node concept="3cmrfG" id="51Z40VBudrv" role="1ryhcI">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51Z40VBudrw" role="3cqZAp" />
        <node concept="3clFbF" id="51Z40VBudrx" role="3cqZAp">
          <node concept="2OqwBi" id="51Z40VBudry" role="3clFbG">
            <node concept="2OqwBi" id="51Z40VBudrz" role="2Oq$k0">
              <node concept="117lpO" id="51Z40VBudr$" role="2Oq$k0" />
              <node concept="3Tsc0h" id="51Z40VBudr_" role="2OqNvi">
                <ref role="3TtcxE" to="anwi:7x9oRL8JBr$" resolve="wrappedCommands" />
              </node>
            </node>
            <node concept="2es0OD" id="51Z40VBudrA" role="2OqNvi">
              <node concept="1bVj0M" id="51Z40VBudrB" role="23t8la">
                <node concept="3clFbS" id="51Z40VBudrC" role="1bW5cS">
                  <node concept="lc7rE" id="51Z40VBudrD" role="3cqZAp">
                    <node concept="l9hG8" id="51Z40VBudrE" role="lcghm">
                      <node concept="37vLTw" id="51Z40VBudrF" role="lb14g">
                        <ref role="3cqZAo" node="51Z40VBudrI" resolve="command" />
                      </node>
                    </node>
                    <node concept="1bDJIP" id="51Z40VBudrG" role="lcghm">
                      <ref role="1rvKf6" to="a0t:4Wa3rAGb1Tk" resolve="newLines" />
                      <node concept="3cmrfG" id="51Z40VBudrH" role="1ryhcI">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="51Z40VBudrI" role="1bW2Oz">
                  <property role="TrG5h" value="command" />
                  <node concept="2jxLKc" id="51Z40VBudrJ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6ERg2T3Wns">
    <property role="3GE5qa" value="commandSide.entity" />
    <ref role="WuzLi" to="m7gy:6ERg2T3Wnp" resolve="EntityBaseClassKotlinOutput" />
    <node concept="29tfMY" id="6ERg2T3Wnt" role="29tGrW">
      <node concept="3clFbS" id="6ERg2T3Wnu" role="2VODD2">
        <node concept="3clFbF" id="6ERg2T3WtJ" role="3cqZAp">
          <node concept="10M0yZ" id="6ERg2T3Wvv" role="3clFbG">
            <ref role="3cqZAo" to="cpc8:6ERg2T3qv7" resolve="ENTITY_BASE_CLASS_NAME" />
            <ref role="1PxDUh" to="cpc8:3GrpC3f1cWQ" resolve="DependencyUtils" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="6ERg2T3WwH" role="1Knhgg">
      <node concept="3clFbS" id="6ERg2T3WwI" role="2VODD2">
        <node concept="3clFbF" id="6ERg2T3Wxv" role="3cqZAp">
          <node concept="2OqwBi" id="6ERg2T3WQ4" role="3clFbG">
            <node concept="117lpO" id="6ERg2T3Wxu" role="2Oq$k0" />
            <node concept="2qgKlT" id="6ERg2T3X3x" role="2OqNvi">
              <ref role="37wK5l" to="opxm:4b$xqUBcV69" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="6ERg2T3Xa$" role="33IsuW">
      <node concept="3clFbS" id="6ERg2T3Xa_" role="2VODD2">
        <node concept="3clFbF" id="6ERg2T3Xca" role="3cqZAp">
          <node concept="2OqwBi" id="6ERg2T3XOn" role="3clFbG">
            <node concept="Rm8GO" id="6ERg2T3Xea" role="2Oq$k0">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
            <node concept="2S8uIT" id="6ERg2T3Yhw" role="2OqNvi">
              <ref role="2S8YL0" to="cpc8:4yUYSn0s9vA" resolve="fileExtension" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="6ERg2T3Yjl" role="11c4hB">
      <node concept="3clFbS" id="6ERg2T3Yjm" role="2VODD2">
        <node concept="lc7rE" id="6ERg2T3Ymw" role="3cqZAp">
          <node concept="1bDJIP" id="6ERg2T3YmZ" role="lcghm">
            <ref role="1rvKf6" node="4Wa3rAG8di5" resolve="_package" />
            <node concept="2OqwBi" id="6ERg2T3Yqe" role="1ryhcI">
              <node concept="117lpO" id="6ERg2T3Ynq" role="2Oq$k0" />
              <node concept="2qgKlT" id="6ERg2T3YEi" role="2OqNvi">
                <ref role="37wK5l" to="opxm:4b$xqUBcV62" resolve="getPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ERg2T3Ym8" role="3cqZAp" />
        <node concept="lc7rE" id="6ERg2T3YFH" role="3cqZAp">
          <node concept="1bDJIP" id="6ERg2T3YGD" role="lcghm">
            <ref role="1rvKf6" node="Sy32QR5O4k" resolve="_abstractclass" />
            <node concept="Xl_RD" id="6ERg2T3YM2" role="1ryhcI">
              <property role="Xl_RC" value="Entity&lt;ID&gt;(" />
            </node>
          </node>
          <node concept="1bDJIP" id="6ERg2T3YSg" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="6ERg2T3YWc" role="3cqZAp">
          <node concept="3clFbS" id="6ERg2T3YWe" role="3izTki">
            <node concept="lc7rE" id="6ERg2T3YX5" role="3cqZAp">
              <node concept="2BGw6n" id="6ERg2T3YXx" role="lcghm" />
              <node concept="la8eA" id="6ERg2T3YYn" role="lcghm">
                <property role="lacIc" value="private val id: ID" />
              </node>
              <node concept="1bDJIP" id="6ERg2T3Z12" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6ERg2T3Z2q" role="3cqZAp">
          <node concept="la8eA" id="6ERg2T3Z3s" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
          <node concept="1bDJIP" id="6ERg2T3Z5A" role="lcghm">
            <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
          </node>
        </node>
        <node concept="3izx1p" id="6ERg2T3Z7j" role="3cqZAp">
          <node concept="3clFbS" id="6ERg2T3Z7l" role="3izTki">
            <node concept="lc7rE" id="6ERg2T3Zh5" role="3cqZAp">
              <node concept="2BGw6n" id="6ERg2T3Zhx" role="lcghm" />
              <node concept="la8eA" id="6ERg2T3Zin" role="lcghm">
                <property role="lacIc" value="fun getId() = id" />
              </node>
              <node concept="1bDJIP" id="6ERg2T3Zlp" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="6ERg2T3Zmh" role="3cqZAp">
              <node concept="2BGw6n" id="6ERg2T3Zo0" role="lcghm" />
              <node concept="la8eA" id="6ERg2T3ZmN" role="lcghm">
                <property role="lacIc" value="override fun hashCode(): Int = getId().hashCode()" />
              </node>
              <node concept="1bDJIP" id="6ERg2T3ZuC" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="6ERg2T3Zv$" role="3cqZAp">
              <node concept="2BGw6n" id="6ERg2T3Zwa" role="lcghm" />
              <node concept="la8eA" id="6ERg2T3Zx0" role="lcghm">
                <property role="lacIc" value="override fun equals(other: Any?): Boolean {" />
              </node>
              <node concept="1bDJIP" id="6ERg2T3ZAU" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="6ERg2T3ZBU" role="3cqZAp">
              <node concept="2BGw6n" id="6ERg2T3ZC$" role="lcghm" />
              <node concept="2BGw6n" id="6ERg2T3ZDq" role="lcghm" />
              <node concept="la8eA" id="6ERg2T3ZEi" role="lcghm">
                <property role="lacIc" value="if(other == null || other !is Entity&lt;*&gt;) return false" />
              </node>
              <node concept="1bDJIP" id="6ERg2T3ZLF" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="6ERg2T3ZML" role="3cqZAp">
              <node concept="2BGw6n" id="6ERg2T3ZNw" role="lcghm" />
              <node concept="2BGw6n" id="6ERg2T3ZOm" role="lcghm" />
              <node concept="la8eA" id="6ERg2T3ZPe" role="lcghm">
                <property role="lacIc" value="return getId() == other.getId()" />
              </node>
              <node concept="1bDJIP" id="6ERg2T3ZTI" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
            <node concept="lc7rE" id="6ERg2T3ZUT" role="3cqZAp">
              <node concept="2BGw6n" id="6ERg2T3ZVH" role="lcghm" />
              <node concept="la8eA" id="6ERg2T3ZWz" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="1bDJIP" id="6ERg2T3ZXM" role="lcghm">
                <ref role="1rvKf6" to="a0t:4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6ERg2T3Z8l" role="3cqZAp">
          <node concept="la8eA" id="6ERg2T3ZfD" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

