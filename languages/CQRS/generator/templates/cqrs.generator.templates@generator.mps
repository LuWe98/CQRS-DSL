<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:42cb5d2f-abeb-4e2e-8123-489601a56e32(CQRS.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="6b3888c1-9802-44d8-8baf-f8e6c33ed689" name="jetbrains.mps.kotlin" version="10" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="fe04f903-cef2-451d-9401-426cad0a8857" name="CQRS" version="0" />
    <use id="289fcc83-6543-41e8-a5ca-768235715ce4" name="jetbrains.mps.lang.generator.generationParameters" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="x2yc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:kotlin.jvm(MPS.IDEA/)" />
    <import index="0" ref="b50d89c0-0fb9-4105-b652-222148c26a9b/kotlin:kotlin(jetbrains.mps.kotlin.stdlib/)" />
    <import index="hcm8" ref="r:72a7bf00-0175-42ca-b99b-fe8519b6a16f(jetbrains.mps.kotlin.structure)" implicit="true" />
    <import index="1xrd" ref="b50d89c0-0fb9-4105-b652-222148c26a9b/kotlin:kotlin.collections(jetbrains.mps.kotlin.stdlib/)" implicit="true" />
    <import index="sx7w" ref="r:dc830b23-b722-4fd1-8178-0431aafe57ef(CQRS.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="7830515785164762753" name="jetbrains.mps.lang.generator.structure.MappingConfiguration_Condition" flags="in" index="avzCv" />
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="7830515785164764091" name="condition" index="avys_" />
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <property id="7556128013608567747" name="private" index="2om86B" />
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1195158154974" name="jetbrains.mps.lang.generator.structure.InlineSwitch_RuleConsequence" flags="lg" index="14YyZ8">
        <child id="1195158241124" name="defaultConsequence" index="14YRTM" />
        <child id="1195158408710" name="case" index="14ZwWg" />
      </concept>
      <concept id="1195158388553" name="jetbrains.mps.lang.generator.structure.InlineSwitch_Case" flags="ng" index="14ZrTv">
        <child id="1195158608805" name="conditionFunction" index="150hEN" />
        <child id="1195158637244" name="caseConsequence" index="150oIE" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <property id="1177959072138" name="keepSourceRoot" index="13Pg2o" />
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="6b3888c1-9802-44d8-8baf-f8e6c33ed689" name="jetbrains.mps.kotlin">
      <concept id="1243006380186327175" name="jetbrains.mps.kotlin.structure.IReturnType" flags="ng" index="21NdcK">
        <child id="1243006380186327176" name="returnType" index="21NdcZ" />
      </concept>
      <concept id="7996321249597408849" name="jetbrains.mps.kotlin.structure.IInheritExplicitly" flags="ng" index="6Oumu">
        <child id="1991556721067228837" name="superclasses" index="AST3G" />
      </concept>
      <concept id="2441172150875731341" name="jetbrains.mps.kotlin.structure.TypeParameterReference" flags="ng" index="9pJMI">
        <reference id="2441172150875731342" name="parameter" index="9pJMH" />
      </concept>
      <concept id="5622728304609204267" name="jetbrains.mps.kotlin.structure.EmptyDeclaration" flags="ng" index="eKYAL" />
      <concept id="2599447651060127508" name="jetbrains.mps.kotlin.structure.ITypeArguments" flags="ng" index="2pIC39">
        <child id="6565639133216732540" name="typeArguments" index="TPadX" />
      </concept>
      <concept id="6694824264972381625" name="jetbrains.mps.kotlin.structure.IntersectionType" flags="ng" index="2vGeqb">
        <child id="6694824264972381847" name="components" index="2vGem_" />
      </concept>
      <concept id="781120894705658104" name="jetbrains.mps.kotlin.structure.IKotlinFile" flags="ng" index="2_hZ6C">
        <child id="2936055411798374535" name="header" index="1XD0Tg" />
      </concept>
      <concept id="7138249191285121087" name="jetbrains.mps.kotlin.structure.IVisible" flags="ng" index="2BPcvI">
        <child id="7138249191285121088" name="visibility" index="2BPcuh" />
      </concept>
      <concept id="6013275720582937818" name="jetbrains.mps.kotlin.structure.IInheritable" flags="ng" index="ICcUM">
        <child id="6013275720582937819" name="inheritance" index="ICcUN" />
      </concept>
      <concept id="2324909103759097704" name="jetbrains.mps.kotlin.structure.IWithClassBody" flags="ng" index="KS$fF">
        <child id="2324909103759097705" name="members" index="KS$fE" />
      </concept>
      <concept id="2324909103760650644" name="jetbrains.mps.kotlin.structure.SuperClassSpecifier" flags="ng" index="KYwOn">
        <reference id="2324909103760650645" name="target" index="KYwOm" />
      </concept>
      <concept id="5401033615058672984" name="jetbrains.mps.kotlin.structure.ComponentDeclaration" flags="ng" index="2Rs4SG" />
      <concept id="1314219036499415210" name="jetbrains.mps.kotlin.structure.AbstractPropertyDeclaration" flags="ng" index="TDTJE">
        <property id="2936055411806090009" name="isReadonly" index="1Xb$ne" />
        <child id="2936055411798374330" name="assignment" index="1XD05H" />
      </concept>
      <concept id="1314219036498225646" name="jetbrains.mps.kotlin.structure.IStatementHolder" flags="ng" index="THmaI">
        <child id="1314219036498225649" name="statements" index="THmaL" />
      </concept>
      <concept id="6565639133216732537" name="jetbrains.mps.kotlin.structure.IProjectedTypeArguments" flags="ng" index="TPadS">
        <child id="6565639133216732540" name="typeProjections" index="TPadY" />
      </concept>
      <concept id="6565639133219057675" name="jetbrains.mps.kotlin.structure.IArguments" flags="ng" index="TWioa">
        <child id="6565639133219057676" name="arguments" index="TWiod" />
      </concept>
      <concept id="5533310174484620657" name="jetbrains.mps.kotlin.structure.VariableRefExpression" flags="ng" index="UZU4S">
        <reference id="5533310174484620658" name="target" index="UZU4V" />
      </concept>
      <concept id="7188675108981477346" name="jetbrains.mps.kotlin.structure.Parameter" flags="ng" index="37iW8e">
        <child id="7188675108981477347" name="type" index="37iW8f" />
      </concept>
      <concept id="409518875564192849" name="jetbrains.mps.kotlin.structure.IDeconstructingDeclarations" flags="ng" index="1BvddI">
        <child id="5401033615058696817" name="variables" index="2Rs2$5" />
      </concept>
      <concept id="4662566628538083705" name="jetbrains.mps.kotlin.structure.FunctionCallExpression" flags="ng" index="1NbEFs" />
      <concept id="6664176324866782072" name="jetbrains.mps.kotlin.structure.IClassReference" flags="ng" index="1SePDR">
        <reference id="6664176324866782075" name="class" index="1SePDO" />
      </concept>
      <concept id="2936055411806083456" name="jetbrains.mps.kotlin.structure.IFunctionParameters" flags="ng" index="1XbAXn">
        <child id="2936055411806083457" name="parameters" index="1XbAXm" />
      </concept>
      <concept id="2936055411798373599" name="jetbrains.mps.kotlin.structure.ClassType" flags="ng" index="1XD088" />
      <concept id="2936055411798373622" name="jetbrains.mps.kotlin.structure.ConstructorSuperSpecifier" flags="ng" index="1XD08x">
        <reference id="2324909103760693884" name="target" index="KYurZ" />
      </concept>
      <concept id="2936055411798373619" name="jetbrains.mps.kotlin.structure.FinalInheritanceModifier" flags="ng" index="1XD08$" />
      <concept id="2936055411798373618" name="jetbrains.mps.kotlin.structure.AbstractInheritanceModifier" flags="ng" index="1XD08_" />
      <concept id="2936055411798373558" name="jetbrains.mps.kotlin.structure.PackageHeader" flags="ng" index="1XD09x">
        <property id="1243006380191787010" name="packageName" index="21C2eP" />
      </concept>
      <concept id="2936055411798373537" name="jetbrains.mps.kotlin.structure.PropertyDeclaration" flags="ng" index="1XD09Q">
        <child id="1314219036499436525" name="declaration" index="TDYyH" />
      </concept>
      <concept id="2936055411798373481" name="jetbrains.mps.kotlin.structure.ClassDeclaration" flags="ng" index="1XD0aY">
        <child id="2324909103763444261" name="primaryConstructor" index="KDYUA" />
      </concept>
      <concept id="2936055411798373400" name="jetbrains.mps.kotlin.structure.PrimaryConstructor" flags="ng" index="1XD0bf">
        <child id="2936055411798374111" name="parameters" index="1XD008" />
      </concept>
      <concept id="2936055411798373381" name="jetbrains.mps.kotlin.structure.FunctionParameter" flags="ng" index="1XD0bi" />
      <concept id="2936055411798373428" name="jetbrains.mps.kotlin.structure.FunctionDeclaration" flags="ng" index="1XD0bz">
        <property id="4908873499999643325" name="isOverride" index="3qOnjd" />
      </concept>
      <concept id="2936055411798373439" name="jetbrains.mps.kotlin.structure.AbstractFunctionCall" flags="ng" index="1XD0bC">
        <reference id="1991556721072067817" name="function" index="AarEw" />
      </concept>
      <concept id="2936055411798373413" name="jetbrains.mps.kotlin.structure.ForStatement" flags="ng" index="1XD0bM">
        <child id="2936055411798374152" name="in" index="1XD07v" />
      </concept>
      <concept id="2936055411798373745" name="jetbrains.mps.kotlin.structure.VariableDeclaration" flags="ng" index="1XD0eA">
        <child id="2936055411798374679" name="type" index="1XD0Z0" />
      </concept>
      <concept id="2936055411798373753" name="jetbrains.mps.kotlin.structure.ValueArgument" flags="ng" index="1XD0eI">
        <child id="2936055411798374692" name="expression" index="1XD0ZN" />
      </concept>
      <concept id="2936055411798373645" name="jetbrains.mps.kotlin.structure.TypeParameter" flags="ng" index="1XD0fq" />
      <concept id="2936055411798373690" name="jetbrains.mps.kotlin.structure.ClassParameter" flags="ng" index="1XD0fH">
        <property id="1243006380188597514" name="isReadOnly" index="21VRqX" />
        <property id="1243006380188597512" name="isProperty" index="21VRqZ" />
      </concept>
      <concept id="2936055411798373673" name="jetbrains.mps.kotlin.structure.KotlinFile" flags="ng" index="1XD0fY">
        <child id="2936055411798374537" name="declarations" index="1XD0Tu" />
      </concept>
      <concept id="2936055411798373324" name="jetbrains.mps.kotlin.structure.TypeProjection" flags="ng" index="1XD0kr">
        <child id="2936055411798374015" name="type" index="1XD02C" />
      </concept>
      <concept id="2936055411798373270" name="jetbrains.mps.kotlin.structure.PrivateVisibility" flags="ng" index="1XD0l1" />
      <concept id="2936055411798373269" name="jetbrains.mps.kotlin.structure.PublicVisibility" flags="ng" index="1XD0l2" />
      <concept id="2936055411798373223" name="jetbrains.mps.kotlin.structure.PropertyDefaultAssignement" flags="ng" index="1XD0mK">
        <child id="2936055411798373866" name="expression" index="1XD0cX" />
      </concept>
      <concept id="2936055411803573749" name="jetbrains.mps.kotlin.structure.ITypeParameters" flags="ng" index="1XPbGy">
        <child id="2936055411803573750" name="typeParameters" index="1XPbGx" />
      </concept>
      <concept id="2936055411801360063" name="jetbrains.mps.kotlin.structure.InterfaceDeclaration" flags="ng" index="1XXB1C" />
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="49VjpEej3q2">
    <property role="TrG5h" value="main" />
    <property role="3GE5qa" value="old" />
    <node concept="2rT7sh" id="6dPLGVFDn9o" role="2rTMjI">
      <property role="TrG5h" value="baseAggregateRootLabel" />
      <property role="2om86B" value="true" />
      <ref role="2rTdP9" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
      <ref role="2rZz_L" to="hcm8:71DDynMG2ea" resolve="IConstructorDeclaration" />
    </node>
    <node concept="3lhOvk" id="4NUTY$DwB2W" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true_" />
      <ref role="30HIoZ" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
      <ref role="3lhOvi" node="4NUTY$DwyVn" resolve="map_AggregateRootRepositoryInterface" />
    </node>
    <node concept="3lhOvk" id="4NUTY$DwBSa" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true_" />
      <ref role="30HIoZ" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
      <ref role="3lhOvi" node="4NUTY$DwBSe" resolve="map_AggregateRootIdRepositoryIdInterface" />
    </node>
    <node concept="3lhOvk" id="3OOM$4Q_Ydj" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true_" />
      <ref role="30HIoZ" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
      <ref role="3lhOvi" node="6dPLGVFDFk_" resolve="map_AggregateRootInterface" />
    </node>
    <node concept="3lhOvk" id="4NUTY$DwLaq" role="3lj3bC">
      <ref role="30HIoZ" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
      <ref role="3lhOvi" node="4NUTY$DwLav" resolve="map_BaseEventSourcedAggregateRoot" />
    </node>
    <node concept="3lhOvk" id="4NUTY$DwOcU" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true_" />
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
      <ref role="3lhOvi" node="4NUTY$DwOd0" resolve="map_AggregateRoot" />
    </node>
    <node concept="3aamgX" id="4NUTY$DxrSR" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMR" resolve="ByteType" />
      <node concept="gft3U" id="4NUTY$DxHoB" role="1lVwrX">
        <node concept="2vGeqb" id="4NUTY$DxHoH" role="gfFT$">
          <node concept="1XD088" id="4NUTY$DxHoJ" role="2vGem_">
            <ref role="1SePDO" to="0:~kotlin/Byte" resolve="Byte" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4NUTY$DxJrp" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMy" resolve="IntegerType" />
      <node concept="gft3U" id="4NUTY$DxJrx" role="1lVwrX">
        <node concept="2vGeqb" id="4NUTY$DxJrB" role="gfFT$">
          <node concept="1XD088" id="4NUTY$DxJrD" role="2vGem_">
            <ref role="1SePDO" to="0:~kotlin/Int" resolve="Int" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4NUTY$DxJrF" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMJ" resolve="ShortType" />
      <node concept="gft3U" id="4NUTY$DxJrR" role="1lVwrX">
        <node concept="2vGeqb" id="4NUTY$DxJrX" role="gfFT$">
          <node concept="1XD088" id="4NUTY$DxJrZ" role="2vGem_">
            <ref role="1SePDO" to="0:~kotlin/Short" resolve="Short" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4NUTY$DxJs1" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMI" resolve="LongType" />
      <node concept="gft3U" id="4NUTY$DxJsh" role="1lVwrX">
        <node concept="2vGeqb" id="4NUTY$DxJsn" role="gfFT$">
          <node concept="1XD088" id="4NUTY$DxJsp" role="2vGem_">
            <ref role="1SePDO" to="0:~kotlin/Long" resolve="Long" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4NUTY$DxJsr" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDM_" resolve="StringType" />
      <node concept="gft3U" id="4NUTY$DxJsJ" role="1lVwrX">
        <node concept="2vGeqb" id="4NUTY$DxJsP" role="gfFT$">
          <node concept="1XD088" id="4NUTY$DxJsR" role="2vGem_">
            <ref role="1SePDO" to="0:~kotlin/String" resolve="String" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4NUTY$DxJsT" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMU" resolve="CharType" />
      <node concept="gft3U" id="4NUTY$DxJth" role="1lVwrX">
        <node concept="2vGeqb" id="4NUTY$DxJtn" role="gfFT$">
          <node concept="1XD088" id="4NUTY$DxJtp" role="2vGem_">
            <ref role="1SePDO" to="0:~kotlin/Char" resolve="Char" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4NUTY$DxJtr" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMO" resolve="BooleanType" />
      <node concept="gft3U" id="4NUTY$DxJtR" role="1lVwrX">
        <node concept="2vGeqb" id="4NUTY$DxJtX" role="gfFT$">
          <node concept="1XD088" id="4NUTY$DxJtZ" role="2vGem_">
            <ref role="1SePDO" to="0:~kotlin/Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4NUTY$DxJu1" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMC" resolve="FloatType" />
      <node concept="gft3U" id="4NUTY$DxJux" role="1lVwrX">
        <node concept="2vGeqb" id="4NUTY$DxJuB" role="gfFT$">
          <node concept="1XD088" id="4NUTY$DxJuD" role="2vGem_">
            <ref role="1SePDO" to="0:~kotlin/Float" resolve="Float" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4NUTY$DxJuF" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMF" resolve="DoubleType" />
      <node concept="gft3U" id="4NUTY$DxJvf" role="1lVwrX">
        <node concept="2vGeqb" id="4NUTY$DxJvl" role="gfFT$">
          <node concept="1XD088" id="4NUTY$DxJvn" role="2vGem_">
            <ref role="1SePDO" to="0:~kotlin/Double" resolve="Double" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4NUTY$DxJw2" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DxJvp" resolve="ListType" />
      <node concept="gft3U" id="4NUTY$DxJwE" role="1lVwrX">
        <node concept="2vGeqb" id="4NUTY$DxJwK" role="gfFT$">
          <node concept="1XD088" id="4NUTY$DxJwM" role="2vGem_">
            <ref role="1SePDO" to="1xrd:~kotlin/collections/List" resolve="List" />
            <node concept="1XD0kr" id="4NUTY$DxJwT" role="TPadY">
              <node concept="1XD088" id="4NUTY$DxJwR" role="1XD02C">
                <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
                <node concept="29HgVG" id="4NUTY$DxJwX" role="lGtFl">
                  <node concept="3NFfHV" id="4NUTY$DxJwY" role="3NFExx">
                    <node concept="3clFbS" id="4NUTY$DxJwZ" role="2VODD2">
                      <node concept="3clFbF" id="4NUTY$DxJx5" role="3cqZAp">
                        <node concept="2OqwBi" id="4NUTY$DxJx0" role="3clFbG">
                          <node concept="3TrEf2" id="4NUTY$DxJx3" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
                          </node>
                          <node concept="30H73N" id="4NUTY$DxJx4" role="2Oq$k0" />
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
    </node>
    <node concept="3aamgX" id="7wXJBPuIXgT" role="3acgRq">
      <ref role="30HIoZ" to="3nll:7wXJBPuINt8" resolve="SetType" />
      <node concept="gft3U" id="7wXJBPuIXjG" role="1lVwrX">
        <node concept="2vGeqb" id="7wXJBPuIXjM" role="gfFT$">
          <node concept="1XD088" id="7wXJBPuIXjO" role="2vGem_">
            <ref role="1SePDO" to="1xrd:~kotlin/collections/Set" resolve="Set" />
            <node concept="1XD0kr" id="7wXJBPuIXjV" role="TPadY">
              <node concept="1XD088" id="7wXJBPuIXjT" role="1XD02C">
                <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
                <node concept="29HgVG" id="7wXJBPuJ2Nx" role="lGtFl">
                  <node concept="3NFfHV" id="3OOM$4Q_7FQ" role="3NFExx">
                    <node concept="3clFbS" id="3OOM$4Q_7FR" role="2VODD2">
                      <node concept="3clFbF" id="3OOM$4Q_7I0" role="3cqZAp">
                        <node concept="2OqwBi" id="3OOM$4Q_7UH" role="3clFbG">
                          <node concept="30H73N" id="3OOM$4Q_7HZ" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3OOM$4Q_86L" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
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
      </node>
    </node>
    <node concept="3aamgX" id="5eyACQI3HOt" role="3acgRq">
      <ref role="30HIoZ" to="3nll:6dPLGVFCdDr" resolve="ArrayType" />
      <node concept="gft3U" id="5eyACQI3Ipk" role="1lVwrX">
        <node concept="2vGeqb" id="5eyACQI3Ipq" role="gfFT$">
          <node concept="1XD088" id="5eyACQI3Ips" role="2vGem_">
            <ref role="1SePDO" to="0:~kotlin/Array" resolve="Array" />
            <node concept="1XD0kr" id="5eyACQI3Ipz" role="TPadY">
              <node concept="1XD088" id="5eyACQI3Ipx" role="1XD02C">
                <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
                <node concept="29HgVG" id="5eyACQI3IpB" role="lGtFl">
                  <node concept="3NFfHV" id="5eyACQI3IpC" role="3NFExx">
                    <node concept="3clFbS" id="5eyACQI3IpD" role="2VODD2">
                      <node concept="3clFbF" id="5eyACQI3IpJ" role="3cqZAp">
                        <node concept="2OqwBi" id="5eyACQI3IpE" role="3clFbG">
                          <node concept="3TrEf2" id="5eyACQI3IpH" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
                          </node>
                          <node concept="30H73N" id="5eyACQI3IpI" role="2Oq$k0" />
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
    </node>
    <node concept="3aamgX" id="3OOM$4Q_89X" role="3acgRq">
      <ref role="30HIoZ" to="3nll:7wXJBPuINtT" resolve="MapType" />
      <node concept="gft3U" id="3OOM$4Q_8b5" role="1lVwrX">
        <node concept="2vGeqb" id="3OOM$4Q_8bb" role="gfFT$">
          <node concept="1XD088" id="3OOM$4Q_8bd" role="2vGem_">
            <ref role="1SePDO" to="1xrd:~kotlin/collections/Map" resolve="Map" />
            <node concept="1XD0kr" id="3OOM$4Q_8bk" role="TPadY">
              <node concept="1XD088" id="3OOM$4Q_8bi" role="1XD02C">
                <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
                <node concept="29HgVG" id="3OOM$4Q_8bz" role="lGtFl">
                  <node concept="3NFfHV" id="3OOM$4Q_8b$" role="3NFExx">
                    <node concept="3clFbS" id="3OOM$4Q_8b_" role="2VODD2">
                      <node concept="3clFbF" id="3OOM$4Q_8bF" role="3cqZAp">
                        <node concept="2OqwBi" id="3OOM$4Q_8bA" role="3clFbG">
                          <node concept="3TrEf2" id="3OOM$4Q_8bD" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:7wXJBPuINtW" resolve="keyType" />
                          </node>
                          <node concept="30H73N" id="3OOM$4Q_8bE" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1XD0kr" id="3OOM$4Q_8bt" role="TPadY">
              <node concept="1XD088" id="3OOM$4Q_8br" role="1XD02C">
                <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
                <node concept="29HgVG" id="3OOM$4Q_8gy" role="lGtFl">
                  <node concept="3NFfHV" id="3OOM$4Q_8gz" role="3NFExx">
                    <node concept="3clFbS" id="3OOM$4Q_8g$" role="2VODD2">
                      <node concept="3clFbF" id="3OOM$4Q_8gE" role="3cqZAp">
                        <node concept="2OqwBi" id="3OOM$4Q_8g_" role="3clFbG">
                          <node concept="3TrEf2" id="3OOM$4Q_8gC" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:7wXJBPuINtY" resolve="valueType" />
                          </node>
                          <node concept="30H73N" id="3OOM$4Q_8gD" role="2Oq$k0" />
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
    </node>
    <node concept="3aamgX" id="6dPLGVFC9Z$" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMv" resolve="IPrimitiveType" />
      <node concept="14YyZ8" id="6dPLGVFCa0W" role="1lVwrX">
        <node concept="14ZrTv" id="6dPLGVFCa15" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCa16" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCa17" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCa1D" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCagW" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCa1C" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCatD" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCawi" role="cj9EA">
                      <ref role="cht4Q" to="3nll:4NUTY$DwDM_" resolve="StringType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCazU" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCa$R" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCa$T" role="2vGem_">
                <ref role="1SePDO" to="0:~kotlin/String" resolve="String" />
              </node>
            </node>
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFCaxm" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCaxn" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCaxo" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCa$W" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCa_t" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCa$V" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCaBV" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCaCP" role="cj9EA">
                      <ref role="cht4Q" to="3nll:4NUTY$DwDMU" resolve="CharType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCaDT" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCaEQ" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCaES" role="2vGem_">
                <ref role="1SePDO" to="0:~kotlin/Char" resolve="Char" />
              </node>
            </node>
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFCaEU" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCaEV" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCaEW" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCaNV" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCb4k" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCaP4" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCbcD" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCbdz" role="cj9EA">
                      <ref role="cht4Q" to="3nll:4NUTY$DwDMR" resolve="ByteType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCbeB" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCbf$" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCbfA" role="2vGem_">
                <ref role="1SePDO" to="0:~kotlin/Byte" resolve="Byte" />
              </node>
            </node>
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFCbfC" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCbfD" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCbfE" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCbji" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCbjN" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCbjh" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCbmh" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCbnb" role="cj9EA">
                      <ref role="cht4Q" to="3nll:4NUTY$DwDMJ" resolve="ShortType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCbof" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCbpc" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCbpe" role="2vGem_">
                <ref role="1SePDO" to="0:~kotlin/Short" resolve="Short" />
              </node>
            </node>
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFCbpg" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCbph" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCbpi" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCb$B" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCbNS" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCb$A" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCbWh" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCbXb" role="cj9EA">
                      <ref role="cht4Q" to="3nll:4NUTY$DwDMy" resolve="IntegerType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCbYf" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCbZc" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCbZe" role="2vGem_">
                <ref role="1SePDO" to="0:~kotlin/Int" resolve="Int" />
              </node>
            </node>
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFCbZg" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCbZh" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCbZi" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCc4Y" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCc5v" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCc4X" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCceW" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCcfQ" role="cj9EA">
                      <ref role="cht4Q" to="3nll:4NUTY$DwDMI" resolve="LongType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCcgU" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCchR" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCchT" role="2vGem_">
                <ref role="1SePDO" to="0:~kotlin/Long" resolve="Long" />
              </node>
            </node>
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFCchV" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCchW" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCchX" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCcoF" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCcpc" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCcoE" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCcq$" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCcru" role="cj9EA">
                      <ref role="cht4Q" to="3nll:4NUTY$DwDMO" resolve="BooleanType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCcsy" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCczJ" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCczL" role="2vGem_">
                <ref role="1SePDO" to="0:~kotlin/Boolean" resolve="Boolean" />
              </node>
            </node>
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFCczN" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCczO" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCczP" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCcMF" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCd1Y" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCcME" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCdaj" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCdbd" role="cj9EA">
                      <ref role="cht4Q" to="3nll:4NUTY$DwDMC" resolve="FloatType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCdch" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCdde" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCddg" role="2vGem_">
                <ref role="1SePDO" to="0:~kotlin/Float" resolve="Float" />
              </node>
            </node>
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFCddi" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCddj" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCddk" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCdm6" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCdmB" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCdm5" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCd$L" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCdBm" role="cj9EA">
                      <ref role="cht4Q" to="3nll:4NUTY$DwDMF" resolve="DoubleType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCdCq" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCdDn" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCdDp" role="2vGem_">
                <ref role="1SePDO" to="0:~kotlin/Double" resolve="Double" />
              </node>
            </node>
          </node>
        </node>
        <node concept="b5Tf3" id="6dPLGVFCa12" role="14YRTM" />
      </node>
    </node>
    <node concept="3aamgX" id="6dPLGVFCfpD" role="3acgRq">
      <ref role="30HIoZ" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
      <node concept="14YyZ8" id="6dPLGVFCfG5" role="1lVwrX">
        <node concept="14ZrTv" id="6dPLGVFCfGe" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCfGf" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCfGg" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCfGM" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCfWX" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCfGL" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCg6L" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCgdZ" role="cj9EA">
                      <ref role="cht4Q" to="3nll:4NUTY$DxJvp" resolve="ListType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCgf3" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCgg0" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCgg2" role="2vGem_">
                <ref role="1SePDO" to="1xrd:~kotlin/collections/List" resolve="List" />
                <node concept="1XD0kr" id="6dPLGVFCgg9" role="TPadY">
                  <node concept="1XD088" id="6dPLGVFCgg7" role="1XD02C">
                    <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
                    <node concept="29HgVG" id="6dPLGVFCgge" role="lGtFl">
                      <node concept="3NFfHV" id="6dPLGVFCggg" role="3NFExx">
                        <node concept="3clFbS" id="6dPLGVFCggh" role="2VODD2">
                          <node concept="3clFbF" id="6dPLGVFCgiq" role="3cqZAp">
                            <node concept="2OqwBi" id="6dPLGVFCh1T" role="3clFbG">
                              <node concept="1PxgMI" id="6dPLGVFCgPd" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="6dPLGVFCgRR" role="3oSUPX">
                                  <ref role="cht4Q" to="3nll:4NUTY$DxJvp" resolve="ListType" />
                                </node>
                                <node concept="30H73N" id="6dPLGVFCgip" role="1m5AlR" />
                              </node>
                              <node concept="3TrEf2" id="6dPLGVFChb$" role="2OqNvi">
                                <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
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
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFChey" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFChez" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFChe$" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFChrl" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFChHj" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFChrk" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFChVv" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFChYl" role="cj9EA">
                      <ref role="cht4Q" to="3nll:7wXJBPuINt8" resolve="SetType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFChZp" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCi0m" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCi0o" role="2vGem_">
                <ref role="1SePDO" to="1xrd:~kotlin/collections/Set" resolve="Set" />
                <node concept="1XD0kr" id="6dPLGVFCi0v" role="TPadY">
                  <node concept="1XD088" id="6dPLGVFCi0t" role="1XD02C">
                    <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
                    <node concept="29HgVG" id="6dPLGVFCi0$" role="lGtFl">
                      <node concept="3NFfHV" id="6dPLGVFCi0A" role="3NFExx">
                        <node concept="3clFbS" id="6dPLGVFCi0B" role="2VODD2">
                          <node concept="3clFbF" id="6dPLGVFCi4k" role="3cqZAp">
                            <node concept="2OqwBi" id="6dPLGVFCil_" role="3clFbG">
                              <node concept="1PxgMI" id="6dPLGVFCi8T" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="6dPLGVFCibz" role="3oSUPX">
                                  <ref role="cht4Q" to="3nll:7wXJBPuINt8" resolve="SetType" />
                                </node>
                                <node concept="30H73N" id="6dPLGVFCi4j" role="1m5AlR" />
                              </node>
                              <node concept="3TrEf2" id="6dPLGVFCivg" role="2OqNvi">
                                <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
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
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFCi$2" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCi$3" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCi$4" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCiEL" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCiJE" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCiEK" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCiL2" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCiLW" role="cj9EA">
                      <ref role="cht4Q" to="3nll:6dPLGVFCdDr" resolve="ArrayType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCiN0" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCiNX" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCiNZ" role="2vGem_">
                <ref role="1SePDO" to="0:~kotlin/Array" resolve="Array" />
                <node concept="1XD0kr" id="6dPLGVFCiO6" role="TPadY">
                  <node concept="1XD088" id="6dPLGVFCiO4" role="1XD02C">
                    <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
                    <node concept="29HgVG" id="6dPLGVFCiOb" role="lGtFl">
                      <node concept="3NFfHV" id="6dPLGVFCiOd" role="3NFExx">
                        <node concept="3clFbS" id="6dPLGVFCiOe" role="2VODD2">
                          <node concept="3clFbF" id="6dPLGVFCiQh" role="3cqZAp">
                            <node concept="2OqwBi" id="6dPLGVFCjhc" role="3clFbG">
                              <node concept="1PxgMI" id="6dPLGVFCj5R" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="6dPLGVFCj6X" role="3oSUPX">
                                  <ref role="cht4Q" to="3nll:6dPLGVFCdDr" resolve="ArrayType" />
                                </node>
                                <node concept="30H73N" id="6dPLGVFCiQg" role="1m5AlR" />
                              </node>
                              <node concept="3TrEf2" id="6dPLGVFCjtm" role="2OqNvi">
                                <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
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
          </node>
        </node>
        <node concept="14ZrTv" id="6dPLGVFCjyw" role="14ZwWg">
          <node concept="30G5F_" id="6dPLGVFCjyx" role="150hEN">
            <node concept="3clFbS" id="6dPLGVFCjyy" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFCjNG" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFCjUo" role="3clFbG">
                  <node concept="30H73N" id="6dPLGVFCjNF" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dPLGVFCk4c" role="2OqNvi">
                    <node concept="chp4Y" id="6dPLGVFCk56" role="cj9EA">
                      <ref role="cht4Q" to="3nll:7wXJBPuINtT" resolve="MapType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6dPLGVFCk6a" role="150oIE">
            <node concept="2vGeqb" id="6dPLGVFCk77" role="gfFT$">
              <node concept="1XD088" id="6dPLGVFCk79" role="2vGem_">
                <ref role="1SePDO" to="1xrd:~kotlin/collections/Map" resolve="Map" />
                <node concept="1XD0kr" id="6dPLGVFCk7g" role="TPadY">
                  <node concept="1XD088" id="6dPLGVFCk7e" role="1XD02C">
                    <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
                    <node concept="29HgVG" id="6dPLGVFCk7w" role="lGtFl">
                      <node concept="3NFfHV" id="6dPLGVFCkS1" role="3NFExx">
                        <node concept="3clFbS" id="6dPLGVFCkS2" role="2VODD2">
                          <node concept="3clFbF" id="6dPLGVFCkSB" role="3cqZAp">
                            <node concept="2OqwBi" id="6dPLGVFCkYp" role="3clFbG">
                              <node concept="1PxgMI" id="6dPLGVFCkWt" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="6dPLGVFCkXi" role="3oSUPX">
                                  <ref role="cht4Q" to="3nll:7wXJBPuINtT" resolve="MapType" />
                                </node>
                                <node concept="30H73N" id="6dPLGVFCkVw" role="1m5AlR" />
                              </node>
                              <node concept="3TrEf2" id="6dPLGVFCl1B" role="2OqNvi">
                                <ref role="3Tt5mk" to="3nll:7wXJBPuINtW" resolve="keyType" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1XD0kr" id="6dPLGVFCk7p" role="TPadY">
                  <node concept="1XD088" id="6dPLGVFCk7n" role="1XD02C">
                    <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
                    <node concept="29HgVG" id="6dPLGVFCk7$" role="lGtFl">
                      <node concept="3NFfHV" id="6dPLGVFCk7A" role="3NFExx">
                        <node concept="3clFbS" id="6dPLGVFCk7B" role="2VODD2">
                          <node concept="3clFbF" id="6dPLGVFCk9K" role="3cqZAp">
                            <node concept="2OqwBi" id="6dPLGVFCkCr" role="3clFbG">
                              <node concept="1PxgMI" id="6dPLGVFCkrD" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="6dPLGVFCktW" role="3oSUPX">
                                  <ref role="cht4Q" to="3nll:7wXJBPuINtT" resolve="MapType" />
                                </node>
                                <node concept="30H73N" id="6dPLGVFCk9J" role="1m5AlR" />
                              </node>
                              <node concept="3TrEf2" id="6dPLGVFCkOF" role="2OqNvi">
                                <ref role="3Tt5mk" to="3nll:7wXJBPuINtY" resolve="valueType" />
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
          </node>
        </node>
        <node concept="b5Tf3" id="6dPLGVFCfGb" role="14YRTM" />
      </node>
    </node>
    <node concept="avzCv" id="5eyACQI3BD$" role="avys_">
      <node concept="3clFbS" id="5eyACQI3BD_" role="2VODD2">
        <node concept="3clFbF" id="5eyACQI3BZc" role="3cqZAp">
          <node concept="3clFbT" id="7ROgqlTLQA8" role="3clFbG" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1XD0fY" id="4NUTY$DwyVn">
    <property role="TrG5h" value="map_AggregateRootRepositoryInterface" />
    <property role="3GE5qa" value="old.boundedContext" />
    <node concept="n94m4" id="4NUTY$DwyVo" role="lGtFl">
      <ref role="n9lRv" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
    <node concept="17Uvod" id="4NUTY$DwyVq" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4NUTY$DwyVt" role="3zH0cK">
        <node concept="3clFbS" id="4NUTY$DwyVu" role="2VODD2">
          <node concept="3clFbF" id="4NUTY$DwyV$" role="3cqZAp">
            <node concept="Xl_RD" id="4NUTY$Dw_Jr" role="3clFbG">
              <property role="Xl_RC" value="AggregateRootRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1XD09x" id="4NUTY$Dw_6p" role="1XD0Tg">
      <property role="21C2eP" value="packageName" />
      <node concept="17Uvod" id="4NUTY$Dw_76" role="lGtFl">
        <property role="2qtEX9" value="packageName" />
        <property role="P4ACc" value="6b3888c1-9802-44d8-8baf-f8e6c33ed689/2936055411798373558/1243006380191787010" />
        <node concept="3zFVjK" id="4NUTY$Dw_77" role="3zH0cK">
          <node concept="3clFbS" id="4NUTY$Dw_78" role="2VODD2">
            <node concept="3clFbF" id="4NUTY$Dw_7C" role="3cqZAp">
              <node concept="2OqwBi" id="4NUTY$Dw_pn" role="3clFbG">
                <node concept="30H73N" id="4NUTY$Dw_7B" role="2Oq$k0" />
                <node concept="2qgKlT" id="4NUTY$Dw_yi" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:4NUTY$Dwz6z" resolve="getPackageRootName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1XXB1C" id="4NUTY$Dw_Ta" role="1XD0Tu">
      <property role="TrG5h" value="AggregateRootRepository" />
      <node concept="1XD08_" id="4NUTY$Dw_Tc" role="ICcUN" />
      <node concept="1XD0l2" id="4NUTY$Dw_Td" role="2BPcuh" />
      <node concept="1XD0bz" id="4NUTY$DwA5T" role="KS$fE">
        <property role="TrG5h" value="save" />
        <node concept="1XD08_" id="4NUTY$DwA5V" role="ICcUN" />
        <node concept="1XD0l2" id="4NUTY$DwA5W" role="2BPcuh" />
        <node concept="1XD0bi" id="4NUTY$DwA61" role="1XbAXm">
          <property role="TrG5h" value="aggregate" />
          <node concept="9pJMI" id="4NUTY$DwA65" role="37iW8f">
            <ref role="9pJMH" node="4NUTY$DwA5R" resolve="Type" />
          </node>
        </node>
      </node>
      <node concept="1XD0bz" id="4NUTY$DwA6f" role="KS$fE">
        <property role="TrG5h" value="add" />
        <node concept="1XD08_" id="4NUTY$DwA6h" role="ICcUN" />
        <node concept="1XD0l2" id="4NUTY$DwA6i" role="2BPcuh" />
        <node concept="1XD0bi" id="4NUTY$DwA6s" role="1XbAXm">
          <property role="TrG5h" value="aggregate" />
          <node concept="9pJMI" id="4NUTY$DwA6w" role="37iW8f">
            <ref role="9pJMH" node="4NUTY$DwA5R" resolve="Type" />
          </node>
        </node>
      </node>
      <node concept="1XD0fq" id="4NUTY$DwA5R" role="1XPbGx">
        <property role="TrG5h" value="Type" />
      </node>
    </node>
  </node>
  <node concept="1XD0fY" id="4NUTY$DwBSe">
    <property role="TrG5h" value="map_AggregateRootIdRepositoryIdInterface" />
    <property role="3GE5qa" value="old.boundedContext" />
    <node concept="n94m4" id="4NUTY$DwBSf" role="lGtFl">
      <ref role="n9lRv" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
    <node concept="17Uvod" id="4NUTY$DwC4M" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4NUTY$DwC4N" role="3zH0cK">
        <node concept="3clFbS" id="4NUTY$DwC4O" role="2VODD2">
          <node concept="3clFbF" id="4NUTY$DwCb7" role="3cqZAp">
            <node concept="Xl_RD" id="4NUTY$DwCb6" role="3clFbG">
              <property role="Xl_RC" value="AggregateRootIdRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1XD09x" id="4NUTY$DwCwm" role="1XD0Tg">
      <property role="21C2eP" value="packageName" />
      <node concept="17Uvod" id="4NUTY$DwCwo" role="lGtFl">
        <property role="2qtEX9" value="packageName" />
        <property role="P4ACc" value="6b3888c1-9802-44d8-8baf-f8e6c33ed689/2936055411798373558/1243006380191787010" />
        <node concept="3zFVjK" id="4NUTY$DwCwp" role="3zH0cK">
          <node concept="3clFbS" id="4NUTY$DwCwq" role="2VODD2">
            <node concept="3clFbF" id="4NUTY$DwCwU" role="3cqZAp">
              <node concept="2OqwBi" id="4NUTY$DwCMB" role="3clFbG">
                <node concept="30H73N" id="4NUTY$DwCwT" role="2Oq$k0" />
                <node concept="2qgKlT" id="4NUTY$DwCVA" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:4NUTY$Dwz6z" resolve="getPackageRootName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1XXB1C" id="4NUTY$DwD0X" role="1XD0Tu">
      <property role="TrG5h" value="AggregateRootIdRepository" />
      <node concept="1XD08_" id="4NUTY$DwD0Z" role="ICcUN" />
      <node concept="1XD0l2" id="4NUTY$DwD10" role="2BPcuh" />
      <node concept="1XD0bz" id="4NUTY$DwD2s" role="KS$fE">
        <property role="TrG5h" value="findById" />
        <node concept="1XD08_" id="4NUTY$DwD2u" role="ICcUN" />
        <node concept="1XD0l2" id="4NUTY$DwD2v" role="2BPcuh" />
        <node concept="1XD0bi" id="4NUTY$DwD2$" role="1XbAXm">
          <property role="TrG5h" value="id" />
          <node concept="9pJMI" id="4NUTY$DwD2C" role="37iW8f">
            <ref role="9pJMH" node="4NUTY$DwD2h" resolve="IdType" />
          </node>
        </node>
        <node concept="9pJMI" id="4NUTY$DwD2I" role="21NdcZ">
          <ref role="9pJMH" node="4NUTY$DwD2m" resolve="AggregateType" />
        </node>
      </node>
      <node concept="KYwOn" id="4NUTY$DwD28" role="AST3G">
        <ref role="KYwOm" node="4NUTY$Dw_Ta" resolve="AggregateRootRepository" />
        <node concept="9pJMI" id="4NUTY$DwD2p" role="TPadX">
          <ref role="9pJMH" node="4NUTY$DwD2m" resolve="AggregateType" />
        </node>
      </node>
      <node concept="1XD0fq" id="4NUTY$DwD2h" role="1XPbGx">
        <property role="TrG5h" value="IdType" />
      </node>
      <node concept="1XD0fq" id="4NUTY$DwD2m" role="1XPbGx">
        <property role="TrG5h" value="AggregateType" />
      </node>
    </node>
    <node concept="eKYAL" id="oGImgMOQvO" role="1XD0Tu" />
    <node concept="eKYAL" id="oGImgMOQYE" role="1XD0Tu" />
  </node>
  <node concept="1XD0fY" id="4NUTY$DwLav">
    <property role="TrG5h" value="map_BaseEventAggregateRoot" />
    <property role="3GE5qa" value="old.boundedContext" />
    <node concept="1XD0aY" id="4NUTY$DwQ6h" role="1XD0Tu">
      <property role="TrG5h" value="BaseEventAggregateRoot" />
      <node concept="1XD08_" id="4NUTY$DwQ6k" role="ICcUN" />
      <node concept="1XD0l2" id="4NUTY$DwQ6l" role="2BPcuh" />
      <node concept="1XD0fq" id="4NUTY$DwQ7L" role="1XPbGx">
        <property role="TrG5h" value="IdType" />
      </node>
      <node concept="1XD0fq" id="4Bg9wDFeFpI" role="1XPbGx">
        <property role="TrG5h" value="EventType" />
      </node>
      <node concept="1XD0bf" id="4NUTY$DwQ7O" role="KDYUA">
        <node concept="1XD0l2" id="4NUTY$DwQ7P" role="2BPcuh" />
        <node concept="1XD0fH" id="4NUTY$DwQ7Q" role="1XD008">
          <property role="TrG5h" value="id" />
          <property role="21VRqX" value="true" />
          <property role="21VRqZ" value="true" />
          <node concept="9pJMI" id="4NUTY$DwQ7Y" role="37iW8f">
            <ref role="9pJMH" node="4NUTY$DwQ7L" resolve="IdType" />
          </node>
        </node>
      </node>
      <node concept="1XD09Q" id="4Wa3rAGaKbY" role="KS$fE">
        <property role="1Xb$ne" value="true" />
        <node concept="1XD0l1" id="4Wa3rAGaKc1" role="2BPcuh" />
        <node concept="1XD0eA" id="4Wa3rAGaKc2" role="TDYyH">
          <property role="TrG5h" value="changes" />
          <node concept="1XD088" id="4Bg9wDFeFAe" role="1XD0Z0">
            <ref role="1SePDO" to="1xrd:~kotlin/collections/MutableList" resolve="MutableList" />
            <node concept="1XD0kr" id="4Bg9wDFeFCD" role="TPadY">
              <node concept="9pJMI" id="4Bg9wDFeFCB" role="1XD02C">
                <ref role="9pJMH" node="4Bg9wDFeFpI" resolve="EventType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1XD08$" id="4Wa3rAGaKc5" role="ICcUN" />
        <node concept="1XD0mK" id="4Wa3rAGaKcz" role="1XD05H">
          <node concept="1NbEFs" id="4Wa3rAGaKyQ" role="1XD0cX">
            <ref role="AarEw" to="1xrd:~.mutableListOf&lt;1&gt;()" resolve="mutableListOf" />
            <node concept="9pJMI" id="4Bg9wDFeF_d" role="TPadX">
              <ref role="9pJMH" node="4Bg9wDFeFpI" resolve="EventType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="eKYAL" id="4Wa3rAGaKbb" role="KS$fE" />
      <node concept="1XD0bz" id="7ROgqlTLPzy" role="KS$fE">
        <property role="TrG5h" value="getId" />
        <property role="3qOnjd" value="true" />
        <node concept="1XD0l2" id="7ROgqlTLPzA" role="2BPcuh" />
        <node concept="UZU4S" id="7ROgqlTLPTW" role="THmaL">
          <ref role="UZU4V" node="4NUTY$DwQ7Q" resolve="id" />
        </node>
        <node concept="1XD08$" id="4Wa3rAGaKaz" role="ICcUN" />
      </node>
      <node concept="1XD0bz" id="4Wa3rAGaKE8" role="KS$fE">
        <property role="TrG5h" value="getChanges" />
        <property role="3qOnjd" value="true" />
        <node concept="1XD08$" id="4Wa3rAGaKEa" role="ICcUN" />
        <node concept="1XD0l2" id="4Wa3rAGaKEb" role="2BPcuh" />
        <node concept="UZU4S" id="4Bg9wDFeFF2" role="THmaL">
          <ref role="UZU4V" node="4Wa3rAGaKc2" resolve="changes" />
        </node>
      </node>
      <node concept="1XD0bz" id="4Bg9wDFeFLn" role="KS$fE">
        <property role="3qOnjd" value="true" />
        <property role="TrG5h" value="recreateWith" />
        <node concept="1XD08$" id="4Bg9wDFeFLp" role="ICcUN" />
        <node concept="1XD0l2" id="4Bg9wDFeFLr" role="2BPcuh" />
        <node concept="1XD0bi" id="4Bg9wDFeFNb" role="1XbAXm">
          <property role="TrG5h" value="events" />
          <node concept="1XD088" id="4Bg9wDFeFNf" role="37iW8f">
            <ref role="1SePDO" to="1xrd:~kotlin/collections/List" resolve="List" />
            <node concept="1XD0kr" id="4Bg9wDFeFNn" role="TPadY">
              <node concept="9pJMI" id="4Bg9wDFeFNl" role="1XD02C">
                <ref role="9pJMH" node="4Bg9wDFeFpI" resolve="EventType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1XD0bM" id="4Bg9wDFeFSs" role="THmaL">
          <node concept="UZU4S" id="4Bg9wDFeFV4" role="1XD07v">
            <ref role="UZU4V" node="4Bg9wDFeFNb" resolve="events" />
          </node>
          <node concept="2Rs4SG" id="4Bg9wDFeFSv" role="2Rs2$5">
            <property role="TrG5h" value="event" />
          </node>
          <node concept="1NbEFs" id="4Bg9wDFeGbD" role="THmaL">
            <ref role="AarEw" node="4Bg9wDFeG5s" resolve="handleEvent" />
            <node concept="1XD0eI" id="4Bg9wDFeGeX" role="TWiod">
              <node concept="UZU4S" id="4Bg9wDFeGjH" role="1XD0ZN">
                <ref role="UZU4V" node="4Bg9wDFeFSv" resolve="event" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1XD0bz" id="4Bg9wDFeG5s" role="KS$fE">
        <property role="TrG5h" value="handleEvent" />
        <node concept="1XD08_" id="4Bg9wDFeG5v" role="ICcUN" />
        <node concept="1XD0l2" id="4Bg9wDFeG5w" role="2BPcuh" />
        <node concept="1XD0bi" id="4Bg9wDFeG7G" role="1XbAXm">
          <property role="TrG5h" value="event" />
          <node concept="9pJMI" id="4Bg9wDFeG7K" role="37iW8f">
            <ref role="9pJMH" node="4Bg9wDFeFpI" resolve="EventType" />
          </node>
        </node>
      </node>
      <node concept="KYwOn" id="6dPLGVFC447" role="AST3G">
        <ref role="KYwOm" node="4Bg9wDFeFzs" resolve="EventAggregateRoot" />
        <node concept="9pJMI" id="6dPLGVFC44d" role="TPadX">
          <ref role="9pJMH" node="4NUTY$DwQ7L" resolve="IdType" />
        </node>
        <node concept="9pJMI" id="4Bg9wDFeF_9" role="TPadX">
          <ref role="9pJMH" node="4Bg9wDFeFpI" resolve="EventType" />
        </node>
      </node>
    </node>
    <node concept="n94m4" id="4NUTY$DwLaw" role="lGtFl">
      <ref role="n9lRv" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
    <node concept="1XD09x" id="4NUTY$DwLay" role="1XD0Tg">
      <property role="21C2eP" value="packageName" />
      <node concept="17Uvod" id="4NUTY$DwLa$" role="lGtFl">
        <property role="2qtEX9" value="packageName" />
        <property role="P4ACc" value="6b3888c1-9802-44d8-8baf-f8e6c33ed689/2936055411798373558/1243006380191787010" />
        <node concept="3zFVjK" id="4NUTY$DwLa_" role="3zH0cK">
          <node concept="3clFbS" id="4NUTY$DwLaA" role="2VODD2">
            <node concept="3clFbF" id="4NUTY$DwLgS" role="3cqZAp">
              <node concept="2OqwBi" id="4NUTY$DwM$m" role="3clFbG">
                <node concept="2qgKlT" id="4NUTY$DwMPc" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:4NUTY$Dwz6z" resolve="getPackageRootName" />
                </node>
                <node concept="30H73N" id="4NUTY$DwNS0" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="17Uvod" id="4NUTY$DwMZ7" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4NUTY$DwMZ8" role="3zH0cK">
        <node concept="3clFbS" id="4NUTY$DwMZ9" role="2VODD2">
          <node concept="3clFbF" id="4NUTY$DwN0L" role="3cqZAp">
            <node concept="Xl_RD" id="4NUTY$DwObq" role="3clFbG">
              <property role="Xl_RC" value="BaseEventSourcedAggregateRoot" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1XD0fY" id="4NUTY$DwOd0">
    <property role="TrG5h" value="map_AggregateRoot" />
    <property role="3GE5qa" value="old.aggregates" />
    <node concept="n94m4" id="4NUTY$DwOd1" role="lGtFl">
      <ref role="n9lRv" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
    </node>
    <node concept="17Uvod" id="4NUTY$DwOd4" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4NUTY$DwOd7" role="3zH0cK">
        <node concept="3clFbS" id="4NUTY$DwOd8" role="2VODD2">
          <node concept="3clFbF" id="4NUTY$DwOde" role="3cqZAp">
            <node concept="2OqwBi" id="4NUTY$DwOd9" role="3clFbG">
              <node concept="3TrcHB" id="4NUTY$DwOdc" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="30H73N" id="4NUTY$DwOdd" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1XD09x" id="4NUTY$DwOlT" role="1XD0Tg">
      <property role="21C2eP" value="packageName" />
      <node concept="17Uvod" id="4NUTY$DwOmA" role="lGtFl">
        <property role="2qtEX9" value="packageName" />
        <property role="P4ACc" value="6b3888c1-9802-44d8-8baf-f8e6c33ed689/2936055411798373558/1243006380191787010" />
        <node concept="3zFVjK" id="4NUTY$DwOmB" role="3zH0cK">
          <node concept="3clFbS" id="4NUTY$DwOmC" role="2VODD2">
            <node concept="3clFbF" id="5eyACQI4Yoj" role="3cqZAp">
              <node concept="3cpWs3" id="5eyACQI4ZLM" role="3clFbG">
                <node concept="Xl_RD" id="5eyACQI4ZNg" role="3uHU7w">
                  <property role="Xl_RC" value=".aggregates" />
                </node>
                <node concept="2OqwBi" id="5eyACQI4Z45" role="3uHU7B">
                  <node concept="2OqwBi" id="5eyACQI4YFE" role="2Oq$k0">
                    <node concept="30H73N" id="5eyACQI4Yoi" role="2Oq$k0" />
                    <node concept="2qgKlT" id="5eyACQI4YQL" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="5eyACQI4Zfd" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:4NUTY$Dwz6z" resolve="getPackageRootName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1XD0aY" id="4NUTY$DwPLj" role="1XD0Tu">
      <property role="TrG5h" value="AggregateClassName" />
      <node concept="1XD08$" id="4NUTY$DwPLk" role="ICcUN" />
      <node concept="1XD0l2" id="4NUTY$DwPLl" role="2BPcuh" />
      <node concept="1XD0bf" id="4NUTY$DwPP0" role="KDYUA">
        <node concept="1XD0l2" id="4NUTY$DwPP1" role="2BPcuh" />
        <node concept="1XD0fH" id="4NUTY$DwPP2" role="1XD008">
          <property role="TrG5h" value="id" />
          <property role="21VRqX" value="true" />
          <node concept="1XD088" id="4NUTY$DwQl3" role="37iW8f">
            <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
            <node concept="29HgVG" id="4NUTY$Dxgt2" role="lGtFl">
              <node concept="3NFfHV" id="4NUTY$Dxgt3" role="3NFExx">
                <node concept="3clFbS" id="4NUTY$Dxgt4" role="2VODD2">
                  <node concept="3clFbF" id="4NUTY$Dxgta" role="3cqZAp">
                    <node concept="2OqwBi" id="4NUTY$Dxgt5" role="3clFbG">
                      <node concept="3TrEf2" id="4NUTY$Dxgt8" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:4NUTY$DwDN6" resolve="idType" />
                      </node>
                      <node concept="30H73N" id="4NUTY$Dxgt9" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1XD08x" id="4NUTY$DwQkT" role="AST3G">
        <ref role="KYurZ" node="4NUTY$DwQ7O" resolve="BaseEventSourcedAggregateRoot" />
        <node concept="1XD088" id="4NUTY$DwQl0" role="TPadX">
          <ref role="1SePDO" to="0:~kotlin/Unit" resolve="Unit" />
          <node concept="29HgVG" id="4NUTY$DxgxI" role="lGtFl">
            <node concept="3NFfHV" id="4NUTY$DxgxJ" role="3NFExx">
              <node concept="3clFbS" id="4NUTY$DxgxK" role="2VODD2">
                <node concept="3clFbF" id="4NUTY$DxgxQ" role="3cqZAp">
                  <node concept="2OqwBi" id="4NUTY$DxgxL" role="3clFbG">
                    <node concept="3TrEf2" id="4NUTY$DxgxO" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:4NUTY$DwDN6" resolve="idType" />
                    </node>
                    <node concept="30H73N" id="4NUTY$DxgxP" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1ZhdrF" id="6dPLGVFDoei" role="lGtFl">
          <property role="2qtEX8" value="target" />
          <property role="P3scX" value="6b3888c1-9802-44d8-8baf-f8e6c33ed689/2936055411798373622/2324909103760693884" />
          <node concept="3$xsQk" id="6dPLGVFDoej" role="3$ytzL">
            <node concept="3clFbS" id="6dPLGVFDoek" role="2VODD2">
              <node concept="3clFbF" id="6dPLGVFDojB" role="3cqZAp">
                <node concept="2OqwBi" id="6dPLGVFDowL" role="3clFbG">
                  <node concept="1iwH7S" id="6dPLGVFDojA" role="2Oq$k0" />
                  <node concept="1iwH70" id="6dPLGVFDqau" role="2OqNvi">
                    <ref role="1iwH77" node="6dPLGVFDn9o" resolve="baseAggregateRootLabel" />
                    <node concept="2OqwBi" id="6dPLGVFDqlw" role="1iwH7V">
                      <node concept="30H73N" id="6dPLGVFDqgc" role="2Oq$k0" />
                      <node concept="2qgKlT" id="6dPLGVFFtbZ" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1XD0eI" id="6dPLGVFDQrg" role="TWiod">
          <node concept="UZU4S" id="6dPLGVFDQrf" role="1XD0ZN">
            <ref role="UZU4V" node="4NUTY$DwPP2" resolve="id" />
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="4NUTY$DwSzk" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="4NUTY$DwSzn" role="3zH0cK">
          <node concept="3clFbS" id="4NUTY$DwSzo" role="2VODD2">
            <node concept="3clFbF" id="4NUTY$DwSzu" role="3cqZAp">
              <node concept="2OqwBi" id="4NUTY$DwSzp" role="3clFbG">
                <node concept="3TrcHB" id="4NUTY$DwSzs" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="30H73N" id="4NUTY$DwSzt" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1XD0fY" id="6dPLGVFDFk_">
    <property role="3GE5qa" value="old.boundedContext" />
    <property role="TrG5h" value="map_AggregateRootInterface" />
    <node concept="n94m4" id="6dPLGVFDFkA" role="lGtFl">
      <ref role="n9lRv" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
    <node concept="1XXB1C" id="6dPLGVFDFl7" role="1XD0Tu">
      <property role="TrG5h" value="AggregateRoot" />
      <node concept="1XD08_" id="6dPLGVFDFl9" role="ICcUN" />
      <node concept="1XD0l2" id="6dPLGVFDFla" role="2BPcuh" />
      <node concept="1XD0bz" id="7ROgqlTLOVQ" role="KS$fE">
        <property role="TrG5h" value="getId" />
        <node concept="1XD08_" id="7ROgqlTLOVS" role="ICcUN" />
        <node concept="1XD0l2" id="7ROgqlTLOVT" role="2BPcuh" />
        <node concept="9pJMI" id="7ROgqlTLOW1" role="21NdcZ">
          <ref role="9pJMH" node="7ROgqlTLOVO" resolve="IdType" />
        </node>
      </node>
      <node concept="1XD0fq" id="7ROgqlTLOVO" role="1XPbGx">
        <property role="TrG5h" value="IdType" />
      </node>
    </node>
    <node concept="17Uvod" id="6dPLGVFDFl$" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="6dPLGVFDFl_" role="3zH0cK">
        <node concept="3clFbS" id="6dPLGVFDFlA" role="2VODD2">
          <node concept="3clFbF" id="6dPLGVFDFrT" role="3cqZAp">
            <node concept="Xl_RD" id="6dPLGVFDFrS" role="3clFbG">
              <property role="Xl_RC" value="AggregateRoot" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1XD09x" id="6dPLGVFDFtN" role="1XD0Tg">
      <property role="21C2eP" value="packageName" />
      <node concept="17Uvod" id="6dPLGVFDFtS" role="lGtFl">
        <property role="2qtEX9" value="packageName" />
        <property role="P4ACc" value="6b3888c1-9802-44d8-8baf-f8e6c33ed689/2936055411798373558/1243006380191787010" />
        <node concept="3zFVjK" id="6dPLGVFDFtT" role="3zH0cK">
          <node concept="3clFbS" id="6dPLGVFDFtU" role="2VODD2">
            <node concept="3clFbF" id="6dPLGVFDFuq" role="3cqZAp">
              <node concept="2OqwBi" id="6dPLGVFDFK7" role="3clFbG">
                <node concept="30H73N" id="6dPLGVFDFup" role="2Oq$k0" />
                <node concept="2qgKlT" id="6dPLGVFDFT6" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:4NUTY$Dwz6z" resolve="getPackageRootName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1aRcFPNHMBk">
    <property role="3GE5qa" value="old.aggregates" />
    <property role="TrG5h" value="CommandName" />
    <node concept="3Tm1VV" id="1aRcFPNHMBl" role="1B3o_S" />
    <node concept="n94m4" id="1aRcFPNHMBm" role="lGtFl">
      <ref role="n9lRv" to="3nll:7fqk8p43ygY" resolve="Command" />
    </node>
    <node concept="17Uvod" id="1aRcFPNHMCe" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="1aRcFPNHMCf" role="3zH0cK">
        <node concept="3clFbS" id="1aRcFPNHMCg" role="2VODD2">
          <node concept="3cpWs8" id="1aRcFPNHN0L" role="3cqZAp">
            <node concept="3cpWsn" id="1aRcFPNHN0M" role="3cpWs9">
              <property role="TrG5h" value="command" />
              <node concept="3Tqbb2" id="1aRcFPNHMRI" role="1tU5fm">
                <ref role="ehGHo" to="3nll:7fqk8p43ygY" resolve="Command" />
              </node>
              <node concept="30H73N" id="1aRcFPNHN0N" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbF" id="1aRcFPNHMIM" role="3cqZAp">
            <node concept="2OqwBi" id="1aRcFPNHNug" role="3clFbG">
              <node concept="37vLTw" id="1aRcFPNHN0O" role="2Oq$k0">
                <ref role="3cqZAo" node="1aRcFPNHN0M" resolve="command" />
              </node>
              <node concept="3TrcHB" id="1aRcFPNHNNh" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1XD0fY" id="4Bg9wDFeFzn">
    <property role="3GE5qa" value="old.boundedContext" />
    <property role="TrG5h" value="map_EventAggregateRoot" />
    <node concept="1XXB1C" id="4Bg9wDFeFzs" role="1XD0Tu">
      <property role="TrG5h" value="EventAggregateRoot" />
      <node concept="1XD08_" id="4Bg9wDFeFzv" role="ICcUN" />
      <node concept="1XD0l2" id="4Bg9wDFeFzw" role="2BPcuh" />
      <node concept="1XD0fq" id="4Bg9wDFeFzC" role="1XPbGx">
        <property role="TrG5h" value="IdType" />
      </node>
      <node concept="1XD0fq" id="4Bg9wDFeFzH" role="1XPbGx">
        <property role="TrG5h" value="EventType" />
      </node>
    </node>
    <node concept="n94m4" id="4Bg9wDFeFzo" role="lGtFl">
      <ref role="n9lRv" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
</model>

