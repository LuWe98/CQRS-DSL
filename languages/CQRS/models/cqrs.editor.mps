<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="b1c7d06f-525d-43b5-9b0a-2fc8f7f076ba" name="jetbrains.mps.editor.contextActionsTool.lang.menus" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="7ztp" ref="r:3eb3aafd-620b-4947-940a-c9f6d272b651(CQRS.util)" />
    <import index="4d66" ref="r:960662d9-c1ee-48af-b5a5-518d2ac1ca55(CQRS.helper)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="sx7w" ref="r:dc830b23-b722-4fd1-8178-0431aafe57ef(CQRS.behavior)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" implicit="true" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326896143883" name="jetbrains.mps.lang.editor.structure.CellKeyMap_FunctionParm_selectedNode" flags="nn" index="0GJ7k" />
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="5991739802479784074" name="jetbrains.mps.lang.editor.structure.MenuTypeNamed" flags="ng" index="22hDWg" />
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1160590307797" name="usesFolding" index="S$F3r" />
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
        <child id="4601216887035799527" name="usesFoldingCondition" index="1p_IA6" />
      </concept>
      <concept id="1196434649611" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_SimpleString" flags="ng" index="2h3Zct">
        <property id="1196434851095" name="text" index="2h4Kg1" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="6089045305654894367" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Named" flags="ng" index="2kknPI">
        <reference id="6089045305654944382" name="menu" index="2kkw0f" />
      </concept>
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="3308309804690746362" name="jetbrains.mps.lang.editor.structure.QueryFunction_ColorComposit" flags="ig" index="mot77" />
      <concept id="784421273959492578" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_IncludeMenu" flags="ng" index="mvV$s">
        <child id="6718020819487784677" name="menuReference" index="A14EM" />
      </concept>
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1177327274449" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_pattern" flags="nn" index="ub8z3" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ng" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8329266386016608055" name="jetbrains.mps.lang.editor.structure.ApproveDelete_Operation" flags="ng" index="2xy62i">
        <child id="8329266386016685951" name="editorContext" index="2xHN3q" />
        <child id="8979250711607012232" name="cellSelector" index="3a7HXU" />
      </concept>
      <concept id="8371900013785948369" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Parameter" flags="ig" index="2$S_p_" />
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
        <property id="5944657839012629576" name="presentation" index="2BUmq6" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="308059530142752797" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Parameterized" flags="ng" index="2F$Pav">
        <child id="8371900013785948359" name="part" index="2$S_pN" />
        <child id="8371900013785948365" name="parameterQuery" index="2$S_pT" />
      </concept>
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="6202297022026447496" name="canExecuteFunction" index="2jiSrf" />
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1136916919141" name="jetbrains.mps.lang.editor.structure.CellKeyMapItem" flags="lg" index="2PxR9H">
        <child id="1136916998332" name="keystroke" index="2PyaAO" />
        <child id="1136920925604" name="executeFunction" index="2PL9iG" />
      </concept>
      <concept id="1136916976737" name="jetbrains.mps.lang.editor.structure.CellKeyMapKeystroke" flags="ng" index="2Py5lD">
        <property id="1136923970223" name="modifiers" index="2PWKIB" />
        <property id="1136923970224" name="keycode" index="2PWKIS" />
      </concept>
      <concept id="1136917288805" name="jetbrains.mps.lang.editor.structure.CellKeyMap_ExecuteFunction" flags="in" index="2PzhpH" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="4323500428136740385" name="jetbrains.mps.lang.editor.structure.CellIdReferenceSelector" flags="ng" index="2TlHUq">
        <reference id="4323500428136742952" name="id" index="2TlMyj" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="615427434521884870" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Subconcepts" flags="ng" index="2VfDsV">
        <child id="7522821015001791840" name="filter" index="1Go12V" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
        <child id="1223387335081" name="query" index="3n$kyP" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="ln" index="VPRnO" />
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <property id="1221209241505" name="value" index="1lJzqX" />
      </concept>
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ng" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1630016958697286851" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_parameterObject" flags="ng" index="2ZBlsa" />
      <concept id="1630016958697057551" name="jetbrains.mps.lang.editor.structure.IMenuPartParameterized" flags="ng" index="2ZBHr6">
        <child id="1630016958697057552" name="parameterType" index="2ZBHrp" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1081293058843" name="jetbrains.mps.lang.editor.structure.CellKeyMapDeclaration" flags="ig" index="325Ffw">
        <reference id="1139445935125" name="applicableConcept" index="1chiOs" />
        <child id="1136930944870" name="item" index="2QnnpI" />
      </concept>
      <concept id="1240253180846" name="jetbrains.mps.lang.editor.structure.IndentLayoutNoWrapClassItem" flags="ln" index="34QqEe" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8998492695583109601" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_CanSubstitute" flags="ig" index="16Na2f" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129971" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_DescriptionText" flags="ng" index="16NL0t">
        <child id="8998492695583129972" name="query" index="16NL0q" />
      </concept>
      <concept id="8998492695583129991" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_CanSubstitute" flags="ng" index="16NL3D">
        <child id="8998492695583129992" name="query" index="16NL3A" />
      </concept>
      <concept id="1154465273778" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ParentNode" flags="nn" index="3bvxqY" />
      <concept id="1896914160037421068" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_WrapSubstituteMenu" flags="ng" index="3c8P5G">
        <child id="1896914160037421069" name="menuReference" index="3c8P5H" />
        <child id="1896914160037423677" name="handler" index="3c8PHt" />
      </concept>
      <concept id="1896914160037423680" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_WrapperHandler" flags="ig" index="3c8PGw" />
      <concept id="1896914160037437306" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_CreatedNode" flags="ng" index="3c8USq" />
      <concept id="1838685759388685703" name="jetbrains.mps.lang.editor.structure.TransformationFeature_DescriptionText" flags="ng" index="3cqGtN">
        <child id="1838685759388685704" name="query" index="3cqGtW" />
      </concept>
      <concept id="1838685759388690401" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_DescriptionText" flags="ig" index="3cqJkl" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="7342352913006985500" name="jetbrains.mps.lang.editor.structure.TransformationLocation_Completion" flags="ng" index="3eGOoe" />
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="3459162043708468028" name="canExecuteFunction" index="jK8aL" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="3622263992595020491" name="jetbrains.mps.lang.editor.structure.SubstituteMenuItem_OutputConcept_Operation" flags="ng" index="3j5asz" />
      <concept id="7291101478617127464" name="jetbrains.mps.lang.editor.structure.IExtensibleTransformationMenuPart" flags="ng" index="1joUw2">
        <child id="8954657570916349207" name="features" index="2jZA2a" />
      </concept>
      <concept id="3622263992592371436" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_WrappedItem" flags="ng" index="3jrdc4" />
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="2162403111523059536" name="jetbrains.mps.lang.editor.structure.IdSelector" flags="ng" index="1lyA5W">
        <property id="2162403111529391190" name="cellId" index="1lUG9U" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="1165424453110" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item" flags="ng" index="1oHujT">
        <property id="1165424453111" name="matchingText" index="1oHujS" />
        <child id="1165424453112" name="handlerFunction" index="1oHujR" />
      </concept>
      <concept id="1165424657443" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item_Handler" flags="in" index="1oIgkG" />
      <concept id="7580468736840446506" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_model" flags="nn" index="1rpKSd" />
      <concept id="730181322658904464" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_IncludeMenu" flags="ng" index="1s_PAr">
        <child id="730181322658904467" name="menuReference" index="1s_PAo" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="9122903797336200704" name="jetbrains.mps.lang.editor.structure.ApplyStyleClassCondition" flags="lg" index="1uO$qF">
        <child id="9122903797336200706" name="query" index="1uO$qD" />
      </concept>
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="5425882385312046132" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_CurrentTargetNode" flags="nn" index="1yR$tW" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007883204" name="jetbrains.mps.lang.editor.structure.PaddingLeftStyleClassItem" flags="ln" index="3$7fVu" />
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1215085112640" name="jetbrains.mps.lang.editor.structure.FirstPositionAllowedStyleClassItem" flags="ln" index="3CHQLq" />
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1081339532145" name="keyMap" index="34QXea" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1198512004906" name="focusPolicyApplicable" index="cStSX" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <property id="6240706158490734113" name="collapseByDefault" index="3EXrWe" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <child id="16410578721629643" name="emptyCellModel" index="2ruayu" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <reference id="1173177718857" name="elementActionMap" index="APP_o" />
        <child id="7279578193766667846" name="addHints" index="78xua" />
      </concept>
      <concept id="4233361609415247331" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Parameter" flags="ig" index="1GhMSn" />
      <concept id="4233361609415240997" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Parameterized" flags="ng" index="1GhOrh">
        <child id="4233361609415240998" name="part" index="1GhOri" />
        <child id="4233361609415241000" name="parameterQuery" index="1GhOrs" />
      </concept>
      <concept id="7522821015001613016" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_Concept" flags="ng" index="1GpqW3" />
      <concept id="7522821015001613004" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_FilterConcepts" flags="ig" index="1GpqWn" />
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1187258617779" name="jetbrains.mps.lang.editor.structure.ForegroundNullColorStyleClassItem" flags="ln" index="1I8cUB" />
      <concept id="5624877018226900666" name="jetbrains.mps.lang.editor.structure.TransformationMenu" flags="ng" index="3ICUPy" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="2034032467062799210" name="methodDeclaration" index="2oQuUE" />
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="1221634900557" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_Link" flags="nn" index="1J7kdh" />
      <concept id="6684862045052272180" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_NodeToWrap" flags="ng" index="3N4pyC" />
      <concept id="6684862045052059649" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_WrapperHandler" flags="ig" index="3N5aqt" />
      <concept id="6684862045052059291" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Wrapper" flags="ng" index="3N5dw7">
        <child id="6089045305655104958" name="reference" index="2klrvf" />
        <child id="6684862045053873740" name="handler" index="3Na0zg" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="2701921320705252232" name="selectionEnd" index="mNZMC" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="2722384699544370949" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Placeholder" flags="ng" index="3VyMlK" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
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
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
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
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE">
        <child id="3757480014665187678" name="prototype" index="1wAG5O" />
      </concept>
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1966870290083281362" name="jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" flags="ng" index="24Tkf9" />
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
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
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
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1181952871644" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSubConcepts" flags="nn" index="LSoRf">
        <child id="1182506816063" name="smodel" index="1iTxcG" />
      </concept>
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1966870290088668520" name="jetbrains.mps.lang.smodel.structure.Enum_MembersOperation" flags="ng" index="2ViDtN" />
      <concept id="1966870290088668519" name="jetbrains.mps.lang.smodel.structure.Enum_FromNameOperation" flags="ng" index="2ViDtW">
        <child id="1966870290088674248" name="nameExpression" index="2ViJBj" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumerationMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
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
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="2285351689971718149" name="jetbrains.mps.lang.smodel.structure.AggregationLinkType" flags="ig" index="3GbmH5" />
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="24kQdi" id="4NUTY$DwDN0">
    <property role="3GE5qa" value="typing.primitives" />
    <ref role="1XX52x" to="3nll:4NUTY$DwDMv" resolve="IPrimitiveType" />
    <node concept="PMmxH" id="4NUTY$DwDN2" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <ref role="1k5W1q" node="7fqk8p40QL_" resolve="PrimitiveDataTypeKeywordStyle" />
      <node concept="VPxyj" id="6ci4EViUmuA" role="3F10Kt" />
    </node>
  </node>
  <node concept="24kQdi" id="7wXJBPuINu1">
    <property role="3GE5qa" value="typing.maps" />
    <ref role="1XX52x" to="3nll:7wXJBPuINtT" resolve="MapType" />
    <node concept="3EZMnI" id="7wXJBPuINu3" role="2wV5jI">
      <node concept="3F0ifn" id="7wXJBPuINud" role="3EZMnx">
        <property role="3F0ifm" value="map" />
        <ref role="1k5W1q" node="7fqk8p40QEI" resolve="CollectionDataTypeKeywordStyle" />
        <node concept="A1WHu" id="1bq_vIp_Vwj" role="3vIgyS">
          <ref role="A1WHt" node="29ZTnyH8eIe" resolve="DataTypeTransformationMenu" />
        </node>
      </node>
      <node concept="3F0ifn" id="7wXJBPuINuj" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" node="hY9fg1G" resolve="LeftAngleBracketAfterName" />
        <node concept="A1WHu" id="1bq_vIp_Vwl" role="3vIgyS">
          <ref role="A1WHt" node="29ZTnyH8eIe" resolve="DataTypeTransformationMenu" />
        </node>
      </node>
      <node concept="3F1sOY" id="7wXJBPuINur" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:7wXJBPuINtW" resolve="keyType" />
      </node>
      <node concept="3F0ifn" id="7wXJBPuINu_" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <ref role="1k5W1q" node="5SyewCbhjx0" resolve="CommaSeparator" />
      </node>
      <node concept="3F1sOY" id="7wXJBPuINuL" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:7wXJBPuINtY" resolve="valueType" />
      </node>
      <node concept="3F0ifn" id="7wXJBPuINuZ" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" node="5SyewCbjRsl" resolve="RightAngleBracket" />
        <node concept="A1WHu" id="1bq_vIp_Vwn" role="3vIgyS">
          <ref role="A1WHt" node="29ZTnyH8eIe" resolve="DataTypeTransformationMenu" />
        </node>
      </node>
      <node concept="2iRfu4" id="7wXJBPuINu6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5eyACQI5htd">
    <property role="3GE5qa" value="typing.java" />
    <ref role="1XX52x" to="3nll:5eyACQI58pp" resolve="JavaDataType" />
    <node concept="3F1sOY" id="5eyACQI5htf" role="2wV5jI">
      <property role="1$x2rV" value="&lt;java type&gt;" />
      <ref role="1NtTu8" to="3nll:5eyACQI58pu" resolve="actualType" />
    </node>
  </node>
  <node concept="24kQdi" id="4Wa3rAG6zde">
    <property role="3GE5qa" value="aggregates" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
    <node concept="1iCGBv" id="1jrq3npKVlh" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:4Wa3rAG5JzN" resolve="aggregate" />
      <node concept="1sVBvm" id="1jrq3npKVlj" role="1sWHZn">
        <node concept="3F0A7n" id="1jrq3nqiXRV" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPxyj" id="1jrq3nqiXRY" role="3F10Kt" />
          <node concept="2SqB2G" id="5jZDGTej1SJ" role="2SqHTX">
            <property role="TrG5h" value="nameCellId" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4Wa3rAG6zds">
    <property role="3GE5qa" value="dto" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5J$6" resolve="DtoReference" />
    <node concept="1iCGBv" id="4Wa3rAG6zdu" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:4Wa3rAG5J$7" resolve="dto" />
      <node concept="1sVBvm" id="4Wa3rAG6zdw" role="1sWHZn">
        <node concept="3F0A7n" id="4Wa3rAG6zdB" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPxyj" id="2Bsub$LmrS7" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4Wa3rAG6zdE">
    <property role="3GE5qa" value="entity" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5J$0" resolve="EntityReference" />
    <node concept="1iCGBv" id="4Wa3rAG6zdG" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:4Wa3rAG5J$1" resolve="entity" />
      <node concept="1sVBvm" id="4Wa3rAG6zdI" role="1sWHZn">
        <node concept="3F0A7n" id="4Wa3rAG6zdP" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPxyj" id="4LpUh3W3Nty" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4Wa3rAG6zdS">
    <property role="3GE5qa" value="valueObjects" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5JzU" resolve="ValueObjectReference" />
    <node concept="1iCGBv" id="4Wa3rAG6zdU" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:4Wa3rAG5JzV" resolve="valueObject" />
      <node concept="1sVBvm" id="4Wa3rAG6zdW" role="1sWHZn">
        <node concept="3F0A7n" id="4Wa3rAG6ze3" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPxyj" id="6ci4EVj1S7B" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p3MCjW">
    <property role="3GE5qa" value="variable.parameter" />
    <ref role="1XX52x" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
    <node concept="3EZMnI" id="7fqk8p3MCjY" role="2wV5jI">
      <node concept="3F0A7n" id="7fqk8p3MCk7" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no name&gt;" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="2SqB2G" id="5SyewCavt3d" role="2SqHTX">
          <property role="TrG5h" value="parameterNameCellId" />
        </node>
      </node>
      <node concept="3F0ifn" id="7fqk8p3MCkd" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="34QqEe" id="6Qa18YGfAub" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="6Qa18YGfAug" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7fqk8p3MCkl" role="3EZMnx">
        <property role="1$x2rV" value="&lt;type&gt;" />
        <ref role="1NtTu8" to="3nll:4LpUh3YaKVD" resolve="type" />
      </node>
      <node concept="l2Vlx" id="2Bsub$L_Sc4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p3MCoE">
    <property role="3GE5qa" value="valueObjects" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
    <node concept="3EZMnI" id="oGImgN2kt9" role="2wV5jI">
      <node concept="3F0ifn" id="oGImgN2kti" role="3EZMnx">
        <property role="3F0ifm" value="value object" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
      </node>
      <node concept="3F0A7n" id="oGImgN2kto" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="oGImgN2ktw" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="5SyewCboVBP" resolve="LeftBraceAfterName" />
        <node concept="ljvvj" id="oGImgN2kt_" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="3FBObroAn8M" role="3n$kyP">
            <node concept="3clFbS" id="3FBObroAn8N" role="2VODD2">
              <node concept="3clFbF" id="3FBObroAnak" role="3cqZAp">
                <node concept="2OqwBi" id="3FBObroAnuh" role="3clFbG">
                  <node concept="pncrf" id="3FBObroAnaj" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3FBObroAnJL" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3FBObroAnPq" role="3EZMnx">
        <ref role="PMmxG" node="3FBObrouWaz" resolve="IComponentWithParametersParameterLayout" />
      </node>
      <node concept="3F0ifn" id="oGImgN2kuj" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
        <node concept="A1WHu" id="oGImgN4fr9" role="3vIgyS">
          <ref role="A1WHt" node="oGImgN3hTb" resolve="ValueObjectBodyTransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="oGImgN2kuJ" role="3EZMnx">
        <node concept="VPM3Z" id="oGImgN2kuL" role="3F10Kt" />
        <node concept="3F0ifn" id="oGImgN2kva" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <ref role="1ERwB7" node="oGImgNC0pj" resolve="ValueObjectBodyActionMap" />
          <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
          <node concept="ljvvj" id="oGImgN2kvd" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="oGImgN2kvs" role="3EZMnx">
          <ref role="1NtTu8" to="3nll:oGImgN2kvl" resolve="components" />
          <node concept="2iRkQZ" id="oGImgN2kvT" role="2czzBx" />
          <node concept="lj46D" id="oGImgN2kvK" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="oGImgN2kvP" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2SqB2G" id="3FBObrpmsg0" role="2SqHTX">
            <property role="TrG5h" value="objectBody" />
          </node>
        </node>
        <node concept="3F0ifn" id="oGImgN2kvD" role="3EZMnx">
          <property role="3F0ifm" value="}" />
          <ref role="1ERwB7" node="oGImgNC0pj" resolve="ValueObjectBodyActionMap" />
          <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        </node>
        <node concept="l2Vlx" id="oGImgN2kuO" role="2iSdaV" />
        <node concept="pkWqt" id="oGImgN2kvW" role="pqm2j">
          <node concept="3clFbS" id="oGImgN2kvX" role="2VODD2">
            <node concept="3clFbF" id="oGImgN2k_r" role="3cqZAp">
              <node concept="2OqwBi" id="oGImgN2mXm" role="3clFbG">
                <node concept="2OqwBi" id="oGImgN2kR$" role="2Oq$k0">
                  <node concept="pncrf" id="oGImgN2k_q" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="oGImgN2l5O" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgN2kvl" resolve="components" />
                  </node>
                </node>
                <node concept="3GX2aA" id="oGImgN2p6c" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="oGImgN2kta" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p3PfD4">
    <property role="3GE5qa" value="boundedContext" />
    <ref role="1XX52x" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    <node concept="3EZMnI" id="7fqk8p3PfD6" role="2wV5jI">
      <node concept="3F0ifn" id="7fqk8p3PfDq" role="3EZMnx">
        <property role="3F0ifm" value="bounded context" />
        <ref role="1k5W1q" node="7fqk8p40QMe" resolve="BoundedContextKeywordStyle" />
      </node>
      <node concept="3F0A7n" id="7fqk8p3PfDw" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4afTDVE26AQ" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="ljvvj" id="7a9d0UA8q64" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7fqk8p3PwUK" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:4NUTY$DwJke" resolve="components" />
        <node concept="2iRkQZ" id="7fqk8p3PwUQ" role="2czzBx" />
        <node concept="2w$q5c" id="awtshkKaD0" role="78xua" />
      </node>
      <node concept="l2Vlx" id="7a9d0UA8q5o" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p3V84O">
    <property role="3GE5qa" value="variable.property" />
    <ref role="1XX52x" to="3nll:7fqk8p3V6WN" resolve="Property" />
    <node concept="3EZMnI" id="7fqk8p3V84Q" role="2wV5jI">
      <node concept="3F0ifn" id="3DbZR$ObFWE" role="3EZMnx">
        <property role="3F0ifm" value="get" />
        <ref role="1ERwB7" node="oGImgN$Zvn" resolve="PropertyGetActionMap" />
        <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
        <node concept="pkWqt" id="3DbZR$OcvFq" role="pqm2j">
          <node concept="3clFbS" id="3DbZR$OcvFr" role="2VODD2">
            <node concept="3clFbF" id="3DbZR$OcvKI" role="3cqZAp">
              <node concept="2OqwBi" id="3DbZR$Ocw2R" role="3clFbG">
                <node concept="pncrf" id="3DbZR$OcvKH" role="2Oq$k0" />
                <node concept="3TrcHB" id="3DbZR$Ocwh7" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:3DbZR$ObFWz" resolve="hasGetter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="3DbZR$ORIHe" role="2SqHTX">
          <property role="TrG5h" value="getKeyword" />
        </node>
      </node>
      <node concept="3F0A7n" id="7fqk8p3V84Z" role="3EZMnx">
        <property role="1$x2rV" value="&lt;property name&gt;" />
        <property role="1cu_pB" value="gtgu$YJ/attractsFocus" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="A1WHu" id="3DbZR$OVfqk" role="3vIgyS">
          <ref role="A1WHt" node="3DbZR$Oq0ix" resolve="PropertyGetter_TransformationMenu" />
        </node>
        <node concept="3CHQLq" id="5$Oa659aZLh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="1URsbDo0Y$M" role="cStSX">
          <node concept="3clFbS" id="1URsbDo0Y$N" role="2VODD2">
            <node concept="3clFbF" id="1URsbDo0YEb" role="3cqZAp">
              <node concept="2OqwBi" id="1URsbDo0ZQd" role="3clFbG">
                <node concept="2OqwBi" id="1URsbDo0YXe" role="2Oq$k0">
                  <node concept="pncrf" id="1URsbDo0YEa" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1URsbDo0Zd6" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="17RlXB" id="1URsbDo10iN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7fqk8p3V855" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="A1WHu" id="3DbZR$OZDDJ" role="3vIgyS">
          <ref role="A1WHt" node="3DbZR$Oq0ix" resolve="PropertyGetter_TransformationMenu" />
        </node>
      </node>
      <node concept="3F1sOY" id="3DbZR$PaZh4" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:4LpUh3YaKVD" resolve="type" />
        <node concept="3F0ifn" id="3DbZR$PetMe" role="2ruayu">
          <property role="3F0ifm" value="TTTTEST" />
          <property role="ilYzB" value="test" />
        </node>
      </node>
      <node concept="2iRfu4" id="7fqk8p3V84T" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p3V85n">
    <property role="3GE5qa" value="entity" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
    <node concept="3EZMnI" id="oGImgNHfwi" role="2wV5jI">
      <node concept="l2Vlx" id="oGImgNHfwj" role="2iSdaV" />
      <node concept="3F0ifn" id="oGImgNHfwm" role="3EZMnx">
        <property role="3F0ifm" value="entity" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
      </node>
      <node concept="3F0A7n" id="oGImgNHfwr" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3FBObrpIiwJ" role="3EZMnx">
        <property role="3F0ifm" value="with id type" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="3FBObrpO1sr" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" node="5SyewCbjRr2" resolve="LeftAngleBracket" />
      </node>
      <node concept="3F1sOY" id="oGImgNHfwH" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:7fqk8p3V868" resolve="idType" />
      </node>
      <node concept="3F0ifn" id="3FBObrpO1$b" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" node="5SyewCbjRsl" resolve="RightAngleBracket" />
        <node concept="A1WHu" id="3FBObrpO1C4" role="3vIgyS">
          <ref role="A1WHt" node="oGImgNTZCT" resolve="ConstructorRightTransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="oGImgNHfx7" role="3EZMnx">
        <node concept="VPM3Z" id="oGImgNHfx9" role="3F10Kt" />
        <node concept="3F0ifn" id="oGImgNHfxn" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <ref role="1ERwB7" node="oGImgNL9lM" resolve="OptionalConstructorActionMap" />
          <ref role="1k5W1q" node="5SyewCboVA6" resolve="LeftBrace" />
          <node concept="ljvvj" id="oGImgNHfxq" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="3FBObroKqN8" role="3n$kyP">
              <node concept="3clFbS" id="3FBObroKqN9" role="2VODD2">
                <node concept="3clFbF" id="3FBObroKqOE" role="3cqZAp">
                  <node concept="2OqwBi" id="3FBObroKr7H" role="3clFbG">
                    <node concept="pncrf" id="3FBObroKqOD" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3FBObroKrn_" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="PMmxH" id="3FBObroKrKs" role="3EZMnx">
          <ref role="PMmxG" node="3FBObrouWaz" resolve="IComponentWithParametersParameterLayout" />
        </node>
        <node concept="3F0ifn" id="oGImgNHfy1" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <ref role="1ERwB7" node="oGImgNL9lM" resolve="OptionalConstructorActionMap" />
          <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
        </node>
        <node concept="l2Vlx" id="oGImgNHfxc" role="2iSdaV" />
        <node concept="pkWqt" id="oGImgNJ40W" role="pqm2j">
          <node concept="3clFbS" id="oGImgNJ40X" role="2VODD2">
            <node concept="3clFbJ" id="oGImgO70ZD" role="3cqZAp">
              <node concept="3clFbS" id="oGImgO70ZF" role="3clFbx">
                <node concept="3clFbF" id="oGImgO75Wj" role="3cqZAp">
                  <node concept="2OqwBi" id="oGImgO75Zt" role="3clFbG">
                    <node concept="pncrf" id="oGImgO75Wi" role="2Oq$k0" />
                    <node concept="1OKiuA" id="oGImgO762x" role="2OqNvi">
                      <node concept="1Q80Hx" id="oGImgO7658" role="lBI5i" />
                      <node concept="1lyA5W" id="oGImgO767I" role="lGT1i">
                        <property role="1lUG9U" value="bodyStart" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="oGImgO73IZ" role="3clFbw">
                <node concept="2OqwBi" id="oGImgO71i3" role="2Oq$k0">
                  <node concept="pncrf" id="oGImgO711c" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="oGImgO71yK" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                  </node>
                </node>
                <node concept="1v1jN8" id="oGImgO75Ql" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="oGImgNJ46K" role="3cqZAp">
              <node concept="2OqwBi" id="oGImgNJ7pC" role="3clFbG">
                <node concept="2OqwBi" id="oGImgNJ4oT" role="2Oq$k0">
                  <node concept="pncrf" id="oGImgNJ46J" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="oGImgNJ4B9" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                  </node>
                </node>
                <node concept="3GX2aA" id="oGImgNJay_" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="oGImgNHfyp" role="3EZMnx">
        <node concept="VPM3Z" id="oGImgNHfyr" role="3F10Kt" />
        <node concept="3F0ifn" id="oGImgNHfyI" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <property role="1cu_pB" value="gtgu$YJ/attractsFocus" />
          <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
          <node concept="ljvvj" id="oGImgNHfyL" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="A1WHu" id="oGImgNNByt" role="3vIgyS">
            <ref role="A1WHt" node="oGImgNOI11" resolve="ConstructorLeftTransformationMenu" />
          </node>
          <node concept="2SqB2G" id="oGImgO5Y5z" role="2SqHTX">
            <property role="TrG5h" value="bodyStart" />
          </node>
        </node>
        <node concept="3F2HdR" id="oGImgNHfyR" role="3EZMnx">
          <property role="S$F3r" value="true" />
          <ref role="1NtTu8" to="3nll:7fqk8p3W56o" resolve="components" />
          <node concept="2iRkQZ" id="oGImgNHfz0" role="2czzBx" />
          <node concept="lj46D" id="oGImgNHfyY" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="oGImgNHfz6" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="oGImgNHfzi" role="3EZMnx">
          <property role="3F0ifm" value="}" />
          <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        </node>
        <node concept="l2Vlx" id="oGImgNHfyu" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="7fqk8p3Xnw8">
    <property role="TrG5h" value="MainStyleSheet" />
    <property role="3GE5qa" value="stylesheets" />
    <node concept="14StLt" id="7fqk8p3Xnwb" role="V601i">
      <property role="TrG5h" value="noWhiteSpaceStart" />
      <node concept="11L4FC" id="7fqk8p3Xnwg" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="7fqk8p3Xnwn" role="V601i">
      <property role="TrG5h" value="noWhiteSpaceEnd" />
      <node concept="11LMrY" id="7fqk8p3Xnwu" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="7fqk8p3XnwB" role="V601i">
      <property role="TrG5h" value="noWhiteSpaces" />
      <node concept="3Xmtl4" id="7fqk8p3XnwU" role="3F10Kt">
        <node concept="1wgc9g" id="7fqk8p3XnwW" role="3XvnJa">
          <ref role="1wgcnl" node="7fqk8p3Xnwb" resolve="noWhiteSpaceStart" />
        </node>
      </node>
      <node concept="3Xmtl4" id="7fqk8p3XnwK" role="3F10Kt">
        <node concept="1wgc9g" id="7fqk8p3XnwM" role="3XvnJa">
          <ref role="1wgcnl" node="7fqk8p3Xnwn" resolve="noWhiteSpaceEnd" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p40d8o">
    <property role="3GE5qa" value="method" />
    <ref role="1XX52x" to="3nll:7fqk8p3W55Y" resolve="Method" />
    <node concept="3EZMnI" id="7fqk8p40d8q" role="2wV5jI">
      <node concept="3F0A7n" id="awtshksDjD" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:awtshksDjo" resolve="modifier" />
        <ref role="1k5W1q" node="sPJqcqlEKz" resolve="KeywordStyle" />
        <node concept="VPxyj" id="1URsbDo21qS" role="3F10Kt" />
      </node>
      <node concept="3F0A7n" id="7fqk8p40d8x" role="3EZMnx">
        <property role="1$x2rV" value="&lt;method name&gt;" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="7fqk8p40d8B" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="5SyewCboVBP" resolve="LeftBraceAfterName" />
        <node concept="A1WHu" id="5SyewCavue4" role="3vIgyS">
          <ref role="A1WHt" node="5SyewCaviYU" resolve="MethodInitialParameterRightTransformationMenu" />
        </node>
        <node concept="ljvvj" id="3FBObroy939" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="3FBObroy93b" role="3n$kyP">
            <node concept="3clFbS" id="3FBObroy93c" role="2VODD2">
              <node concept="3clFbF" id="3FBObroy953" role="3cqZAp">
                <node concept="2OqwBi" id="3FBObroy9rI" role="3clFbG">
                  <node concept="pncrf" id="3FBObroy952" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3FBObroy9M6" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3FBObrowJvQ" role="3EZMnx">
        <ref role="PMmxG" node="3FBObrouWaz" resolve="IComponentWithParametersParameterLayout" />
      </node>
      <node concept="3F0ifn" id="7fqk8p40d8W" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
        <node concept="A1WHu" id="oGImgN0yW_" role="3vIgyS">
          <ref role="A1WHt" node="oGImgN0xAy" resolve="MethodClosingBracesTransformationMenu" />
        </node>
      </node>
      <node concept="3F0ifn" id="7fqk8p40d9a" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="pkWqt" id="oGImgMZApN" role="pqm2j">
          <node concept="3clFbS" id="oGImgMZApO" role="2VODD2">
            <node concept="3clFbF" id="oGImgMZAvn" role="3cqZAp">
              <node concept="2OqwBi" id="oGImgMZCUe" role="3clFbG">
                <node concept="2OqwBi" id="oGImgMZANk" role="2Oq$k0">
                  <node concept="pncrf" id="oGImgMZAvm" role="2Oq$k0" />
                  <node concept="3TrEf2" id="oGImgMZB4O" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7fqk8p40d8l" resolve="returnTypeWrapper" />
                  </node>
                </node>
                <node concept="3x8VRR" id="oGImgMZD62" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="7fqk8p40d9q" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no return type&gt;" />
        <ref role="1NtTu8" to="3nll:7fqk8p40d8l" resolve="returnTypeWrapper" />
        <node concept="pkWqt" id="oGImgMZBBK" role="pqm2j">
          <node concept="3clFbS" id="oGImgMZBBL" role="2VODD2">
            <node concept="3clFbF" id="oGImgMZBCL" role="3cqZAp">
              <node concept="2OqwBi" id="oGImgMZBHu" role="3clFbG">
                <node concept="2OqwBi" id="oGImgMZBDk" role="2Oq$k0">
                  <node concept="pncrf" id="oGImgMZBCK" role="2Oq$k0" />
                  <node concept="3TrEf2" id="oGImgMZBEC" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7fqk8p40d8l" resolve="returnTypeWrapper" />
                  </node>
                </node>
                <node concept="3x8VRR" id="oGImgMZBSr" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="1bq_vIpOVPK" role="3EZMnx">
        <node concept="VPM3Z" id="1bq_vIpOVPM" role="3F10Kt" />
        <node concept="3F0ifn" id="1bq_vIpKeh6" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <node concept="ljvvj" id="1bq_vIpKev6" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="1bq_vIpKeKe" role="3EZMnx">
          <ref role="1NtTu8" to="3nll:1bq_vIpKexX" resolve="statementList" />
          <node concept="lj46D" id="1bq_vIpKeN4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="1bq_vIpKeN9" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1bq_vIpKemG" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="l2Vlx" id="1bq_vIpOVPP" role="2iSdaV" />
        <node concept="2SqB2G" id="1bq_vIpOVSL" role="2SqHTX">
          <property role="TrG5h" value="methodBodyCellId" />
        </node>
        <node concept="pkWqt" id="1bq_vIpOVSN" role="pqm2j">
          <node concept="3clFbS" id="1bq_vIpOVSO" role="2VODD2">
            <node concept="3clFbF" id="1bq_vIpOVWJ" role="3cqZAp">
              <node concept="3clFbT" id="1bq_vIpOVWI" role="3clFbG" />
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5SyewCbu2ja" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p40Q_7">
    <property role="3GE5qa" value="aggregates" />
    <ref role="1XX52x" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
    <node concept="3EZMnI" id="1URsbDo38Py" role="2wV5jI">
      <node concept="l2Vlx" id="1URsbDo38Pz" role="2iSdaV" />
      <node concept="3F0ifn" id="1URsbDo38P$" role="3EZMnx">
        <property role="3F0ifm" value="aggregate root" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
      </node>
      <node concept="3F0A7n" id="1URsbDo38P_" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3FBObrpQTtd" role="3EZMnx">
        <property role="3F0ifm" value="with id type" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="1URsbDo38PA" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" node="5SyewCbjRr2" resolve="LeftAngleBracket" />
      </node>
      <node concept="3F1sOY" id="1URsbDo38PD" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:4NUTY$DwDN6" resolve="idType" />
      </node>
      <node concept="3F0ifn" id="1URsbDo38PE" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" node="5SyewCbjRsl" resolve="RightAngleBracket" />
        <node concept="A1WHu" id="1URsbDo38PF" role="3vIgyS">
          <ref role="A1WHt" node="oGImgNTZCT" resolve="ConstructorRightTransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="1URsbDo38PI" role="3EZMnx">
        <node concept="VPM3Z" id="1URsbDo38PJ" role="3F10Kt" />
        <node concept="3F0ifn" id="1URsbDo38PK" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <ref role="1ERwB7" node="oGImgNL9lM" resolve="OptionalConstructorActionMap" />
          <ref role="1k5W1q" node="5SyewCboVA6" resolve="LeftBrace" />
          <node concept="ljvvj" id="1URsbDo38PL" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="3FBObroLTjQ" role="3n$kyP">
              <node concept="3clFbS" id="3FBObroLTjR" role="2VODD2">
                <node concept="3clFbF" id="3FBObroLTlo" role="3cqZAp">
                  <node concept="2OqwBi" id="3FBObroLTCr" role="3clFbG">
                    <node concept="pncrf" id="3FBObroLTln" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3FBObroLTSj" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="PMmxH" id="3FBObroLU66" role="3EZMnx">
          <ref role="PMmxG" node="3FBObrouWaz" resolve="IComponentWithParametersParameterLayout" />
        </node>
        <node concept="3F0ifn" id="1URsbDo38PV" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <ref role="1ERwB7" node="oGImgNL9lM" resolve="OptionalConstructorActionMap" />
          <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
        </node>
        <node concept="l2Vlx" id="1URsbDo38PY" role="2iSdaV" />
        <node concept="pkWqt" id="1URsbDo38PZ" role="pqm2j">
          <node concept="3clFbS" id="1URsbDo38Q0" role="2VODD2">
            <node concept="3clFbJ" id="1URsbDo38Q1" role="3cqZAp">
              <node concept="3clFbS" id="1URsbDo38Q2" role="3clFbx">
                <node concept="3clFbF" id="1URsbDo38Q3" role="3cqZAp">
                  <node concept="2OqwBi" id="1URsbDo38Q4" role="3clFbG">
                    <node concept="pncrf" id="1URsbDo38Q5" role="2Oq$k0" />
                    <node concept="1OKiuA" id="1URsbDo38Q6" role="2OqNvi">
                      <node concept="1Q80Hx" id="1URsbDo38Q7" role="lBI5i" />
                      <node concept="1lyA5W" id="1URsbDo38Q8" role="lGT1i">
                        <property role="1lUG9U" value="bodyStart" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1URsbDo38Q9" role="3clFbw">
                <node concept="2OqwBi" id="1URsbDo38Qa" role="2Oq$k0">
                  <node concept="pncrf" id="1URsbDo38Qb" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1URsbDo38Qc" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                  </node>
                </node>
                <node concept="1v1jN8" id="1URsbDo38Qd" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="1URsbDo38Qe" role="3cqZAp">
              <node concept="2OqwBi" id="1URsbDo38Qf" role="3clFbG">
                <node concept="2OqwBi" id="1URsbDo38Qg" role="2Oq$k0">
                  <node concept="pncrf" id="1URsbDo38Qh" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1URsbDo38Qi" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                  </node>
                </node>
                <node concept="3GX2aA" id="1URsbDo38Qj" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="1URsbDo38Qk" role="3EZMnx">
        <node concept="VPM3Z" id="1URsbDo38Ql" role="3F10Kt" />
        <node concept="3F0ifn" id="1URsbDo38Qm" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <property role="1cu_pB" value="gtgu$YJ/attractsFocus" />
          <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
          <node concept="ljvvj" id="1URsbDo38Qn" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="A1WHu" id="1URsbDo38Qq" role="3vIgyS">
            <ref role="A1WHt" node="oGImgNOI11" resolve="ConstructorLeftTransformationMenu" />
          </node>
          <node concept="2SqB2G" id="1URsbDo38Qr" role="2SqHTX">
            <property role="TrG5h" value="bodyStart" />
          </node>
        </node>
        <node concept="3F2HdR" id="1URsbDo38Qs" role="3EZMnx">
          <property role="S$F3r" value="true" />
          <ref role="1NtTu8" to="3nll:7fqk8p40Q$X" resolve="components" />
          <node concept="2iRkQZ" id="1URsbDo38Qt" role="2czzBx" />
          <node concept="lj46D" id="1URsbDo38Qu" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="1URsbDo38Qv" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1URsbDo38Qw" role="3EZMnx">
          <property role="3F0ifm" value="}" />
          <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        </node>
        <node concept="l2Vlx" id="1URsbDo38Qz" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p44qV3">
    <property role="3GE5qa" value="command" />
    <ref role="1XX52x" to="3nll:7fqk8p43ygY" resolve="Command" />
    <node concept="3EZMnI" id="3FBObroQ3$t" role="2wV5jI">
      <node concept="l2Vlx" id="3FBObroQ3$u" role="2iSdaV" />
      <node concept="3F0ifn" id="1jrq3npx7pR" role="3EZMnx">
        <property role="3F0ifm" value="command" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
        <node concept="pkWqt" id="1jrq3npx7se" role="pqm2j">
          <node concept="3clFbS" id="1jrq3npx7sf" role="2VODD2">
            <node concept="3clFbF" id="1jrq3npx7tT" role="3cqZAp">
              <node concept="22lmx$" id="1WhJCpUOMje" role="3clFbG">
                <node concept="2OqwBi" id="1WhJCpUOMCw" role="3uHU7w">
                  <node concept="pncrf" id="1WhJCpUOMkO" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1WhJCpUOMY9" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTfXOm3" resolve="shouldShowKeyword" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="1jrq3npyBKT" role="3uHU7B">
                  <node concept="2OqwBi" id="1jrq3npyBKV" role="3fr31v">
                    <node concept="pncrf" id="1jrq3npyBKW" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1jrq3npyBKX" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:1jrq3npy$dZ" resolve="isInsideCommandContainer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="3FBObroQ3$x" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3FBObroQ3$A" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="5SyewCboVBP" resolve="LeftBraceAfterName" />
        <node concept="ljvvj" id="3FBObroQ3$X" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="3FBObroQ3$Z" role="3n$kyP">
            <node concept="3clFbS" id="3FBObroQ3_0" role="2VODD2">
              <node concept="3clFbF" id="3FBObroQ3Ff" role="3cqZAp">
                <node concept="2OqwBi" id="3FBObroQ3Yi" role="3clFbG">
                  <node concept="pncrf" id="3FBObroQ3Fe" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3FBObroQ4ea" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3FBObroQ3$I" role="3EZMnx">
        <ref role="PMmxG" node="3FBObrouWaz" resolve="IComponentWithParametersParameterLayout" />
      </node>
      <node concept="3F0ifn" id="3FBObroQ3$R" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
        <node concept="A1WHu" id="4REBMItdo_k" role="3vIgyS">
          <ref role="A1WHt" node="5jZDGTimaP9" resolve="IComponentWithRepositoryReferences_RequiresTransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="1TPnUlhFIbD" role="3EZMnx">
        <ref role="1ERwB7" node="1TPnUlhMRNT" resolve="CommandRequiredRepositoriesDeletionMap" />
        <node concept="VPM3Z" id="1TPnUlhFIbF" role="3F10Kt" />
        <node concept="3F0ifn" id="3AwzpICwaEP" role="3EZMnx">
          <property role="3F0ifm" value="requires" />
          <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
        </node>
        <node concept="PMmxH" id="4REBMItTVzX" role="3EZMnx">
          <ref role="PMmxG" node="5jZDGTilOg4" resolve="IComponentWithRepositoryReferences_EditorComponent" />
        </node>
        <node concept="l2Vlx" id="1TPnUlhFIbI" role="2iSdaV" />
        <node concept="pkWqt" id="1TPnUlhFIdH" role="pqm2j">
          <node concept="3clFbS" id="1TPnUlhFIdI" role="2VODD2">
            <node concept="3clFbF" id="1TPnUlhFIf$" role="3cqZAp">
              <node concept="2OqwBi" id="1TPnUlhFJTh" role="3clFbG">
                <node concept="pncrf" id="1TPnUlhFJxZ" role="2Oq$k0" />
                <node concept="3TrcHB" id="4REBMItf4Cj" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="1TPnUlhMOZK" role="2SqHTX">
          <property role="TrG5h" value="requiredRepositoriesLayout" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p44qWK">
    <property role="3GE5qa" value="event" />
    <ref role="1XX52x" to="3nll:7fqk8p43ygS" resolve="Event" />
    <node concept="3EZMnI" id="3FBObroNji1" role="2wV5jI">
      <node concept="l2Vlx" id="3FBObroNji2" role="2iSdaV" />
      <node concept="3F0ifn" id="5jZDGTfVwiE" role="3EZMnx">
        <property role="3F0ifm" value="event" />
        <ref role="1k5W1q" node="3FBObrptC$k" resolve="ConnectingComponentKeywordStyle" />
        <node concept="pkWqt" id="5jZDGTfVwke" role="pqm2j">
          <node concept="3clFbS" id="5jZDGTfVwkf" role="2VODD2">
            <node concept="3clFbF" id="5jZDGTfVwr1" role="3cqZAp">
              <node concept="2OqwBi" id="5jZDGTfVwIY" role="3clFbG">
                <node concept="pncrf" id="5jZDGTfVwr0" role="2Oq$k0" />
                <node concept="3TrcHB" id="5jZDGTfVx0u" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTfXOm3" resolve="shouldShowKeyword" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="3FBObroNji5" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3FBObroNjia" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="5SyewCboVBP" resolve="LeftBraceAfterName" />
        <node concept="ljvvj" id="3FBObroOF3x" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="3FBObroOF3z" role="3n$kyP">
            <node concept="3clFbS" id="3FBObroOF3$" role="2VODD2">
              <node concept="3clFbF" id="3FBObroOF9N" role="3cqZAp">
                <node concept="2OqwBi" id="3FBObroOFsQ" role="3clFbG">
                  <node concept="pncrf" id="3FBObroOF9M" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3FBObroOFGI" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3FBObroNjii" role="3EZMnx">
        <ref role="PMmxG" node="3FBObrouWaz" resolve="IComponentWithParametersParameterLayout" />
      </node>
      <node concept="3F0ifn" id="3FBObroNjir" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
        <node concept="A1WHu" id="5jZDGTfVEs9" role="3vIgyS">
          <ref role="A1WHt" node="5jZDGTimaP9" resolve="IComponentWithRepositoryReferences_RequiresTransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="5jZDGTfVzNC" role="3EZMnx">
        <ref role="1ERwB7" node="5jZDGTfV_ay" resolve="EventRequiredDtoRepositoriesDeletionActionMap" />
        <node concept="VPM3Z" id="5jZDGTfVzNE" role="3F10Kt" />
        <node concept="3F0ifn" id="5jZDGTfVzWo" role="3EZMnx">
          <property role="3F0ifm" value="requires" />
          <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
        </node>
        <node concept="PMmxH" id="5jZDGTfVzWu" role="3EZMnx">
          <ref role="PMmxG" node="5jZDGTilOg4" resolve="IComponentWithRepositoryReferences_EditorComponent" />
        </node>
        <node concept="l2Vlx" id="5jZDGTfVzNH" role="2iSdaV" />
        <node concept="2SqB2G" id="5jZDGTfV$b6" role="2SqHTX">
          <property role="TrG5h" value="requiresBlockCellId" />
        </node>
        <node concept="pkWqt" id="5jZDGTfV$dp" role="pqm2j">
          <node concept="3clFbS" id="5jZDGTfV$dq" role="2VODD2">
            <node concept="3clFbF" id="5jZDGTfV$kc" role="3cqZAp">
              <node concept="2OqwBi" id="5jZDGTfV$D3" role="3clFbG">
                <node concept="pncrf" id="5jZDGTfV$kb" role="2Oq$k0" />
                <node concept="3TrcHB" id="5jZDGTfV$Wb" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p44qYN">
    <property role="3GE5qa" value="eventContainer" />
    <ref role="1XX52x" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
    <node concept="3EZMnI" id="7fqk8p44qYP" role="2wV5jI">
      <node concept="3F0ifn" id="7fqk8p44qZ9" role="3EZMnx">
        <property role="3F0ifm" value="event" />
        <ref role="1k5W1q" node="3FBObrptC$k" resolve="ConnectingComponentKeywordStyle" />
        <node concept="A1WHu" id="5jZDGTdrzuu" role="3vIgyS">
          <ref role="A1WHt" node="5jZDGTdpmHG" resolve="EventContainerTypeTransformationMenu" />
        </node>
      </node>
      <node concept="3F0A7n" id="5jZDGTd5UQX" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:5jZDGTd5UEc" resolve="type" />
        <ref role="1k5W1q" node="3FBObrptC$k" resolve="ConnectingComponentKeywordStyle" />
        <node concept="VPxyj" id="5jZDGTd5URN" role="3F10Kt" />
        <node concept="A1WHu" id="5jZDGTdrzuw" role="3vIgyS">
          <ref role="A1WHt" node="5jZDGTdpmHG" resolve="EventContainerTypeTransformationMenu" />
        </node>
      </node>
      <node concept="PMmxH" id="5jZDGTdiCwI" role="3EZMnx">
        <ref role="PMmxG" node="2RbvdOLp5Ws" resolve="IComponentWithNamePlaceholder_EditorComponent" />
        <node concept="pkWqt" id="51Z40VxlbM6" role="pqm2j">
          <node concept="3clFbS" id="51Z40VxlbM7" role="2VODD2">
            <node concept="3clFbF" id="51Z40VxlbNv" role="3cqZAp">
              <node concept="2OqwBi" id="51Z40Vxlc8u" role="3clFbG">
                <node concept="pncrf" id="51Z40VxlbNu" role="2Oq$k0" />
                <node concept="2qgKlT" id="51Z40VxlcrT" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5jZDGTdmWlV" resolve="isEventHandler" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5jZDGTd5UR_" role="3EZMnx">
        <property role="3F0ifm" value="of" />
        <ref role="1k5W1q" node="3FBObrptC$k" resolve="ConnectingComponentKeywordStyle" />
      </node>
      <node concept="3F1sOY" id="5jZDGTej21K" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no aggregate&gt;" />
        <ref role="1NtTu8" to="3nll:1jrq3noTPfl" resolve="aggregateReference" />
        <ref role="1ERwB7" node="2RbvdOJsBs1" resolve="GenericNodeDeletionActionMap" />
        <node concept="1I8cUB" id="51Z40VxGjZG" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
      </node>
      <node concept="3F0ifn" id="5jZDGTeA1Xo" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPxyj" id="5jZDGTf3zg8" role="3F10Kt" />
        <node concept="11L4FC" id="5jZDGTf5DB9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="34QqEe" id="5jZDGTf5DBg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="5jZDGTeA1ZU" role="3vIgyS">
          <ref role="A1WHt" node="5jZDGTimaP9" resolve="IComponentWithRepositoryReferences_RequiresTransformationMenu" />
        </node>
        <node concept="2SqB2G" id="5jZDGTeA1ZW" role="2SqHTX">
          <property role="TrG5h" value="placeholderSpacerCellId" />
        </node>
      </node>
      <node concept="3EZMnI" id="5jZDGTdvNao" role="3EZMnx">
        <ref role="1ERwB7" node="5jZDGTdvP4i" resolve="EventContainerRequiresDeletionActionMap" />
        <node concept="VPM3Z" id="5jZDGTdvNaq" role="3F10Kt" />
        <node concept="3F0ifn" id="5jZDGTdvNaO" role="3EZMnx">
          <property role="3F0ifm" value="requires" />
          <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
          <node concept="11L4FC" id="5jZDGTeVaFU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="5jZDGTdvNaU" role="3EZMnx">
          <ref role="PMmxG" node="5jZDGTilOg4" resolve="IComponentWithRepositoryReferences_EditorComponent" />
        </node>
        <node concept="l2Vlx" id="5jZDGTdvNat" role="2iSdaV" />
        <node concept="pkWqt" id="5jZDGTdvNaY" role="pqm2j">
          <node concept="3clFbS" id="5jZDGTdvNaZ" role="2VODD2">
            <node concept="3clFbF" id="5jZDGTdvNgu" role="3cqZAp">
              <node concept="2OqwBi" id="5jZDGTdvNzx" role="3clFbG">
                <node concept="pncrf" id="5jZDGTdvNgt" role="2Oq$k0" />
                <node concept="3TrcHB" id="5jZDGTdvNNp" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="5jZDGTdvNQx" role="2SqHTX">
          <property role="TrG5h" value="requiresBlockCellId" />
        </node>
      </node>
      <node concept="3F0ifn" id="7fqk8p44qZR" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="1TPnUlh3mbS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="5jZDGTeQXDy" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="5jZDGTeT3Fw" role="3n$kyP">
            <node concept="3clFbS" id="5jZDGTeT3Fx" role="2VODD2">
              <node concept="3clFbF" id="5jZDGTeT3HV" role="3cqZAp">
                <node concept="3fqX7Q" id="5jZDGTeT4m3" role="3clFbG">
                  <node concept="2OqwBi" id="5jZDGTeT4m5" role="3fr31v">
                    <node concept="pncrf" id="5jZDGTeT4m6" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5jZDGTeT4m7" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="7fqk8p44r0w" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="3nll:7fqk8p44qYy" resolve="components" />
        <node concept="2iRkQZ" id="7fqk8p44r0A" role="2czzBx" />
        <node concept="2w$q5c" id="7mYw4uW6tp2" role="78xua" />
        <node concept="lj46D" id="1TPnUlh3mci" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1TPnUlh3mcn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7fqk8p44r0R" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
      <node concept="l2Vlx" id="1TPnUlh3mbs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p47V6A">
    <property role="3GE5qa" value="aggregateRepository" />
    <ref role="1XX52x" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
    <node concept="3EZMnI" id="5$vsibPwe1w" role="2wV5jI">
      <node concept="VPM3Z" id="5$vsibPwe1y" role="3F10Kt" />
      <node concept="3F0ifn" id="5$vsibPwe1$" role="3EZMnx">
        <property role="3F0ifm" value="id" />
        <ref role="1ERwB7" node="oGImgOu8EK" resolve="AggregateIdRepositoryActionMap" />
        <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
        <node concept="2SqB2G" id="5$vsibPwlsV" role="2SqHTX">
          <property role="TrG5h" value="idKeyword" />
        </node>
        <node concept="pkWqt" id="5$vsibPwlsY" role="pqm2j">
          <node concept="3clFbS" id="5$vsibPwlsZ" role="2VODD2">
            <node concept="3clFbF" id="5$vsibPwluJ" role="3cqZAp">
              <node concept="2OqwBi" id="5$vsibPwlLM" role="3clFbG">
                <node concept="pncrf" id="5$vsibPwluI" role="2Oq$k0" />
                <node concept="3TrcHB" id="5$vsibPwm62" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5$vsibPwe4J" role="3EZMnx">
        <property role="3F0ifm" value="aggregate repository" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
        <node concept="A1WHu" id="5$vsibPwlsS" role="3vIgyS">
          <ref role="A1WHt" node="oGImgOt8yB" resolve="AggregateRootRepositoryKeywordTranformationMenu" />
        </node>
      </node>
      <node concept="PMmxH" id="2RbvdOMmUgO" role="3EZMnx">
        <ref role="PMmxG" node="2RbvdOLp5Ws" resolve="IComponentWithNamePlaceholder_EditorComponent" />
      </node>
      <node concept="3F0ifn" id="5$vsibPwe51" role="3EZMnx">
        <property role="3F0ifm" value="of" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
      </node>
      <node concept="3F1sOY" id="5$vsibPwkrt" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:5SyewC9Zz9D" resolve="aggregateReference" />
        <ref role="1ERwB7" node="2RbvdOJsBs1" resolve="GenericNodeDeletionActionMap" />
      </node>
      <node concept="3F0ifn" id="5$vsibPwkxt" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="5$vsibPwk$w" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5$vsibPwkNC" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:awtshkx0ix" resolve="components" />
        <node concept="2iRkQZ" id="5$vsibPwkQH" role="2czzBx" />
        <node concept="lj46D" id="5$vsibPwkQK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="5$vsibPwkQP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5$vsibPwlip" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
      <node concept="l2Vlx" id="5$vsibPwe1_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p4ayjq">
    <property role="3GE5qa" value="import" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5Jzz" resolve="ImportPackage" />
    <node concept="3F0A7n" id="7fqk8p4ayjy" role="2wV5jI">
      <property role="1$x2rV" value="&lt;package&gt;" />
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="7fqk8p4cfUQ">
    <property role="3GE5qa" value="dto" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    <node concept="3EZMnI" id="oGImgO_n_Z" role="2wV5jI">
      <node concept="l2Vlx" id="oGImgO_nA0" role="2iSdaV" />
      <node concept="3F0ifn" id="oGImgO_nA5" role="3EZMnx">
        <property role="3F0ifm" value="dto" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F0A7n" id="oGImgO_nAb" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="oGImgO_nAj" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="5SyewCboVBP" resolve="LeftBraceAfterName" />
        <node concept="ljvvj" id="oGImgO_nAo" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="3FBObroITzR" role="3n$kyP">
            <node concept="3clFbS" id="3FBObroITzS" role="2VODD2">
              <node concept="3clFbF" id="3FBObroIT_J" role="3cqZAp">
                <node concept="2OqwBi" id="3FBObroITTG" role="3clFbG">
                  <node concept="pncrf" id="3FBObroIT_I" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3FBObroIUbc" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3FBObroITyc" role="3EZMnx">
        <ref role="PMmxG" node="3FBObrouWaz" resolve="IComponentWithParametersParameterLayout" />
      </node>
      <node concept="3F0ifn" id="oGImgO_nB6" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
        <node concept="A1WHu" id="oGImgOAKbG" role="3vIgyS">
          <ref role="A1WHt" node="oGImgOAtOr" resolve="DtoBodyCreation_TransformationMenu" />
        </node>
        <node concept="2SqB2G" id="3NXs7yptOJO" role="2SqHTX">
          <property role="TrG5h" value="constructorRightBraceCellId" />
        </node>
        <node concept="ljvvj" id="E4RYE9VbyC" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9VbyE" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9VbyF" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9Vb_D" role="3cqZAp">
                <node concept="1Wc70l" id="E4RYE9Vglz" role="3clFbG">
                  <node concept="2OqwBi" id="E4RYE9VgN4" role="3uHU7w">
                    <node concept="pncrf" id="E4RYE9VgMe" role="2Oq$k0" />
                    <node concept="3TrcHB" id="E4RYEaUoM8" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3NXs7ypj_ap" resolve="showDerivedFromBlock" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="E4RYE9VdNA" role="3uHU7B">
                    <node concept="2OqwBi" id="E4RYE9VbAc" role="2Oq$k0">
                      <node concept="pncrf" id="E4RYE9Vb_C" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="E4RYE9VbBw" role="2OqNvi">
                        <ref role="3TtcxE" to="3nll:oGImgOv72Q" resolve="components" />
                      </node>
                    </node>
                    <node concept="1v1jN8" id="E4RYE9VgKI" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="oGImgO_nBy" role="3EZMnx">
        <node concept="VPM3Z" id="oGImgO_nB$" role="3F10Kt" />
        <node concept="3F0ifn" id="oGImgO_nBT" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <ref role="1ERwB7" node="oGImgOAKbI" resolve="DtoBodyDeletion_ActionMap" />
          <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
          <node concept="ljvvj" id="oGImgO_nBW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="oGImgO_nC2" role="3EZMnx">
          <ref role="1NtTu8" to="3nll:oGImgOv72Q" resolve="components" />
          <node concept="2iRkQZ" id="oGImgO_nC9" role="2czzBx" />
          <node concept="lj46D" id="oGImgO_nCc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="oGImgO_nCh" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2SqB2G" id="3FBObrpmACK" role="2SqHTX">
            <property role="TrG5h" value="objectBody" />
          </node>
        </node>
        <node concept="3F0ifn" id="oGImgO_nCt" role="3EZMnx">
          <property role="3F0ifm" value="}" />
          <ref role="1ERwB7" node="oGImgOAKbI" resolve="DtoBodyDeletion_ActionMap" />
          <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        </node>
        <node concept="l2Vlx" id="oGImgO_nBB" role="2iSdaV" />
        <node concept="pkWqt" id="oGImgO_nCA" role="pqm2j">
          <node concept="3clFbS" id="oGImgO_nCB" role="2VODD2">
            <node concept="3clFbF" id="oGImgO_nHZ" role="3cqZAp">
              <node concept="2OqwBi" id="oGImgO_q5U" role="3clFbG">
                <node concept="2OqwBi" id="oGImgO_o08" role="2Oq$k0">
                  <node concept="pncrf" id="oGImgO_nHY" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="oGImgO_oeo" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgOv72Q" resolve="components" />
                  </node>
                </node>
                <node concept="3GX2aA" id="oGImgO_rwu" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3NXs7yqC45s" role="3EZMnx">
        <ref role="PMmxG" node="3NXs7yqC3ez" resolve="Dto_DerivationLayout_EditorComponent" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="awtshkmllH">
    <property role="3GE5qa" value="commandContainer" />
    <ref role="1XX52x" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="3EZMnI" id="awtshkmllM" role="2wV5jI">
      <node concept="3F0ifn" id="6Qa18YGLPsb" role="3EZMnx">
        <property role="3F0ifm" value="command" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
        <node concept="A1WHu" id="5A5sGrodX1E" role="3vIgyS">
          <ref role="A1WHt" node="2Bsub$L1YA2" resolve="CommandContainerCommandContainerTypeTransformationMenu" />
        </node>
      </node>
      <node concept="3F0A7n" id="6Qa18YGLPxF" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:1LTEHzOdBW" resolve="type" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
        <node concept="2SqB2G" id="6Qa18YGLSVu" role="2SqHTX">
          <property role="TrG5h" value="containerTypeCellId" />
        </node>
        <node concept="VPxyj" id="5A5sGrodWbO" role="3F10Kt" />
        <node concept="A1WHu" id="5A5sGrodYgh" role="3vIgyS">
          <ref role="A1WHt" node="51Z40VwF_vl" resolve="CommandContainer_RequiresAndForAggregate_TransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="51Z40VyirCO" role="3EZMnx">
        <node concept="VPM3Z" id="51Z40VyirCQ" role="3F10Kt" />
        <node concept="3F1sOY" id="51Z40VxQVJ6" role="3EZMnx">
          <ref role="1NtTu8" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
          <ref role="1ERwB7" node="2RbvdOL$9vq" resolve="IOptionalValidIdentifierWrapper_IComponentWithPlaceholderNameDeletionActions" />
          <node concept="1I8cUB" id="51Z40VzhV8P" role="3F10Kt">
            <property role="Vb096" value="fLwANPn/red" />
          </node>
        </node>
        <node concept="3F0ifn" id="51Z40Vyis42" role="3EZMnx">
          <property role="3F0ifm" value=" " />
          <node concept="11L4FC" id="51Z40Vyis94" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="A1WHu" id="51Z40VyisGH" role="3vIgyS">
            <ref role="A1WHt" node="51Z40VwF_vl" resolve="CommandContainer_RequiresAndForAggregate_TransformationMenu" />
          </node>
        </node>
        <node concept="l2Vlx" id="51Z40VyirCT" role="2iSdaV" />
        <node concept="2SqB2G" id="51Z40Vyis5q" role="2SqHTX">
          <property role="TrG5h" value="nameWrapperCellId" />
        </node>
        <node concept="pkWqt" id="51Z40Vyiseb" role="pqm2j">
          <node concept="3clFbS" id="51Z40Vyisec" role="2VODD2">
            <node concept="3clFbF" id="51Z40VxoIMO" role="3cqZAp">
              <node concept="1Wc70l" id="51Z40VxscRU" role="3clFbG">
                <node concept="3fqX7Q" id="51Z40VxXT17" role="3uHU7w">
                  <node concept="2OqwBi" id="51Z40VxXT19" role="3fr31v">
                    <node concept="pncrf" id="51Z40VxXT1a" role="2Oq$k0" />
                    <node concept="3TrcHB" id="51Z40VxXT1b" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="51Z40Vxsc5e" role="3uHU7B">
                  <node concept="pncrf" id="51Z40VxsbIt" role="2Oq$k0" />
                  <node concept="2qgKlT" id="51Z40VxscrT" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:1LTEHzOfCt" resolve="isCommandHandler" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="51Z40VxoIEV" role="3EZMnx">
        <ref role="PMmxG" node="2RbvdOLp5Ws" resolve="IComponentWithNamePlaceholder_EditorComponent" />
        <node concept="A1WHu" id="51Z40VxoIHR" role="3vIgyS">
          <ref role="A1WHt" node="51Z40VwF_vl" resolve="CommandContainer_RequiresAndForAggregate_TransformationMenu" />
        </node>
        <node concept="pkWqt" id="51Z40VxoMbi" role="pqm2j">
          <node concept="3clFbS" id="51Z40VxoMbj" role="2VODD2">
            <node concept="3clFbF" id="51Z40VxoMcF" role="3cqZAp">
              <node concept="1Wc70l" id="51Z40VxoMiX" role="3clFbG">
                <node concept="2OqwBi" id="51Z40VxoMl$" role="3uHU7w">
                  <node concept="pncrf" id="51Z40VxoMkJ" role="2Oq$k0" />
                  <node concept="3TrcHB" id="51Z40VxXSRz" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                  </node>
                </node>
                <node concept="2OqwBi" id="51Z40VxoMfV" role="3uHU7B">
                  <node concept="pncrf" id="51Z40VxoMcE" role="2Oq$k0" />
                  <node concept="2qgKlT" id="51Z40VxoMhf" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:1LTEHzOfCt" resolve="isCommandHandler" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="51Z40VwFzSM" role="3EZMnx">
        <ref role="1ERwB7" node="51Z40VwJ5to" resolve="CommandContainerOfAggregateDeletion_ActionMap" />
        <node concept="VPM3Z" id="51Z40VwFzSO" role="3F10Kt" />
        <node concept="3F0ifn" id="51Z40VwFzUW" role="3EZMnx">
          <property role="3F0ifm" value="of" />
          <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
        </node>
        <node concept="3F1sOY" id="51Z40VwFzV2" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no aggregate&gt;" />
          <ref role="1NtTu8" to="3nll:7x9oRL8vqaW" resolve="aggregateReference" />
          <node concept="1I8cUB" id="3PtG$LHHG1Q" role="3F10Kt">
            <property role="Vb096" value="fLwANPn/red" />
          </node>
        </node>
        <node concept="l2Vlx" id="51Z40VwFzSR" role="2iSdaV" />
        <node concept="pkWqt" id="51Z40VwF$8_" role="pqm2j">
          <node concept="3clFbS" id="51Z40VwF$8A" role="2VODD2">
            <node concept="3clFbF" id="51Z40VwF$9X" role="3cqZAp">
              <node concept="2OqwBi" id="51Z40VwF$vQ" role="3clFbG">
                <node concept="pncrf" id="51Z40VwF$9W" role="2Oq$k0" />
                <node concept="3TrcHB" id="51Z40VwF$Th" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="51Z40VwF_aU" role="2SqHTX">
          <property role="TrG5h" value="forAggregateBlockId" />
        </node>
        <node concept="A1WHu" id="51Z40VwFETD" role="3vIgyS">
          <ref role="A1WHt" node="51Z40VwF_vl" resolve="CommandContainer_RequiresAndForAggregate_TransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="1TPnUlhMNdd" role="3EZMnx">
        <ref role="1ERwB7" node="4REBMIteYUX" resolve="CommandContainerRequiresKeywordDeletionMap" />
        <node concept="3F0ifn" id="1WhJCpUKDm9" role="3EZMnx">
          <property role="3F0ifm" value="requires" />
          <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
          <node concept="11L4FC" id="51Z40VypmHW" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="51Z40VysJCT" role="3n$kyP">
              <node concept="3clFbS" id="51Z40VysJCU" role="2VODD2">
                <node concept="3clFbF" id="51Z40VysJG4" role="3cqZAp">
                  <node concept="1Wc70l" id="51Z40Vz7BQd" role="3clFbG">
                    <node concept="3fqX7Q" id="51Z40VysK_Y" role="3uHU7B">
                      <node concept="2OqwBi" id="51Z40VysKA0" role="3fr31v">
                        <node concept="pncrf" id="51Z40VysKA1" role="2Oq$k0" />
                        <node concept="3TrcHB" id="51Z40VysKA2" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="51Z40Vz7BJy" role="3uHU7w">
                      <node concept="pncrf" id="51Z40Vz7Bxn" role="2Oq$k0" />
                      <node concept="2qgKlT" id="51Z40Vz7BM1" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:1LTEHzOfCt" resolve="isCommandHandler" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="PMmxH" id="4REBMItUa4J" role="3EZMnx">
          <ref role="PMmxG" node="5jZDGTilOg4" resolve="IComponentWithRepositoryReferences_EditorComponent" />
        </node>
        <node concept="l2Vlx" id="1TPnUlhMNdi" role="2iSdaV" />
        <node concept="pkWqt" id="4REBMItf4Lb" role="pqm2j">
          <node concept="3clFbS" id="4REBMItf4Lc" role="2VODD2">
            <node concept="3clFbF" id="4REBMItf4N8" role="3cqZAp">
              <node concept="2OqwBi" id="4REBMItf56b" role="3clFbG">
                <node concept="pncrf" id="4REBMItf4N7" role="2Oq$k0" />
                <node concept="3TrcHB" id="4REBMItf5m3" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="4REBMItiAun" role="2SqHTX">
          <property role="TrG5h" value="requiresBlockCellId" />
        </node>
      </node>
      <node concept="3F0ifn" id="awtshkmlmv" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="1TPnUlgVZZC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="awtshkmlUk" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="3nll:awtshkmllE" resolve="components" />
        <node concept="2iRkQZ" id="awtshkmlUq" role="2czzBx" />
        <node concept="lj46D" id="1TPnUlgW01R" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1TPnUlgW01W" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="awtshkmlmV" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
      <node concept="l2Vlx" id="1TPnUlgVZHO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="awtshkoUuu">
    <property role="3GE5qa" value="import" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
    <node concept="3EZMnI" id="5SyewCbB1fi" role="2wV5jI">
      <node concept="1iCGBv" id="awtshkoUuw" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:4Wa3rAG5JzK" resolve="importStatement" />
        <node concept="1sVBvm" id="awtshkoUuy" role="1sWHZn">
          <node concept="3F0A7n" id="awtshkoUuG" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VPxyj" id="6ci4EViVRFs" role="3F10Kt" />
          </node>
        </node>
        <node concept="A1WHu" id="4afTDVEbAPt" role="3vIgyS">
          <ref role="A1WHt" node="4afTDVEbsts" resolve="ImportStatementReferenceCreateTypeArgumentsTransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="5SyewCbB1fx" role="3EZMnx">
        <node concept="VPM3Z" id="5SyewCbB1fz" role="3F10Kt" />
        <node concept="3F0ifn" id="5SyewCbB1fJ" role="3EZMnx">
          <property role="3F0ifm" value="&lt;" />
          <ref role="1k5W1q" node="hY9fg1G" resolve="LeftAngleBracketAfterName" />
        </node>
        <node concept="3F2HdR" id="5SyewCbB1fX" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
          <node concept="l2Vlx" id="5SyewCbB1fZ" role="2czzBx" />
          <node concept="2SqB2G" id="3FBObrnUETT" role="2SqHTX">
            <property role="TrG5h" value="typeVariableList" />
          </node>
        </node>
        <node concept="3F0ifn" id="5SyewCbB1fP" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <ref role="1k5W1q" node="5SyewCbjRsl" resolve="RightAngleBracket" />
        </node>
        <node concept="l2Vlx" id="5SyewCbB1fA" role="2iSdaV" />
        <node concept="pkWqt" id="5SyewCbCiT4" role="pqm2j">
          <node concept="3clFbS" id="5SyewCbCiT5" role="2VODD2">
            <node concept="3clFbF" id="5SyewCbCiYV" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCbCmHV" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCbCjfg" role="2Oq$k0">
                  <node concept="pncrf" id="5SyewCbCiYU" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3FBObrq90mL" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                  </node>
                </node>
                <node concept="3GX2aA" id="5SyewCbCoR4" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5SyewCbB1fl" role="2iSdaV" />
    </node>
  </node>
  <node concept="2ABfQD" id="awtshkJnSX">
    <property role="TrG5h" value="EmptyLineHints" />
    <property role="3GE5qa" value="hints" />
    <node concept="2BsEeg" id="awtshkJnSY" role="2ABdcP">
      <property role="TrG5h" value="1_bounded_context" />
      <property role="2gpH_U" value="true" />
      <property role="2BUmq6" value="Bounded Context Hint" />
    </node>
    <node concept="2BsEeg" id="awtshkKXqZ" role="2ABdcP">
      <property role="TrG5h" value="1_aggregate_root" />
      <property role="2gpH_U" value="true" />
      <property role="2BUmq6" value="Aggregate Root Hint" />
    </node>
    <node concept="2BsEeg" id="awtshkUBc2" role="2ABdcP">
      <property role="TrG5h" value="1_entity" />
      <property role="2gpH_U" value="true" />
      <property role="2BUmq6" value="Entity Hint" />
    </node>
    <node concept="2BsEeg" id="7mYw4uW6toU" role="2ABdcP">
      <property role="TrG5h" value="1_event_container" />
      <property role="2gpH_U" value="true" />
      <property role="2BUmq6" value="Event Container Hint" />
    </node>
  </node>
  <node concept="24kQdi" id="3DbZR$O1U0l">
    <property role="3GE5qa" value="queryContainer" />
    <ref role="1XX52x" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    <node concept="3EZMnI" id="oGImgN1r$j" role="2wV5jI">
      <node concept="l2Vlx" id="1TPnUlgZE0h" role="2iSdaV" />
      <node concept="3F0ifn" id="1LTEHzcrVo" role="3EZMnx">
        <property role="3F0ifm" value="query" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
        <node concept="A1WHu" id="1LTEH$EhgV" role="3vIgyS">
          <ref role="A1WHt" node="6gxxZVsbcF1" resolve="QueryContainerQueryKeywordTransformationMenu" />
        </node>
      </node>
      <node concept="3F0A7n" id="2RbvdOKATLn" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:1WhJCpUOLrJ" resolve="type" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
        <node concept="VPxyj" id="2RbvdOKCUuW" role="3F10Kt" />
      </node>
      <node concept="PMmxH" id="2RbvdOLKnAO" role="3EZMnx">
        <ref role="PMmxG" node="2RbvdOLp5Ws" resolve="IComponentWithNamePlaceholder_EditorComponent" />
        <node concept="A1WHu" id="2RbvdOLKo5e" role="3vIgyS">
          <ref role="A1WHt" node="5jZDGTimaP9" resolve="IComponentWithRepositoryReferences_RequiresTransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="6gxxZVsboXx" role="3EZMnx">
        <ref role="1ERwB7" node="6gxxZVsbpRf" resolve="QueryContainerRequiresDeletionActionMap" />
        <node concept="3F0ifn" id="1LTEHyVw7j" role="3EZMnx">
          <property role="3F0ifm" value="requires" />
          <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
        </node>
        <node concept="VPM3Z" id="6gxxZVsboXz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="PMmxH" id="6gxxZVrP6md" role="3EZMnx">
          <ref role="PMmxG" node="5jZDGTilOg4" resolve="IComponentWithRepositoryReferences_EditorComponent" />
        </node>
        <node concept="l2Vlx" id="6gxxZVsboXA" role="2iSdaV" />
        <node concept="2SqB2G" id="6gxxZVsbprY" role="2SqHTX">
          <property role="TrG5h" value="requiresBlockCellId" />
        </node>
        <node concept="pkWqt" id="6gxxZVsbpCJ" role="pqm2j">
          <node concept="3clFbS" id="6gxxZVsbpCK" role="2VODD2">
            <node concept="3clFbF" id="6gxxZVsbpCO" role="3cqZAp">
              <node concept="2OqwBi" id="6gxxZVs7YVD" role="3clFbG">
                <node concept="pncrf" id="6gxxZVs7YUr" role="2Oq$k0" />
                <node concept="3TrcHB" id="6gxxZVs7YY4" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="oGImgN1r$S" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="1TPnUlgZE0B" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="oGImgN1rA3" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:3DbZR$O1U0g" resolve="components" />
        <node concept="2iRkQZ" id="oGImgN1rA9" role="2czzBx" />
        <node concept="lj46D" id="1TPnUlgZE14" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1TPnUlgZE19" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="oGImgN1r$Z" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3DbZR$O2F_W">
    <property role="3GE5qa" value="query" />
    <ref role="1XX52x" to="3nll:7fqk8p43yh4" resolve="Query" />
    <node concept="3EZMnI" id="2Bsub$Lr4sl" role="2wV5jI">
      <node concept="l2Vlx" id="2Bsub$Lr4sm" role="2iSdaV" />
      <node concept="3F0ifn" id="2Bsub$Lr4tp" role="3EZMnx">
        <property role="3F0ifm" value="query" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
        <node concept="pkWqt" id="2Bsub$LyORu" role="pqm2j">
          <node concept="3clFbS" id="2Bsub$LyORv" role="2VODD2">
            <node concept="3clFbF" id="2Bsub$LyOXB" role="3cqZAp">
              <node concept="22lmx$" id="1WhJCpV3L_$" role="3clFbG">
                <node concept="2OqwBi" id="1WhJCpV3LTN" role="3uHU7w">
                  <node concept="pncrf" id="1WhJCpV3LAT" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1WhJCpV3MdO" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTfXOm3" resolve="shouldShowKeyword" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="2Bsub$L$nfV" role="3uHU7B">
                  <node concept="2OqwBi" id="2Bsub$L$nfX" role="3fr31v">
                    <node concept="pncrf" id="2Bsub$L$nfY" role="2Oq$k0" />
                    <node concept="2qgKlT" id="2Bsub$L$nfZ" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:2Bsub$Lr4Li" resolve="isInsideQueryContainer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="6gxxZVsRSRW" role="2SqHTX">
          <property role="TrG5h" value="queryKeywordCellId" />
        </node>
      </node>
      <node concept="3F0A7n" id="2Bsub$Lr4sp" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2Bsub$Lr4su" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="5SyewCboVBP" resolve="LeftBraceAfterName" />
        <node concept="ljvvj" id="2Bsub$LsBtc" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="2Bsub$LsBte" role="3n$kyP">
            <node concept="3clFbS" id="2Bsub$LsBtf" role="2VODD2">
              <node concept="3clFbF" id="2Bsub$LsBuZ" role="3cqZAp">
                <node concept="2OqwBi" id="2Bsub$LsBNY" role="3clFbG">
                  <node concept="pncrf" id="2Bsub$LsBuY" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2Bsub$LsC7p" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="2Bsub$Lr4sA" role="3EZMnx">
        <ref role="PMmxG" node="3FBObrouWaz" resolve="IComponentWithParametersParameterLayout" />
      </node>
      <node concept="3F0ifn" id="2Bsub$Lr4sJ" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
      </node>
      <node concept="3F0ifn" id="5jZDGTharB1" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="2Bsub$Lr4t9" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:3DbZR$O2F_T" resolve="returnType" />
      </node>
      <node concept="3F0ifn" id="1LTEHyNQwk" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <ref role="1k5W1q" node="5SyewCbjRsl" resolve="RightAngleBracket" />
        <node concept="A1WHu" id="1LTEHzg4Hm" role="3vIgyS">
          <ref role="A1WHt" node="5jZDGTimaP9" resolve="IComponentWithRepositoryReferences_RequiresTransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="6gxxZVszs0_" role="3EZMnx">
        <ref role="1ERwB7" node="6gxxZVsRN9q" resolve="QueryRequiredDtoRepositoriesDeletionActionMap" />
        <node concept="VPM3Z" id="6gxxZVszs0B" role="3F10Kt" />
        <node concept="3F0ifn" id="6gxxZVszs2X" role="3EZMnx">
          <property role="3F0ifm" value="requires" />
          <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
          <node concept="34QqEe" id="5jZDGThh5wq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11L4FC" id="5jZDGThh5wv" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="6gxxZVszs33" role="3EZMnx">
          <ref role="PMmxG" node="5jZDGTilOg4" resolve="IComponentWithRepositoryReferences_EditorComponent" />
        </node>
        <node concept="l2Vlx" id="6gxxZVszs0E" role="2iSdaV" />
        <node concept="pkWqt" id="6gxxZVsE0sh" role="pqm2j">
          <node concept="3clFbS" id="6gxxZVsE0si" role="2VODD2">
            <node concept="3clFbF" id="1LTEHzhZeW" role="3cqZAp">
              <node concept="2OqwBi" id="1LTEHzhZeY" role="3clFbG">
                <node concept="pncrf" id="1LTEHzhZeZ" role="2Oq$k0" />
                <node concept="3TrcHB" id="1LTEHzhZf0" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="6gxxZVsRMJ8" role="2SqHTX">
          <property role="TrG5h" value="requiresBlockCellId" />
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="3DbZR$OhTOz">
    <property role="3GE5qa" value="entity" />
    <ref role="aqKnT" to="3nll:7fqk8p3VKtM" resolve="IEntityComponent" />
    <node concept="22hDWj" id="3DbZR$OhTO$" role="22hAXT" />
    <node concept="2VfDsV" id="3DbZR$OhTOA" role="3ft7WO" />
    <node concept="3VyMlK" id="oGImgNhk18" role="3ft7WO" />
    <node concept="1s_PAr" id="5SyewCbxUAp" role="3ft7WO">
      <node concept="2kknPI" id="5SyewCbxUD3" role="1s_PAo">
        <ref role="2kkw0f" node="5SyewCbwAOA" resolve="MethodCreationKeywordsSubstiudeMenu" />
      </node>
    </node>
    <node concept="3VyMlK" id="5SyewCbzcuh" role="3ft7WO" />
    <node concept="1s_PAr" id="5SyewCbzcQk" role="3ft7WO">
      <node concept="2kknPI" id="5SyewCbzcQt" role="1s_PAo">
        <ref role="2kkw0f" node="5SyewCbzcwW" resolve="PropertyCreationKeywords_SubstitudeMenu" />
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="3DbZR$Oq0ix">
    <property role="3GE5qa" value="variable.property" />
    <ref role="aqKnT" to="3nll:7fqk8p3V6WN" resolve="Property" />
    <node concept="1Qtc8_" id="3DbZR$Oq0i_" role="IW6Ez">
      <node concept="IWgqT" id="3DbZR$Oq0iM" role="1Qtc8A">
        <node concept="1hCUdq" id="3DbZR$Oq0iO" role="1hCUd6">
          <node concept="3clFbS" id="3DbZR$Oq0iQ" role="2VODD2">
            <node concept="3clFbF" id="3DbZR$Oq0pC" role="3cqZAp">
              <node concept="Xl_RD" id="3DbZR$Oq0pB" role="3clFbG">
                <property role="Xl_RC" value="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3DbZR$Oq0iS" role="IWgqQ">
          <node concept="3clFbS" id="3DbZR$Oq0iU" role="2VODD2">
            <node concept="3clFbF" id="3DbZR$Oq0x4" role="3cqZAp">
              <node concept="37vLTI" id="3DbZR$Oq1oD" role="3clFbG">
                <node concept="3clFbT" id="3DbZR$Oq1tL" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="3DbZR$Oq0GM" role="37vLTJ">
                  <node concept="7Obwk" id="3DbZR$Oq0x3" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3DbZR$Oq0UP" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3DbZR$ObFWz" resolve="hasGetter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="4LpUh3UZ8E0" role="2jiSrf">
          <node concept="3clFbS" id="4LpUh3UZ8E1" role="2VODD2">
            <node concept="3clFbF" id="4LpUh3UZ8Op" role="3cqZAp">
              <node concept="3fqX7Q" id="4LpUh3UZ9r6" role="3clFbG">
                <node concept="2OqwBi" id="4LpUh3UZ9r8" role="3fr31v">
                  <node concept="7Obwk" id="4LpUh3UZ9r9" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4LpUh3UZ9ra" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3DbZR$ObFWz" resolve="hasGetter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="3DbZR$Oq0iD" role="1Qtc8$">
        <node concept="CtIbL" id="3DbZR$Oq0iF" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="3DbZR$OSBMG" role="22hAXT">
      <property role="TrG5h" value="PropertyGetter_TransformationMenu" />
    </node>
  </node>
  <node concept="24kQdi" id="3DbZR$PbQVY">
    <property role="3GE5qa" value="typing" />
    <ref role="1XX52x" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
    <node concept="1QoScp" id="1jrq3nolgcP" role="2wV5jI">
      <node concept="PMmxH" id="1jrq3nolgcQ" role="1QoVPY">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="VPRnO" id="1jrq3nolgcR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1xolST" id="1jrq3nolgcS" role="1QoS34">
        <property role="1xolSY" value="&lt;type&gt;" />
      </node>
      <node concept="pkWqt" id="1jrq3nolgcT" role="3e4ffs">
        <node concept="3clFbS" id="1jrq3nolgcU" role="2VODD2">
          <node concept="3cpWs6" id="1jrq3nolgcV" role="3cqZAp">
            <node concept="2OqwBi" id="1jrq3nolgcW" role="3cqZAk">
              <node concept="2OqwBi" id="1jrq3nolgcX" role="2Oq$k0">
                <node concept="2yIwOk" id="1jrq3nolgcY" role="2OqNvi" />
                <node concept="pncrf" id="1jrq3nolgcZ" role="2Oq$k0" />
              </node>
              <node concept="liA8E" id="1jrq3nolgO4" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="oGImgN0xAy">
    <property role="3GE5qa" value="method" />
    <ref role="aqKnT" to="3nll:7fqk8p3W55Y" resolve="Method" />
    <node concept="1Qtc8_" id="oGImgN0xA_" role="IW6Ez">
      <node concept="IWgqT" id="oGImgN0xAL" role="1Qtc8A">
        <node concept="1hCUdq" id="oGImgN0xAN" role="1hCUd6">
          <node concept="3clFbS" id="oGImgN0xAP" role="2VODD2">
            <node concept="3clFbF" id="oGImgN0xHE" role="3cqZAp">
              <node concept="Xl_RD" id="oGImgN0xHD" role="3clFbG">
                <property role="Xl_RC" value=":" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="oGImgN0xAR" role="IWgqQ">
          <node concept="3clFbS" id="oGImgN0xAT" role="2VODD2">
            <node concept="3clFbF" id="oGImgN0xJy" role="3cqZAp">
              <node concept="2OqwBi" id="oGImgN0ynw" role="3clFbG">
                <node concept="2OqwBi" id="oGImgN0xW$" role="2Oq$k0">
                  <node concept="7Obwk" id="oGImgN0xJx" role="2Oq$k0" />
                  <node concept="3TrEf2" id="oGImgN0ydR" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7fqk8p40d8l" resolve="returnTypeWrapper" />
                  </node>
                </node>
                <node concept="zfrQC" id="oGImgN0y_2" role="2OqNvi">
                  <ref role="1A9B2P" to="3nll:6ci4EVj$QUy" resolve="DataTypeWrapper" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="oGImgN$X33" role="2jiSrf">
          <node concept="3clFbS" id="oGImgN$X34" role="2VODD2">
            <node concept="3clFbF" id="oGImgN$XeD" role="3cqZAp">
              <node concept="2OqwBi" id="oGImgN$Y2b" role="3clFbG">
                <node concept="2OqwBi" id="oGImgN$Xzw" role="2Oq$k0">
                  <node concept="7Obwk" id="oGImgN$XeC" role="2Oq$k0" />
                  <node concept="3TrEf2" id="oGImgN$XQC" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7fqk8p40d8l" resolve="returnTypeWrapper" />
                  </node>
                </node>
                <node concept="3w_OXm" id="oGImgN$Yd8" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="oGImgN0xAD" role="1Qtc8$">
        <node concept="CtIbL" id="oGImgN0xAF" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="5SyewCaKTul" role="IW6Ez">
      <node concept="IWgqT" id="5SyewCaKTum" role="1Qtc8A">
        <node concept="1hCUdq" id="5SyewCaKTun" role="1hCUd6">
          <node concept="3clFbS" id="5SyewCaKTuo" role="2VODD2">
            <node concept="3clFbF" id="5SyewCaKTup" role="3cqZAp">
              <node concept="ub8z3" id="5SyewCaKTuq" role="3clFbG" />
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="5SyewCaKTur" role="IWgqQ">
          <node concept="3clFbS" id="5SyewCaKTus" role="2VODD2">
            <node concept="3cpWs8" id="SXYyTW0B2i" role="3cqZAp">
              <node concept="3cpWsn" id="SXYyTW0B2j" role="3cpWs9">
                <property role="TrG5h" value="parameter" />
                <node concept="3Tqbb2" id="SXYyTW0B2k" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                </node>
                <node concept="2ShNRf" id="SXYyTW0B2l" role="33vP2m">
                  <node concept="2fJWfE" id="SXYyTW0C2M" role="2ShVmc">
                    <node concept="3Tqbb2" id="SXYyTW0C2O" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SyewCaKTuz" role="3cqZAp">
              <node concept="2OqwBi" id="1bq_vIpOXNP" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCaKTuA" role="2Oq$k0">
                  <node concept="37vLTw" id="5SyewCaKTuB" role="2Oq$k0">
                    <ref role="3cqZAo" node="SXYyTW0B2j" resolve="parameter" />
                  </node>
                  <node concept="3TrcHB" id="5SyewCaKTuC" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="tyxLq" id="1bq_vIpOYEh" role="2OqNvi">
                  <node concept="ub8z3" id="1bq_vIpOYEn" role="tz02z" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SyewCaKTuD" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCaKTuE" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCaKTuF" role="2Oq$k0">
                  <node concept="7Obwk" id="5SyewCaKTuG" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5SyewCaKTuH" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                  </node>
                </node>
                <node concept="TSZUe" id="5SyewCaKTuI" role="2OqNvi">
                  <node concept="37vLTw" id="5SyewCaKTuJ" role="25WWJ7">
                    <ref role="3cqZAo" node="SXYyTW0B2j" resolve="parameter" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SyewCaKTuK" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCaKTuL" role="3clFbG">
                <node concept="37vLTw" id="5SyewCaKTuM" role="2Oq$k0">
                  <ref role="3cqZAo" node="SXYyTW0B2j" resolve="parameter" />
                </node>
                <node concept="1OKiuA" id="5SyewCaKTuN" role="2OqNvi">
                  <node concept="1Q80Hx" id="5SyewCaKTuO" role="lBI5i" />
                  <node concept="2TlHUq" id="SXYyTW0AMX" role="lGT1i">
                    <ref role="2TlMyj" node="5SyewCavt3d" resolve="parameterNameCellId" />
                  </node>
                  <node concept="3cmrfG" id="5SyewCaKTuQ" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="5SyewCaKTuS" role="2jiSrf">
          <node concept="3clFbS" id="5SyewCaKTuT" role="2VODD2">
            <node concept="3clFbF" id="5SyewCaKTuU" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCaKTuV" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCaKTuW" role="2Oq$k0">
                  <node concept="7Obwk" id="5SyewCaKTuX" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5SyewCaKTuY" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                  </node>
                </node>
                <node concept="1v1jN8" id="5SyewCaKTuZ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="5SyewCaKTv0" role="1Qtc8$">
        <node concept="CtIbL" id="5SyewCaKTv1" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="oGImgN0xAz" role="22hAXT">
      <property role="TrG5h" value="MethodClosingBracesTransformationMenu" />
    </node>
  </node>
  <node concept="3ICUPy" id="oGImgN3hTb">
    <property role="3GE5qa" value="valueObjects" />
    <ref role="aqKnT" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
    <node concept="1Qtc8_" id="oGImgN3hTe" role="IW6Ez">
      <node concept="1GhOrh" id="4LpUh3UjoCO" role="1Qtc8A">
        <node concept="1GhMSn" id="4LpUh3UjoCQ" role="1GhOrs">
          <node concept="3clFbS" id="4LpUh3UjoCS" role="2VODD2">
            <node concept="3clFbF" id="4LpUh3UjoU0" role="3cqZAp">
              <node concept="2ShNRf" id="4LpUh3UjoTY" role="3clFbG">
                <node concept="Tc6Ow" id="4LpUh3UjpUG" role="2ShVmc">
                  <node concept="17QB3L" id="4LpUh3Ujr2u" role="HW$YZ" />
                  <node concept="Xl_RD" id="4LpUh3UjrYu" role="HW$Y0">
                    <property role="Xl_RC" value="{" />
                  </node>
                  <node concept="Xl_RD" id="4LpUh3Ujs2y" role="HW$Y0">
                    <property role="Xl_RC" value="}" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4LpUh3Ujs6J" role="1GhOri">
          <node concept="1hCUdq" id="4LpUh3Ujs6L" role="1hCUd6">
            <node concept="3clFbS" id="4LpUh3Ujs6N" role="2VODD2">
              <node concept="3clFbF" id="4LpUh3Ujsh0" role="3cqZAp">
                <node concept="2ZBlsa" id="4LpUh3UjsgZ" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4LpUh3Ujs6P" role="IWgqQ">
            <node concept="3clFbS" id="4LpUh3Ujs6R" role="2VODD2">
              <node concept="3clFbF" id="4LpUh3UjsN2" role="3cqZAp">
                <node concept="2OqwBi" id="4LpUh3UjsN3" role="3clFbG">
                  <node concept="2OqwBi" id="4LpUh3UjsN4" role="2Oq$k0">
                    <node concept="7Obwk" id="4LpUh3UjsN5" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4LpUh3UjsN6" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgN2kvl" resolve="components" />
                    </node>
                  </node>
                  <node concept="WFELt" id="4LpUh3UjsN7" role="2OqNvi">
                    <ref role="1A0vxQ" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="4LpUh3UjsrX" role="2jiSrf">
            <node concept="3clFbS" id="4LpUh3UjsrY" role="2VODD2">
              <node concept="3clFbF" id="4LpUh3Ujsxt" role="3cqZAp">
                <node concept="2OqwBi" id="4LpUh3Ujsxu" role="3clFbG">
                  <node concept="2OqwBi" id="4LpUh3Ujsxv" role="2Oq$k0">
                    <node concept="7Obwk" id="4LpUh3Ujsxw" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4LpUh3Ujsxx" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgN2kvl" resolve="components" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="4LpUh3Ujsxy" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="4LpUh3UjoOZ" role="2ZBHrp" />
      </node>
      <node concept="3cWJ9i" id="oGImgN3hTi" role="1Qtc8$">
        <node concept="CtIbL" id="oGImgN3hTk" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="oGImgN3hTc" role="22hAXT">
      <property role="TrG5h" value="ValueObjectBodyTransformationMenu" />
    </node>
  </node>
  <node concept="V5hpn" id="oGImgN63cA">
    <property role="3GE5qa" value="stylesheets" />
    <property role="TrG5h" value="BraceLabelStyleSheet" />
    <node concept="14StLt" id="oGImgN63d3" role="V601i">
      <property role="TrG5h" value="BodyBracesMatchingLabel" />
      <node concept="3mYdg7" id="oGImgN63d7" role="3F10Kt">
        <property role="1413C4" value="body-braces" />
      </node>
    </node>
    <node concept="14StLt" id="oGImgN63de" role="V601i">
      <property role="TrG5h" value="ConstructorBracesMatchingLabel" />
      <node concept="3mYdg7" id="oGImgN63dl" role="3F10Kt">
        <property role="1413C4" value="constructor-braces" />
      </node>
    </node>
    <node concept="14StLt" id="oGImgNYcUS" role="V601i">
      <property role="TrG5h" value="TypeBracesMatchingLabel" />
      <node concept="3mYdg7" id="oGImgNYcV1" role="3F10Kt">
        <property role="1413C4" value="type-braces" />
      </node>
    </node>
    <node concept="14StLt" id="oGImgNYcVc" role="V601i">
      <property role="TrG5h" value="MethodDeclarationBraces" />
      <node concept="3mYdg7" id="oGImgNYcVn" role="3F10Kt">
        <property role="1413C4" value="method-braces" />
      </node>
    </node>
    <node concept="14StLt" id="5SyewCbhjx0" role="V601i">
      <property role="TrG5h" value="CommaSeparator" />
      <node concept="34QqEe" id="75A9veqzBnl" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="Vb9p2" id="75A9veqzBnn" role="3F10Kt" />
      <node concept="11L4FC" id="5SyewCbhjxy" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="5SyewCbjRva" role="V601i">
      <property role="TrG5h" value="AngleBracket" />
      <node concept="3mYdg7" id="5SyewCbjRrR" role="3F10Kt">
        <property role="1413C4" value="angle-bracket" />
      </node>
      <node concept="34QqEe" id="5SyewCbjRsT" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="Vb9p2" id="5SyewCbjRsU" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
    <node concept="14StLt" id="5SyewCbjRsl" role="V601i">
      <property role="TrG5h" value="RightAngleBracket" />
      <node concept="3Xmtl4" id="5SyewCbjRw0" role="3F10Kt">
        <node concept="1wgc9g" id="5SyewCbjRw1" role="3XvnJa">
          <ref role="1wgcnl" node="5SyewCbjRva" resolve="AngleBracket" />
        </node>
      </node>
      <node concept="11L4FC" id="5SyewCbjRwb" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="5SyewCbjRr2" role="V601i">
      <property role="TrG5h" value="LeftAngleBracket" />
      <node concept="3Xmtl4" id="5SyewCbjRvQ" role="3F10Kt">
        <node concept="1wgc9g" id="5SyewCbjRvS" role="3XvnJa">
          <ref role="1wgcnl" node="5SyewCbjRva" resolve="AngleBracket" />
        </node>
      </node>
      <node concept="11LMrY" id="5SyewCbjRt9" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="hY9fg1G" role="V601i">
      <property role="TrG5h" value="LeftAngleBracketAfterName" />
      <node concept="3Xmtl4" id="3HPX3xRcPAH" role="3F10Kt">
        <node concept="1wgc9g" id="3HPX3xRcPAI" role="3XvnJa">
          <ref role="1wgcnl" node="5SyewCbjRr2" resolve="LeftAngleBracket" />
        </node>
      </node>
      <node concept="11L4FC" id="hY9fOTE" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="5SyewCboVxj" role="V601i">
      <property role="TrG5h" value="Brace" />
      <node concept="3mYdg7" id="5SyewCboVxT" role="3F10Kt">
        <property role="1413C4" value="brace" />
      </node>
      <node concept="34QqEe" id="5SyewCboVxU" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="Vb9p2" id="5SyewCboVxV" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="5SyewCboVA6" role="V601i">
      <property role="TrG5h" value="LeftBrace" />
      <node concept="3Xmtl4" id="5SyewCboVAM" role="3F10Kt">
        <node concept="1wgc9g" id="5SyewCboVAO" role="3XvnJa">
          <ref role="1wgcnl" node="5SyewCboVxj" resolve="Brace" />
        </node>
      </node>
      <node concept="11LMrY" id="5SyewCboVB3" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="5SyewCboVBP" role="V601i">
      <property role="TrG5h" value="LeftBraceAfterName" />
      <node concept="3Xmtl4" id="5SyewCboVC_" role="3F10Kt">
        <node concept="1wgc9g" id="5SyewCboVCB" role="3XvnJa">
          <ref role="1wgcnl" node="5SyewCboVA6" resolve="LeftBrace" />
        </node>
      </node>
      <node concept="11L4FC" id="5SyewCboVCJ" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="5SyewCboVD_" role="V601i">
      <property role="TrG5h" value="RightBrace" />
      <node concept="3Xmtl4" id="5SyewCboVEp" role="3F10Kt">
        <node concept="1wgc9g" id="5SyewCboVEr" role="3XvnJa">
          <ref role="1wgcnl" node="5SyewCboVxj" resolve="Brace" />
        </node>
      </node>
      <node concept="11L4FC" id="5SyewCboVEz" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="4REBMIum1yN" role="V601i">
      <property role="TrG5h" value="SquareBrace" />
      <node concept="3mYdg7" id="4REBMIum1yO" role="3F10Kt">
        <property role="1413C4" value="square-brace" />
      </node>
      <node concept="34QqEe" id="4REBMIum1yP" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="Vb9p2" id="4REBMIum1yQ" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="4REBMIum1$x" role="V601i">
      <property role="TrG5h" value="LeftSquareBrace" />
      <node concept="3Xmtl4" id="4REBMIum1$y" role="3F10Kt">
        <node concept="1wgc9g" id="4REBMIum1$z" role="3XvnJa">
          <ref role="1wgcnl" node="4REBMIum1yN" resolve="SquareBrace" />
        </node>
      </node>
      <node concept="11LMrY" id="4REBMIum1$$" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="4REBMIum1$_" role="V601i">
      <property role="TrG5h" value="LeftSquareBraceAfterName" />
      <node concept="3Xmtl4" id="4REBMIum1$A" role="3F10Kt">
        <node concept="1wgc9g" id="4REBMIum1$B" role="3XvnJa">
          <ref role="1wgcnl" node="4REBMIum1$x" resolve="LeftSquareBrace" />
        </node>
      </node>
      <node concept="11L4FC" id="4REBMIum1$C" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="4REBMIum1$D" role="V601i">
      <property role="TrG5h" value="RightSquareBrace" />
      <node concept="3Xmtl4" id="4REBMIum1$E" role="3F10Kt">
        <node concept="1wgc9g" id="4REBMIum1$F" role="3XvnJa">
          <ref role="1wgcnl" node="4REBMIum1yN" resolve="SquareBrace" />
        </node>
      </node>
      <node concept="11L4FC" id="4REBMIum1$G" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="4REBMIuhnIE" role="V601i">
      <property role="TrG5h" value="BodyBrace" />
      <node concept="3mYdg7" id="4REBMIuhnJx" role="3F10Kt">
        <property role="1413C4" value="body-brace" />
      </node>
      <node concept="34QqEe" id="4REBMIuhnJp" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="Vb9p2" id="4REBMIuhnJq" role="3F10Kt" />
    </node>
  </node>
  <node concept="22mcaB" id="oGImgNe$mM">
    <property role="3GE5qa" value="boundedContext" />
    <ref role="aqKnT" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
    <node concept="22hDWj" id="oGImgNe$mN" role="22hAXT" />
    <node concept="2VfDsV" id="oGImgNftnK" role="3ft7WO">
      <node concept="1GpqWn" id="omljbz2LMz" role="1Go12V">
        <node concept="3clFbS" id="omljbz2LM$" role="2VODD2">
          <node concept="3cpWs8" id="omljbz2MmX" role="3cqZAp">
            <node concept="3cpWsn" id="omljbz2MmY" role="3cpWs9">
              <property role="TrG5h" value="boundedContext" />
              <node concept="3Tqbb2" id="omljbz2Mmy" role="1tU5fm">
                <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
              </node>
              <node concept="2OqwBi" id="omljbz2MmZ" role="33vP2m">
                <node concept="3bvxqY" id="omljbz2Mn0" role="2Oq$k0" />
                <node concept="2Xjw5R" id="omljbz2Mn1" role="2OqNvi">
                  <node concept="1xMEDy" id="omljbz2Mn2" role="1xVPHs">
                    <node concept="chp4Y" id="omljbz2Mn3" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="omljbz2Mn4" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="omljbz2Mr6" role="3cqZAp" />
          <node concept="1_3QMa" id="omljbz2MAD" role="3cqZAp">
            <node concept="1pnPoh" id="omljbz2MGD" role="1_3QMm">
              <node concept="3gn64h" id="omljbz2MGF" role="1pnPq6">
                <ref role="3gnhBz" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
              </node>
              <node concept="3clFbS" id="omljbz2MGH" role="1pnPq1">
                <node concept="3cpWs6" id="omljbz2MIe" role="3cqZAp">
                  <node concept="3fqX7Q" id="omljbz32XY" role="3cqZAk">
                    <node concept="2OqwBi" id="omljbz32Y0" role="3fr31v">
                      <node concept="37vLTw" id="omljbz32Y1" role="2Oq$k0">
                        <ref role="3cqZAo" node="omljbz2MmY" resolve="boundedContext" />
                      </node>
                      <node concept="2qgKlT" id="omljbz32Y2" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:omljbz2XwK" resolve="areGenerationSettingsDefined" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1GpqW3" id="omljbz2MFG" role="1_3QMn" />
            <node concept="3clFbS" id="omljbz2MO4" role="1prKM_">
              <node concept="3cpWs6" id="omljbz2MO3" role="3cqZAp">
                <node concept="3clFbT" id="omljbz2MP$" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="oGImgNnR8l" role="3ft7WO" />
    <node concept="3eGOop" id="4REBMIu31LS" role="3ft7WO">
      <node concept="ucgPf" id="4REBMIu31LU" role="3aKz83">
        <node concept="3clFbS" id="4REBMIu31LW" role="2VODD2">
          <node concept="3cpWs8" id="4REBMIu32tC" role="3cqZAp">
            <node concept="3cpWsn" id="4REBMIu32tD" role="3cpWs9">
              <property role="TrG5h" value="aggregateRootRepository" />
              <node concept="3Tqbb2" id="4REBMIu32r0" role="1tU5fm">
                <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
              </node>
              <node concept="2ShNRf" id="4REBMIu32tE" role="33vP2m">
                <node concept="2fJWfE" id="4REBMIu4Dme" role="2ShVmc">
                  <node concept="3Tqbb2" id="4REBMIu4Dmg" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4REBMIu32yB" role="3cqZAp">
            <node concept="2OqwBi" id="4REBMIu33tG" role="3clFbG">
              <node concept="2OqwBi" id="4REBMIu32M7" role="2Oq$k0">
                <node concept="37vLTw" id="4REBMIu32y_" role="2Oq$k0">
                  <ref role="3cqZAo" node="4REBMIu32tD" resolve="aggregateRootRepository" />
                </node>
                <node concept="3TrcHB" id="4REBMIu332c" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
                </node>
              </node>
              <node concept="tyxLq" id="4REBMIu33P8" role="2OqNvi">
                <node concept="3clFbT" id="4REBMIu33Q1" role="tz02z">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4REBMIu31YC" role="3cqZAp">
            <node concept="37vLTw" id="4REBMIu32tH" role="3clFbG">
              <ref role="3cqZAo" node="4REBMIu32tD" resolve="aggregateRootRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="4REBMIu31SM" role="upBLP">
        <node concept="2h3Zct" id="4REBMIu31Th" role="16NeZM">
          <property role="2h4Kg1" value="aggregate id repository" />
        </node>
      </node>
      <node concept="16NL0t" id="4REBMIu31Vd" role="upBLP">
        <node concept="2h3Zct" id="4REBMIu31X9" role="16NL0q">
          <property role="2h4Kg1" value="(CQRS)" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="4REBMIu312w" role="3ft7WO" />
    <node concept="3eGOop" id="4REBMIucGV4" role="3ft7WO">
      <node concept="ucgPf" id="4REBMIucGV6" role="3aKz83">
        <node concept="3clFbS" id="4REBMIucGV8" role="2VODD2">
          <node concept="3cpWs8" id="4REBMIucHEV" role="3cqZAp">
            <node concept="3cpWsn" id="4REBMIucHEW" role="3cpWs9">
              <property role="TrG5h" value="commandContainer" />
              <node concept="3Tqbb2" id="4REBMIucHCd" role="1tU5fm">
                <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
              </node>
              <node concept="2ShNRf" id="4REBMIucHEX" role="33vP2m">
                <node concept="2fJWfE" id="4REBMIucHEY" role="2ShVmc">
                  <node concept="3Tqbb2" id="4REBMIucHEZ" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4REBMIucHJU" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHzYRje" role="3clFbG">
              <node concept="2OqwBi" id="4REBMIucI0k" role="2Oq$k0">
                <node concept="37vLTw" id="4REBMIucHJS" role="2Oq$k0">
                  <ref role="3cqZAo" node="4REBMIucHEW" resolve="commandContainer" />
                </node>
                <node concept="3TrcHB" id="4REBMIucIi1" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                </node>
              </node>
              <node concept="tyxLq" id="1LTEHzYREH" role="2OqNvi">
                <node concept="21nZrQ" id="1LTEHzYRGN" role="tz02z">
                  <ref role="21nZrZ" to="3nll:1LTEHzOdy3" resolve="CommandHandler" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4REBMIucHa3" role="3cqZAp">
            <node concept="37vLTw" id="4REBMIucHF0" role="3clFbG">
              <ref role="3cqZAo" node="4REBMIucHEW" resolve="commandContainer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="4REBMIucH4e" role="upBLP">
        <node concept="2h3Zct" id="4REBMIucH4H" role="16NeZM">
          <property role="2h4Kg1" value="command handler" />
        </node>
      </node>
      <node concept="16NL0t" id="4REBMIucH5f" role="upBLP">
        <node concept="2h3Zct" id="4REBMIucH8$" role="16NL0q">
          <property role="2h4Kg1" value="(CQRS)" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="4REBMIucGMs" role="3ft7WO" />
    <node concept="3eGOop" id="1LTEHzE84P" role="3ft7WO">
      <node concept="16NfWO" id="1LTEHzE8fq" role="upBLP">
        <node concept="2h3Zct" id="1LTEHzE8mL" role="16NeZM">
          <property role="2h4Kg1" value="query handler" />
        </node>
      </node>
      <node concept="16NL0t" id="1LTEHzE8nj" role="upBLP">
        <node concept="2h3Zct" id="1LTEHzE8nP" role="16NL0q">
          <property role="2h4Kg1" value="(CQRS)" />
        </node>
      </node>
      <node concept="ucgPf" id="1LTEHzE84R" role="3aKz83">
        <node concept="3clFbS" id="1LTEHzE84T" role="2VODD2">
          <node concept="3cpWs8" id="1LTEHzE98V" role="3cqZAp">
            <node concept="3cpWsn" id="1LTEHzE98W" role="3cpWs9">
              <property role="TrG5h" value="queryContainer" />
              <node concept="3Tqbb2" id="1LTEHzE96d" role="1tU5fm">
                <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
              </node>
              <node concept="2ShNRf" id="1LTEHzE98X" role="33vP2m">
                <node concept="2fJWfE" id="1LTEHzE98Y" role="2ShVmc">
                  <node concept="3Tqbb2" id="1LTEHzE98Z" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1LTEHzE9dg" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHzE9T9" role="3clFbG">
              <node concept="2OqwBi" id="1LTEHzE9tE" role="2Oq$k0">
                <node concept="37vLTw" id="1LTEHzE9de" role="2Oq$k0">
                  <ref role="3cqZAo" node="1LTEHzE98W" resolve="queryContainer" />
                </node>
                <node concept="3TrcHB" id="1LTEHzE9Jn" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                </node>
              </node>
              <node concept="tyxLq" id="1LTEHzEa5b" role="2OqNvi">
                <node concept="21nZrQ" id="1LTEHzEa64" role="tz02z">
                  <ref role="21nZrZ" to="3nll:1WhJCpUOLrC" resolve="QueryHandler" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2RbvdOKPLhd" role="3cqZAp">
            <node concept="2OqwBi" id="2RbvdOKPM22" role="3clFbG">
              <node concept="2OqwBi" id="2RbvdOKPLwN" role="2Oq$k0">
                <node concept="37vLTw" id="2RbvdOKPLhb" role="2Oq$k0">
                  <ref role="3cqZAo" node="1LTEHzE98W" resolve="queryContainer" />
                </node>
                <node concept="3TrEf2" id="2RbvdOKPLNJ" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                </node>
              </node>
              <node concept="2DeJnY" id="2RbvdOKPMyf" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="1LTEHzE8XP" role="3cqZAp">
            <node concept="37vLTw" id="1LTEHzE990" role="3clFbG">
              <ref role="3cqZAo" node="1LTEHzE98W" resolve="queryContainer" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="1LTEHzE7oz" role="3ft7WO" />
    <node concept="3eGOop" id="1LTEHzE8G9" role="3ft7WO">
      <node concept="ucgPf" id="1LTEHzE8Gb" role="3aKz83">
        <node concept="3clFbS" id="1LTEHzE8Gd" role="2VODD2">
          <node concept="3cpWs8" id="1LTEHzEa8k" role="3cqZAp">
            <node concept="3cpWsn" id="1LTEHzEa8l" role="3cpWs9">
              <property role="TrG5h" value="queryContainer" />
              <node concept="3Tqbb2" id="1LTEHzEa8m" role="1tU5fm">
                <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
              </node>
              <node concept="2ShNRf" id="1LTEHzEa8n" role="33vP2m">
                <node concept="2fJWfE" id="1LTEHzEa8o" role="2ShVmc">
                  <node concept="3Tqbb2" id="1LTEHzEa8p" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1LTEHzEa8q" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHzEa8r" role="3clFbG">
              <node concept="2OqwBi" id="1LTEHzEa8s" role="2Oq$k0">
                <node concept="37vLTw" id="1LTEHzEa8t" role="2Oq$k0">
                  <ref role="3cqZAo" node="1LTEHzEa8l" resolve="queryContainer" />
                </node>
                <node concept="3TrcHB" id="1LTEHzEa8u" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                </node>
              </node>
              <node concept="tyxLq" id="1LTEHzEa8v" role="2OqNvi">
                <node concept="21nZrQ" id="1LTEHzEa8w" role="tz02z">
                  <ref role="21nZrZ" to="3nll:1WhJCpUOLrF" resolve="QueryService" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2RbvdOKPMGG" role="3cqZAp">
            <node concept="2OqwBi" id="2RbvdOKPMGH" role="3clFbG">
              <node concept="2OqwBi" id="2RbvdOKPMGI" role="2Oq$k0">
                <node concept="37vLTw" id="2RbvdOKPMGJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1LTEHzEa8l" resolve="queryContainer" />
                </node>
                <node concept="3TrEf2" id="2RbvdOKPMGK" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                </node>
              </node>
              <node concept="2DeJnY" id="2RbvdOKPMGL" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="1LTEHzEa8x" role="3cqZAp">
            <node concept="37vLTw" id="1LTEHzEa8y" role="3clFbG">
              <ref role="3cqZAo" node="1LTEHzEa8l" resolve="queryContainer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="1LTEHzE8QO" role="upBLP">
        <node concept="2h3Zct" id="1LTEHzE8Rj" role="16NeZM">
          <property role="2h4Kg1" value="query service" />
        </node>
      </node>
      <node concept="16NL0t" id="1LTEHzE8RP" role="upBLP">
        <node concept="2h3Zct" id="1LTEHzE8Sn" role="16NL0q">
          <property role="2h4Kg1" value="(CQRS)" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="1LTEHzE8nS" role="3ft7WO" />
    <node concept="3eGOop" id="5jZDGTfrJaV" role="3ft7WO">
      <node concept="ucgPf" id="5jZDGTfrJaX" role="3aKz83">
        <node concept="3clFbS" id="5jZDGTfrJaZ" role="2VODD2">
          <node concept="3cpWs8" id="5jZDGTfrKms" role="3cqZAp">
            <node concept="3cpWsn" id="5jZDGTfrKmt" role="3cpWs9">
              <property role="TrG5h" value="eventContainer" />
              <node concept="3Tqbb2" id="5jZDGTfrKm3" role="1tU5fm">
                <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
              </node>
              <node concept="2ShNRf" id="5jZDGTfrKmu" role="33vP2m">
                <node concept="2fJWfE" id="5jZDGTfrKmv" role="2ShVmc">
                  <node concept="3Tqbb2" id="5jZDGTfrKmw" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGTfrKw2" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGTfrL9o" role="3clFbG">
              <node concept="2OqwBi" id="5jZDGTfrKJx" role="2Oq$k0">
                <node concept="37vLTw" id="5jZDGTfrKw0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jZDGTfrKmt" resolve="eventContainer" />
                </node>
                <node concept="3TrcHB" id="5jZDGTfrKZA" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
                </node>
              </node>
              <node concept="tyxLq" id="5jZDGTfrLuE" role="2OqNvi">
                <node concept="21nZrQ" id="5jZDGTfrLvz" role="tz02z">
                  <ref role="21nZrZ" to="3nll:3VGLvhFnWdB" resolve="EventHandler" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGTfrJrh" role="3cqZAp">
            <node concept="37vLTw" id="5jZDGTfrKmx" role="3clFbG">
              <ref role="3cqZAo" node="5jZDGTfrKmt" resolve="eventContainer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="5jZDGTfrJnb" role="upBLP">
        <node concept="2h3Zct" id="5jZDGTfrJnE" role="16NeZM">
          <property role="2h4Kg1" value="event handler" />
        </node>
      </node>
      <node concept="16NL0t" id="5jZDGTfrJoc" role="upBLP">
        <node concept="2h3Zct" id="5jZDGTfrJoI" role="16NL0q">
          <property role="2h4Kg1" value="(CQRS)" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="5jZDGTfrINw" role="3ft7WO" />
    <node concept="2F$Pav" id="oGImgNv_qW" role="3ft7WO">
      <node concept="3eGOop" id="oGImgNv_GD" role="2$S_pN">
        <node concept="ucgPf" id="oGImgNv_GF" role="3aKz83">
          <node concept="3clFbS" id="oGImgNv_GH" role="2VODD2">
            <node concept="3clFbH" id="oGImgNvM7R" role="3cqZAp" />
            <node concept="3clFbJ" id="oGImgNvJtA" role="3cqZAp">
              <node concept="3clFbS" id="oGImgNvJtC" role="3clFbx">
                <node concept="3cpWs6" id="oGImgNvLrJ" role="3cqZAp">
                  <node concept="2ShNRf" id="oGImgNvLv6" role="3cqZAk">
                    <node concept="2fJWfE" id="4REBMIu6eN3" role="2ShVmc">
                      <node concept="3Tqbb2" id="4REBMIu6eN5" role="3zrR0E">
                        <ref role="ehGHo" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="oGImgNvLhm" role="3clFbw">
                <node concept="2ZBlsa" id="oGImgNvLaD" role="2Oq$k0" />
                <node concept="liA8E" id="oGImgNvLkb" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                  <node concept="Xl_RD" id="oGImgNvLmc" role="37wK5m">
                    <property role="Xl_RC" value="object" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="oGImgNvLBZ" role="3cqZAp" />
            <node concept="3clFbJ" id="oGImgNvMna" role="3cqZAp">
              <node concept="3clFbS" id="oGImgNvMnc" role="3clFbx">
                <node concept="3cpWs6" id="oGImgNvNMD" role="3cqZAp">
                  <node concept="2ShNRf" id="oGImgNvNSx" role="3cqZAk">
                    <node concept="2fJWfE" id="4REBMIu6g4x" role="2ShVmc">
                      <node concept="3Tqbb2" id="4REBMIu6g4z" role="3zrR0E">
                        <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="oGImgNvNac" role="3clFbw">
                <node concept="2ZBlsa" id="oGImgNvMqu" role="2Oq$k0" />
                <node concept="liA8E" id="oGImgNvNCf" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                  <node concept="Xl_RD" id="oGImgNvNFu" role="37wK5m">
                    <property role="Xl_RC" value="repo" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4REBMIu9rSz" role="3cqZAp" />
            <node concept="3clFbJ" id="4REBMIu9s$I" role="3cqZAp">
              <node concept="3clFbS" id="4REBMIu9s$K" role="3clFbx">
                <node concept="3cpWs8" id="4REBMIub5ts" role="3cqZAp">
                  <node concept="3cpWsn" id="4REBMIub5tt" role="3cpWs9">
                    <property role="TrG5h" value="aggregateRootRepository" />
                    <node concept="3Tqbb2" id="4REBMIub5sg" role="1tU5fm">
                      <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
                    </node>
                    <node concept="2ShNRf" id="4REBMIub5tu" role="33vP2m">
                      <node concept="2fJWfE" id="4REBMIub5tv" role="2ShVmc">
                        <node concept="3Tqbb2" id="4REBMIub5tw" role="3zrR0E">
                          <ref role="ehGHo" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4REBMIub5T_" role="3cqZAp">
                  <node concept="2OqwBi" id="4REBMIub7rd" role="3clFbG">
                    <node concept="2OqwBi" id="4REBMIub6Cr" role="2Oq$k0">
                      <node concept="37vLTw" id="4REBMIub5Tz" role="2Oq$k0">
                        <ref role="3cqZAo" node="4REBMIub5tt" resolve="aggregateRootRepository" />
                      </node>
                      <node concept="3TrcHB" id="4REBMIub6Wf" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="4REBMIub7Qo" role="2OqNvi">
                      <node concept="3clFbT" id="4REBMIub7V0" role="tz02z">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4REBMIub4Ua" role="3cqZAp">
                  <node concept="37vLTw" id="4REBMIub5tx" role="3cqZAk">
                    <ref role="3cqZAo" node="4REBMIub5tt" resolve="aggregateRootRepository" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4REBMIu9tFc" role="3clFbw">
                <node concept="2ZBlsa" id="4REBMIu9sEt" role="2Oq$k0" />
                <node concept="liA8E" id="4REBMIu9u8l" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                  <node concept="Xl_RD" id="4REBMIu9ucW" role="37wK5m">
                    <property role="Xl_RC" value="id" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="oGImgNvM4M" role="3cqZAp" />
            <node concept="3clFbJ" id="oGImgNvWFv" role="3cqZAp">
              <node concept="3clFbS" id="oGImgNvWFx" role="3clFbx">
                <node concept="3cpWs6" id="oGImgNvZgZ" role="3cqZAp">
                  <node concept="2ShNRf" id="oGImgNvZuj" role="3cqZAk">
                    <node concept="2fJWfE" id="4REBMIu6gHp" role="2ShVmc">
                      <node concept="3Tqbb2" id="4REBMIu6gHr" role="3zrR0E">
                        <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="oGImgNvYqm" role="3clFbw">
                <node concept="2ZBlsa" id="oGImgNvWNM" role="2Oq$k0" />
                <node concept="liA8E" id="oGImgNvYW7" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                  <node concept="Xl_RD" id="oGImgNvZ34" role="37wK5m">
                    <property role="Xl_RC" value="event" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="oGImgNx0cU" role="3cqZAp" />
            <node concept="3clFbJ" id="oGImgNvR4R" role="3cqZAp">
              <node concept="3clFbS" id="oGImgNvR4T" role="3clFbx">
                <node concept="3cpWs6" id="4afTDVDzGFW" role="3cqZAp">
                  <node concept="1PxgMI" id="4afTDVDzIUZ" role="3cqZAk">
                    <node concept="chp4Y" id="4afTDVDzKms" role="3oSUPX">
                      <ref role="cht4Q" to="3nll:6dPLGVFESdC" resolve="IBoundedContextComponent" />
                    </node>
                    <node concept="2ShNRf" id="4afTDVDzD8q" role="1m5AlR">
                      <node concept="2fJWfE" id="4afTDVDzEV7" role="2ShVmc">
                        <node concept="3Tqbb2" id="4afTDVDzEV9" role="3zrR0E">
                          <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                        </node>
                        <node concept="1yR$tW" id="4afTDVDSA7e" role="1wAG5O" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="oGImgNvRs$" role="3clFbw">
                <node concept="2ZBlsa" id="oGImgNvRbg" role="2Oq$k0" />
                <node concept="liA8E" id="oGImgNvRyB" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                  <node concept="Xl_RD" id="oGImgNvRC6" role="37wK5m">
                    <property role="Xl_RC" value="root" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="oGImgNvU9S" role="3cqZAp" />
            <node concept="3cpWs6" id="oGImgNvLI3" role="3cqZAp">
              <node concept="2ShNRf" id="oGImgNvLMD" role="3cqZAk">
                <node concept="2fJWfE" id="4REBMIu6gWN" role="2ShVmc">
                  <node concept="3Tqbb2" id="4REBMIu6gWP" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="oGImgNvFpN" role="upBLP">
          <node concept="uGdhv" id="oGImgNvFqi" role="16NeZM">
            <node concept="3clFbS" id="oGImgNvFqk" role="2VODD2">
              <node concept="3clFbF" id="oGImgNvFxj" role="3cqZAp">
                <node concept="2ZBlsa" id="oGImgNvFxi" role="3clFbG" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL3D" id="oGImgNvG9x" role="upBLP">
          <node concept="16Na2f" id="oGImgNvG9z" role="16NL3A">
            <node concept="3clFbS" id="oGImgNvG9_" role="2VODD2">
              <node concept="3clFbF" id="oGImgNvGbW" role="3cqZAp">
                <node concept="2OqwBi" id="oGImgNvGOs" role="3clFbG">
                  <node concept="2ZBlsa" id="oGImgNvGbV" role="2Oq$k0" />
                  <node concept="liA8E" id="oGImgNvHHw" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                    <node concept="ub8z3" id="oGImgNvHKC" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="oGImgNv_z1" role="2ZBHrp" />
      <node concept="2$S_p_" id="oGImgNv_z4" role="2$S_pT">
        <node concept="3clFbS" id="oGImgNv_z5" role="2VODD2">
          <node concept="3clFbF" id="oGImgNvBXN" role="3cqZAp">
            <node concept="2ShNRf" id="oGImgNvBXL" role="3clFbG">
              <node concept="Tc6Ow" id="oGImgNvDaU" role="2ShVmc">
                <node concept="17QB3L" id="oGImgNvDvK" role="HW$YZ" />
                <node concept="Xl_RD" id="oGImgNvExL" role="HW$Y0">
                  <property role="Xl_RC" value="object" />
                </node>
                <node concept="Xl_RD" id="oGImgNvEA6" role="HW$Y0">
                  <property role="Xl_RC" value="repo" />
                </node>
                <node concept="Xl_RD" id="oGImgNvFf3" role="HW$Y0">
                  <property role="Xl_RC" value="root" />
                </node>
                <node concept="Xl_RD" id="oGImgNvMf8" role="HW$Y0">
                  <property role="Xl_RC" value="event" />
                </node>
                <node concept="Xl_RD" id="4REBMIu9rQO" role="HW$Y0">
                  <property role="Xl_RC" value="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="oGImgNv__U" role="3ft7WO" />
  </node>
  <node concept="1h_SRR" id="oGImgN$Zvn">
    <property role="3GE5qa" value="variable.property" />
    <property role="TrG5h" value="PropertyGetActionMap" />
    <ref role="1h_SK9" to="3nll:7fqk8p3V6WN" resolve="Property" />
    <node concept="1hA7zw" id="oGImgN$Zvs" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="oGImgN$Zvt" role="1hA7z_">
        <node concept="3clFbS" id="oGImgN$Zvu" role="2VODD2">
          <node concept="3clFbJ" id="5SyewCbEXN5" role="3cqZAp">
            <node concept="3clFbS" id="5SyewCbEXN7" role="3clFbx">
              <node concept="3cpWs6" id="5SyewCbEYkF" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="5SyewCbEY0o" role="3clFbw">
              <node concept="0IXxy" id="5SyewCbEXOd" role="2Oq$k0" />
              <node concept="2xy62i" id="5SyewCbEYg7" role="2OqNvi">
                <node concept="1Q80Hx" id="5SyewCbEYgH" role="2xHN3q" />
                <node concept="2TlHUq" id="2Bsub$L6CuN" role="3a7HXU">
                  <ref role="2TlMyj" node="3DbZR$ORIHe" resolve="getKeyword" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="oGImgN_08m" role="3cqZAp">
            <node concept="2OqwBi" id="1TPnUlhio0n" role="3clFbG">
              <node concept="2OqwBi" id="oGImgN_08E" role="2Oq$k0">
                <node concept="0IXxy" id="oGImgN_08l" role="2Oq$k0" />
                <node concept="3TrcHB" id="oGImgN_09L" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:3DbZR$ObFWz" resolve="hasGetter" />
                </node>
              </node>
              <node concept="tyxLq" id="1TPnUlhiokW" role="2OqNvi">
                <node concept="3clFbT" id="1TPnUlhiolD" role="tz02z" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="oGImgN_UvM" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgN_UGs" role="3clFbG">
              <node concept="0IXxy" id="oGImgN_UvL" role="2Oq$k0" />
              <node concept="1OKiuA" id="oGImgN_UW9" role="2OqNvi">
                <node concept="1Q80Hx" id="oGImgN_UWN" role="lBI5i" />
                <node concept="2B6iha" id="oGImgN_UXZ" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17G/firstEditable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="oGImgN$ZvM" role="jK8aL">
        <node concept="3clFbS" id="oGImgN$ZvN" role="2VODD2">
          <node concept="3clFbF" id="oGImgN$Z_n" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgN$ZOp" role="3clFbG">
              <node concept="0IXxy" id="oGImgN$Z_m" role="2Oq$k0" />
              <node concept="3TrcHB" id="oGImgN_04h" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3DbZR$ObFWz" resolve="hasGetter" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="oGImgNC0pj">
    <property role="3GE5qa" value="valueObjects" />
    <property role="TrG5h" value="ValueObjectBodyActionMap" />
    <ref role="1h_SK9" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
    <node concept="1hA7zw" id="oGImgNC0pk" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="oGImgNC0pl" role="1hA7z_">
        <node concept="3clFbS" id="oGImgNC0pm" role="2VODD2">
          <node concept="3clFbJ" id="3FBObrpmylJ" role="3cqZAp">
            <node concept="3clFbS" id="3FBObrpmylL" role="3clFbx">
              <node concept="3cpWs6" id="3FBObrpm$Ec" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="3FBObrpoKKY" role="3clFbw">
              <node concept="3fqX7Q" id="3FBObrpoI_V" role="3uHU7B">
                <node concept="2OqwBi" id="3FBObrpoI_X" role="3fr31v">
                  <node concept="2OqwBi" id="3FBObrpoI_Y" role="2Oq$k0">
                    <node concept="0IXxy" id="3FBObrpoI_Z" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3FBObrpoIA0" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgN2kvl" resolve="components" />
                    </node>
                  </node>
                  <node concept="2HxqBE" id="3FBObrpoIA1" role="2OqNvi">
                    <node concept="1bVj0M" id="3FBObrpoIA2" role="23t8la">
                      <node concept="3clFbS" id="3FBObrpoIA3" role="1bW5cS">
                        <node concept="3clFbF" id="3FBObrpoIA4" role="3cqZAp">
                          <node concept="2OqwBi" id="3FBObrpoIA5" role="3clFbG">
                            <node concept="37vLTw" id="3FBObrpoIA6" role="2Oq$k0">
                              <ref role="3cqZAo" node="3FBObrpoIA9" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="3FBObrpoIA7" role="2OqNvi">
                              <node concept="chp4Y" id="3FBObrpoIA8" role="cj9EA">
                                <ref role="cht4Q" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3FBObrpoIA9" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3FBObrpoIAa" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3FBObrpm$lc" role="3uHU7w">
                <node concept="0IXxy" id="3FBObrpoivY" role="2Oq$k0" />
                <node concept="2xy62i" id="3FBObrpm$Az" role="2OqNvi">
                  <node concept="1Q80Hx" id="3FBObrpm$B9" role="2xHN3q" />
                  <node concept="1lyA5W" id="3FBObrpm$Cf" role="3a7HXU">
                    <property role="1lUG9U" value="objectBody" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="oGImgNC52p" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgNC5yQ" role="3clFbG">
              <node concept="2OqwBi" id="oGImgNC52H" role="2Oq$k0">
                <node concept="0IXxy" id="oGImgNC52o" role="2Oq$k0" />
                <node concept="3Tsc0h" id="oGImgNC53O" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:oGImgN2kvl" resolve="components" />
                </node>
              </node>
              <node concept="2Kehj3" id="oGImgNC5UN" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="oGImgNDgcD" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgNDi9y" role="3clFbG">
              <node concept="0IXxy" id="oGImgNDgcC" role="2Oq$k0" />
              <node concept="1OKiuA" id="oGImgNDip$" role="2OqNvi">
                <node concept="1Q80Hx" id="oGImgNDiqe" role="lBI5i" />
                <node concept="2B6iha" id="oGImgNEk3C" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
                <node concept="3cmrfG" id="oGImgNGgZO" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="oGImgNC0pE" role="jK8aL">
        <node concept="3clFbS" id="oGImgNC0pF" role="2VODD2">
          <node concept="3clFbF" id="oGImgNC0vu" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgNC2Rp" role="3clFbG">
              <node concept="2OqwBi" id="oGImgNC0LB" role="2Oq$k0">
                <node concept="0IXxy" id="oGImgNC0vt" role="2Oq$k0" />
                <node concept="3Tsc0h" id="oGImgNC0ZR" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:oGImgN2kvl" resolve="components" />
                </node>
              </node>
              <node concept="3GX2aA" id="oGImgNC50f" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="oGImgNL9lM">
    <property role="3GE5qa" value="entity" />
    <property role="TrG5h" value="OptionalConstructorActionMap" />
    <ref role="1h_SK9" to="3nll:oGImgNU0o$" resolve="IComponentWithParameters" />
    <node concept="1hA7zw" id="oGImgNL9lN" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="oGImgNL9lO" role="1hA7z_">
        <node concept="3clFbS" id="oGImgNL9lP" role="2VODD2">
          <node concept="3clFbJ" id="3FBObrpkVr9" role="3cqZAp">
            <node concept="3clFbS" id="3FBObrpkVra" role="3clFbx">
              <node concept="3cpWs6" id="3FBObrpkVrb" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="3FBObrpkVrc" role="3clFbw">
              <node concept="0IXxy" id="3FBObrpkVrd" role="2Oq$k0" />
              <node concept="2xy62i" id="3FBObrpkVre" role="2OqNvi">
                <node concept="1Q80Hx" id="3FBObrpkVrf" role="2xHN3q" />
                <node concept="2TlHUq" id="1TPnUlhpZQS" role="3a7HXU">
                  <ref role="2TlMyj" node="3FBObrpji_C" resolve="parametersBody" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="oGImgNLeUk" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgNLfwj" role="3clFbG">
              <node concept="2OqwBi" id="oGImgNLeUC" role="2Oq$k0">
                <node concept="0IXxy" id="oGImgNLeUj" role="2Oq$k0" />
                <node concept="3Tsc0h" id="oGImgNLeVJ" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                </node>
              </node>
              <node concept="2Kehj3" id="oGImgNLfXd" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="5SyewCb71T$" role="3cqZAp">
            <node concept="2OqwBi" id="5SyewCb71T_" role="3clFbG">
              <node concept="0IXxy" id="5SyewCb71TA" role="2Oq$k0" />
              <node concept="1OKiuA" id="5SyewCb71TB" role="2OqNvi">
                <node concept="1Q80Hx" id="5SyewCb71TC" role="lBI5i" />
                <node concept="1lyA5W" id="5SyewCb71TD" role="lGT1i">
                  <property role="1lUG9U" value="bodyStart" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="oGImgNL9m9" role="jK8aL">
        <node concept="3clFbS" id="oGImgNL9ma" role="2VODD2">
          <node concept="3clFbF" id="oGImgNL9s1" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgNLcJg" role="3clFbG">
              <node concept="2OqwBi" id="oGImgNL9E9" role="2Oq$k0">
                <node concept="0IXxy" id="oGImgNL9s0" role="2Oq$k0" />
                <node concept="3Tsc0h" id="oGImgNL9WL" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                </node>
              </node>
              <node concept="3GX2aA" id="oGImgNLeS9" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="oGImgNOI11">
    <property role="3GE5qa" value="variable.parameter" />
    <ref role="aqKnT" to="3nll:oGImgNU0o$" resolve="IComponentWithParameters" />
    <node concept="1Qtc8_" id="oGImgNOI14" role="IW6Ez">
      <node concept="1GhOrh" id="5qxF18FU4Xb" role="1Qtc8A">
        <node concept="1GhMSn" id="5qxF18FU4Xc" role="1GhOrs">
          <node concept="3clFbS" id="5qxF18FU4Xd" role="2VODD2">
            <node concept="3clFbF" id="5qxF18FU4Xe" role="3cqZAp">
              <node concept="2ShNRf" id="5qxF18FU4Xf" role="3clFbG">
                <node concept="Tc6Ow" id="5qxF18FU4Xg" role="2ShVmc">
                  <node concept="17QB3L" id="5qxF18FU4Xh" role="HW$YZ" />
                  <node concept="Xl_RD" id="5qxF18FU4Xi" role="HW$Y0">
                    <property role="Xl_RC" value="(" />
                  </node>
                  <node concept="Xl_RD" id="5qxF18FU4Xj" role="HW$Y0">
                    <property role="Xl_RC" value=")" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="5qxF18FU4Xk" role="1GhOri">
          <node concept="1hCUdq" id="5qxF18FU4Xl" role="1hCUd6">
            <node concept="3clFbS" id="5qxF18FU4Xm" role="2VODD2">
              <node concept="3clFbF" id="5qxF18FU4Xn" role="3cqZAp">
                <node concept="2ZBlsa" id="5qxF18FU4Xo" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="5qxF18FU4Xp" role="IWgqQ">
            <node concept="3clFbS" id="5qxF18FU4Xq" role="2VODD2">
              <node concept="3clFbF" id="5qxF18FU4Xr" role="3cqZAp">
                <node concept="2OqwBi" id="5qxF18FU4Xs" role="3clFbG">
                  <node concept="2OqwBi" id="5qxF18FU4Xt" role="2Oq$k0">
                    <node concept="7Obwk" id="5qxF18FU4Xu" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5qxF18FU4Xv" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                    </node>
                  </node>
                  <node concept="WFELt" id="5qxF18FU4Xw" role="2OqNvi">
                    <ref role="1A0vxQ" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="5qxF18FU4Xx" role="2jiSrf">
            <node concept="3clFbS" id="5qxF18FU4Xy" role="2VODD2">
              <node concept="3clFbF" id="5qxF18FU4Xz" role="3cqZAp">
                <node concept="2OqwBi" id="5qxF18FU4X$" role="3clFbG">
                  <node concept="2OqwBi" id="5qxF18FU4X_" role="2Oq$k0">
                    <node concept="7Obwk" id="5qxF18FU4XA" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5qxF18FU4XB" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="5qxF18FU4XC" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="5qxF18FU4XD" role="2ZBHrp" />
      </node>
      <node concept="3cWJ9i" id="oGImgNOI18" role="1Qtc8$">
        <node concept="CtIbL" id="oGImgNOI1a" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="oGImgNOI12" role="22hAXT">
      <property role="TrG5h" value="ConstructorLeftTransformationMenu" />
    </node>
  </node>
  <node concept="3ICUPy" id="oGImgNTZCT">
    <property role="3GE5qa" value="variable.parameter" />
    <ref role="aqKnT" to="3nll:oGImgNU0o$" resolve="IComponentWithParameters" />
    <node concept="1Qtc8_" id="oGImgNTZCW" role="IW6Ez">
      <node concept="1GhOrh" id="5qxF18FTS1g" role="1Qtc8A">
        <node concept="1GhMSn" id="5qxF18FTS1i" role="1GhOrs">
          <node concept="3clFbS" id="5qxF18FTS1k" role="2VODD2">
            <node concept="3clFbF" id="5qxF18FTSif" role="3cqZAp">
              <node concept="2ShNRf" id="5qxF18FTSid" role="3clFbG">
                <node concept="Tc6Ow" id="5qxF18FTUe7" role="2ShVmc">
                  <node concept="17QB3L" id="5qxF18FTVb4" role="HW$YZ" />
                  <node concept="Xl_RD" id="5qxF18FTW5w" role="HW$Y0">
                    <property role="Xl_RC" value="(" />
                  </node>
                  <node concept="Xl_RD" id="5qxF18FTW9$" role="HW$Y0">
                    <property role="Xl_RC" value=")" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="5qxF18FTWcp" role="1GhOri">
          <node concept="1hCUdq" id="5qxF18FTWcr" role="1hCUd6">
            <node concept="3clFbS" id="5qxF18FTWct" role="2VODD2">
              <node concept="3clFbF" id="5qxF18FTWmx" role="3cqZAp">
                <node concept="2ZBlsa" id="5qxF18FTWmw" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="5qxF18FTWcv" role="IWgqQ">
            <node concept="3clFbS" id="5qxF18FTWcx" role="2VODD2">
              <node concept="3clFbF" id="5qxF18FU1Vu" role="3cqZAp">
                <node concept="2OqwBi" id="5qxF18FU1Vv" role="3clFbG">
                  <node concept="2OqwBi" id="5qxF18FU1Vw" role="2Oq$k0">
                    <node concept="7Obwk" id="5qxF18FU1Vx" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5qxF18FU1Vy" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                    </node>
                  </node>
                  <node concept="WFELt" id="5qxF18FU1Vz" role="2OqNvi">
                    <ref role="1A0vxQ" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="5qxF18FTWne" role="2jiSrf">
            <node concept="3clFbS" id="5qxF18FTWnf" role="2VODD2">
              <node concept="3clFbF" id="5qxF18FTWqo" role="3cqZAp">
                <node concept="2OqwBi" id="5qxF18FTZ_$" role="3clFbG">
                  <node concept="2OqwBi" id="5qxF18FTWDF" role="2Oq$k0">
                    <node concept="7Obwk" id="5qxF18FTWqn" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5qxF18FTWMK" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="5qxF18FU1S6" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="5qxF18FTSdn" role="2ZBHrp" />
      </node>
      <node concept="3cWJ9i" id="oGImgNTZD0" role="1Qtc8$">
        <node concept="CtIbL" id="oGImgNTZD2" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="oGImgNTZCU" role="22hAXT">
      <property role="TrG5h" value="ConstructorRightTransformationMenu" />
    </node>
  </node>
  <node concept="24kQdi" id="oGImgOcSZJ">
    <property role="3GE5qa" value="entity" />
    <ref role="1XX52x" to="3nll:7fqk8p3VKtM" resolve="IEntityComponent" />
    <node concept="3F0ifn" id="oGImgOcSZL" role="2wV5jI">
      <property role="3F0ifm" value="" />
      <node concept="VPxyj" id="oGImgOcSZO" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="oGImgOh$AG">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
    <node concept="3F0ifn" id="oGImgOh$AI" role="2wV5jI">
      <property role="3F0ifm" value="" />
      <node concept="VPxyj" id="oGImgOh$AL" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="oGImgOiwtK">
    <property role="3GE5qa" value="editor" />
    <ref role="aqKnT" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
    <node concept="22hDWj" id="oGImgOiwtL" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="oGImgOnn6B">
    <property role="3GE5qa" value="editor" />
    <ref role="1XX52x" to="3nll:oGImgOnn6y" resolve="CommentLine" />
    <node concept="3EZMnI" id="oGImgOnn6D" role="2wV5jI">
      <node concept="3F0ifn" id="oGImgOnn6N" role="3EZMnx">
        <property role="3F0ifm" value="//" />
        <node concept="VechU" id="oGImgOnn6X" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
        <node concept="Vb9p2" id="5A5sGrosvvc" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
      </node>
      <node concept="3F0A7n" id="oGImgOnn6T" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:oGImgOnn6_" resolve="text" />
        <node concept="VechU" id="oGImgOnn6Z" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
        <node concept="1uO$qF" id="5A5sGroqtxH" role="3F10Kt">
          <node concept="3nzxsE" id="5A5sGroqtxJ" role="1uO$qD">
            <node concept="3clFbS" id="5A5sGroqtxL" role="2VODD2">
              <node concept="3clFbF" id="5A5sGrowwaI" role="3cqZAp">
                <node concept="1Wc70l" id="5A5sGrow$Nz" role="3clFbG">
                  <node concept="3y3z36" id="5A5sGrow$dE" role="3uHU7B">
                    <node concept="2OqwBi" id="5A5sGrowwyz" role="3uHU7B">
                      <node concept="pncrf" id="5A5sGrowwaH" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5A5sGrowx1a" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:oGImgOnn6_" resolve="text" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="5A5sGrow$_7" role="3uHU7w" />
                  </node>
                  <node concept="2OqwBi" id="5A5sGroqv5D" role="3uHU7w">
                    <node concept="2OqwBi" id="5A5sGroqu3i" role="2Oq$k0">
                      <node concept="pncrf" id="5A5sGroqtCS" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5A5sGroquwU" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:oGImgOnn6_" resolve="text" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5A5sGroqvzm" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="Xl_RD" id="5A5sGroqvD4" role="37wK5m">
                        <property role="Xl_RC" value="TODO" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wgc9g" id="5A5sGroqtxN" role="3XvnJa">
            <ref role="1wgcnl" to="tpen:aeM1BF$INI" />
          </node>
        </node>
        <node concept="Vb9p2" id="5A5sGrosvtv" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
      </node>
      <node concept="2iRfu4" id="oGImgOnn6G" role="2iSdaV" />
    </node>
  </node>
  <node concept="3ICUPy" id="oGImgOt8yB">
    <property role="3GE5qa" value="aggregateRepository" />
    <ref role="aqKnT" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
    <node concept="1Qtc8_" id="oGImgOt8yE" role="IW6Ez">
      <node concept="IWgqT" id="oGImgOt8yQ" role="1Qtc8A">
        <node concept="1hCUdq" id="oGImgOt8yS" role="1hCUd6">
          <node concept="3clFbS" id="oGImgOt8yU" role="2VODD2">
            <node concept="3clFbF" id="oGImgOt8DI" role="3cqZAp">
              <node concept="Xl_RD" id="oGImgOt8DH" role="3clFbG">
                <property role="Xl_RC" value="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="oGImgOt8yW" role="IWgqQ">
          <node concept="3clFbS" id="oGImgOt8yY" role="2VODD2">
            <node concept="3clFbF" id="oGImgOt9sF" role="3cqZAp">
              <node concept="37vLTI" id="oGImgOtahK" role="3clFbG">
                <node concept="3clFbT" id="oGImgOtamT" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="oGImgOt9C9" role="37vLTJ">
                  <node concept="7Obwk" id="oGImgOt9sE" role="2Oq$k0" />
                  <node concept="3TrcHB" id="oGImgOt9Qc" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="oGImgOt8F1" role="2jiSrf">
          <node concept="3clFbS" id="oGImgOt8F2" role="2VODD2">
            <node concept="3clFbF" id="oGImgOt8KD" role="3cqZAp">
              <node concept="3fqX7Q" id="oGImgOt9kf" role="3clFbG">
                <node concept="2OqwBi" id="oGImgOt9kh" role="3fr31v">
                  <node concept="7Obwk" id="oGImgOt9ki" role="2Oq$k0" />
                  <node concept="3TrcHB" id="oGImgOt9kj" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="oGImgOt8yI" role="1Qtc8$">
        <node concept="CtIbL" id="oGImgOt8yK" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="oGImgOt8yC" role="22hAXT">
      <property role="TrG5h" value="AggregateRootRepositoryKeywordTranformationMenu" />
    </node>
  </node>
  <node concept="1h_SRR" id="oGImgOu8EK">
    <property role="3GE5qa" value="aggregateRepository" />
    <property role="TrG5h" value="AggregateIdRepositoryActionMap" />
    <ref role="1h_SK9" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
    <node concept="1hA7zw" id="oGImgOu8EL" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="oGImgOu8EM" role="1hA7z_">
        <node concept="3clFbS" id="oGImgOu8EN" role="2VODD2">
          <node concept="3clFbJ" id="2Bsub$L9FH9" role="3cqZAp">
            <node concept="3clFbS" id="2Bsub$L9FHb" role="3clFbx">
              <node concept="3cpWs6" id="2Bsub$L9Hkq" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="2Bsub$L9FTE" role="3clFbw">
              <node concept="0IXxy" id="2Bsub$L9FIh" role="2Oq$k0" />
              <node concept="2xy62i" id="2Bsub$L9G7L" role="2OqNvi">
                <node concept="1Q80Hx" id="2Bsub$L9G8n" role="2xHN3q" />
                <node concept="2TlHUq" id="2Bsub$L9Hia" role="3a7HXU">
                  <ref role="2TlMyj" node="5$vsibPwlsV" resolve="idKeyword" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="oGImgOu9k_" role="3cqZAp">
            <node concept="2OqwBi" id="6Qa18YFNHXP" role="3clFbG">
              <node concept="2OqwBi" id="oGImgOu9l9" role="2Oq$k0">
                <node concept="0IXxy" id="oGImgOu9k$" role="2Oq$k0" />
                <node concept="3TrcHB" id="oGImgOu9mg" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
                </node>
              </node>
              <node concept="tyxLq" id="6Qa18YFNI$e" role="2OqNvi">
                <node concept="3clFbT" id="6Qa18YFNI$V" role="tz02z" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="oGImgOu9SJ" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgOu9Tq" role="3clFbG">
              <node concept="0IXxy" id="oGImgOu9SI" role="2Oq$k0" />
              <node concept="1OKiuA" id="oGImgOu9Uz" role="2OqNvi">
                <node concept="1Q80Hx" id="oGImgOu9Vx" role="lBI5i" />
                <node concept="2B6iha" id="oGImgOu9WH" role="lGT1i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="oGImgOu8F7" role="jK8aL">
        <node concept="3clFbS" id="oGImgOu8F8" role="2VODD2">
          <node concept="3clFbF" id="oGImgOu8Kw" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgOu92D" role="3clFbG">
              <node concept="0IXxy" id="oGImgOu8Kv" role="2Oq$k0" />
              <node concept="3TrcHB" id="oGImgOu9gT" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:7fqk8p47V6y" resolve="isIdRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="oGImgOAtOr">
    <property role="3GE5qa" value="dto" />
    <ref role="aqKnT" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    <node concept="1Qtc8_" id="oGImgOAtOu" role="IW6Ez">
      <node concept="IWgqT" id="3NXs7ypjHSg" role="1Qtc8A">
        <node concept="1hCUdq" id="3NXs7ypjHSi" role="1hCUd6">
          <node concept="3clFbS" id="3NXs7ypjHSk" role="2VODD2">
            <node concept="3clFbF" id="3NXs7ypjI2g" role="3cqZAp">
              <node concept="Xl_RD" id="3NXs7ypjI2f" role="3clFbG">
                <property role="Xl_RC" value="derived from" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3NXs7ypjHSm" role="IWgqQ">
          <node concept="3clFbS" id="3NXs7ypjHSo" role="2VODD2">
            <node concept="3clFbF" id="3NXs7ypjIO4" role="3cqZAp">
              <node concept="2OqwBi" id="3NXs7ypjJgH" role="3clFbG">
                <node concept="2OqwBi" id="3NXs7ypjIOo" role="2Oq$k0">
                  <node concept="7Obwk" id="3NXs7ypjIO3" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3NXs7ypjIPv" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7ypj_ap" resolve="showDerivedFromBlock" />
                  </node>
                </node>
                <node concept="tyxLq" id="3NXs7ypjJzW" role="2OqNvi">
                  <node concept="3clFbT" id="3NXs7ypjJ$A" role="tz02z">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3NXs7ypjNMD" role="3cqZAp">
              <node concept="2OqwBi" id="3NXs7ypjObx" role="3clFbG">
                <node concept="2OqwBi" id="3NXs7ypjO0L" role="2Oq$k0">
                  <node concept="7Obwk" id="3NXs7ypjNMC" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3NXs7ypjO1S" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                  </node>
                </node>
                <node concept="zfrQC" id="3NXs7ypjOmh" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="3NXs7ypjJCa" role="3cqZAp">
              <node concept="2OqwBi" id="3NXs7ypjJCR" role="3clFbG">
                <node concept="2OqwBi" id="3NXs7ypjOpd" role="2Oq$k0">
                  <node concept="7Obwk" id="3NXs7ypjJC9" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3NXs7ypjOqn" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                  </node>
                </node>
                <node concept="1OKiuA" id="3NXs7ypjNGf" role="2OqNvi">
                  <node concept="1Q80Hx" id="3NXs7ypjNGT" role="lBI5i" />
                  <node concept="2TlHUq" id="3NXs7ypjOqX" role="lGT1i">
                    <ref role="2TlMyj" node="3NXs7ypjMya" resolve="derivableReferencePlaceholderCellId" />
                  </node>
                  <node concept="3cmrfG" id="3NXs7ypjOvp" role="3dN3m$">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="3NXs7ypjI4L" role="2jiSrf">
          <node concept="3clFbS" id="3NXs7ypjI4M" role="2VODD2">
            <node concept="3clFbF" id="3NXs7ypjI7_" role="3cqZAp">
              <node concept="3fqX7Q" id="3NXs7ypjIKO" role="3clFbG">
                <node concept="2OqwBi" id="3NXs7ypjIKQ" role="3fr31v">
                  <node concept="7Obwk" id="3NXs7ypjIKR" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3NXs7ypjIKS" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7ypj_ap" resolve="showDerivedFromBlock" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1GhOrh" id="4LpUh3UTX6I" role="1Qtc8A">
        <node concept="1GhMSn" id="4LpUh3UTX6K" role="1GhOrs">
          <node concept="3clFbS" id="4LpUh3UTX6M" role="2VODD2">
            <node concept="3clFbF" id="4LpUh3UTXnU" role="3cqZAp">
              <node concept="2ShNRf" id="4LpUh3UTXnS" role="3clFbG">
                <node concept="Tc6Ow" id="4LpUh3UTXNk" role="2ShVmc">
                  <node concept="17QB3L" id="4LpUh3UTYKS" role="HW$YZ" />
                  <node concept="Xl_RD" id="4LpUh3UTZGS" role="HW$Y0">
                    <property role="Xl_RC" value="{" />
                  </node>
                  <node concept="Xl_RD" id="4LpUh3UTZKW" role="HW$Y0">
                    <property role="Xl_RC" value="}" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4LpUh3UTZNL" role="1GhOri">
          <node concept="1hCUdq" id="4LpUh3UTZNN" role="1hCUd6">
            <node concept="3clFbS" id="4LpUh3UTZNP" role="2VODD2">
              <node concept="3clFbF" id="4LpUh3UTZY2" role="3cqZAp">
                <node concept="2ZBlsa" id="4LpUh3UTZY1" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4LpUh3UTZNR" role="IWgqQ">
            <node concept="3clFbS" id="4LpUh3UTZNT" role="2VODD2">
              <node concept="3clFbF" id="4LpUh3UU0iN" role="3cqZAp">
                <node concept="2OqwBi" id="4LpUh3UU0iO" role="3clFbG">
                  <node concept="2OqwBi" id="4LpUh3UU0iP" role="2Oq$k0">
                    <node concept="7Obwk" id="4LpUh3UU0iQ" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4LpUh3UU0iR" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgOv72Q" resolve="components" />
                    </node>
                  </node>
                  <node concept="WFELt" id="4LpUh3UU0iS" role="2OqNvi">
                    <ref role="1A0vxQ" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="4LpUh3UTZYJ" role="2jiSrf">
            <node concept="3clFbS" id="4LpUh3UTZYK" role="2VODD2">
              <node concept="3clFbF" id="4LpUh3UU08H" role="3cqZAp">
                <node concept="2OqwBi" id="4LpUh3UU08I" role="3clFbG">
                  <node concept="2OqwBi" id="4LpUh3UU08J" role="2Oq$k0">
                    <node concept="7Obwk" id="4LpUh3UU08K" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4LpUh3UU08L" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgOv72Q" resolve="components" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="4LpUh3UU08M" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="4LpUh3UTXiT" role="2ZBHrp" />
      </node>
      <node concept="3cWJ9i" id="oGImgOAtOy" role="1Qtc8$">
        <node concept="CtIbL" id="oGImgOAtO$" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="oGImgOAtOs" role="22hAXT">
      <property role="TrG5h" value="DtoBodyCreation_TransformationMenu" />
    </node>
  </node>
  <node concept="1h_SRR" id="oGImgOAKbI">
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="DtoBodyDeletion_ActionMap" />
    <ref role="1h_SK9" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    <node concept="1hA7zw" id="oGImgOAKbJ" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="oGImgOAKbK" role="1hA7z_">
        <node concept="3clFbS" id="oGImgOAKbL" role="2VODD2">
          <node concept="3clFbJ" id="3FBObrpqwXU" role="3cqZAp">
            <node concept="3clFbS" id="3FBObrpqwXV" role="3clFbx">
              <node concept="3cpWs6" id="3FBObrpqwXW" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="3FBObrpqwXX" role="3clFbw">
              <node concept="3fqX7Q" id="3FBObrpqwXY" role="3uHU7B">
                <node concept="2OqwBi" id="3FBObrpqwXZ" role="3fr31v">
                  <node concept="2OqwBi" id="3FBObrpqwY0" role="2Oq$k0">
                    <node concept="0IXxy" id="3FBObrpqwY1" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3FBObrpqwY2" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:oGImgOv72Q" resolve="components" />
                    </node>
                  </node>
                  <node concept="2HxqBE" id="3FBObrpqwY3" role="2OqNvi">
                    <node concept="1bVj0M" id="3FBObrpqwY4" role="23t8la">
                      <node concept="3clFbS" id="3FBObrpqwY5" role="1bW5cS">
                        <node concept="3clFbF" id="3FBObrpqwY6" role="3cqZAp">
                          <node concept="2OqwBi" id="3FBObrpqwY7" role="3clFbG">
                            <node concept="37vLTw" id="3FBObrpqwY8" role="2Oq$k0">
                              <ref role="3cqZAo" node="3FBObrpqwYb" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="3FBObrpqwY9" role="2OqNvi">
                              <node concept="chp4Y" id="3FBObrpqwYa" role="cj9EA">
                                <ref role="cht4Q" to="3nll:oGImgOh$Ay" resolve="EmptyLine" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3FBObrpqwYb" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3FBObrpqwYc" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3FBObrpqwYd" role="3uHU7w">
                <node concept="0IXxy" id="3FBObrpqwYe" role="2Oq$k0" />
                <node concept="2xy62i" id="3FBObrpqwYf" role="2OqNvi">
                  <node concept="1Q80Hx" id="3FBObrpqwYg" role="2xHN3q" />
                  <node concept="2TlHUq" id="5jZDGTdZZRr" role="3a7HXU">
                    <ref role="2TlMyj" node="3FBObrpmACK" resolve="objectBody" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3FBObrpqv81" role="3cqZAp" />
          <node concept="3clFbF" id="oGImgOAOlM" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgOAQnt" role="3clFbG">
              <node concept="2OqwBi" id="oGImgOAOxg" role="2Oq$k0">
                <node concept="0IXxy" id="oGImgOAOlL" role="2Oq$k0" />
                <node concept="3Tsc0h" id="oGImgOAOJj" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:oGImgOv72Q" resolve="components" />
                </node>
              </node>
              <node concept="2Kehj3" id="oGImgOARtG" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="oGImgOB4Ge" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgOB6tX" role="3clFbG">
              <node concept="0IXxy" id="oGImgOB4Gd" role="2Oq$k0" />
              <node concept="1OKiuA" id="oGImgOB6vq" role="2OqNvi">
                <node concept="1Q80Hx" id="oGImgOB6w4" role="lBI5i" />
                <node concept="2B6iha" id="oGImgOB6xg" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
                <node concept="3cmrfG" id="oGImgOB6yx" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="3cmrfG" id="oGImgOB6$d" role="mNZMC">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="oGImgOAKc5" role="jK8aL">
        <node concept="3clFbS" id="oGImgOAKc6" role="2VODD2">
          <node concept="3clFbF" id="oGImgOAKhH" role="3cqZAp">
            <node concept="2OqwBi" id="oGImgOAMI0" role="3clFbG">
              <node concept="2OqwBi" id="oGImgOAKzQ" role="2Oq$k0">
                <node concept="0IXxy" id="oGImgOAKhG" role="2Oq$k0" />
                <node concept="3Tsc0h" id="oGImgOAKQu" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:oGImgOv72Q" resolve="components" />
                </node>
              </node>
              <node concept="3GX2aA" id="oGImgOAOdg" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="5SyewCaviYU">
    <property role="3GE5qa" value="method" />
    <ref role="aqKnT" to="3nll:7fqk8p3W55Y" resolve="Method" />
    <node concept="1Qtc8_" id="5SyewCaviYX" role="IW6Ez">
      <node concept="IWgqT" id="5SyewCaviZ9" role="1Qtc8A">
        <node concept="1hCUdq" id="5SyewCaviZb" role="1hCUd6">
          <node concept="3clFbS" id="5SyewCaviZd" role="2VODD2">
            <node concept="3clFbF" id="5SyewCavj62" role="3cqZAp">
              <node concept="ub8z3" id="5SyewCavjuz" role="3clFbG" />
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="5SyewCaviZf" role="IWgqQ">
          <node concept="3clFbS" id="5SyewCaviZh" role="2VODD2">
            <node concept="3cpWs8" id="5SyewCavqpd" role="3cqZAp">
              <node concept="3cpWsn" id="5SyewCavqpe" role="3cpWs9">
                <property role="TrG5h" value="parameter" />
                <node concept="3Tqbb2" id="5SyewCavqmY" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                </node>
                <node concept="2ShNRf" id="5SyewCavqpf" role="33vP2m">
                  <node concept="3zrR0B" id="5SyewCavqpg" role="2ShVmc">
                    <node concept="3Tqbb2" id="5SyewCavqph" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SyewCavqrC" role="3cqZAp">
              <node concept="37vLTI" id="5SyewCavrk7" role="3clFbG">
                <node concept="ub8z3" id="5SyewCavrty" role="37vLTx" />
                <node concept="2OqwBi" id="5SyewCavqAp" role="37vLTJ">
                  <node concept="37vLTw" id="5SyewCavqrA" role="2Oq$k0">
                    <ref role="3cqZAo" node="5SyewCavqpe" resolve="parameter" />
                  </node>
                  <node concept="3TrcHB" id="5SyewCavqMR" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SyewCavr$V" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCavsb6" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCavr_r" role="2Oq$k0">
                  <node concept="7Obwk" id="5SyewCavr$U" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5SyewCavrAy" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                  </node>
                </node>
                <node concept="TSZUe" id="5SyewCavsFp" role="2OqNvi">
                  <node concept="37vLTw" id="5SyewCavsP_" role="25WWJ7">
                    <ref role="3cqZAo" node="5SyewCavqpe" resolve="parameter" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SyewCavtjS" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCavtAY" role="3clFbG">
                <node concept="37vLTw" id="5SyewCavtjQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SyewCavqpe" resolve="parameter" />
                </node>
                <node concept="1OKiuA" id="5SyewCavtOO" role="2OqNvi">
                  <node concept="1Q80Hx" id="5SyewCavtPE" role="lBI5i" />
                  <node concept="1lyA5W" id="5SyewCavtXO" role="lGT1i">
                    <property role="1lUG9U" value="parameterNameCellId" />
                  </node>
                  <node concept="3cmrfG" id="5SyewCavtZe" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                  <node concept="3cmrfG" id="5SyewCavu0w" role="mNZMC">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="5SyewCavjvd" role="2jiSrf">
          <node concept="3clFbS" id="5SyewCavjve" role="2VODD2">
            <node concept="3clFbF" id="5SyewCavj$H" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCavnrj" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCavjVo" role="2Oq$k0">
                  <node concept="7Obwk" id="5SyewCavj$G" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5SyewCavkhK" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                  </node>
                </node>
                <node concept="1v1jN8" id="5SyewCavpD_" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="5SyewCaviZ1" role="1Qtc8$">
        <node concept="CtIbL" id="5SyewCaviZ3" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="5SyewCaviYV" role="22hAXT">
      <property role="TrG5h" value="MethodInitialParameterRightTransformationMenu" />
    </node>
  </node>
  <node concept="3ICUPy" id="5SyewCawFMs">
    <property role="3GE5qa" value="method" />
    <ref role="aqKnT" to="3nll:oGImgNU0o$" resolve="IComponentWithParameters" />
    <node concept="1Qtc8_" id="5SyewCawFMv" role="IW6Ez">
      <node concept="IWgqT" id="5SyewCawFMF" role="1Qtc8A">
        <node concept="1hCUdq" id="5SyewCawFMH" role="1hCUd6">
          <node concept="3clFbS" id="5SyewCawFMJ" role="2VODD2">
            <node concept="3clFbF" id="5SyewCawFTZ" role="3cqZAp">
              <node concept="ub8z3" id="5SyewCawFTY" role="3clFbG" />
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="5SyewCawFML" role="IWgqQ">
          <node concept="3clFbS" id="5SyewCawFMN" role="2VODD2">
            <node concept="3cpWs8" id="5SyewCawMob" role="3cqZAp">
              <node concept="3cpWsn" id="5SyewCawMoc" role="3cpWs9">
                <property role="TrG5h" value="parameter" />
                <node concept="3Tqbb2" id="5SyewCawMod" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                </node>
                <node concept="2ShNRf" id="5SyewCawMoe" role="33vP2m">
                  <node concept="3zrR0B" id="5SyewCawMof" role="2ShVmc">
                    <node concept="3Tqbb2" id="5SyewCawMog" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SyewCawMoh" role="3cqZAp">
              <node concept="37vLTI" id="5SyewCawMoi" role="3clFbG">
                <node concept="ub8z3" id="5SyewCawMoj" role="37vLTx" />
                <node concept="2OqwBi" id="5SyewCawMok" role="37vLTJ">
                  <node concept="37vLTw" id="5SyewCawMol" role="2Oq$k0">
                    <ref role="3cqZAo" node="5SyewCawMoc" resolve="parameter" />
                  </node>
                  <node concept="3TrcHB" id="5SyewCawMom" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SyewCawMon" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCawMoo" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCawMop" role="2Oq$k0">
                  <node concept="7Obwk" id="5SyewCawMoq" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5SyewCawMor" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                  </node>
                </node>
                <node concept="TSZUe" id="5SyewCawMos" role="2OqNvi">
                  <node concept="37vLTw" id="5SyewCawMot" role="25WWJ7">
                    <ref role="3cqZAo" node="5SyewCawMoc" resolve="parameter" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SyewCawMou" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCawMov" role="3clFbG">
                <node concept="37vLTw" id="5SyewCawMow" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SyewCawMoc" resolve="parameter" />
                </node>
                <node concept="1OKiuA" id="5SyewCawMox" role="2OqNvi">
                  <node concept="1Q80Hx" id="5SyewCawMoy" role="lBI5i" />
                  <node concept="2TlHUq" id="5qxF18FUegI" role="lGT1i">
                    <ref role="2TlMyj" node="5SyewCavt3d" resolve="parameterNameCellId" />
                  </node>
                  <node concept="3cmrfG" id="5SyewCawMo$" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="5SyewCawFUF" role="2jiSrf">
          <node concept="3clFbS" id="5SyewCawFUG" role="2VODD2">
            <node concept="3clFbF" id="5SyewCawG0e" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCawJw5" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCawGmT" role="2Oq$k0">
                  <node concept="7Obwk" id="5SyewCawG0d" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5SyewCawGHh" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                  </node>
                </node>
                <node concept="1v1jN8" id="5SyewCawLDZ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="5SyewCawFMz" role="1Qtc8$">
        <node concept="CtIbL" id="5SyewCawFM_" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="5SyewCawFMt" role="22hAXT">
      <property role="TrG5h" value="InitialParameterLeftTransformationMenu" />
    </node>
  </node>
  <node concept="3ICUPy" id="5SyewCaQbV3">
    <property role="3GE5qa" value="import" />
    <ref role="aqKnT" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
    <node concept="1Qtc8_" id="5SyewCaQbV6" role="IW6Ez">
      <node concept="IWgqT" id="5SyewCaQbVi" role="1Qtc8A">
        <node concept="1hCUdq" id="5SyewCaQbVk" role="1hCUd6">
          <node concept="3clFbS" id="5SyewCaQbVm" role="2VODD2">
            <node concept="3clFbF" id="5SyewCaQc2d" role="3cqZAp">
              <node concept="Xl_RD" id="5SyewCaQc2c" role="3clFbG">
                <property role="Xl_RC" value="as" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="5SyewCaQbVo" role="IWgqQ">
          <node concept="3clFbS" id="5SyewCaQbVq" role="2VODD2">
            <node concept="3clFbF" id="5SyewCaQcIm" role="3cqZAp">
              <node concept="37vLTI" id="5SyewCaQdA3" role="3clFbG">
                <node concept="3clFbT" id="5SyewCaQdFc" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="5SyewCaQcU4" role="37vLTJ">
                  <node concept="7Obwk" id="5SyewCaQcIl" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5SyewCaQd87" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7fqk8p49Gdj" resolve="isAliasImport" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SyewCaRzdq" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCaRzpi" role="3clFbG">
                <node concept="7Obwk" id="5SyewCaRzdp" role="2Oq$k0" />
                <node concept="1OKiuA" id="5SyewCaRzBn" role="2OqNvi">
                  <node concept="1Q80Hx" id="5SyewCaRzC1" role="lBI5i" />
                  <node concept="2B6iha" id="5SyewCaRzDd" role="lGT1i">
                    <property role="1lyBwo" value="1S2pyLby17K/last" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="5SyewCaQc3w" role="2jiSrf">
          <node concept="3clFbS" id="5SyewCaQc3x" role="2VODD2">
            <node concept="3clFbF" id="5SyewCaQc96" role="3cqZAp">
              <node concept="3fqX7Q" id="5SyewCaQcGG" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCaQcGI" role="3fr31v">
                  <node concept="7Obwk" id="5SyewCaQcGJ" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5SyewCaQcGK" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7fqk8p49Gdj" resolve="isAliasImport" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="5SyewCaQbVa" role="1Qtc8$">
        <node concept="CtIbL" id="5SyewCaQbVc" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="5SyewCaQbV4" role="22hAXT">
      <property role="TrG5h" value="ImportAsAliasTransformationMenu" />
    </node>
  </node>
  <node concept="1h_SRR" id="5SyewCaSMUG">
    <property role="3GE5qa" value="import" />
    <property role="TrG5h" value="ImportAsDeletionKeyMap" />
    <ref role="1h_SK9" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
    <node concept="1hA7zw" id="5SyewCaSMUH" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="5SyewCaSMUI" role="1hA7z_">
        <node concept="3clFbS" id="5SyewCaSMUJ" role="2VODD2">
          <node concept="3clFbF" id="5SyewCaSN$N" role="3cqZAp">
            <node concept="2OqwBi" id="1TPnUlhivVX" role="3clFbG">
              <node concept="2OqwBi" id="5SyewCaSNKh" role="2Oq$k0">
                <node concept="0IXxy" id="5SyewCaSN$M" role="2Oq$k0" />
                <node concept="3TrcHB" id="5SyewCaSNYk" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:7fqk8p49Gdj" resolve="isAliasImport" />
                </node>
              </node>
              <node concept="tyxLq" id="1TPnUlhiwgy" role="2OqNvi">
                <node concept="3clFbT" id="1TPnUlhiwhf" role="tz02z" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5SyewCaUb3T" role="3cqZAp">
            <node concept="2OqwBi" id="5SyewCaUbfL" role="3clFbG">
              <node concept="0IXxy" id="5SyewCaUb3S" role="2Oq$k0" />
              <node concept="1OKiuA" id="5SyewCaUbtQ" role="2OqNvi">
                <node concept="1Q80Hx" id="5SyewCaUbuw" role="lBI5i" />
                <node concept="2B6iha" id="5SyewCaUbwS" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="5SyewCaSMV3" role="jK8aL">
        <node concept="3clFbS" id="5SyewCaSMV4" role="2VODD2">
          <node concept="3clFbF" id="5SyewCaSN0_" role="3cqZAp">
            <node concept="2OqwBi" id="5SyewCaSNiI" role="3clFbG">
              <node concept="0IXxy" id="5SyewCaSN0$" role="2Oq$k0" />
              <node concept="3TrcHB" id="5SyewCaSNwY" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:7fqk8p49Gdj" resolve="isAliasImport" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5SyewCaZbpd">
    <property role="3GE5qa" value="typing.generic" />
    <ref role="1XX52x" to="3nll:5SyewCaZ9pz" resolve="GenericType" />
    <node concept="3F0A7n" id="5SyewCaZbpf" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      <ref role="1k5W1q" node="1TPnUlhelZt" resolve="GenericTypeStyle" />
    </node>
  </node>
  <node concept="3ICUPy" id="5SyewCb0rGD">
    <property role="3GE5qa" value="import" />
    <ref role="aqKnT" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
    <node concept="1Qtc8_" id="5SyewCb0rGG" role="IW6Ez">
      <node concept="1GhOrh" id="mdpAJMvgaV" role="1Qtc8A">
        <node concept="1GhMSn" id="mdpAJMvgaX" role="1GhOrs">
          <node concept="3clFbS" id="mdpAJMvgaZ" role="2VODD2">
            <node concept="3clFbF" id="mdpAJMvgs3" role="3cqZAp">
              <node concept="2ShNRf" id="mdpAJMvgs1" role="3clFbG">
                <node concept="Tc6Ow" id="mdpAJMvgDb" role="2ShVmc">
                  <node concept="17QB3L" id="mdpAJMvhII" role="HW$YZ" />
                  <node concept="Xl_RD" id="mdpAJMviBZ" role="HW$Y0">
                    <property role="Xl_RC" value="&lt;" />
                  </node>
                  <node concept="Xl_RD" id="mdpAJMviHi" role="HW$Y0">
                    <property role="Xl_RC" value="&gt;" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="mdpAJMviPu" role="1GhOri">
          <node concept="1hCUdq" id="mdpAJMviPw" role="1hCUd6">
            <node concept="3clFbS" id="mdpAJMviPy" role="2VODD2">
              <node concept="3clFbF" id="mdpAJMvjqa" role="3cqZAp">
                <node concept="2ZBlsa" id="mdpAJMvjq9" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="mdpAJMviP$" role="IWgqQ">
            <node concept="3clFbS" id="mdpAJMviPA" role="2VODD2">
              <node concept="3clFbF" id="mdpAJMvkHe" role="3cqZAp">
                <node concept="2OqwBi" id="mdpAJMvkZ2" role="3clFbG">
                  <node concept="7Obwk" id="mdpAJMvkHd" role="2Oq$k0" />
                  <node concept="2qgKlT" id="mdpAJMvleH" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:mdpAJMlvHj" resolve="adjustImportStatementReferenceGenericTypes" />
                    <node concept="3cmrfG" id="mdpAJMvliU" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="mdpAJMvjCs" role="3cqZAp">
                <node concept="2OqwBi" id="mdpAJMvjCt" role="3clFbG">
                  <node concept="2OqwBi" id="mdpAJMvjCu" role="2Oq$k0">
                    <node concept="7Obwk" id="mdpAJMvjCv" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="mdpAJMvjCw" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
                    </node>
                  </node>
                  <node concept="WFELt" id="mdpAJMvjCx" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="mdpAJMvj63" role="2jiSrf">
            <node concept="3clFbS" id="mdpAJMvj64" role="2VODD2">
              <node concept="3clFbF" id="mdpAJMvjaX" role="3cqZAp">
                <node concept="2OqwBi" id="mdpAJMvjaY" role="3clFbG">
                  <node concept="2OqwBi" id="mdpAJMvjaZ" role="2Oq$k0">
                    <node concept="7Obwk" id="mdpAJMvjb0" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="mdpAJMvjb1" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="mdpAJMvjb2" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="mdpAJMvgn8" role="2ZBHrp" />
      </node>
      <node concept="3cWJ9i" id="5SyewCb0rGK" role="1Qtc8$">
        <node concept="CtIbL" id="5SyewCb0rGM" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="5SyewCb0rGE" role="22hAXT">
      <property role="TrG5h" value="ImportStatementGenericTypeTransformationMenu" />
    </node>
  </node>
  <node concept="1h_SRR" id="5SyewCb3wzw">
    <property role="3GE5qa" value="import" />
    <property role="TrG5h" value="ImportStatementGenericDeclarationDeletionActionMap" />
    <ref role="1h_SK9" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
    <node concept="1hA7zw" id="5SyewCb3wzx" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="5SyewCb3wzy" role="1hA7z_">
        <node concept="3clFbS" id="5SyewCb3wzz" role="2VODD2">
          <node concept="3clFbJ" id="3FBObrpz_6g" role="3cqZAp">
            <node concept="3clFbS" id="3FBObrpz_6i" role="3clFbx">
              <node concept="3cpWs6" id="3FBObrpzCzB" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="3FBObrpzCag" role="3clFbw">
              <node concept="0IXxy" id="3FBObrpzBYR" role="2Oq$k0" />
              <node concept="2xy62i" id="3FBObrpzCq0" role="2OqNvi">
                <node concept="1Q80Hx" id="3FBObrpzCwG" role="2xHN3q" />
                <node concept="2TlHUq" id="1TPnUlhieoG" role="3a7HXU">
                  <ref role="2TlMyj" node="omljbyuqFL" resolve="genericImportTypes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mdpAJMItDT" role="3cqZAp">
            <node concept="2OqwBi" id="mdpAJMIwIc" role="3clFbG">
              <node concept="0IXxy" id="mdpAJMItDS" role="2Oq$k0" />
              <node concept="2qgKlT" id="mdpAJMIwYf" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:mdpAJMlvHj" resolve="adjustImportStatementReferenceGenericTypes" />
                <node concept="17qRlL" id="mdpAJMIC_B" role="37wK5m">
                  <node concept="3cmrfG" id="mdpAJMICBs" role="3uHU7w">
                    <property role="3cmrfH" value="-1" />
                  </node>
                  <node concept="2OqwBi" id="mdpAJMIzjZ" role="3uHU7B">
                    <node concept="2OqwBi" id="mdpAJMIx6v" role="2Oq$k0">
                      <node concept="0IXxy" id="mdpAJMIx2s" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="mdpAJMIx7O" role="2OqNvi">
                        <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="mdpAJMI_ww" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5SyewCb3Ac2" role="3cqZAp">
            <node concept="2OqwBi" id="5SyewCb3D1p" role="3clFbG">
              <node concept="2OqwBi" id="5SyewCb3Anw" role="2Oq$k0">
                <node concept="0IXxy" id="5SyewCb3Ac1" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5SyewCb3A_z" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
                </node>
              </node>
              <node concept="2Kehj3" id="5SyewCb3G2h" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="5SyewCb3LRf" role="3cqZAp">
            <node concept="2OqwBi" id="5SyewCb3OJ6" role="3clFbG">
              <node concept="0IXxy" id="5SyewCb3LRe" role="2Oq$k0" />
              <node concept="1OKiuA" id="5SyewCb3OMx" role="2OqNvi">
                <node concept="1Q80Hx" id="5SyewCb3ONb" role="lBI5i" />
                <node concept="2B6iha" id="5SyewCb3OOn" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
                <node concept="3cmrfG" id="5SyewCb5mkp" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="5SyewCb3wzR" role="jK8aL">
        <node concept="3clFbS" id="5SyewCb3wzS" role="2VODD2">
          <node concept="3clFbF" id="5SyewCb3wDs" role="3cqZAp">
            <node concept="2OqwBi" id="5SyewCb3zWD" role="3clFbG">
              <node concept="2OqwBi" id="5SyewCb3wV_" role="2Oq$k0">
                <node concept="0IXxy" id="5SyewCb3wDr" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5SyewCb3x9P" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
                </node>
              </node>
              <node concept="3GX2aA" id="5SyewCb3A9U" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="5SyewCbwAOA">
    <property role="3GE5qa" value="method" />
    <ref role="aqKnT" to="3nll:7fqk8p3W55Y" resolve="Method" />
    <node concept="3N5dw7" id="5SyewCbwATk" role="3ft7WO">
      <node concept="3N5aqt" id="5SyewCbwATl" role="3Na0zg">
        <node concept="3clFbS" id="5SyewCbwATm" role="2VODD2">
          <node concept="3cpWs8" id="5SyewCbwATn" role="3cqZAp">
            <node concept="3cpWsn" id="5SyewCbwATo" role="3cpWs9">
              <property role="TrG5h" value="methodNode" />
              <node concept="3Tqbb2" id="5SyewCbwATp" role="1tU5fm">
                <ref role="ehGHo" to="3nll:7fqk8p3W55Y" resolve="Method" />
              </node>
              <node concept="2ShNRf" id="5SyewCbwATq" role="33vP2m">
                <node concept="3zrR0B" id="5SyewCbwATr" role="2ShVmc">
                  <node concept="3Tqbb2" id="5SyewCbwATs" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:7fqk8p3W55Y" resolve="Method" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5SyewCbwATt" role="3cqZAp">
            <node concept="37vLTI" id="5SyewCbwATu" role="3clFbG">
              <node concept="2OqwBi" id="5SyewCbwATv" role="37vLTJ">
                <node concept="37vLTw" id="5SyewCbwATw" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SyewCbwATo" resolve="methodNode" />
                </node>
                <node concept="3TrcHB" id="5SyewCbwATx" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:awtshksDjo" resolve="modifier" />
                </node>
              </node>
              <node concept="2OqwBi" id="5SyewCbwATy" role="37vLTx">
                <node concept="1XH99k" id="5SyewCbwATz" role="2Oq$k0">
                  <ref role="1XH99l" to="3nll:awtshksDj1" resolve="MethodModifier" />
                </node>
                <node concept="2ViDtW" id="5SyewCbwAT$" role="2OqNvi">
                  <node concept="2OqwBi" id="5SyewCbwAT_" role="2ViJBj">
                    <node concept="ub8z3" id="5SyewCbwATA" role="2Oq$k0" />
                    <node concept="liA8E" id="5SyewCbwATB" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5SyewCbwATC" role="3cqZAp">
            <node concept="37vLTw" id="5SyewCbwATD" role="3cqZAk">
              <ref role="3cqZAo" node="5SyewCbwATo" resolve="methodNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL3D" id="5SyewCbwATF" role="upBLP">
        <node concept="16Na2f" id="5SyewCbwATG" role="16NL3A">
          <node concept="3clFbS" id="5SyewCbwATH" role="2VODD2">
            <node concept="3clFbF" id="5SyewCbwATI" role="3cqZAp">
              <node concept="2OqwBi" id="5SyewCbwATJ" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCbwATK" role="2Oq$k0">
                  <node concept="1XH99k" id="5SyewCbwATL" role="2Oq$k0">
                    <ref role="1XH99l" to="3nll:awtshksDj1" resolve="MethodModifier" />
                  </node>
                  <node concept="2ViDtN" id="5SyewCbwATM" role="2OqNvi" />
                </node>
                <node concept="2HwmR7" id="5SyewCbwATN" role="2OqNvi">
                  <node concept="1bVj0M" id="5SyewCbwATO" role="23t8la">
                    <node concept="3clFbS" id="5SyewCbwATP" role="1bW5cS">
                      <node concept="3clFbF" id="5SyewCbwATQ" role="3cqZAp">
                        <node concept="2OqwBi" id="5SyewCbwATR" role="3clFbG">
                          <node concept="2OqwBi" id="5SyewCbwATS" role="2Oq$k0">
                            <node concept="37vLTw" id="5SyewCbwATT" role="2Oq$k0">
                              <ref role="3cqZAo" node="5SyewCbwATX" resolve="it" />
                            </node>
                            <node concept="24Tkf9" id="5SyewCbwATU" role="2OqNvi" />
                          </node>
                          <node concept="liA8E" id="5SyewCbwATV" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                            <node concept="ub8z3" id="5SyewCbwATW" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5SyewCbwATX" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5SyewCbwATY" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="5SyewCbwBg9" role="2klrvf">
        <ref role="2ZyFGn" to="3nll:7fqk8p3W55Y" resolve="Method" />
      </node>
    </node>
    <node concept="22hDWg" id="5SyewCbwAOB" role="22hAXT">
      <property role="TrG5h" value="MethodCreationKeywordsSubstiudeMenu" />
    </node>
  </node>
  <node concept="22mcaB" id="5SyewCbzcwW">
    <property role="3GE5qa" value="variable.property" />
    <ref role="aqKnT" to="3nll:7fqk8p3V6WN" resolve="Property" />
    <node concept="3N5dw7" id="5SyewCbzcxM" role="3ft7WO">
      <node concept="3N5aqt" id="5SyewCbzcxN" role="3Na0zg">
        <node concept="3clFbS" id="5SyewCbzcxO" role="2VODD2">
          <node concept="3cpWs8" id="5SyewCbzcxP" role="3cqZAp">
            <node concept="3cpWsn" id="5SyewCbzcxQ" role="3cpWs9">
              <property role="TrG5h" value="propertyNode" />
              <node concept="3Tqbb2" id="5SyewCbzcxR" role="1tU5fm">
                <ref role="ehGHo" to="3nll:7fqk8p3V6WN" resolve="Property" />
              </node>
              <node concept="2ShNRf" id="5SyewCbzcxS" role="33vP2m">
                <node concept="3zrR0B" id="5SyewCbzcxT" role="2ShVmc">
                  <node concept="3Tqbb2" id="5SyewCbzcxU" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:7fqk8p3V6WN" resolve="Property" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5SyewCbzcxV" role="3cqZAp" />
          <node concept="3clFbJ" id="5SyewCbzcxW" role="3cqZAp">
            <node concept="3clFbS" id="5SyewCbzcxX" role="3clFbx">
              <node concept="3clFbF" id="5SyewCbzcxY" role="3cqZAp">
                <node concept="37vLTI" id="5SyewCbzcxZ" role="3clFbG">
                  <node concept="3clFbT" id="5SyewCbzcy0" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="2OqwBi" id="5SyewCbzcy1" role="37vLTJ">
                    <node concept="37vLTw" id="5SyewCbzcy2" role="2Oq$k0">
                      <ref role="3cqZAo" node="5SyewCbzcxQ" resolve="propertyNode" />
                    </node>
                    <node concept="3TrcHB" id="5SyewCbzcy3" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3DbZR$ObFWz" resolve="hasGetter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5SyewCbzcy4" role="3clFbw">
              <node concept="ub8z3" id="5SyewCbzcy5" role="2Oq$k0" />
              <node concept="liA8E" id="5SyewCbzcy6" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                <node concept="Xl_RD" id="5SyewCbzcy7" role="37wK5m">
                  <property role="Xl_RC" value="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5SyewCbzcy8" role="3cqZAp" />
          <node concept="3clFbF" id="5SyewCbzcy9" role="3cqZAp">
            <node concept="37vLTw" id="5SyewCbzcya" role="3clFbG">
              <ref role="3cqZAo" node="5SyewCbzcxQ" resolve="propertyNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="5SyewCbzcyb" role="2klrvf">
        <ref role="2ZyFGn" to="3nll:7fqk8p3V6WN" resolve="Property" />
      </node>
      <node concept="16NL3D" id="5SyewCbzcyc" role="upBLP">
        <node concept="16Na2f" id="5SyewCbzcyd" role="16NL3A">
          <node concept="3clFbS" id="5SyewCbzcye" role="2VODD2">
            <node concept="3clFbF" id="5SyewCbzcyf" role="3cqZAp">
              <node concept="22lmx$" id="5SyewCbzcyg" role="3clFbG">
                <node concept="2OqwBi" id="5SyewCbzcyh" role="3uHU7w">
                  <node concept="ub8z3" id="5SyewCbzcyi" role="2Oq$k0" />
                  <node concept="liA8E" id="5SyewCbzcyj" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                    <node concept="Xl_RD" id="5SyewCbzcyk" role="37wK5m">
                      <property role="Xl_RC" value="get" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5SyewCbzcyl" role="3uHU7B">
                  <node concept="ub8z3" id="5SyewCbzcym" role="2Oq$k0" />
                  <node concept="liA8E" id="5SyewCbzcyn" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                    <node concept="Xl_RD" id="5SyewCbzcyo" role="37wK5m">
                      <property role="Xl_RC" value=":" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="5SyewCbzcwX" role="22hAXT">
      <property role="TrG5h" value="PropertyCreationKeywords_SubstitudeMenu" />
    </node>
  </node>
  <node concept="22mcaB" id="5SyewCb$u2E">
    <property role="3GE5qa" value="aggregates" />
    <ref role="aqKnT" to="3nll:awtshk_L0H" resolve="IAggregateRootComponent" />
    <node concept="2VfDsV" id="5SyewCb$u2H" role="3ft7WO" />
    <node concept="3VyMlK" id="5SyewCb$u2I" role="3ft7WO" />
    <node concept="1s_PAr" id="5SyewCb$u2J" role="3ft7WO">
      <node concept="2kknPI" id="5SyewCb$u2K" role="1s_PAo">
        <ref role="2kkw0f" node="5SyewCbwAOA" resolve="MethodCreationKeywordsSubstiudeMenu" />
      </node>
    </node>
    <node concept="3VyMlK" id="5SyewCb$u2L" role="3ft7WO" />
    <node concept="1s_PAr" id="5SyewCb$u2M" role="3ft7WO">
      <node concept="2kknPI" id="5SyewCb$u2N" role="1s_PAo">
        <ref role="2kkw0f" node="5SyewCbzcwW" resolve="PropertyCreationKeywords_SubstitudeMenu" />
      </node>
    </node>
    <node concept="22hDWj" id="5SyewCb$u2F" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="5SyewCb_JKO">
    <property role="3GE5qa" value="dto" />
    <ref role="aqKnT" to="3nll:oGImgOv72s" resolve="IDtoComponent" />
    <node concept="2VfDsV" id="5SyewCb_JKT" role="3ft7WO" />
    <node concept="3VyMlK" id="5SyewCb_JKW" role="3ft7WO" />
    <node concept="1s_PAr" id="5SyewCb_JL3" role="3ft7WO">
      <node concept="2kknPI" id="5SyewCb_JL8" role="1s_PAo">
        <ref role="2kkw0f" node="5SyewCbwAOA" resolve="MethodCreationKeywordsSubstiudeMenu" />
      </node>
    </node>
    <node concept="22hDWj" id="5SyewCb_JKP" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="5SyewCb_JLa">
    <property role="3GE5qa" value="valueObjects" />
    <ref role="aqKnT" to="3nll:oGImgN2ksO" resolve="IValueObjectComponent" />
    <node concept="22hDWj" id="5SyewCb_JLb" role="22hAXT" />
    <node concept="2VfDsV" id="5SyewCb_JLd" role="3ft7WO" />
    <node concept="3VyMlK" id="5SyewCb_JLf" role="3ft7WO" />
    <node concept="1s_PAr" id="5SyewCb_JLm" role="3ft7WO">
      <node concept="2kknPI" id="5SyewCb_JLr" role="1s_PAo">
        <ref role="2kkw0f" node="5SyewCbwAOA" resolve="MethodCreationKeywordsSubstiudeMenu" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="5SyewCbB1cc">
    <property role="3GE5qa" value="aggregateRepository" />
    <ref role="aqKnT" to="3nll:7mYw4uWx3au" resolve="IAggregateRootRepositoryComponent" />
    <node concept="2VfDsV" id="5SyewCbB1ch" role="3ft7WO" />
    <node concept="3VyMlK" id="5SyewCbB1ck" role="3ft7WO" />
    <node concept="1s_PAr" id="5SyewCbB1cr" role="3ft7WO">
      <node concept="2kknPI" id="5SyewCbB1cw" role="1s_PAo">
        <ref role="2kkw0f" node="5SyewCbwAOA" resolve="MethodCreationKeywordsSubstiudeMenu" />
      </node>
    </node>
    <node concept="22hDWj" id="5SyewCbB1cd" role="22hAXT" />
  </node>
  <node concept="1h_SRR" id="5SyewCbDEJ4">
    <property role="3GE5qa" value="import" />
    <property role="TrG5h" value="ImportStatementNonDeletableChildrenActionMap" />
    <ref role="1h_SK9" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
    <node concept="1hA7zw" id="5SyewCbDEJ5" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="5SyewCbDEJ6" role="1hA7z_">
        <node concept="3clFbS" id="5SyewCbDEJ7" role="2VODD2">
          <node concept="3clFbH" id="5SyewCbDEJr" role="3cqZAp" />
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="5SyewCbDEKh" role="1h_SK8">
      <property role="1hAc7j" value="13S4mXuSN7V/insert_action_id" />
      <node concept="1hAIg9" id="5SyewCbDEKi" role="1hA7z_">
        <node concept="3clFbS" id="5SyewCbDEKj" role="2VODD2" />
      </node>
    </node>
    <node concept="1hA7zw" id="5SyewCbDEKF" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABvta/backspace_action_id" />
      <node concept="1hAIg9" id="5SyewCbDEKG" role="1hA7z_">
        <node concept="3clFbS" id="5SyewCbDEKH" role="2VODD2" />
      </node>
    </node>
    <node concept="1hA7zw" id="5SyewCbDEL8" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABBit/end_action_id" />
      <node concept="1hAIg9" id="5SyewCbDEL9" role="1hA7z_">
        <node concept="3clFbS" id="5SyewCbDELa" role="2VODD2" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="3FBObrnMxQ0">
    <property role="3GE5qa" value="import" />
    <ref role="aqKnT" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
    <node concept="3VyMlK" id="3aCsR_dcuns" role="3ft7WO" />
    <node concept="22hDWj" id="3FBObrnMxQ1" role="22hAXT" />
    <node concept="2F$Pav" id="3FBObrnNPnX" role="3ft7WO">
      <node concept="3eGOop" id="3FBObrnNPtz" role="2$S_pN">
        <node concept="ucgPf" id="3FBObrnNPt_" role="3aKz83">
          <node concept="3clFbS" id="3FBObrnNPtB" role="2VODD2">
            <node concept="3cpWs8" id="3FBObrnRRgF" role="3cqZAp">
              <node concept="3cpWsn" id="3FBObrnRRgG" role="3cpWs9">
                <property role="TrG5h" value="importStatement" />
                <node concept="3Tqbb2" id="3FBObrnRR6Z" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
                </node>
                <node concept="2ShNRf" id="3FBObrnRRgH" role="33vP2m">
                  <node concept="3zrR0B" id="3FBObrnRRgI" role="2ShVmc">
                    <node concept="3Tqbb2" id="3FBObrnRRgJ" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3FBObrnRRn$" role="3cqZAp">
              <node concept="2OqwBi" id="omljbyByMU" role="3clFbG">
                <node concept="2OqwBi" id="3FBObrnRRzE" role="2Oq$k0">
                  <node concept="37vLTw" id="3FBObrnRRny" role="2Oq$k0">
                    <ref role="3cqZAo" node="3FBObrnRRgG" resolve="importStatement" />
                  </node>
                  <node concept="3TrEf2" id="3FBObrnRRIR" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:4Wa3rAG5JzK" resolve="importStatement" />
                  </node>
                </node>
                <node concept="2oxUTD" id="omljbyBz8z" role="2OqNvi">
                  <node concept="2ZBlsa" id="omljbyBzdW" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3FBObrnTbPF" role="3cqZAp">
              <node concept="2OqwBi" id="3FBObrnTeIp" role="3clFbG">
                <node concept="2OqwBi" id="3FBObrnTc3J" role="2Oq$k0">
                  <node concept="2ZBlsa" id="3FBObrnTbPE" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3FBObrnTciq" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
                  </node>
                </node>
                <node concept="2es0OD" id="3FBObrnThJK" role="2OqNvi">
                  <node concept="1bVj0M" id="3FBObrnThJM" role="23t8la">
                    <node concept="3clFbS" id="3FBObrnThJN" role="1bW5cS">
                      <node concept="3clFbF" id="3FBObrnThO6" role="3cqZAp">
                        <node concept="2OqwBi" id="3FBObrnTjUe" role="3clFbG">
                          <node concept="2OqwBi" id="3FBObrnThZX" role="2Oq$k0">
                            <node concept="37vLTw" id="3FBObrnThO5" role="2Oq$k0">
                              <ref role="3cqZAo" node="3FBObrnRRgG" resolve="importStatement" />
                            </node>
                            <node concept="3Tsc0h" id="3FBObrnTidB" role="2OqNvi">
                              <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                            </node>
                          </node>
                          <node concept="WFELt" id="3FBObrnTll0" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3FBObrnThJO" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3FBObrnThJP" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3FBObrnUGBR" role="3cqZAp" />
            <node concept="3clFbJ" id="3FBObrnUGLO" role="3cqZAp">
              <node concept="3clFbS" id="3FBObrnUGLQ" role="3clFbx">
                <node concept="3clFbF" id="3FBObrnUFxF" role="3cqZAp">
                  <node concept="2OqwBi" id="3FBObrnUFYA" role="3clFbG">
                    <node concept="37vLTw" id="3FBObrnUFxD" role="2Oq$k0">
                      <ref role="3cqZAo" node="3FBObrnRRgG" resolve="importStatement" />
                    </node>
                    <node concept="1OKiuA" id="3FBObrnUGcR" role="2OqNvi">
                      <node concept="1Q80Hx" id="3FBObrnUGgT" role="lBI5i" />
                      <node concept="2TlHUq" id="omljbylY_i" role="lGT1i">
                        <ref role="2TlMyj" node="3FBObrnUETT" resolve="typeVariableList" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3FBObrnUJzP" role="3clFbw">
                <node concept="2OqwBi" id="3FBObrnUH43" role="2Oq$k0">
                  <node concept="37vLTw" id="4LpUh3Uahmm" role="2Oq$k0">
                    <ref role="3cqZAo" node="3FBObrnRRgG" resolve="importStatement" />
                  </node>
                  <node concept="3Tsc0h" id="3FBObrnUHly" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                  </node>
                </node>
                <node concept="3GX2aA" id="3FBObrnULHD" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3FBObrnUGCo" role="3cqZAp" />
            <node concept="3clFbF" id="3FBObrnNUaI" role="3cqZAp">
              <node concept="37vLTw" id="3FBObrnRRgK" role="3clFbG">
                <ref role="3cqZAo" node="3FBObrnRRgG" resolve="importStatement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="3FBObrnW7o$" role="upBLP">
          <node concept="uGdhv" id="3FBObrnW7Lo" role="16NeZM">
            <node concept="3clFbS" id="3FBObrnW7Lq" role="2VODD2">
              <node concept="3clFbF" id="3FBObrnW7SI" role="3cqZAp">
                <node concept="2OqwBi" id="3FBObrnW8ci" role="3clFbG">
                  <node concept="2ZBlsa" id="3FBObrnW7SH" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3FBObrnW8qv" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="3FBObrnW8wE" role="upBLP">
          <node concept="uGdhv" id="3FBObrnW8A5" role="16NL0q">
            <node concept="3clFbS" id="3FBObrnW8A7" role="2VODD2">
              <node concept="3clFbF" id="3FBObrnW8BD" role="3cqZAp">
                <node concept="2OqwBi" id="3FBObrnW8Cd" role="3clFbG">
                  <node concept="2ZBlsa" id="3FBObrnW8BC" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3FBObrnW8Du" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3DbZR$OfNHM" resolve="qualifiedName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3FBObrnQxKD" role="2ZBHrp">
        <ref role="ehGHo" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
      </node>
      <node concept="2$S_p_" id="3FBObrnNPqw" role="2$S_pT">
        <node concept="3clFbS" id="3FBObrnNPqx" role="2VODD2">
          <node concept="3clFbF" id="3FBObrnQymj" role="3cqZAp">
            <node concept="2OqwBi" id="3FBObrnQyZF" role="3clFbG">
              <node concept="2OqwBi" id="3FBObrnQy$p" role="2Oq$k0">
                <node concept="3bvxqY" id="3FBObrnQymi" role="2Oq$k0" />
                <node concept="2Xjw5R" id="3FBObrnQyHt" role="2OqNvi">
                  <node concept="1xMEDy" id="3FBObrnQyHv" role="1xVPHs">
                    <node concept="chp4Y" id="3FBObrnQyLw" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="3FBObro0fRT" role="1xVPHs" />
                </node>
              </node>
              <node concept="2qgKlT" id="3FBObrnQzdo" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5SyewCcprln" resolve="importStatements" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="3FBObrnNPtm" role="3ft7WO" />
  </node>
  <node concept="PKFIW" id="3FBObrouWaz">
    <property role="3GE5qa" value="variable.parameter" />
    <property role="TrG5h" value="IComponentWithParametersParameterLayout" />
    <ref role="1XX52x" to="3nll:oGImgNU0o$" resolve="IComponentWithParameters" />
    <node concept="3F2HdR" id="3FBObrouWhv" role="2wV5jI">
      <property role="2czwfO" value="," />
      <property role="S$F3r" value="true" />
      <ref role="1NtTu8" to="3nll:oGImgNU0o_" resolve="parameters" />
      <node concept="l2Vlx" id="3FBObrouWhw" role="2czzBx" />
      <node concept="tppnM" id="3FBObrouWhx" role="sWeuL">
        <node concept="ljvvj" id="3FBObrouWhy" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="1TPnUlhpSsi" role="3n$kyP">
            <node concept="3clFbS" id="1TPnUlhpSsj" role="2VODD2">
              <node concept="3clFbF" id="1TPnUlhpSu9" role="3cqZAp">
                <node concept="2OqwBi" id="1TPnUlhpSJ7" role="3clFbG">
                  <node concept="pncrf" id="1TPnUlhpSu8" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1TPnUlhpSW$" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="pj6Ft" id="3FBObrouWhz" role="3F10Kt" />
      <node concept="lj46D" id="3FBObrouWh$" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="1TPnUlht$TP" role="3n$kyP">
          <node concept="3clFbS" id="1TPnUlht$TQ" role="2VODD2">
            <node concept="3clFbF" id="1TPnUlht$VG" role="3cqZAp">
              <node concept="2OqwBi" id="1TPnUlht$Wf" role="3clFbG">
                <node concept="pncrf" id="1TPnUlht$VF" role="2Oq$k0" />
                <node concept="3TrcHB" id="1TPnUlht$Xz" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ljvvj" id="3FBObrouWh_" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="1TPnUlht$kl" role="3n$kyP">
          <node concept="3clFbS" id="1TPnUlht$km" role="2VODD2">
            <node concept="3clFbF" id="1TPnUlht$q$" role="3cqZAp">
              <node concept="2OqwBi" id="1TPnUlht$DR" role="3clFbG">
                <node concept="pncrf" id="1TPnUlht$qz" role="2Oq$k0" />
                <node concept="3TrcHB" id="1TPnUlht$Rk" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3FBObrowCtA" role="2czzBI">
        <property role="3F0ifm" value="" />
        <property role="ilYzB" value="&lt;&lt; ... &gt;&gt;" />
        <node concept="A1WHu" id="3FBObrowDE1" role="3vIgyS">
          <ref role="A1WHt" node="5SyewCawFMs" resolve="InitialParameterLeftTransformationMenu" />
        </node>
        <node concept="VPxyj" id="3FBObrowDE3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="3FBObrowDE8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="OXEIz" id="3FBObrowDEc" role="P5bDN">
          <node concept="1oHujT" id="3FBObrowDEe" role="OY2wv">
            <property role="1oHujS" value="parameter" />
            <node concept="1oIgkG" id="3FBObrowDEf" role="1oHujR">
              <node concept="3clFbS" id="3FBObrowDEg" role="2VODD2">
                <node concept="3clFbF" id="3FBObrowDFB" role="3cqZAp">
                  <node concept="2OqwBi" id="3FBObrowGoZ" role="3clFbG">
                    <node concept="2OqwBi" id="3FBObrowDOC" role="2Oq$k0">
                      <node concept="3GMtW1" id="3FBObrowDFA" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="3FBObrowDXw" role="2OqNvi">
                        <ref role="3TtcxE" to="3nll:oGImgNU0o_" resolve="parameters" />
                      </node>
                    </node>
                    <node concept="2DeJg1" id="5qxF18FTPO5" role="2OqNvi">
                      <ref role="1A0vxQ" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2SqB2G" id="3FBObrpji_C" role="2SqHTX">
        <property role="TrG5h" value="parametersBody" />
      </node>
      <node concept="pkWqt" id="1TPnUlhpRPX" role="1p_IA6">
        <node concept="3clFbS" id="1TPnUlhpRPY" role="2VODD2">
          <node concept="3clFbF" id="1TPnUlhpRSD" role="3cqZAp">
            <node concept="2OqwBi" id="1TPnUlhpS7W" role="3clFbG">
              <node concept="pncrf" id="1TPnUlhpRSC" role="2Oq$k0" />
              <node concept="3TrcHB" id="1TPnUlhpSh1" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3FBObrouWtv" resolve="hasVerticallyAlignedParameters" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="3FBObrptCft">
    <property role="3GE5qa" value="stylesheets" />
    <property role="TrG5h" value="TextStyleSheet" />
    <node concept="14StLt" id="sPJqcqlEKz" role="V601i">
      <property role="TrG5h" value="KeywordStyle" />
      <node concept="VechU" id="sPJqcqlEL8" role="3F10Kt">
        <property role="Vb096" value="fLwANPp/orange" />
        <node concept="mot77" id="2QCVoC3LR6C" role="VblUZ">
          <node concept="3clFbS" id="2QCVoC3LR6D" role="2VODD2">
            <node concept="3clFbF" id="2QCVoC3LR8d" role="3cqZAp">
              <node concept="2YIFZM" id="2QCVoC3LRbB" role="3clFbG">
                <ref role="37wK5l" to="4d66:2QCVoC3$BVv" resolve="getKeywordColors" />
                <ref role="1Pybhc" to="4d66:2QCVoC3$uIT" resolve="KeywordColorUtils" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="2QCVoC4pgZ5" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="5$Oa65a1HqK" role="V601i">
      <property role="TrG5h" value="OptionalKeywordStyle" />
      <node concept="VechU" id="5$Oa65a1Hr2" role="3F10Kt">
        <property role="Vb096" value="fLwANPo/pink" />
        <node concept="mot77" id="2QCVoC3LR0J" role="VblUZ">
          <node concept="3clFbS" id="2QCVoC3LR0K" role="2VODD2">
            <node concept="3clFbF" id="2QCVoC3LR2k" role="3cqZAp">
              <node concept="2YIFZM" id="2QCVoC3LR4r" role="3clFbG">
                <ref role="37wK5l" to="4d66:2QCVoC3$C6Q" resolve="getOptionalKeywordColors" />
                <ref role="1Pybhc" to="4d66:2QCVoC3$uIT" resolve="KeywordColorUtils" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="2QCVoC4N4$9" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="1TPnUlhelZt" role="V601i">
      <property role="TrG5h" value="GenericTypeStyle" />
      <node concept="VechU" id="1TPnUlhelZL" role="3F10Kt">
        <property role="Vb096" value="fLwANPq/yellow" />
        <node concept="mot77" id="2QCVoC3LQUS" role="VblUZ">
          <node concept="3clFbS" id="2QCVoC3LQUT" role="2VODD2">
            <node concept="3clFbF" id="2QCVoC3LQWt" role="3cqZAp">
              <node concept="2YIFZM" id="2QCVoC3LQYw" role="3clFbG">
                <ref role="37wK5l" to="4d66:2QCVoC3$ClL" resolve="getGenericTypeColors" />
                <ref role="1Pybhc" to="4d66:2QCVoC3$uIT" resolve="KeywordColorUtils" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="2QCVoC4xOm7" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="7fqk8p40QL_" role="V601i">
      <property role="TrG5h" value="PrimitiveDataTypeKeywordStyle" />
      <node concept="VechU" id="7fqk8p40QLW" role="3F10Kt">
        <property role="Vb096" value="fLwANPp/orange" />
        <node concept="mot77" id="sPJqcqlF7d" role="VblUZ">
          <node concept="3clFbS" id="sPJqcqlF7e" role="2VODD2">
            <node concept="3clFbF" id="2QCVoC3$ybL" role="3cqZAp">
              <node concept="2YIFZM" id="2QCVoC3$yeI" role="3clFbG">
                <ref role="37wK5l" to="4d66:2QCVoC3$uOc" resolve="getPrimitiveTypeColors" />
                <ref role="1Pybhc" to="4d66:2QCVoC3$uIT" resolve="KeywordColorUtils" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="2QCVoC4RmLw" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="7fqk8p40QEI" role="V601i">
      <property role="TrG5h" value="CollectionDataTypeKeywordStyle" />
      <node concept="VechU" id="7fqk8p40QLl" role="3F10Kt">
        <property role="Vb096" value="fLwANPu/blue" />
        <node concept="mot77" id="2QCVoC3LRdQ" role="VblUZ">
          <node concept="3clFbS" id="2QCVoC3LRdR" role="2VODD2">
            <node concept="3clFbF" id="2QCVoC3LRhv" role="3cqZAp">
              <node concept="2YIFZM" id="2QCVoC3LRjI" role="3clFbG">
                <ref role="37wK5l" to="4d66:2QCVoC3$CPk" resolve="getCollectionTypeColors" />
                <ref role="1Pybhc" to="4d66:2QCVoC3$uIT" resolve="KeywordColorUtils" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="2QCVoC4AaYH" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="7fqk8p40QMe" role="V601i">
      <property role="TrG5h" value="BoundedContextKeywordStyle" />
      <node concept="VechU" id="7fqk8p40QMB" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/darkMagenta" />
        <node concept="mot77" id="2QCVoC3LRlZ" role="VblUZ">
          <node concept="3clFbS" id="2QCVoC3LRm0" role="2VODD2">
            <node concept="3clFbF" id="2QCVoC3LRn$" role="3cqZAp">
              <node concept="2YIFZM" id="2QCVoC3LRoY" role="3clFbG">
                <ref role="37wK5l" to="4d66:2QCVoC3$DdF" resolve="getBoundedContextColors" />
                <ref role="1Pybhc" to="4d66:2QCVoC3$uIT" resolve="KeywordColorUtils" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="2QCVoC4RmMb" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="3FBObrptC$k" role="V601i">
      <property role="TrG5h" value="ConnectingComponentKeywordStyle" />
      <node concept="VechU" id="3FBObrptC$J" role="3F10Kt">
        <property role="Vb096" value="fLwANPq/yellow" />
        <node concept="mot77" id="2QCVoC3LRrh" role="VblUZ">
          <node concept="3clFbS" id="2QCVoC3LRri" role="2VODD2">
            <node concept="3clFbF" id="2QCVoC3LRsQ" role="3cqZAp">
              <node concept="2YIFZM" id="2QCVoC3LRvd" role="3clFbG">
                <ref role="37wK5l" to="4d66:2QCVoC3$DDP" resolve="getConnectingComponentColors" />
                <ref role="1Pybhc" to="4d66:2QCVoC3$uIT" resolve="KeywordColorUtils" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="2QCVoC4RmMz" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="3FBObrptCqe" role="V601i">
      <property role="TrG5h" value="CommandComponentKeywordStyle" />
      <node concept="VechU" id="3FBObrptCqr" role="3F10Kt">
        <property role="Vb096" value="fLwANPr/green" />
        <node concept="mot77" id="2QCVoC3LRxy" role="VblUZ">
          <node concept="3clFbS" id="2QCVoC3LRxz" role="2VODD2">
            <node concept="3clFbF" id="2QCVoC3LR$T" role="3cqZAp">
              <node concept="2YIFZM" id="2QCVoC3LRBk" role="3clFbG">
                <ref role="37wK5l" to="4d66:2QCVoC3$DXO" resolve="getCommandComponentColors" />
                <ref role="1Pybhc" to="4d66:2QCVoC3$uIT" resolve="KeywordColorUtils" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="2QCVoC4RmMT" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="3FBObrptCpP" role="V601i">
      <property role="TrG5h" value="QueryComponentKeywordStyle" />
      <node concept="VechU" id="3FBObrptCq1" role="3F10Kt">
        <property role="Vb096" value="fLwANPt/cyan" />
        <node concept="mot77" id="2QCVoC3LRDF" role="VblUZ">
          <node concept="3clFbS" id="2QCVoC3LRDG" role="2VODD2">
            <node concept="3clFbF" id="2QCVoC3LRFg" role="3cqZAp">
              <node concept="2YIFZM" id="2QCVoC3LRGK" role="3clFbG">
                <ref role="37wK5l" to="4d66:2QCVoC3$Ex9" resolve="getQueryComponentColors" />
                <ref role="1Pybhc" to="4d66:2QCVoC3$uIT" resolve="KeywordColorUtils" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="2QCVoC4RmNf" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="2RbvdOJyHvg" role="V601i">
      <property role="TrG5h" value="PlaceholderTextStyle" />
      <node concept="VechU" id="2RbvdOJyHvC" role="3F10Kt">
        <property role="Vb096" value="fLJRk5_/gray" />
      </node>
      <node concept="Vb9p2" id="2RbvdOJyHvI" role="3F10Kt">
        <property role="Vbekb" value="g1_kEg4/ITALIC" />
      </node>
    </node>
    <node concept="14StLt" id="5qxF18DP0ZB" role="V601i">
      <property role="TrG5h" value="DescriptionTextStyle" />
      <node concept="Vb9p2" id="5qxF18DP105" role="3F10Kt">
        <property role="Vbekb" value="g1_kEg4/ITALIC" />
      </node>
      <node concept="VSNWy" id="5qxF18DP10b" role="3F10Kt">
        <property role="1lJzqX" value="10" />
      </node>
      <node concept="VechU" id="5qxF18DP10p" role="3F10Kt">
        <property role="Vb096" value="fLJRk5_/gray" />
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="4afTDVEbsts">
    <property role="3GE5qa" value="import" />
    <ref role="aqKnT" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
    <node concept="22hDWg" id="4afTDVEbstt" role="22hAXT">
      <property role="TrG5h" value="ImportStatementReferenceCreateTypeArgumentsTransformationMenu" />
    </node>
    <node concept="1Qtc8_" id="3aCsR_deJNA" role="IW6Ez">
      <node concept="3eGOoe" id="3aCsR_deJNE" role="1Qtc8$" />
      <node concept="mvV$s" id="3aCsR_deJQ7" role="1Qtc8A">
        <node concept="A1WHu" id="3aCsR_deJQ9" role="A14EM">
          <ref role="A1WHt" node="29ZTnyH8eIe" resolve="DataTypeTransformationMenu" />
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="4afTDVEbstv" role="IW6Ez">
      <node concept="1GhOrh" id="omljby7Qp0" role="1Qtc8A">
        <node concept="1GhMSn" id="omljby7Qp2" role="1GhOrs">
          <node concept="3clFbS" id="omljby7Qp4" role="2VODD2">
            <node concept="3clFbF" id="omljby7QBL" role="3cqZAp">
              <node concept="2ShNRf" id="omljby7QBJ" role="3clFbG">
                <node concept="Tc6Ow" id="omljby7RvM" role="2ShVmc">
                  <node concept="17QB3L" id="omljby7SrN" role="HW$YZ" />
                  <node concept="Xl_RD" id="omljby7Tmj" role="HW$Y0">
                    <property role="Xl_RC" value="&lt;" />
                  </node>
                  <node concept="Xl_RD" id="omljby7TvN" role="HW$Y0">
                    <property role="Xl_RC" value="&gt;" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="omljby7TyC" role="1GhOri">
          <node concept="1hCUdq" id="omljby7TyE" role="1hCUd6">
            <node concept="3clFbS" id="omljby7TyG" role="2VODD2">
              <node concept="3clFbF" id="omljby7TRI" role="3cqZAp">
                <node concept="2ZBlsa" id="omljby7U45" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="omljby7TyI" role="IWgqQ">
            <node concept="3clFbS" id="omljby7TyK" role="2VODD2">
              <node concept="3clFbF" id="omljby7U6I" role="3cqZAp">
                <node concept="2OqwBi" id="omljby7U6J" role="3clFbG">
                  <node concept="2OqwBi" id="omljby7U6K" role="2Oq$k0">
                    <node concept="7Obwk" id="omljby7U6L" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="omljby7U6M" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                    </node>
                  </node>
                  <node concept="WFELt" id="omljbyad08" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="omljby7TEI" role="2jiSrf">
            <node concept="3clFbS" id="omljby7TEJ" role="2VODD2">
              <node concept="3clFbF" id="omljby7TJF" role="3cqZAp">
                <node concept="2OqwBi" id="omljby7TJG" role="3clFbG">
                  <node concept="2OqwBi" id="omljby7TJH" role="2Oq$k0">
                    <node concept="7Obwk" id="omljby7TJI" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="omljby7TJJ" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="omljby7TJK" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="omljby7Qzb" role="2ZBHrp" />
      </node>
      <node concept="3cWJ9i" id="4afTDVEbstz" role="1Qtc8$">
        <node concept="CtIbL" id="4afTDVEbst_" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="6ci4EVirmMG">
    <property role="3GE5qa" value="typing.primitives" />
    <ref role="aqKnT" to="3nll:4NUTY$DwDMv" resolve="IPrimitiveType" />
    <node concept="2F$Pav" id="6ci4EVisOMW" role="3ft7WO">
      <node concept="3eGOop" id="6ci4EVisOQm" role="2$S_pN">
        <node concept="ucgPf" id="6ci4EVisOQo" role="3aKz83">
          <node concept="3clFbS" id="6ci4EVisOQq" role="2VODD2">
            <node concept="3clFbF" id="6ci4EVisOUn" role="3cqZAp">
              <node concept="2OqwBi" id="6ci4EVisYpD" role="3clFbG">
                <node concept="2ZBlsa" id="6ci4EVisOUm" role="2Oq$k0" />
                <node concept="LFhST" id="6ci4EVisYGI" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="6ci4EVisOV4" role="upBLP">
          <node concept="uGdhv" id="6ci4EVisOX$" role="16NeZM">
            <node concept="3clFbS" id="6ci4EVisOXA" role="2VODD2">
              <node concept="3clFbF" id="6ci4EVisP4C" role="3cqZAp">
                <node concept="2OqwBi" id="6ci4EVisR3I" role="3clFbG">
                  <node concept="2ZBlsa" id="6ci4EVisP4B" role="2Oq$k0" />
                  <node concept="3n3YKJ" id="6ci4EVisRrF" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="6ci4EVisR$a" role="upBLP">
          <node concept="uGdhv" id="6ci4EVisR_X" role="16NL0q">
            <node concept="3clFbS" id="6ci4EVisR_Z" role="2VODD2">
              <node concept="3clFbF" id="6ci4EVisRAR" role="3cqZAp">
                <node concept="Xl_RD" id="6ci4EVisRAQ" role="3clFbG">
                  <property role="Xl_RC" value="primitive" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2$S_p_" id="6ci4EVisONw" role="2$S_pT">
        <node concept="3clFbS" id="6ci4EVisONx" role="2VODD2">
          <node concept="3clFbF" id="6ci4EViuy3x" role="3cqZAp">
            <node concept="2OqwBi" id="6ci4EViw9bZ" role="3clFbG">
              <node concept="2OqwBi" id="6ci4EViuy3y" role="2Oq$k0">
                <node concept="35c_gC" id="6ci4EViuy3z" role="2Oq$k0">
                  <ref role="35c_gD" to="3nll:4NUTY$DwDMv" resolve="IPrimitiveType" />
                </node>
                <node concept="LSoRf" id="6ci4EViuy3$" role="2OqNvi">
                  <node concept="1rpKSd" id="6ci4EViuy3_" role="1iTxcG" />
                </node>
              </node>
              <node concept="3zZkjj" id="6ci4EViw9zM" role="2OqNvi">
                <node concept="1bVj0M" id="6ci4EViw9zO" role="23t8la">
                  <node concept="3clFbS" id="6ci4EViw9zP" role="1bW5cS">
                    <node concept="3clFbF" id="6ci4EViw9EC" role="3cqZAp">
                      <node concept="3fqX7Q" id="6ci4EViwaQ$" role="3clFbG">
                        <node concept="2OqwBi" id="6ci4EViwaQA" role="3fr31v">
                          <node concept="37vLTw" id="6ci4EViwaQB" role="2Oq$k0">
                            <ref role="3cqZAo" node="6ci4EViw9zQ" resolve="it" />
                          </node>
                          <node concept="liA8E" id="6ci4EViwaQC" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6ci4EViw9zQ" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6ci4EViw9zR" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3bZ5Sz" id="6ci4EVisXDp" role="2ZBHrp">
        <ref role="3bZ5Sy" to="3nll:4NUTY$DwDMv" resolve="IPrimitiveType" />
      </node>
    </node>
    <node concept="3VyMlK" id="6ci4EVisRtr" role="3ft7WO" />
    <node concept="22hDWj" id="6ci4EVirmMH" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="6ci4EVj$QU_">
    <property role="3GE5qa" value="typing" />
    <ref role="1XX52x" to="3nll:6ci4EVj$QUy" resolve="DataTypeWrapper" />
    <node concept="3F1sOY" id="1jrq3noom8G" role="2wV5jI">
      <property role="1$x2rV" value="&lt;type&gt;" />
      <ref role="1NtTu8" to="3nll:6ci4EVj$QUz" resolve="wrappedType" />
    </node>
  </node>
  <node concept="22mcaB" id="6ci4EVjBRqo">
    <property role="3GE5qa" value="typing" />
    <ref role="aqKnT" to="3nll:6ci4EVj$QUy" resolve="DataTypeWrapper" />
    <node concept="22hDWj" id="6ci4EVjBRqp" role="22hAXT" />
    <node concept="3N5dw7" id="6ci4EVjBRqt" role="3ft7WO">
      <node concept="3N5aqt" id="6ci4EVjBRqu" role="3Na0zg">
        <node concept="3clFbS" id="6ci4EVjBRqv" role="2VODD2">
          <node concept="3cpWs8" id="6ci4EVjBRS5" role="3cqZAp">
            <node concept="3cpWsn" id="6ci4EVjBRS6" role="3cpWs9">
              <property role="TrG5h" value="wrapper" />
              <node concept="3Tqbb2" id="6ci4EVjBRPX" role="1tU5fm">
                <ref role="ehGHo" to="3nll:6ci4EVj$QUy" resolve="DataTypeWrapper" />
              </node>
              <node concept="2ShNRf" id="6ci4EVjBRS7" role="33vP2m">
                <node concept="3zrR0B" id="6ci4EVjBRS8" role="2ShVmc">
                  <node concept="3Tqbb2" id="6ci4EVjBRS9" role="3zrR0E">
                    <ref role="ehGHo" to="3nll:6ci4EVj$QUy" resolve="DataTypeWrapper" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ci4EVjBRYi" role="3cqZAp">
            <node concept="2OqwBi" id="6ci4EVjBSsY" role="3clFbG">
              <node concept="2OqwBi" id="6ci4EVjBS9u" role="2Oq$k0">
                <node concept="37vLTw" id="6ci4EVjBRYg" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ci4EVjBRS6" resolve="wrapper" />
                </node>
                <node concept="3TrEf2" id="6ci4EVjBSj3" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:6ci4EVj$QUz" resolve="wrappedType" />
                </node>
              </node>
              <node concept="2oxUTD" id="6ci4EVjBSDT" role="2OqNvi">
                <node concept="3N4pyC" id="6ci4EVjBSJt" role="2oxUTC" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ci4EVjBRvI" role="3cqZAp">
            <node concept="37vLTw" id="6ci4EVjBRSa" role="3clFbG">
              <ref role="3cqZAo" node="6ci4EVjBRS6" resolve="wrapper" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="6ci4EVjBRsG" role="2klrvf">
        <ref role="2ZyFGn" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="2Bsub$L1YA2">
    <property role="3GE5qa" value="commandContainer" />
    <ref role="aqKnT" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="1Qtc8_" id="2Bsub$L1YA5" role="IW6Ez">
      <node concept="1GhOrh" id="4REBMItzBNT" role="1Qtc8A">
        <node concept="1GhMSn" id="4REBMItzBNV" role="1GhOrs">
          <node concept="3clFbS" id="4REBMItzBNX" role="2VODD2">
            <node concept="3clFbF" id="6Qa18YGLUBz" role="3cqZAp">
              <node concept="2OqwBi" id="6Qa18YGLVg$" role="3clFbG">
                <node concept="1XH99k" id="6Qa18YGLUBy" role="2Oq$k0">
                  <ref role="1XH99l" to="3nll:1LTEHzOdy1" resolve="CommandContainerType" />
                </node>
                <node concept="2ViDtN" id="6Qa18YGLVyw" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4REBMItzCLo" role="1GhOri">
          <node concept="1hCUdq" id="4REBMItzCLq" role="1hCUd6">
            <node concept="3clFbS" id="4REBMItzCLs" role="2VODD2">
              <node concept="3clFbF" id="4REBMItzD08" role="3cqZAp">
                <node concept="2OqwBi" id="6Qa18YGLVIh" role="3clFbG">
                  <node concept="2ZBlsa" id="4REBMItzD07" role="2Oq$k0" />
                  <node concept="1XCIdh" id="6Qa18YGLVWN" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4REBMItzCLu" role="IWgqQ">
            <node concept="3clFbS" id="4REBMItzCLw" role="2VODD2">
              <node concept="3clFbF" id="1LTEHzOj9U" role="3cqZAp">
                <node concept="2OqwBi" id="1LTEHzOjpO" role="3clFbG">
                  <node concept="2OqwBi" id="1LTEHzOjfa" role="2Oq$k0">
                    <node concept="7Obwk" id="1LTEHzOj9T" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1LTEHzOjgk" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="1LTEHzOjyM" role="2OqNvi">
                    <node concept="2ZBlsa" id="6Qa18YGLX2Z" role="tz02z" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5A5sGroi4XC" role="3cqZAp">
                <node concept="3clFbS" id="5A5sGroi4XE" role="3clFbx">
                  <node concept="3clFbF" id="51Z40VyHUYt" role="3cqZAp">
                    <node concept="2OqwBi" id="51Z40VyHVds" role="3clFbG">
                      <node concept="7Obwk" id="51Z40VyHUYs" role="2Oq$k0" />
                      <node concept="2qgKlT" id="51Z40VyHVxm" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:2RbvdOMpYd2" resolve="setName" />
                        <node concept="10Nm6u" id="51Z40VyHVAS" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="5A5sGroi70r" role="3cqZAp" />
                </node>
                <node concept="2OqwBi" id="5A5sGroi5BJ" role="3clFbw">
                  <node concept="2OqwBi" id="5A5sGroi5cy" role="2Oq$k0">
                    <node concept="7Obwk" id="5A5sGroi4Zq" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5A5sGroi5u7" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                    </node>
                  </node>
                  <node concept="21noJN" id="5A5sGroi5KZ" role="2OqNvi">
                    <node concept="21nZrQ" id="5A5sGroi5L1" role="21noJM">
                      <ref role="21nZrZ" to="3nll:1LTEHzOdy2" resolve="CommandsBlock" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="51Z40VyHVWe" role="3cqZAp" />
              <node concept="3clFbJ" id="51Z40VyHVP4" role="3cqZAp">
                <node concept="3clFbS" id="51Z40VyHVP6" role="3clFbx">
                  <node concept="3clFbJ" id="51Z40VyHWRd" role="3cqZAp">
                    <node concept="3clFbS" id="51Z40VyHWRf" role="3clFbx">
                      <node concept="3clFbF" id="51Z40VyHYuu" role="3cqZAp">
                        <node concept="2OqwBi" id="51Z40VyHZaV" role="3clFbG">
                          <node concept="2OqwBi" id="51Z40VyHYGp" role="2Oq$k0">
                            <node concept="7Obwk" id="51Z40VyHYut" role="2Oq$k0" />
                            <node concept="3TrEf2" id="51Z40VyHYZB" role="2OqNvi">
                              <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                            </node>
                          </node>
                          <node concept="3YRAZt" id="51Z40VyHZrU" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="51Z40VyHXIF" role="3clFbw">
                      <node concept="2OqwBi" id="51Z40VyHXYm" role="3uHU7w">
                        <node concept="2OqwBi" id="51Z40VyHXKl" role="2Oq$k0">
                          <node concept="7Obwk" id="51Z40VyHXJJ" role="2Oq$k0" />
                          <node concept="3TrEf2" id="51Z40VyHXLW" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:7x9oRL8vqaW" resolve="aggregateReference" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="51Z40VyHYmw" role="2OqNvi" />
                      </node>
                      <node concept="3fqX7Q" id="51Z40VyHZsC" role="3uHU7B">
                        <node concept="2OqwBi" id="51Z40VyHZsE" role="3fr31v">
                          <node concept="2OqwBi" id="51Z40VyHZsF" role="2Oq$k0">
                            <node concept="7Obwk" id="51Z40VyHZsG" role="2Oq$k0" />
                            <node concept="3TrEf2" id="51Z40VyHZsH" role="2OqNvi">
                              <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="51Z40VyHZsI" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:2RbvdOKU7zU" resolve="isNameSet" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="51Z40VyHWDu" role="3clFbw">
                  <node concept="2OqwBi" id="51Z40VyHWcc" role="2Oq$k0">
                    <node concept="7Obwk" id="51Z40VyHVY6" role="2Oq$k0" />
                    <node concept="3TrcHB" id="51Z40VyHWvL" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                    </node>
                  </node>
                  <node concept="21noJN" id="51Z40VyHWMN" role="2OqNvi">
                    <node concept="21nZrQ" id="51Z40VyHWMP" role="21noJM">
                      <ref role="21nZrZ" to="3nll:1LTEHzOdy3" resolve="CommandHandler" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="51Z40VyHVDq" role="3cqZAp" />
              <node concept="3clFbF" id="4REBMItzE15" role="3cqZAp">
                <node concept="2OqwBi" id="4REBMItzE16" role="3clFbG">
                  <node concept="2OqwBi" id="51Z40VyCcjr" role="2Oq$k0">
                    <node concept="7Obwk" id="4REBMItzE17" role="2Oq$k0" />
                    <node concept="3TrEf2" id="51Z40VyCcDW" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                    </node>
                  </node>
                  <node concept="1OKiuA" id="4REBMItzE18" role="2OqNvi">
                    <node concept="1Q80Hx" id="4REBMItzE19" role="lBI5i" />
                    <node concept="2TlHUq" id="4REBMItzE1a" role="lGT1i">
                      <ref role="2TlMyj" node="2RbvdOJ81o1" resolve="nameCellId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="4REBMItzDcs" role="2jiSrf">
            <node concept="3clFbS" id="4REBMItzDct" role="2VODD2">
              <node concept="3clFbF" id="6Qa18YGLW8v" role="3cqZAp">
                <node concept="3fqX7Q" id="6Qa18YGLX1l" role="3clFbG">
                  <node concept="2OqwBi" id="6Qa18YGLX1n" role="3fr31v">
                    <node concept="2OqwBi" id="6Qa18YGLX1o" role="2Oq$k0">
                      <node concept="7Obwk" id="6Qa18YGLX1p" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6Qa18YGLX1q" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:1LTEHzOdBW" resolve="type" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6Qa18YGLX1r" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2ZBlsa" id="6Qa18YGLX1s" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2ZThk1" id="6Qa18YGLU4U" role="2ZBHrp">
          <ref role="2ZWj4r" to="3nll:1LTEHzOdy1" resolve="CommandContainerType" />
        </node>
      </node>
      <node concept="3cWJ9i" id="2Bsub$L1YA9" role="1Qtc8$">
        <node concept="CtIbL" id="2Bsub$L1YAb" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="2Bsub$L1YA3" role="22hAXT">
      <property role="TrG5h" value="CommandContainerCommandContainerTypeTransformationMenu" />
    </node>
  </node>
  <node concept="24kQdi" id="5$Oa65a7pgN">
    <property role="3GE5qa" value="aggregateRepository" />
    <ref role="1XX52x" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
    <node concept="1iCGBv" id="5$Oa65a7pgP" role="2wV5jI">
      <property role="1$x2rV" value="&lt;aggregate repository&gt;" />
      <ref role="1NtTu8" to="3nll:5$Oa65a7pgL" resolve="aggregate" />
      <node concept="1sVBvm" id="5$Oa65a7pgR" role="1sWHZn">
        <node concept="1HlG4h" id="5$Oa65a7pgY" role="2wV5jI">
          <node concept="1HfYo3" id="5$Oa65a7ph0" role="1HlULh">
            <node concept="3TQlhw" id="5$Oa65a7ph2" role="1Hhtcw">
              <node concept="3clFbS" id="5$Oa65a7ph4" role="2VODD2">
                <node concept="3clFbF" id="6Qa18YG8_29" role="3cqZAp">
                  <node concept="2OqwBi" id="6Qa18YG8Aoq" role="3clFbG">
                    <node concept="pncrf" id="6Qa18YG8_28" role="2Oq$k0" />
                    <node concept="2qgKlT" id="6Qa18YG8AFl" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
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
  <node concept="1h_SRR" id="1TPnUlgO_kn">
    <property role="3GE5qa" value="aggregateRepository" />
    <property role="TrG5h" value="AggregateRootRepositoryReferenceDeletionActionMap" />
    <ref role="1h_SK9" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
    <node concept="1hA7zw" id="1TPnUlgO_ko" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="1TPnUlgO_kp" role="1hA7z_">
        <node concept="3clFbS" id="1TPnUlgO_kq" role="2VODD2">
          <node concept="3cpWs8" id="omljby7Ntz" role="3cqZAp">
            <node concept="3cpWsn" id="omljby7Nt$" role="3cpWs9">
              <property role="TrG5h" value="selectedNode" />
              <node concept="3Tqbb2" id="omljby7NzP" role="1tU5fm" />
              <node concept="2OqwBi" id="omljby7Nt_" role="33vP2m">
                <node concept="1Q80Hx" id="omljby7NtA" role="2Oq$k0" />
                <node concept="liA8E" id="omljby7NtB" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode()" resolve="getSelectedNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1TPnUlgOARv" role="3cqZAp">
            <node concept="3clFbS" id="1TPnUlgOARx" role="3clFbx">
              <node concept="3cpWs6" id="1TPnUlgOCxZ" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="1TPnUlgOCij" role="3clFbw">
              <node concept="37vLTw" id="omljby7NtD" role="2Oq$k0">
                <ref role="3cqZAo" node="omljby7Nt$" resolve="selectedNode" />
              </node>
              <node concept="2xy62i" id="1TPnUlgOCtZ" role="2OqNvi">
                <node concept="1Q80Hx" id="1TPnUlgOCve" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1TPnUlgOCBV" role="3cqZAp">
            <node concept="2OqwBi" id="1TPnUlgODFW" role="3clFbG">
              <node concept="37vLTw" id="omljby7NtE" role="2Oq$k0">
                <ref role="3cqZAo" node="omljby7Nt$" resolve="selectedNode" />
              </node>
              <node concept="1P9Npp" id="1TPnUlgODSf" role="2OqNvi">
                <node concept="10Nm6u" id="1TPnUlgODTl" role="1P9ThW" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="1TPnUlgO_ls" role="jK8aL">
        <node concept="3clFbS" id="1TPnUlgO_lt" role="2VODD2">
          <node concept="3clFbF" id="1TPnUlgO_rF" role="3cqZAp">
            <node concept="2OqwBi" id="1TPnUlgOAyP" role="3clFbG">
              <node concept="2OqwBi" id="1TPnUlgOA9z" role="2Oq$k0">
                <node concept="1Q80Hx" id="1TPnUlgOA0Q" role="2Oq$k0" />
                <node concept="liA8E" id="1TPnUlgOAhp" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode()" resolve="getSelectedNode" />
                </node>
              </node>
              <node concept="liA8E" id="1TPnUlgOAGv" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.isInstanceOfConcept(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isInstanceOfConcept" />
                <node concept="35c_gC" id="1TPnUlgOAHZ" role="37wK5m">
                  <ref role="35c_gD" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="1TPnUlhMRNT">
    <property role="3GE5qa" value="command" />
    <property role="TrG5h" value="CommandRequiredRepositoriesDeletionMap" />
    <ref role="1h_SK9" to="3nll:7fqk8p43ygY" resolve="Command" />
    <node concept="1hA7zw" id="1TPnUlhMRNU" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="1TPnUlhMRNV" role="1hA7z_">
        <node concept="3clFbS" id="1TPnUlhMRNW" role="2VODD2">
          <node concept="3clFbJ" id="1TPnUlhMSD2" role="3cqZAp">
            <node concept="2OqwBi" id="1TPnUlhMSGa" role="3clFbw">
              <node concept="0IXxy" id="1TPnUlhMSDu" role="2Oq$k0" />
              <node concept="2xy62i" id="1TPnUlhMSHl" role="2OqNvi">
                <node concept="1Q80Hx" id="1TPnUlhMSHV" role="2xHN3q" />
                <node concept="2TlHUq" id="1TPnUlhMSJ1" role="3a7HXU">
                  <ref role="2TlMyj" node="1TPnUlhMOZK" resolve="requiredRepositoriesLayout" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1TPnUlhMSD4" role="3clFbx">
              <node concept="3cpWs6" id="1TPnUlhMSLp" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="1LTEHzIEcZ" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHzIExa" role="3clFbG">
              <node concept="0IXxy" id="1LTEHzIEcY" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHzIEQi" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTikSOJ" resolve="resetReferences" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1TPnUlhN20V" role="3cqZAp">
            <node concept="2OqwBi" id="1TPnUlhN4o1" role="3clFbG">
              <node concept="0IXxy" id="1TPnUlhN20U" role="2Oq$k0" />
              <node concept="1OKiuA" id="1TPnUlhN57p" role="2OqNvi">
                <node concept="1Q80Hx" id="1TPnUlhN583" role="lBI5i" />
                <node concept="2B6iha" id="4REBMItCL$t" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
                <node concept="3cmrfG" id="omljbxiOpD" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="1TPnUlhMROg" role="jK8aL">
        <node concept="3clFbS" id="1TPnUlhMROh" role="2VODD2">
          <node concept="3clFbF" id="4REBMItEDwz" role="3cqZAp">
            <node concept="2OqwBi" id="4REBMItEEFI" role="3clFbG">
              <node concept="0IXxy" id="4REBMItEEET" role="2Oq$k0" />
              <node concept="3TrcHB" id="4REBMItEEHy" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="4REBMIsTCAS">
    <property role="3GE5qa" value="aggregateRepository" />
    <ref role="aqKnT" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
    <node concept="2XrIbr" id="3VGLvhFwvU5" role="32lrUH">
      <property role="TrG5h" value="provideAggregateRootsForCommand" />
      <node concept="37vLTG" id="3VGLvhFwx5$" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3VGLvhFwx78" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p43ygY" resolve="Command" />
        </node>
      </node>
      <node concept="37vLTG" id="3VGLvhFwz03" role="3clF46">
        <property role="TrG5h" value="targetNode" />
        <node concept="3Tqbb2" id="3VGLvhFwz9O" role="1tU5fm">
          <ref role="ehGHo" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
        </node>
      </node>
      <node concept="A3Dl8" id="3VGLvhFwx1s" role="3clF45">
        <node concept="3Tqbb2" id="3VGLvhFwx3A" role="A3Ik2">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
        </node>
      </node>
      <node concept="3clFbS" id="3VGLvhFwvU7" role="3clF47">
        <node concept="3clFbF" id="3VGLvhFwzhA" role="3cqZAp">
          <node concept="2OqwBi" id="3VGLvhFwx82" role="3clFbG">
            <node concept="2OqwBi" id="3VGLvhFwx83" role="2Oq$k0">
              <node concept="2OqwBi" id="3VGLvhFwx84" role="2Oq$k0">
                <node concept="37vLTw" id="3VGLvhFwx85" role="2Oq$k0">
                  <ref role="3cqZAo" node="3VGLvhFwx5$" resolve="node" />
                </node>
                <node concept="2qgKlT" id="3VGLvhFwx86" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="3VGLvhFwx87" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
              </node>
            </node>
            <node concept="3zZkjj" id="3VGLvhFwx88" role="2OqNvi">
              <node concept="1bVj0M" id="3VGLvhFwx89" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="3VGLvhFwx8a" role="1bW5cS">
                  <node concept="3clFbF" id="3VGLvhFwx8b" role="3cqZAp">
                    <node concept="1Wc70l" id="3VGLvhFwx8c" role="3clFbG">
                      <node concept="1eOMI4" id="3VGLvhFwx8d" role="3uHU7w">
                        <node concept="22lmx$" id="3VGLvhFwx8e" role="1eOMHV">
                          <node concept="3fqX7Q" id="3VGLvhFwx8f" role="3uHU7B">
                            <node concept="2OqwBi" id="3VGLvhFwx8g" role="3fr31v">
                              <node concept="37vLTw" id="3VGLvhFwx8h" role="2Oq$k0">
                                <ref role="3cqZAo" node="3VGLvhFwx5$" resolve="node" />
                              </node>
                              <node concept="2qgKlT" id="3VGLvhFwx8i" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                                <node concept="37vLTw" id="3VGLvhFwx8j" role="37wK5m">
                                  <ref role="3cqZAo" node="3VGLvhFwx8w" resolve="aggregate" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="3VGLvhFwx8k" role="3uHU7w">
                            <node concept="37vLTw" id="3VGLvhFwx8l" role="3uHU7B">
                              <ref role="3cqZAo" node="3VGLvhFwx8w" resolve="aggregate" />
                            </node>
                            <node concept="2OqwBi" id="3VGLvhFwx8m" role="3uHU7w">
                              <node concept="37vLTw" id="3VGLvhFwzd2" role="2Oq$k0">
                                <ref role="3cqZAo" node="3VGLvhFwz03" resolve="targetNode" />
                              </node>
                              <node concept="3TrEf2" id="3VGLvhFwx8o" role="2OqNvi">
                                <ref role="3Tt5mk" to="3nll:5$Oa65a7pgL" resolve="aggregate" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="3VGLvhFwx8p" role="3uHU7B">
                        <node concept="2OqwBi" id="3VGLvhFwx8q" role="3fr31v">
                          <node concept="2qgKlT" id="3VGLvhFwx8r" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                            <node concept="37vLTw" id="3VGLvhFwx8s" role="37wK5m">
                              <ref role="3cqZAo" node="3VGLvhFwx8w" resolve="aggregate" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3VGLvhFwx8t" role="2Oq$k0">
                            <node concept="37vLTw" id="3VGLvhFwx8u" role="2Oq$k0">
                              <ref role="3cqZAo" node="3VGLvhFwx5$" resolve="node" />
                            </node>
                            <node concept="2qgKlT" id="3VGLvhFwx8v" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:5$Oa659Yq3n" resolve="getCommandContainer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3VGLvhFwx8w" role="1bW2Oz">
                  <property role="TrG5h" value="aggregate" />
                  <node concept="2jxLKc" id="3VGLvhFwx8x" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3VGLvhFwvU8" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3VGLvhFwzoT" role="32lrUH">
      <property role="TrG5h" value="proAggregateRootsForCommandContainer" />
      <node concept="37vLTG" id="3VGLvhFw$dv" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3VGLvhFw$fE" role="1tU5fm">
          <ref role="ehGHo" to="3nll:awtshkmllB" resolve="CommandContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="3VGLvhFw$gz" role="3clF46">
        <property role="TrG5h" value="targetNode" />
        <node concept="3Tqbb2" id="3VGLvhFw$iK" role="1tU5fm">
          <ref role="ehGHo" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
        </node>
      </node>
      <node concept="3clFbS" id="3VGLvhFwzoV" role="3clF47">
        <node concept="3clFbF" id="3VGLvhFw$Us" role="3cqZAp">
          <node concept="2OqwBi" id="3VGLvhFw$lZ" role="3clFbG">
            <node concept="2OqwBi" id="3VGLvhFw$m0" role="2Oq$k0">
              <node concept="2OqwBi" id="3VGLvhFw$m1" role="2Oq$k0">
                <node concept="37vLTw" id="3VGLvhFw$m2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3VGLvhFw$dv" resolve="node" />
                </node>
                <node concept="2qgKlT" id="3VGLvhFw$m3" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="3VGLvhFw$m4" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
              </node>
            </node>
            <node concept="3zZkjj" id="3VGLvhFw$m5" role="2OqNvi">
              <node concept="1bVj0M" id="3VGLvhFw$m6" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="3VGLvhFw$m7" role="1bW5cS">
                  <node concept="3clFbF" id="3VGLvhFw$m8" role="3cqZAp">
                    <node concept="22lmx$" id="3VGLvhFw$m9" role="3clFbG">
                      <node concept="3fqX7Q" id="3VGLvhFw$ma" role="3uHU7B">
                        <node concept="2OqwBi" id="3VGLvhFw$mb" role="3fr31v">
                          <node concept="2qgKlT" id="3VGLvhFw$mc" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                            <node concept="37vLTw" id="3VGLvhFw$md" role="37wK5m">
                              <ref role="3cqZAo" node="3VGLvhFw$mk" resolve="aggregate" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3VGLvhFw$me" role="2Oq$k0">
                            <ref role="3cqZAo" node="3VGLvhFw$dv" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="3VGLvhFw$mf" role="3uHU7w">
                        <node concept="2OqwBi" id="3VGLvhFw$mg" role="3uHU7w">
                          <node concept="37vLTw" id="3VGLvhFw_8M" role="2Oq$k0">
                            <ref role="3cqZAo" node="3VGLvhFw$gz" resolve="targetNode" />
                          </node>
                          <node concept="3TrEf2" id="3VGLvhFw$mi" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:5$Oa65a7pgL" resolve="aggregate" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3VGLvhFw$mj" role="3uHU7B">
                          <ref role="3cqZAo" node="3VGLvhFw$mk" resolve="aggregate" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3VGLvhFw$mk" role="1bW2Oz">
                  <property role="TrG5h" value="aggregate" />
                  <node concept="2jxLKc" id="3VGLvhFw$ml" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3VGLvhFwzoW" role="1B3o_S" />
      <node concept="A3Dl8" id="3VGLvhFw$bw" role="3clF45">
        <node concept="3Tqbb2" id="3VGLvhFw$bx" role="A3Ik2">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
        </node>
      </node>
    </node>
    <node concept="22hDWj" id="4REBMIsTCAT" role="22hAXT" />
    <node concept="2F$Pav" id="4REBMIsVcLy" role="3ft7WO">
      <node concept="3eGOop" id="4REBMIsVcQ8" role="2$S_pN">
        <node concept="ucgPf" id="4REBMIsVcQa" role="3aKz83">
          <node concept="3clFbS" id="4REBMIsVcQc" role="2VODD2">
            <node concept="3cpWs8" id="4REBMIsVpsn" role="3cqZAp">
              <node concept="3cpWsn" id="4REBMIsVpso" role="3cpWs9">
                <property role="TrG5h" value="reference" />
                <node concept="3Tqbb2" id="4REBMIsVpsp" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
                </node>
                <node concept="2ShNRf" id="4REBMIsVpsq" role="33vP2m">
                  <node concept="3zrR0B" id="4REBMIsVpsr" role="2ShVmc">
                    <node concept="3Tqbb2" id="4REBMIsVpss" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:5$Oa65a7dGq" resolve="AggregateRootRepositoryReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4REBMIsVpst" role="3cqZAp">
              <node concept="2OqwBi" id="4REBMIsVpsu" role="3clFbG">
                <node concept="2OqwBi" id="4REBMIsVpsv" role="2Oq$k0">
                  <node concept="37vLTw" id="4REBMIsVpsw" role="2Oq$k0">
                    <ref role="3cqZAo" node="4REBMIsVpso" resolve="reference" />
                  </node>
                  <node concept="3TrEf2" id="4REBMIsVpsx" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:5$Oa65a7pgL" resolve="aggregate" />
                  </node>
                </node>
                <node concept="2oxUTD" id="4REBMIsVpsy" role="2OqNvi">
                  <node concept="2ZBlsa" id="4REBMIsVpA4" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4REBMIu$pv8" role="3cqZAp" />
            <node concept="Jncv_" id="3VGLvhFwGW6" role="3cqZAp">
              <ref role="JncvD" to="3nll:awtshkmllB" resolve="CommandContainer" />
              <node concept="3bvxqY" id="3VGLvhFwH4H" role="JncvB" />
              <node concept="3clFbS" id="3VGLvhFwGWa" role="Jncv$">
                <node concept="3clFbF" id="3VGLvhFwHz3" role="3cqZAp">
                  <node concept="2OqwBi" id="3VGLvhFwHz4" role="3clFbG">
                    <node concept="2OqwBi" id="3VGLvhFwHz5" role="2Oq$k0">
                      <node concept="2qgKlT" id="3VGLvhFwHz9" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:oGImgOKxc1" resolve="commands" />
                      </node>
                      <node concept="Jnkvi" id="3VGLvhFwJZC" role="2Oq$k0">
                        <ref role="1M0zk5" node="3VGLvhFwGWc" resolve="commandContainer" />
                      </node>
                    </node>
                    <node concept="2es0OD" id="3VGLvhFwHza" role="2OqNvi">
                      <node concept="1bVj0M" id="3VGLvhFwHzb" role="23t8la">
                        <node concept="3clFbS" id="3VGLvhFwHzc" role="1bW5cS">
                          <node concept="3clFbF" id="mdpAJLyvuv" role="3cqZAp">
                            <node concept="2OqwBi" id="mdpAJLywKb" role="3clFbG">
                              <node concept="Jnkvi" id="mdpAJLyvut" role="2Oq$k0">
                                <ref role="1M0zk5" node="3VGLvhFwGWc" resolve="commandContainer" />
                              </node>
                              <node concept="2qgKlT" id="mdpAJLyxcd" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTikSPa" resolve="removeReference" />
                                <node concept="2ZBlsa" id="mdpAJLyxBj" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="mdpAJLyzDi" role="3cqZAp">
                            <node concept="2OqwBi" id="mdpAJLy$GI" role="3clFbG">
                              <node concept="Jnkvi" id="mdpAJLy$_5" role="2Oq$k0">
                                <ref role="1M0zk5" node="3VGLvhFwGWc" resolve="commandContainer" />
                              </node>
                              <node concept="2qgKlT" id="mdpAJLz1bY" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTikSOY" resolve="resetReferencesIfEmpty" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="3VGLvhFwHzE" role="1bW2Oz">
                          <property role="TrG5h" value="command" />
                          <node concept="2jxLKc" id="3VGLvhFwHzF" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="3VGLvhFwGWc" role="JncvA">
                <property role="TrG5h" value="commandContainer" />
                <node concept="2jxLKc" id="3VGLvhFwGWd" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbH" id="3VGLvhFwFLo" role="3cqZAp" />
            <node concept="3clFbF" id="4REBMIsVps$" role="3cqZAp">
              <node concept="37vLTw" id="4REBMIsVps_" role="3clFbG">
                <ref role="3cqZAo" node="4REBMIsVpso" resolve="reference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="4REBMIsVd08" role="upBLP">
          <node concept="uGdhv" id="4REBMIsVd0B" role="16NeZM">
            <node concept="3clFbS" id="4REBMIsVd0D" role="2VODD2">
              <node concept="3clFbF" id="6Qa18YG1GP5" role="3cqZAp">
                <node concept="2OqwBi" id="6Qa18YG1HgG" role="3clFbG">
                  <node concept="2ZBlsa" id="6Qa18YG1GP4" role="2Oq$k0" />
                  <node concept="2qgKlT" id="6Qa18YG1Hyz" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="4REBMIsVd1F" role="upBLP">
          <node concept="2h3Zct" id="6gxxZVrZj0m" role="16NL0q">
            <property role="2h4Kg1" value="AggregateRepository" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4REBMIsVcN2" role="2ZBHrp">
        <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
      </node>
      <node concept="2$S_p_" id="4REBMIsVcN5" role="2$S_pT">
        <node concept="3clFbS" id="4REBMIsVcN6" role="2VODD2">
          <node concept="Jncv_" id="3VGLvhFwD3B" role="3cqZAp">
            <ref role="JncvD" to="3nll:7fqk8p43ygY" resolve="Command" />
            <node concept="3bvxqY" id="3VGLvhFwD8x" role="JncvB" />
            <node concept="3clFbS" id="3VGLvhFwD3F" role="Jncv$">
              <node concept="3cpWs6" id="3VGLvhFwDko" role="3cqZAp">
                <node concept="2OqwBi" id="3VGLvhFwDkp" role="3cqZAk">
                  <node concept="2WthIp" id="3VGLvhFwDkq" role="2Oq$k0" />
                  <node concept="2XshWL" id="3VGLvhFwDkr" role="2OqNvi">
                    <ref role="2WH_rO" node="3VGLvhFwvU5" resolve="provideAggregateRootsForCommand" />
                    <node concept="Jnkvi" id="3VGLvhFwEbl" role="2XxRq1">
                      <ref role="1M0zk5" node="3VGLvhFwD3H" resolve="command" />
                    </node>
                    <node concept="1yR$tW" id="3VGLvhFwDkt" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3VGLvhFwD3H" role="JncvA">
              <property role="TrG5h" value="command" />
              <node concept="2jxLKc" id="3VGLvhFwD3I" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="3VGLvhFwBMY" role="3cqZAp" />
          <node concept="Jncv_" id="3VGLvhFwEl$" role="3cqZAp">
            <ref role="JncvD" to="3nll:awtshkmllB" resolve="CommandContainer" />
            <node concept="3bvxqY" id="3VGLvhFwEqv" role="JncvB" />
            <node concept="3clFbS" id="3VGLvhFwElC" role="Jncv$">
              <node concept="3cpWs6" id="3VGLvhFwEQG" role="3cqZAp">
                <node concept="2OqwBi" id="3VGLvhFwEQH" role="3cqZAk">
                  <node concept="2WthIp" id="3VGLvhFwEQI" role="2Oq$k0" />
                  <node concept="2XshWL" id="3VGLvhFwEQJ" role="2OqNvi">
                    <ref role="2WH_rO" node="3VGLvhFwzoT" resolve="proAggregateRootsForCommandContainer" />
                    <node concept="Jnkvi" id="3VGLvhFwFcZ" role="2XxRq1">
                      <ref role="1M0zk5" node="3VGLvhFwElE" resolve="commandContainer" />
                    </node>
                    <node concept="1yR$tW" id="3VGLvhFwEQL" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3VGLvhFwElE" role="JncvA">
              <property role="TrG5h" value="commandContainer" />
              <node concept="2jxLKc" id="3VGLvhFwElF" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="3VGLvhFwEM3" role="3cqZAp" />
          <node concept="3clFbF" id="4REBMIsVeGp" role="3cqZAp">
            <node concept="2ShNRf" id="4REBMIsVeGq" role="3clFbG">
              <node concept="Tc6Ow" id="4REBMIsVeGr" role="2ShVmc">
                <node concept="3Tqbb2" id="4REBMIsVeGs" role="HW$YZ">
                  <ref role="ehGHo" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="4REBMIsVcPV" role="3ft7WO" />
  </node>
  <node concept="1h_SRR" id="4REBMIteYUX">
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="CommandContainerRequiresKeywordDeletionMap" />
    <ref role="1h_SK9" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="1hA7zw" id="4REBMIteYUY" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="4REBMIteYUZ" role="1hA7z_">
        <node concept="3clFbS" id="4REBMIteYV0" role="2VODD2">
          <node concept="3clFbJ" id="4REBMItiFan" role="3cqZAp">
            <node concept="3clFbS" id="4REBMItiFao" role="3clFbx">
              <node concept="3cpWs6" id="4REBMItiFap" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="4REBMItiFaq" role="3clFbw">
              <node concept="0IXxy" id="4REBMItiFar" role="2Oq$k0" />
              <node concept="2xy62i" id="4REBMItiFas" role="2OqNvi">
                <node concept="1Q80Hx" id="4REBMItiFat" role="2xHN3q" />
                <node concept="2TlHUq" id="4REBMItiFau" role="3a7HXU">
                  <ref role="2TlMyj" node="4REBMItiAun" resolve="requiresBlockCellId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1LTEHzGTav" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHzGToD" role="3clFbG">
              <node concept="0IXxy" id="1LTEHzGTau" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHzGTYl" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTikSOJ" resolve="resetReferences" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="51Z40VwJ4GT" role="3cqZAp" />
          <node concept="3clFbJ" id="51Z40VwJ4LP" role="3cqZAp">
            <node concept="3clFbS" id="51Z40VwJ4LR" role="3clFbx">
              <node concept="3clFbF" id="51Z40VwJ5qk" role="3cqZAp">
                <node concept="2OqwBi" id="51Z40VwJ5ql" role="3clFbG">
                  <node concept="0IXxy" id="51Z40VwJ5qm" role="2Oq$k0" />
                  <node concept="1OKiuA" id="51Z40VwJ5qn" role="2OqNvi">
                    <node concept="1Q80Hx" id="51Z40VwJ5qo" role="lBI5i" />
                    <node concept="2TlHUq" id="51Z40VwJ5qp" role="lGT1i">
                      <ref role="2TlMyj" node="51Z40VwF_aU" resolve="forAggregateBlockId" />
                    </node>
                    <node concept="3cmrfG" id="51Z40VwJ5qq" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="51Z40VwJ5qr" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="51Z40VwJ537" role="3clFbw">
              <node concept="0IXxy" id="51Z40VwJ4NJ" role="2Oq$k0" />
              <node concept="3TrcHB" id="51Z40VwJ5oU" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6Qa18YGLS05" role="3cqZAp" />
          <node concept="3clFbJ" id="6Qa18YGLS3_" role="3cqZAp">
            <node concept="3clFbS" id="6Qa18YGLS3B" role="3clFbx">
              <node concept="3clFbF" id="51Z40VyErIO" role="3cqZAp">
                <node concept="2OqwBi" id="51Z40VyErIP" role="3clFbG">
                  <node concept="2OqwBi" id="51Z40VyErIQ" role="2Oq$k0">
                    <node concept="0IXxy" id="51Z40VyErIR" role="2Oq$k0" />
                    <node concept="3TrEf2" id="51Z40VyErIS" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                    </node>
                  </node>
                  <node concept="1OKiuA" id="51Z40VyErIT" role="2OqNvi">
                    <node concept="1Q80Hx" id="51Z40VyErIU" role="lBI5i" />
                    <node concept="2TlHUq" id="51Z40VyErIV" role="lGT1i">
                      <ref role="2TlMyj" node="2RbvdOJ81o1" resolve="nameCellId" />
                    </node>
                    <node concept="3cmrfG" id="51Z40VyErIW" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6Qa18YGLSAD" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="6Qa18YGLSi2" role="3clFbw">
              <node concept="0IXxy" id="6Qa18YGLS4U" role="2Oq$k0" />
              <node concept="2qgKlT" id="6Qa18YGLSzB" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHzOfCt" resolve="isCommandHandler" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4REBMItmjfs" role="3cqZAp">
            <node concept="2OqwBi" id="4REBMItml_g" role="3clFbG">
              <node concept="0IXxy" id="4REBMItmjfr" role="2Oq$k0" />
              <node concept="1OKiuA" id="4REBMItmlQM" role="2OqNvi">
                <node concept="1Q80Hx" id="4REBMItmlRs" role="lBI5i" />
                <node concept="2TlHUq" id="4REBMIto1Ek" role="lGT1i">
                  <ref role="2TlMyj" node="6Qa18YGLSVu" resolve="containerTypeCellId" />
                </node>
                <node concept="3cmrfG" id="4REBMItmm0X" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="4REBMIteZNK" role="jK8aL">
        <node concept="3clFbS" id="4REBMIteZNL" role="2VODD2">
          <node concept="3clFbF" id="4REBMIteZTA" role="3cqZAp">
            <node concept="2OqwBi" id="4REBMItf0cD" role="3clFbG">
              <node concept="0IXxy" id="4REBMIteZT_" role="2Oq$k0" />
              <node concept="3TrcHB" id="4REBMItfhTn" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="4REBMItTKY0">
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="IComponentWithAggregateRepositoryReferencesEditorComponent" />
    <ref role="1XX52x" to="3nll:4REBMItTCF3" resolve="IComponentWithAggregateRootRepositoryReferences" />
    <node concept="3EZMnI" id="4REBMItTLwa" role="2wV5jI">
      <node concept="3F0ifn" id="4REBMItTLwb" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" node="4REBMIum1$x" resolve="LeftSquareBrace" />
        <node concept="ljvvj" id="4REBMItTLwc" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4REBMItTLwd" role="3n$kyP">
            <node concept="3clFbS" id="4REBMItTLwe" role="2VODD2">
              <node concept="3clFbF" id="4REBMItTLwf" role="3cqZAp">
                <node concept="2OqwBi" id="4REBMItTLwg" role="3clFbG">
                  <node concept="pncrf" id="4REBMItTLwh" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4REBMItTLwi" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="4REBMItTLwj" role="2SqHTX">
          <property role="TrG5h" value="repositoryReferenceListStartCellId" />
        </node>
      </node>
      <node concept="3F2HdR" id="4REBMItTLwk" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
        <ref role="APP_o" node="1TPnUlgO_kn" resolve="AggregateRootRepositoryReferenceDeletionActionMap" />
        <node concept="l2Vlx" id="4REBMItTLwl" role="2czzBx" />
        <node concept="tppnM" id="4REBMItTLwm" role="sWeuL">
          <node concept="ljvvj" id="4REBMItTLwn" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="4REBMItTLwo" role="3n$kyP">
              <node concept="3clFbS" id="4REBMItTLwp" role="2VODD2">
                <node concept="3clFbF" id="4REBMItTLwq" role="3cqZAp">
                  <node concept="2OqwBi" id="4REBMItTLwr" role="3clFbG">
                    <node concept="pncrf" id="4REBMItTLws" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4REBMItTLwt" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pj6Ft" id="4REBMItTLwu" role="3F10Kt" />
        <node concept="ljvvj" id="4REBMItTLwv" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4REBMItTLww" role="3n$kyP">
            <node concept="3clFbS" id="4REBMItTLwx" role="2VODD2">
              <node concept="3clFbF" id="4REBMItTLwy" role="3cqZAp">
                <node concept="2OqwBi" id="4REBMItTLwz" role="3clFbG">
                  <node concept="pncrf" id="4REBMItTLw$" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4REBMItTLw_" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="4REBMItTLwA" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4REBMItTLwB" role="3n$kyP">
            <node concept="3clFbS" id="4REBMItTLwC" role="2VODD2">
              <node concept="3clFbF" id="4REBMItTLwD" role="3cqZAp">
                <node concept="2OqwBi" id="4REBMItTLwE" role="3clFbG">
                  <node concept="pncrf" id="4REBMItTLwF" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4REBMItTLwG" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4REBMItTLwH" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" node="4REBMIum1$D" resolve="RightSquareBrace" />
      </node>
      <node concept="l2Vlx" id="4REBMItTLwI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1WhJCpUQoKd">
    <property role="3GE5qa" value="dtoRepository" />
    <ref role="1XX52x" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
    <node concept="3EZMnI" id="1WhJCpUQoKf" role="2wV5jI">
      <node concept="3F0ifn" id="1WhJCpUQoKp" role="3EZMnx">
        <property role="3F0ifm" value="dto repository" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="PMmxH" id="2RbvdOM0mkO" role="3EZMnx">
        <ref role="PMmxG" node="2RbvdOLp5Ws" resolve="IComponentWithNamePlaceholder_EditorComponent" />
      </node>
      <node concept="3F0ifn" id="1WhJCpUQsWS" role="3EZMnx">
        <property role="3F0ifm" value="of" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F1sOY" id="1WhJCpUQsXk" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
      </node>
      <node concept="3F0ifn" id="1WhJCpUQsYC" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="1WhJCpUQsYU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="1WhJCpUQtbe" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:1WhJCpUQt0d" resolve="components" />
        <node concept="2iRkQZ" id="1WhJCpUQtb_" role="2czzBx" />
        <node concept="lj46D" id="1WhJCpUQtbC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1WhJCpUQtbH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1WhJCpUQsZS" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
      <node concept="l2Vlx" id="1WhJCpUQoKi" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1WhJCpUZu2U">
    <property role="3GE5qa" value="dtoRepository.query" />
    <ref role="1XX52x" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
    <node concept="3EZMnI" id="1WhJCpUZu2W" role="2wV5jI">
      <node concept="3F0ifn" id="1WhJCpUZu36" role="3EZMnx">
        <property role="3F0ifm" value="query methods" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="1WhJCpUZu3c" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" node="5SyewCboVA6" resolve="LeftBrace" />
      </node>
      <node concept="3F2HdR" id="1WhJCpUZu3k" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="3nll:1WhJCpUZu2S" resolve="queryRefernces" />
        <node concept="l2Vlx" id="1WhJCpUZu3m" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="1WhJCpUZu3x" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="1WhJCpUZu2Z" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1WhJCpV0So3">
    <property role="3GE5qa" value="query" />
    <ref role="1XX52x" to="3nll:7fqk8p43yh7" resolve="QueryReference" />
    <node concept="1iCGBv" id="1WhJCpV0So5" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:7fqk8p43yh8" resolve="query" />
      <node concept="1sVBvm" id="1WhJCpV0So7" role="1sWHZn">
        <node concept="3F0A7n" id="1WhJCpV0Soe" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPxyj" id="1WhJCpV2jE7" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="6gxxZVrO$eO">
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="IComponentWithDtoRepositoryReferencesEditorComponent" />
    <ref role="1XX52x" to="3nll:6gxxZVrO$5G" resolve="IComponentWithDtoRepositoryReferences" />
    <node concept="3EZMnI" id="6gxxZVrO$nL" role="2wV5jI">
      <node concept="3F0ifn" id="6gxxZVrO$nM" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" node="4REBMIum1$x" resolve="LeftSquareBrace" />
        <node concept="ljvvj" id="6gxxZVrO$nN" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6gxxZVrO$nO" role="3n$kyP">
            <node concept="3clFbS" id="6gxxZVrO$nP" role="2VODD2">
              <node concept="3clFbF" id="6gxxZVrO$nQ" role="3cqZAp">
                <node concept="2OqwBi" id="6gxxZVrO$nR" role="3clFbG">
                  <node concept="pncrf" id="6gxxZVrO$nS" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6gxxZVrO$nT" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="6gxxZVrO$nU" role="2SqHTX">
          <property role="TrG5h" value="repositoryReferenceListStartCellId" />
        </node>
      </node>
      <node concept="3F2HdR" id="6gxxZVrO$nV" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
        <ref role="APP_o" node="6gxxZVrSZbT" resolve="DtoRepositoryReferenceDeletionActionMap" />
        <node concept="l2Vlx" id="6gxxZVrO$nW" role="2czzBx" />
        <node concept="tppnM" id="6gxxZVrO$nX" role="sWeuL">
          <node concept="ljvvj" id="6gxxZVrO$nY" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="6gxxZVrO$nZ" role="3n$kyP">
              <node concept="3clFbS" id="6gxxZVrO$o0" role="2VODD2">
                <node concept="3clFbF" id="6gxxZVrO$o1" role="3cqZAp">
                  <node concept="2OqwBi" id="6gxxZVrO$o2" role="3clFbG">
                    <node concept="pncrf" id="6gxxZVrO$o3" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6gxxZVrO$o4" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pj6Ft" id="6gxxZVrO$o5" role="3F10Kt" />
        <node concept="ljvvj" id="6gxxZVrO$o6" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6gxxZVrO$o7" role="3n$kyP">
            <node concept="3clFbS" id="6gxxZVrO$o8" role="2VODD2">
              <node concept="3clFbF" id="6gxxZVrO$o9" role="3cqZAp">
                <node concept="2OqwBi" id="6gxxZVrO$oa" role="3clFbG">
                  <node concept="pncrf" id="6gxxZVrO$ob" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6gxxZVrO$oc" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="6gxxZVrO$od" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6gxxZVrO$oe" role="3n$kyP">
            <node concept="3clFbS" id="6gxxZVrO$of" role="2VODD2">
              <node concept="3clFbF" id="6gxxZVrO$og" role="3cqZAp">
                <node concept="2OqwBi" id="6gxxZVrO$oh" role="3clFbG">
                  <node concept="pncrf" id="6gxxZVrO$oi" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6gxxZVrO$oj" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6gxxZVrO$ok" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" node="4REBMIum1$D" resolve="RightSquareBrace" />
      </node>
      <node concept="l2Vlx" id="6gxxZVrO$ol" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6gxxZVrO_WV">
    <property role="3GE5qa" value="dtoRepository" />
    <ref role="1XX52x" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
    <node concept="1iCGBv" id="6gxxZVrO_WX" role="2wV5jI">
      <property role="1$x2rV" value="&lt;dto repository&gt;" />
      <ref role="1NtTu8" to="3nll:6gxxZVrO$5E" resolve="dtoRepository" />
      <node concept="1sVBvm" id="6gxxZVrO_WZ" role="1sWHZn">
        <node concept="1HlG4h" id="6gxxZVrO_X6" role="2wV5jI">
          <node concept="1HfYo3" id="6gxxZVrO_X8" role="1HlULh">
            <node concept="3TQlhw" id="6gxxZVrO_Xa" role="1Hhtcw">
              <node concept="3clFbS" id="6gxxZVrO_Xc" role="2VODD2">
                <node concept="3clFbF" id="6gxxZVrZBE7" role="3cqZAp">
                  <node concept="2OqwBi" id="6gxxZVrZBWo" role="3clFbG">
                    <node concept="pncrf" id="6gxxZVrZBE6" role="2Oq$k0" />
                    <node concept="2qgKlT" id="6gxxZVrZCcg" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPxyj" id="6gxxZVrODta" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="6gxxZVrSZbT">
    <property role="3GE5qa" value="dtoRepository" />
    <property role="TrG5h" value="DtoRepositoryReferenceDeletionActionMap" />
    <ref role="1h_SK9" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
    <node concept="1hA7zw" id="6gxxZVrSZcE" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="6gxxZVrSZcF" role="1hA7z_">
        <node concept="3clFbS" id="6gxxZVrSZcG" role="2VODD2">
          <node concept="3clFbJ" id="6gxxZVrSZcH" role="3cqZAp">
            <node concept="3clFbS" id="6gxxZVrSZcI" role="3clFbx">
              <node concept="3cpWs6" id="6gxxZVrSZcJ" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="6gxxZVrSZcK" role="3clFbw">
              <node concept="1PxgMI" id="6gxxZVrSZcL" role="2Oq$k0">
                <node concept="chp4Y" id="6gxxZVrSZcM" role="3oSUPX">
                  <ref role="cht4Q" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
                </node>
                <node concept="2OqwBi" id="6gxxZVrSZcN" role="1m5AlR">
                  <node concept="1Q80Hx" id="6gxxZVrSZcO" role="2Oq$k0" />
                  <node concept="liA8E" id="6gxxZVrSZcP" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode()" resolve="getSelectedNode" />
                  </node>
                </node>
              </node>
              <node concept="2xy62i" id="6gxxZVrSZcQ" role="2OqNvi">
                <node concept="1Q80Hx" id="6gxxZVrSZcR" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2RbvdOL9q8H" role="3cqZAp">
            <node concept="2OqwBi" id="2RbvdOL9rfl" role="3clFbG">
              <node concept="1PxgMI" id="2RbvdOL9r8$" role="2Oq$k0">
                <node concept="chp4Y" id="2RbvdOL9raT" role="3oSUPX">
                  <ref role="cht4Q" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
                </node>
                <node concept="2OqwBi" id="2RbvdOL9qhK" role="1m5AlR">
                  <node concept="1Q80Hx" id="2RbvdOL9q8G" role="2Oq$k0" />
                  <node concept="liA8E" id="2RbvdOL9qqA" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode()" resolve="getSelectedNode" />
                  </node>
                </node>
              </node>
              <node concept="3YRAZt" id="2RbvdOL9rsk" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="6gxxZVrSZd2" role="jK8aL">
        <node concept="3clFbS" id="6gxxZVrSZd3" role="2VODD2">
          <node concept="3clFbF" id="6gxxZVrSZd4" role="3cqZAp">
            <node concept="2OqwBi" id="6gxxZVrSZd5" role="3clFbG">
              <node concept="2OqwBi" id="6gxxZVrSZd6" role="2Oq$k0">
                <node concept="1Q80Hx" id="6gxxZVrSZd7" role="2Oq$k0" />
                <node concept="liA8E" id="6gxxZVrSZd8" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode()" resolve="getSelectedNode" />
                </node>
              </node>
              <node concept="liA8E" id="6gxxZVrSZd9" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.isInstanceOfConcept(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isInstanceOfConcept" />
                <node concept="35c_gC" id="6gxxZVrSZda" role="37wK5m">
                  <ref role="35c_gD" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="6gxxZVrXInm">
    <property role="3GE5qa" value="dtoRepository" />
    <ref role="aqKnT" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
    <node concept="2XrIbr" id="5A5sGroR_$$" role="32lrUH">
      <property role="TrG5h" value="provideDtoRepositoriesForQuery" />
      <node concept="37vLTG" id="5A5sGroRAQL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5A5sGroRARH" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
        </node>
      </node>
      <node concept="37vLTG" id="5A5sGroRASA" role="3clF46">
        <property role="TrG5h" value="currentTargetNode" />
        <node concept="3Tqbb2" id="5A5sGroRAUK" role="1tU5fm">
          <ref role="ehGHo" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
        </node>
      </node>
      <node concept="A3Dl8" id="5A5sGroRAKr" role="3clF45">
        <node concept="3Tqbb2" id="5A5sGroRAMy" role="A3Ik2">
          <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="5A5sGroR_$A" role="3clF47">
        <node concept="3clFbF" id="5A5sGroRHP5" role="3cqZAp">
          <node concept="2OqwBi" id="5A5sGroRAWD" role="3clFbG">
            <node concept="3zZkjj" id="5A5sGroRAWJ" role="2OqNvi">
              <node concept="1bVj0M" id="5A5sGroRAWK" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="5A5sGroRAWL" role="1bW5cS">
                  <node concept="3clFbF" id="5A5sGroRLCi" role="3cqZAp">
                    <node concept="1Wc70l" id="5A5sGroRLiy" role="3clFbG">
                      <node concept="1eOMI4" id="5A5sGroRLiz" role="3uHU7w">
                        <node concept="22lmx$" id="5A5sGroRLi$" role="1eOMHV">
                          <node concept="3clFbC" id="5A5sGroRLi_" role="3uHU7w">
                            <node concept="37vLTw" id="5A5sGroRLiA" role="3uHU7w">
                              <ref role="3cqZAo" node="5A5sGroRAX8" resolve="dtoRepository" />
                            </node>
                            <node concept="2OqwBi" id="5A5sGroRLiB" role="3uHU7B">
                              <node concept="37vLTw" id="5A5sGroRLiC" role="2Oq$k0">
                                <ref role="3cqZAo" node="5A5sGroRASA" resolve="currentTargetNode" />
                              </node>
                              <node concept="3TrEf2" id="5A5sGroRLiD" role="2OqNvi">
                                <ref role="3Tt5mk" to="3nll:6gxxZVrO$5E" resolve="dtoRepository" />
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="5A5sGroRLiE" role="3uHU7B">
                            <node concept="2OqwBi" id="5A5sGroRLiF" role="3fr31v">
                              <node concept="37vLTw" id="5A5sGroRLiG" role="2Oq$k0">
                                <ref role="3cqZAo" node="5A5sGroRAQL" resolve="node" />
                              </node>
                              <node concept="2qgKlT" id="5A5sGroRLiH" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                                <node concept="37vLTw" id="5A5sGroRLiI" role="37wK5m">
                                  <ref role="3cqZAo" node="5A5sGroRAX8" resolve="dtoRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="5A5sGroRLiJ" role="3uHU7B">
                        <node concept="2OqwBi" id="5A5sGroRLiK" role="3fr31v">
                          <node concept="2OqwBi" id="5A5sGroRLiL" role="2Oq$k0">
                            <node concept="37vLTw" id="5A5sGroRLiM" role="2Oq$k0">
                              <ref role="3cqZAo" node="5A5sGroRAQL" resolve="node" />
                            </node>
                            <node concept="2qgKlT" id="5A5sGroRLiN" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:6gxxZVrXJ64" resolve="getQueryContainer" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="5A5sGroRLiO" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                            <node concept="37vLTw" id="5A5sGroRLiP" role="37wK5m">
                              <ref role="3cqZAo" node="5A5sGroRAX8" resolve="dtoRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5A5sGroRAX8" role="1bW2Oz">
                  <property role="TrG5h" value="dtoRepository" />
                  <node concept="2jxLKc" id="5A5sGroRAX9" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5A5sGroRJiZ" role="2Oq$k0">
              <node concept="2OqwBi" id="5A5sGroRJj0" role="2Oq$k0">
                <node concept="37vLTw" id="5A5sGroRJj1" role="2Oq$k0">
                  <ref role="3cqZAo" node="5A5sGroRAQL" resolve="node" />
                </node>
                <node concept="2qgKlT" id="5A5sGroRJj2" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="5A5sGroRJj3" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1WhJCpUS1If" resolve="dtoRepositories" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5A5sGroR_$B" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5A5sGroRLO6" role="32lrUH">
      <property role="TrG5h" value="provideDtoRepositoriesForQueryContainer" />
      <node concept="37vLTG" id="5A5sGroRM6m" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5A5sGroRM8u" role="1tU5fm">
          <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="5A5sGroRMa1" role="3clF46">
        <property role="TrG5h" value="currentTargetNode" />
        <node concept="3Tqbb2" id="5A5sGroRMa2" role="1tU5fm">
          <ref role="ehGHo" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
        </node>
      </node>
      <node concept="3clFbS" id="5A5sGroRLO8" role="3clF47">
        <node concept="3clFbF" id="5A5sGroRN4W" role="3cqZAp">
          <node concept="2OqwBi" id="5A5sGroRMct" role="3clFbG">
            <node concept="3zZkjj" id="5A5sGroRMcz" role="2OqNvi">
              <node concept="1bVj0M" id="5A5sGroRMc$" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="5A5sGroRMc_" role="1bW5cS">
                  <node concept="3clFbF" id="5A5sGroRMcB" role="3cqZAp">
                    <node concept="22lmx$" id="5A5sGroRMcC" role="3clFbG">
                      <node concept="3clFbC" id="5A5sGroRMcD" role="3uHU7w">
                        <node concept="37vLTw" id="5A5sGroRMcE" role="3uHU7w">
                          <ref role="3cqZAo" node="5A5sGroRMcN" resolve="dtoRepository" />
                        </node>
                        <node concept="2OqwBi" id="5A5sGroRMcF" role="3uHU7B">
                          <node concept="37vLTw" id="5A5sGroRNVy" role="2Oq$k0">
                            <ref role="3cqZAo" node="5A5sGroRMa1" resolve="currentTargetNode" />
                          </node>
                          <node concept="3TrEf2" id="5A5sGroRMcH" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:6gxxZVrO$5E" resolve="dtoRepository" />
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="5A5sGroRMcI" role="3uHU7B">
                        <node concept="2OqwBi" id="5A5sGroRMcJ" role="3fr31v">
                          <node concept="37vLTw" id="5A5sGroRMcK" role="2Oq$k0">
                            <ref role="3cqZAo" node="5A5sGroRM6m" resolve="node" />
                          </node>
                          <node concept="2qgKlT" id="5A5sGroRMcL" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                            <node concept="37vLTw" id="5A5sGroRMcM" role="37wK5m">
                              <ref role="3cqZAo" node="5A5sGroRMcN" resolve="dtoRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5A5sGroRMcN" role="1bW2Oz">
                  <property role="TrG5h" value="dtoRepository" />
                  <node concept="2jxLKc" id="5A5sGroRMcO" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5jZDGTgE3dX" role="2Oq$k0">
              <node concept="2OqwBi" id="5jZDGTgE3dY" role="2Oq$k0">
                <node concept="37vLTw" id="5jZDGTgE3dZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5A5sGroRM6m" resolve="node" />
                </node>
                <node concept="2qgKlT" id="5jZDGTgE3e0" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="5jZDGTgE3e1" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1WhJCpUS1If" resolve="dtoRepositories" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5A5sGroRLO9" role="1B3o_S" />
      <node concept="A3Dl8" id="5A5sGroRM5n" role="3clF45">
        <node concept="3Tqbb2" id="5A5sGroRM5o" role="A3Ik2">
          <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="5jZDGTgE0gy" role="32lrUH">
      <property role="TrG5h" value="provideDtoRepositoriesForEvent" />
      <node concept="37vLTG" id="5jZDGTgE0gz" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5jZDGTgE0g$" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p43ygS" resolve="Event" />
        </node>
      </node>
      <node concept="37vLTG" id="5jZDGTgE0g_" role="3clF46">
        <property role="TrG5h" value="currentTargetNode" />
        <node concept="3Tqbb2" id="5jZDGTgE0gA" role="1tU5fm">
          <ref role="ehGHo" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
        </node>
      </node>
      <node concept="A3Dl8" id="5jZDGTgE0gB" role="3clF45">
        <node concept="3Tqbb2" id="5jZDGTgE0gC" role="A3Ik2">
          <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="5jZDGTgE0gD" role="3clF47">
        <node concept="3clFbF" id="5jZDGTgE0gN" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgE0gO" role="3clFbG">
            <node concept="3zZkjj" id="5jZDGTgE0gP" role="2OqNvi">
              <node concept="1bVj0M" id="5jZDGTgE0gQ" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="5jZDGTgE0gR" role="1bW5cS">
                  <node concept="3clFbF" id="5jZDGTgE0gS" role="3cqZAp">
                    <node concept="1Wc70l" id="5jZDGTgE0gT" role="3clFbG">
                      <node concept="1eOMI4" id="5jZDGTgE0gU" role="3uHU7w">
                        <node concept="22lmx$" id="5jZDGTgE0gV" role="1eOMHV">
                          <node concept="3clFbC" id="5jZDGTgE0gW" role="3uHU7w">
                            <node concept="37vLTw" id="5jZDGTgE0gX" role="3uHU7w">
                              <ref role="3cqZAo" node="5jZDGTgE0hd" resolve="dtoRepository" />
                            </node>
                            <node concept="2OqwBi" id="5jZDGTgE0gY" role="3uHU7B">
                              <node concept="37vLTw" id="5jZDGTgE0gZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="5jZDGTgE0g_" resolve="currentTargetNode" />
                              </node>
                              <node concept="3TrEf2" id="5jZDGTgE0h0" role="2OqNvi">
                                <ref role="3Tt5mk" to="3nll:6gxxZVrO$5E" resolve="dtoRepository" />
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="5jZDGTgE0h1" role="3uHU7B">
                            <node concept="2OqwBi" id="5jZDGTgE0h2" role="3fr31v">
                              <node concept="37vLTw" id="5jZDGTgE0h3" role="2Oq$k0">
                                <ref role="3cqZAo" node="5jZDGTgE0gz" resolve="node" />
                              </node>
                              <node concept="2qgKlT" id="5jZDGTgE0h4" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                                <node concept="37vLTw" id="5jZDGTgE0h5" role="37wK5m">
                                  <ref role="3cqZAo" node="5jZDGTgE0hd" resolve="dtoRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="5jZDGTgE0h6" role="3uHU7B">
                        <node concept="2OqwBi" id="5jZDGTgE0h7" role="3fr31v">
                          <node concept="2OqwBi" id="5jZDGTgE0h8" role="2Oq$k0">
                            <node concept="37vLTw" id="5jZDGTgE0h9" role="2Oq$k0">
                              <ref role="3cqZAo" node="5jZDGTgE0gz" resolve="node" />
                            </node>
                            <node concept="2qgKlT" id="5jZDGTgE0ha" role="2OqNvi">
                              <ref role="37wK5l" to="sx7w:5jZDGTfVx8p" resolve="getEventContainer" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="5jZDGTgE0hb" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                            <node concept="37vLTw" id="5jZDGTgE0hc" role="37wK5m">
                              <ref role="3cqZAo" node="5jZDGTgE0hd" resolve="dtoRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5jZDGTgE0hd" role="1bW2Oz">
                  <property role="TrG5h" value="dtoRepository" />
                  <node concept="2jxLKc" id="5jZDGTgE0he" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5jZDGTgE2Pq" role="2Oq$k0">
              <node concept="2OqwBi" id="5jZDGTgE2Pr" role="2Oq$k0">
                <node concept="37vLTw" id="5jZDGTgE2Ps" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jZDGTgE0gz" resolve="node" />
                </node>
                <node concept="2qgKlT" id="5jZDGTgE2Pt" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="5jZDGTgE2Pu" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1WhJCpUS1If" resolve="dtoRepositories" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5jZDGTgE0hg" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5jZDGTgE7$F" role="32lrUH">
      <property role="TrG5h" value="provideDtoRepositoriesForEventContainer" />
      <node concept="37vLTG" id="5jZDGTgE7$G" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5jZDGTgE7$H" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
        </node>
      </node>
      <node concept="37vLTG" id="5jZDGTgE7$I" role="3clF46">
        <property role="TrG5h" value="currentTargetNode" />
        <node concept="3Tqbb2" id="5jZDGTgE7$J" role="1tU5fm">
          <ref role="ehGHo" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
        </node>
      </node>
      <node concept="3clFbS" id="5jZDGTgE7$K" role="3clF47">
        <node concept="3clFbF" id="5jZDGTgE7$L" role="3cqZAp">
          <node concept="2OqwBi" id="5jZDGTgE7$M" role="3clFbG">
            <node concept="3zZkjj" id="5jZDGTgE7$N" role="2OqNvi">
              <node concept="1bVj0M" id="5jZDGTgE7$O" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="5jZDGTgE7$P" role="1bW5cS">
                  <node concept="3clFbF" id="5jZDGTgE7$Q" role="3cqZAp">
                    <node concept="22lmx$" id="5jZDGTgE7$R" role="3clFbG">
                      <node concept="3clFbC" id="5jZDGTgE7$S" role="3uHU7w">
                        <node concept="37vLTw" id="5jZDGTgE7$T" role="3uHU7w">
                          <ref role="3cqZAo" node="5jZDGTgE7_2" resolve="dtoRepository" />
                        </node>
                        <node concept="2OqwBi" id="5jZDGTgE7$U" role="3uHU7B">
                          <node concept="37vLTw" id="5jZDGTgE7$V" role="2Oq$k0">
                            <ref role="3cqZAo" node="5jZDGTgE7$I" resolve="currentTargetNode" />
                          </node>
                          <node concept="3TrEf2" id="5jZDGTgE7$W" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:6gxxZVrO$5E" resolve="dtoRepository" />
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="5jZDGTgE7$X" role="3uHU7B">
                        <node concept="2OqwBi" id="5jZDGTgE7$Y" role="3fr31v">
                          <node concept="37vLTw" id="5jZDGTgE7$Z" role="2Oq$k0">
                            <ref role="3cqZAo" node="5jZDGTgE7$G" resolve="node" />
                          </node>
                          <node concept="2qgKlT" id="5jZDGTgE7_0" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                            <node concept="37vLTw" id="5jZDGTgE7_1" role="37wK5m">
                              <ref role="3cqZAo" node="5jZDGTgE7_2" resolve="dtoRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5jZDGTgE7_2" role="1bW2Oz">
                  <property role="TrG5h" value="dtoRepository" />
                  <node concept="2jxLKc" id="5jZDGTgE7_3" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5jZDGTgE7_4" role="2Oq$k0">
              <node concept="2OqwBi" id="5jZDGTgE7_5" role="2Oq$k0">
                <node concept="37vLTw" id="5jZDGTgE7_6" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jZDGTgE7$G" resolve="node" />
                </node>
                <node concept="2qgKlT" id="5jZDGTgE7_7" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="5jZDGTgE7_8" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1WhJCpUS1If" resolve="dtoRepositories" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5jZDGTgE7_9" role="1B3o_S" />
      <node concept="A3Dl8" id="5jZDGTgE7_a" role="3clF45">
        <node concept="3Tqbb2" id="5jZDGTgE7_b" role="A3Ik2">
          <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
        </node>
      </node>
    </node>
    <node concept="22hDWj" id="6gxxZVrXInn" role="22hAXT" />
    <node concept="2F$Pav" id="6gxxZVrXIAk" role="3ft7WO">
      <node concept="3eGOop" id="6gxxZVrXIFs" role="2$S_pN">
        <node concept="ucgPf" id="6gxxZVrXIFu" role="3aKz83">
          <node concept="3clFbS" id="6gxxZVrXIFw" role="2VODD2">
            <node concept="3cpWs8" id="6gxxZVrZ5zS" role="3cqZAp">
              <node concept="3cpWsn" id="6gxxZVrZ5zT" role="3cpWs9">
                <property role="TrG5h" value="repositoryReference" />
                <node concept="3Tqbb2" id="6gxxZVrZ5xK" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
                </node>
                <node concept="2ShNRf" id="6gxxZVrZ5zU" role="33vP2m">
                  <node concept="2fJWfE" id="6gxxZVrZ5zV" role="2ShVmc">
                    <node concept="3Tqbb2" id="6gxxZVrZ5zW" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:6gxxZVrO$5$" resolve="DtoRepositoryReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gxxZVrZ5YM" role="3cqZAp">
              <node concept="2OqwBi" id="6gxxZVrZ6yr" role="3clFbG">
                <node concept="2OqwBi" id="6gxxZVrZ6a0" role="2Oq$k0">
                  <node concept="37vLTw" id="6gxxZVrZ5YK" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gxxZVrZ5zT" resolve="repositoryReference" />
                  </node>
                  <node concept="3TrEf2" id="6gxxZVrZ6lh" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:6gxxZVrO$5E" resolve="dtoRepository" />
                  </node>
                </node>
                <node concept="2oxUTD" id="6gxxZVrZ6Ql" role="2OqNvi">
                  <node concept="2ZBlsa" id="6gxxZVrZ6Tr" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6gxxZVrZ5Jp" role="3cqZAp" />
            <node concept="Jncv_" id="3VGLvhFyQwq" role="3cqZAp">
              <ref role="JncvD" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
              <node concept="3bvxqY" id="3VGLvhFyQSP" role="JncvB" />
              <node concept="3clFbS" id="3VGLvhFyQwu" role="Jncv$">
                <node concept="3clFbF" id="3VGLvhFyR4u" role="3cqZAp">
                  <node concept="2OqwBi" id="3VGLvhFyR4v" role="3clFbG">
                    <node concept="2OqwBi" id="3VGLvhFyR4w" role="2Oq$k0">
                      <node concept="2qgKlT" id="3VGLvhFyR4$" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5SyewCaMpun" resolve="queries" />
                      </node>
                      <node concept="Jnkvi" id="3VGLvhFyRIp" role="2Oq$k0">
                        <ref role="1M0zk5" node="3VGLvhFyQww" resolve="queryContainer" />
                      </node>
                    </node>
                    <node concept="2es0OD" id="3VGLvhFyR4_" role="2OqNvi">
                      <node concept="1bVj0M" id="3VGLvhFyR4A" role="23t8la">
                        <node concept="3clFbS" id="3VGLvhFyR4B" role="1bW5cS">
                          <node concept="3clFbF" id="3VGLvhFyR4C" role="3cqZAp">
                            <node concept="2OqwBi" id="3VGLvhFyR4D" role="3clFbG">
                              <node concept="37vLTw" id="3VGLvhFyR4E" role="2Oq$k0">
                                <ref role="3cqZAo" node="3VGLvhFyR4L" resolve="query" />
                              </node>
                              <node concept="2qgKlT" id="3VGLvhFyR4F" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTikSPa" resolve="removeReference" />
                                <node concept="2ZBlsa" id="3VGLvhFyR4G" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3VGLvhFyR4H" role="3cqZAp">
                            <node concept="2OqwBi" id="3VGLvhFyR4I" role="3clFbG">
                              <node concept="37vLTw" id="3VGLvhFyR4J" role="2Oq$k0">
                                <ref role="3cqZAo" node="3VGLvhFyR4L" resolve="query" />
                              </node>
                              <node concept="2qgKlT" id="3VGLvhFyR4K" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTikSOY" resolve="resetReferencesIfEmpty" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="3VGLvhFyR4L" role="1bW2Oz">
                          <property role="TrG5h" value="query" />
                          <node concept="2jxLKc" id="3VGLvhFyR4M" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="3VGLvhFyQww" role="JncvA">
                <property role="TrG5h" value="queryContainer" />
                <node concept="2jxLKc" id="3VGLvhFyQwx" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbH" id="5jZDGTgGkhj" role="3cqZAp" />
            <node concept="Jncv_" id="5jZDGTgGkp4" role="3cqZAp">
              <ref role="JncvD" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
              <node concept="3bvxqY" id="5jZDGTgIGWc" role="JncvB" />
              <node concept="3clFbS" id="5jZDGTgGkp8" role="Jncv$">
                <node concept="3clFbF" id="5jZDGTgGkNU" role="3cqZAp">
                  <node concept="2OqwBi" id="5jZDGTgGlUa" role="3clFbG">
                    <node concept="2OqwBi" id="5jZDGTgGlhn" role="2Oq$k0">
                      <node concept="Jnkvi" id="5jZDGTgGkNT" role="2Oq$k0">
                        <ref role="1M0zk5" node="5jZDGTgGkpa" resolve="eventContainer" />
                      </node>
                      <node concept="2qgKlT" id="5jZDGTgGlCP" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:oGImgOKqqA" resolve="events" />
                      </node>
                    </node>
                    <node concept="2es0OD" id="5jZDGTgGmsg" role="2OqNvi">
                      <node concept="1bVj0M" id="5jZDGTgGmsi" role="23t8la">
                        <node concept="3clFbS" id="5jZDGTgGmsj" role="1bW5cS">
                          <node concept="3clFbF" id="5jZDGTgGmWr" role="3cqZAp">
                            <node concept="2OqwBi" id="5jZDGTgGng3" role="3clFbG">
                              <node concept="37vLTw" id="5jZDGTgGmWp" role="2Oq$k0">
                                <ref role="3cqZAo" node="5jZDGTgGmsk" resolve="event" />
                              </node>
                              <node concept="2qgKlT" id="5jZDGTgGo9M" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTikSPa" resolve="removeReference" />
                                <node concept="2ZBlsa" id="5jZDGTgGoll" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5jZDGTgGoUt" role="3cqZAp">
                            <node concept="2OqwBi" id="5jZDGTgGp02" role="3clFbG">
                              <node concept="37vLTw" id="5jZDGTgGoUr" role="2Oq$k0">
                                <ref role="3cqZAo" node="5jZDGTgGmsk" resolve="event" />
                              </node>
                              <node concept="2qgKlT" id="5jZDGTgGp9M" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTikSOY" resolve="resetReferencesIfEmpty" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="5jZDGTgGmsk" role="1bW2Oz">
                          <property role="TrG5h" value="event" />
                          <node concept="2jxLKc" id="5jZDGTgGmsl" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="5jZDGTgGkpa" role="JncvA">
                <property role="TrG5h" value="eventContainer" />
                <node concept="2jxLKc" id="5jZDGTgGkpb" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbH" id="5jZDGTgGkiG" role="3cqZAp" />
            <node concept="3clFbF" id="6gxxZVrZ49W" role="3cqZAp">
              <node concept="37vLTw" id="6gxxZVrZ5zX" role="3clFbG">
                <ref role="3cqZAo" node="6gxxZVrZ5zT" resolve="repositoryReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="6gxxZVrXIId" role="upBLP">
          <node concept="uGdhv" id="6gxxZVrXIIG" role="16NeZM">
            <node concept="3clFbS" id="6gxxZVrXIII" role="2VODD2">
              <node concept="3clFbF" id="6gxxZVrZ_H$" role="3cqZAp">
                <node concept="2OqwBi" id="6gxxZVrZAWX" role="3clFbG">
                  <node concept="2ZBlsa" id="6gxxZVrZ_Hz" role="2Oq$k0" />
                  <node concept="2qgKlT" id="6gxxZVrZBew" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="6gxxZVrXIPy" role="upBLP">
          <node concept="2h3Zct" id="6gxxZVrZiRS" role="16NL0q">
            <property role="2h4Kg1" value="DtoRepository" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6gxxZVrXICm" role="2ZBHrp">
        <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
      </node>
      <node concept="2$S_p_" id="6gxxZVrXICp" role="2$S_pT">
        <node concept="3clFbS" id="6gxxZVrXICq" role="2VODD2">
          <node concept="Jncv_" id="3VGLvhFyPnv" role="3cqZAp">
            <ref role="JncvD" to="3nll:7fqk8p43yh4" resolve="Query" />
            <node concept="3bvxqY" id="3VGLvhFyPr2" role="JncvB" />
            <node concept="3clFbS" id="3VGLvhFyPnz" role="Jncv$">
              <node concept="3cpWs6" id="3VGLvhFyPz$" role="3cqZAp">
                <node concept="2OqwBi" id="3VGLvhFyPz_" role="3cqZAk">
                  <node concept="2WthIp" id="3VGLvhFyPzA" role="2Oq$k0" />
                  <node concept="2XshWL" id="3VGLvhFyPzB" role="2OqNvi">
                    <ref role="2WH_rO" node="5A5sGroR_$$" resolve="provideDtoRepositoriesForQuery" />
                    <node concept="Jnkvi" id="3VGLvhFyQ0W" role="2XxRq1">
                      <ref role="1M0zk5" node="3VGLvhFyPn_" resolve="query" />
                    </node>
                    <node concept="1yR$tW" id="3VGLvhFyPQZ" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3VGLvhFyPn_" role="JncvA">
              <property role="TrG5h" value="query" />
              <node concept="2jxLKc" id="3VGLvhFyPnA" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="3VGLvhFyPgD" role="3cqZAp" />
          <node concept="Jncv_" id="3VGLvhFyO9s" role="3cqZAp">
            <ref role="JncvD" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
            <node concept="3bvxqY" id="3VGLvhFyOd4" role="JncvB" />
            <node concept="3clFbS" id="3VGLvhFyO9w" role="Jncv$">
              <node concept="3cpWs6" id="3VGLvhFyOro" role="3cqZAp">
                <node concept="2OqwBi" id="3VGLvhFyOrp" role="3cqZAk">
                  <node concept="2WthIp" id="3VGLvhFyOrq" role="2Oq$k0" />
                  <node concept="2XshWL" id="3VGLvhFyOrr" role="2OqNvi">
                    <ref role="2WH_rO" node="5A5sGroRLO6" resolve="provideDtoRepositoriesForQueryContainer" />
                    <node concept="Jnkvi" id="3VGLvhFyP3d" role="2XxRq1">
                      <ref role="1M0zk5" node="3VGLvhFyO9y" resolve="queryContainer" />
                    </node>
                    <node concept="1yR$tW" id="3VGLvhFyOZJ" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3VGLvhFyO9y" role="JncvA">
              <property role="TrG5h" value="queryContainer" />
              <node concept="2jxLKc" id="3VGLvhFyO9z" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="5jZDGTgE4r$" role="3cqZAp" />
          <node concept="Jncv_" id="5jZDGTgE4zJ" role="3cqZAp">
            <ref role="JncvD" to="3nll:7fqk8p43ygS" resolve="Event" />
            <node concept="3bvxqY" id="5jZDGTgE4Bd" role="JncvB" />
            <node concept="3clFbS" id="5jZDGTgE4zN" role="Jncv$">
              <node concept="3cpWs6" id="5jZDGTgE4Oy" role="3cqZAp">
                <node concept="2OqwBi" id="5jZDGTgE5dR" role="3cqZAk">
                  <node concept="2WthIp" id="5jZDGTgE4WA" role="2Oq$k0" />
                  <node concept="2XshWL" id="5jZDGTgE5lR" role="2OqNvi">
                    <ref role="2WH_rO" node="5jZDGTgE0gy" resolve="provideDtoRepositoriesForEvent" />
                    <node concept="Jnkvi" id="5jZDGTgE5pB" role="2XxRq1">
                      <ref role="1M0zk5" node="5jZDGTgE4zP" resolve="event" />
                    </node>
                    <node concept="1yR$tW" id="5jZDGTgE5wu" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="5jZDGTgE4zP" role="JncvA">
              <property role="TrG5h" value="event" />
              <node concept="2jxLKc" id="5jZDGTgE4zQ" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="5jZDGTgE5$2" role="3cqZAp" />
          <node concept="Jncv_" id="5jZDGTgE642" role="3cqZAp">
            <ref role="JncvD" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
            <node concept="3bvxqY" id="5jZDGTgE68$" role="JncvB" />
            <node concept="3clFbS" id="5jZDGTgE646" role="Jncv$">
              <node concept="3cpWs6" id="5jZDGTgE6t$" role="3cqZAp">
                <node concept="2OqwBi" id="5jZDGTgE6CI" role="3cqZAk">
                  <node concept="2WthIp" id="5jZDGTgE6_7" role="2Oq$k0" />
                  <node concept="2XshWL" id="5jZDGTgE6Jy" role="2OqNvi">
                    <ref role="2WH_rO" node="5jZDGTgE7$F" resolve="provideDtoRepositoriesForEventContainer" />
                    <node concept="Jnkvi" id="5jZDGTgE6Oa" role="2XxRq1">
                      <ref role="1M0zk5" node="5jZDGTgE648" resolve="eventContainer" />
                    </node>
                    <node concept="1yR$tW" id="5jZDGTgE70f" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="5jZDGTgE648" role="JncvA">
              <property role="TrG5h" value="eventContainer" />
              <node concept="2jxLKc" id="5jZDGTgE649" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="6gxxZVrYkMY" role="3cqZAp" />
          <node concept="3clFbF" id="3VGLvhEcjtK" role="3cqZAp">
            <node concept="2ShNRf" id="3VGLvhEcjtG" role="3clFbG">
              <node concept="kMnCb" id="3VGLvhEclse" role="2ShVmc" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="6gxxZVrXIFf" role="3ft7WO" />
  </node>
  <node concept="3ICUPy" id="6gxxZVsbcF1">
    <property role="3GE5qa" value="commandContainer" />
    <ref role="aqKnT" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    <node concept="1Qtc8_" id="6gxxZVsbcF4" role="IW6Ez">
      <node concept="1GhOrh" id="6gxxZVsvMJx" role="1Qtc8A">
        <node concept="1GhMSn" id="6gxxZVsvMJz" role="1GhOrs">
          <node concept="3clFbS" id="6gxxZVsvMJ_" role="2VODD2">
            <node concept="3clFbF" id="6gxxZVsvN4G" role="3cqZAp">
              <node concept="2OqwBi" id="6gxxZVsvNBL" role="3clFbG">
                <node concept="1XH99k" id="6gxxZVsvN4F" role="2Oq$k0">
                  <ref role="1XH99l" to="3nll:1WhJCpUOLrA" resolve="QueryContainerType" />
                </node>
                <node concept="2ViDtN" id="6gxxZVsvNVY" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="6gxxZVsvSda" role="1GhOri">
          <node concept="1hCUdq" id="6gxxZVsvSdc" role="1hCUd6">
            <node concept="3clFbS" id="6gxxZVsvSde" role="2VODD2">
              <node concept="3clFbF" id="5A5sGroHG0d" role="3cqZAp">
                <node concept="2OqwBi" id="5A5sGroHFVe" role="3clFbG">
                  <node concept="2ZBlsa" id="5A5sGroHFmz" role="2Oq$k0" />
                  <node concept="1XCIdh" id="5A5sGroHFXU" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="6gxxZVsvSdg" role="IWgqQ">
            <node concept="3clFbS" id="6gxxZVsvSdi" role="2VODD2">
              <node concept="3clFbF" id="6gxxZVsvVEd" role="3cqZAp">
                <node concept="2OqwBi" id="6gxxZVsvVEe" role="3clFbG">
                  <node concept="2OqwBi" id="6gxxZVsvVEf" role="2Oq$k0">
                    <node concept="7Obwk" id="6gxxZVsvVEg" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6gxxZVsvVEh" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="6gxxZVsvVEi" role="2OqNvi">
                    <node concept="2ZBlsa" id="6gxxZVsvVMq" role="tz02z" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1LTEH$av5F" role="3cqZAp" />
              <node concept="3clFbJ" id="1LTEH$8wUU" role="3cqZAp">
                <node concept="3clFbS" id="1LTEH$8wUW" role="3clFbx">
                  <node concept="3clFbJ" id="2RbvdOK5p7C" role="3cqZAp">
                    <node concept="3clFbS" id="2RbvdOK5p7E" role="3clFbx">
                      <node concept="3clFbF" id="2RbvdOKWtMr" role="3cqZAp">
                        <node concept="2OqwBi" id="2RbvdOKWut7" role="3clFbG">
                          <node concept="2OqwBi" id="2RbvdOKWtZF" role="2Oq$k0">
                            <node concept="7Obwk" id="5jZDGTgxi0M" role="2Oq$k0" />
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
                          <node concept="7Obwk" id="5jZDGTgxhZz" role="2Oq$k0" />
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
                  <node concept="3cpWs6" id="5jZDGTgxgc$" role="3cqZAp" />
                </node>
                <node concept="2OqwBi" id="1LTEH$8xXy" role="3clFbw">
                  <node concept="2OqwBi" id="5jZDGTgxfF4" role="2Oq$k0">
                    <node concept="7Obwk" id="5jZDGTgxfu6" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5jZDGTgxfXR" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                    </node>
                  </node>
                  <node concept="21noJN" id="5A5sGroHFdu" role="2OqNvi">
                    <node concept="21nZrQ" id="5A5sGroHFdw" role="21noJM">
                      <ref role="21nZrZ" to="3nll:1WhJCpUOLrB" resolve="QueryBlock" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5jZDGTgxg6q" role="3cqZAp" />
              <node concept="3clFbF" id="1LTEH$8zD4" role="3cqZAp">
                <node concept="2OqwBi" id="1LTEH$8zQ6" role="3clFbG">
                  <node concept="7Obwk" id="1LTEH$8zD3" role="2Oq$k0" />
                  <node concept="2qgKlT" id="1LTEH$8$qq" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:d$u27T68WS" resolve="resetAndMergeChildRepositoryReferences" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5jZDGTgx9iW" role="3cqZAp" />
              <node concept="3clFbJ" id="2RbvdOJN7DZ" role="3cqZAp">
                <node concept="3clFbS" id="2RbvdOJN7E1" role="3clFbx">
                  <node concept="3clFbF" id="2RbvdOKWsPh" role="3cqZAp">
                    <node concept="2OqwBi" id="2RbvdOKWttG" role="3clFbG">
                      <node concept="2OqwBi" id="2RbvdOKWt2$" role="2Oq$k0">
                        <node concept="7Obwk" id="5jZDGTgxdd6" role="2Oq$k0" />
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
                    <node concept="7Obwk" id="5jZDGTgxdc1" role="2Oq$k0" />
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
                        <node concept="7Obwk" id="5jZDGTgximc" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2RbvdOJZkHA" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                        </node>
                      </node>
                      <node concept="1OKiuA" id="2RbvdOJZkHB" role="2OqNvi">
                        <node concept="1Q80Hx" id="5jZDGTgximE" role="lBI5i" />
                        <node concept="2TlHUq" id="2RbvdOJZkHD" role="lGT1i">
                          <ref role="2TlMyj" node="2RbvdOJ81o1" resolve="nameCellId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="2RbvdOKWvoK" role="3clFbw">
                  <node concept="2OqwBi" id="2RbvdOKWvoM" role="3fr31v">
                    <node concept="2OqwBi" id="2RbvdOKWvoN" role="2Oq$k0">
                      <node concept="7Obwk" id="5jZDGTgxibM" role="2Oq$k0" />
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
          <node concept="27VH4U" id="6gxxZVsvU1M" role="2jiSrf">
            <node concept="3clFbS" id="6gxxZVsvU1N" role="2VODD2">
              <node concept="3clFbF" id="6gxxZVsvU9o" role="3cqZAp">
                <node concept="3fqX7Q" id="6gxxZVsvVAR" role="3clFbG">
                  <node concept="2OqwBi" id="6gxxZVsvVAT" role="3fr31v">
                    <node concept="2OqwBi" id="6gxxZVsvVAU" role="2Oq$k0">
                      <node concept="7Obwk" id="6gxxZVsvVAV" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6gxxZVsvVAW" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6gxxZVsvVAX" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2ZBlsa" id="6gxxZVsvVAY" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="6gxxZVsvXs8" role="2jZA2a">
            <node concept="3cqJkl" id="6gxxZVsvXs9" role="3cqGtW">
              <node concept="3clFbS" id="6gxxZVsvXsa" role="2VODD2">
                <node concept="3clFbF" id="5A5sGroHG3h" role="3cqZAp">
                  <node concept="3cpWs3" id="5A5sGroHHTB" role="3clFbG">
                    <node concept="Xl_RD" id="5A5sGroHHTF" role="3uHU7w">
                      <property role="Xl_RC" value=" declaration" />
                    </node>
                    <node concept="3cpWs3" id="5A5sGroHGHW" role="3uHU7B">
                      <node concept="Xl_RD" id="5A5sGroHG3g" role="3uHU7B">
                        <property role="Xl_RC" value="Transform into a query " />
                      </node>
                      <node concept="2OqwBi" id="5A5sGroHH9p" role="3uHU7w">
                        <node concept="2ZBlsa" id="5A5sGroHGJs" role="2Oq$k0" />
                        <node concept="1XCIdh" id="5A5sGroHHoU" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2ZThk1" id="6gxxZVsvMV0" role="2ZBHrp">
          <ref role="2ZWj4r" to="3nll:1WhJCpUOLrA" resolve="QueryContainerType" />
        </node>
      </node>
      <node concept="3cWJ9i" id="6gxxZVsbcF8" role="1Qtc8$">
        <node concept="CtIbL" id="6gxxZVsbcFa" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="6gxxZVsbcF2" role="22hAXT">
      <property role="TrG5h" value="QueryContainerQueryKeywordTransformationMenu" />
    </node>
  </node>
  <node concept="1h_SRR" id="6gxxZVsbpRf">
    <property role="3GE5qa" value="queryContainer" />
    <property role="TrG5h" value="QueryContainerRequiresDeletionActionMap" />
    <ref role="1h_SK9" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    <node concept="1hA7zw" id="6gxxZVsbpRg" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="6gxxZVsbpRh" role="1hA7z_">
        <node concept="3clFbS" id="6gxxZVsbpRi" role="2VODD2">
          <node concept="3clFbJ" id="6gxxZVsbstb" role="3cqZAp">
            <node concept="2OqwBi" id="6gxxZVsbstQ" role="3clFbw">
              <node concept="0IXxy" id="6gxxZVsbstB" role="2Oq$k0" />
              <node concept="2xy62i" id="6gxxZVsbsv1" role="2OqNvi">
                <node concept="1Q80Hx" id="6gxxZVsbs_H" role="2xHN3q" />
                <node concept="2TlHUq" id="6gxxZVsbsAN" role="3a7HXU">
                  <ref role="2TlMyj" node="6gxxZVsbprY" resolve="requiresBlockCellId" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6gxxZVsbstd" role="3clFbx">
              <node concept="3cpWs6" id="6gxxZVsbsCR" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="1LTEH$Idc3" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEH$Idqd" role="3clFbG">
              <node concept="0IXxy" id="1LTEH$Idc2" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEH$IdFM" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTikSOJ" resolve="resetReferences" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2RbvdOKRNzc" role="3cqZAp" />
          <node concept="3clFbJ" id="2RbvdOKRNA$" role="3cqZAp">
            <node concept="3clFbS" id="2RbvdOKRNAA" role="3clFbx">
              <node concept="3clFbF" id="2RbvdOKROTM" role="3cqZAp">
                <node concept="2OqwBi" id="2RbvdOKROWY" role="3clFbG">
                  <node concept="0IXxy" id="2RbvdOKROTL" role="2Oq$k0" />
                  <node concept="1OKiuA" id="2RbvdOKROYh" role="2OqNvi">
                    <node concept="1Q80Hx" id="2RbvdOKROYV" role="lBI5i" />
                    <node concept="1lyA5W" id="4V91Il35G2e" role="lGT1i">
                      <property role="1lUG9U" value="placeholderCellId" />
                    </node>
                    <node concept="3cmrfG" id="2RbvdOKRP8s" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2RbvdOKROPw" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="2RbvdOKROo_" role="3clFbw">
              <node concept="2OqwBi" id="2RbvdOKRNUr" role="2Oq$k0">
                <node concept="0IXxy" id="2RbvdOKRNI5" role="2Oq$k0" />
                <node concept="3TrEf2" id="2RbvdOKROao" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                </node>
              </node>
              <node concept="3w_OXm" id="2RbvdOKROIr" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="2RbvdOKROQX" role="3cqZAp" />
          <node concept="3clFbF" id="2RbvdOJIX83" role="3cqZAp">
            <node concept="2OqwBi" id="2RbvdOJIXW4" role="3clFbG">
              <node concept="2OqwBi" id="2RbvdOJIXmA" role="2Oq$k0">
                <node concept="0IXxy" id="2RbvdOJIX82" role="2Oq$k0" />
                <node concept="3TrEf2" id="2RbvdOJIXKK" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                </node>
              </node>
              <node concept="1OKiuA" id="2RbvdOJIYuY" role="2OqNvi">
                <node concept="1Q80Hx" id="2RbvdOJIYvN" role="lBI5i" />
                <node concept="2TlHUq" id="2RbvdOJIYCd" role="lGT1i">
                  <ref role="2TlMyj" node="2RbvdOJ81o1" resolve="nameCellId" />
                </node>
                <node concept="3cmrfG" id="2RbvdOJIYDC" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="6gxxZVsbpRA" role="jK8aL">
        <node concept="3clFbS" id="6gxxZVsbpRB" role="2VODD2">
          <node concept="3clFbF" id="6gxxZVsbpWY" role="3cqZAp">
            <node concept="2OqwBi" id="6gxxZVsbsnH" role="3clFbG">
              <node concept="0IXxy" id="6gxxZVsbskb" role="2Oq$k0" />
              <node concept="3TrcHB" id="6gxxZVsbsq8" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6gxxZVsFKMf">
    <property role="3GE5qa" value="queryContainer" />
    <ref role="1XX52x" to="3nll:6gxxZVsFKMc" resolve="QueryContainerReference" />
    <node concept="1iCGBv" id="6gxxZVsFKMh" role="2wV5jI">
      <property role="1$x2rV" value="&lt;queries&gt;" />
      <ref role="1NtTu8" to="3nll:6gxxZVsFKMd" resolve="queryContainer" />
      <node concept="1sVBvm" id="6gxxZVsFKMj" role="1sWHZn">
        <node concept="1HlG4h" id="6gxxZVsFKMq" role="2wV5jI">
          <node concept="1HfYo3" id="6gxxZVsFKMs" role="1HlULh">
            <node concept="3TQlhw" id="6gxxZVsFKMu" role="1Hhtcw">
              <node concept="3clFbS" id="6gxxZVsFKMw" role="2VODD2">
                <node concept="3clFbF" id="2RbvdOKUg1O" role="3cqZAp">
                  <node concept="2OqwBi" id="2RbvdOKUgmh" role="3clFbG">
                    <node concept="pncrf" id="2RbvdOKUg1N" role="2Oq$k0" />
                    <node concept="2qgKlT" id="2RbvdOKUgA9" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:2RbvdOKU0GT" resolve="getQueryContainerName" />
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
  <node concept="24kQdi" id="6gxxZVsFV0Q">
    <property role="3GE5qa" value="dtoRepository.query" />
    <ref role="1XX52x" to="3nll:6gxxZVsFKM9" resolve="QueryContainerMethods" />
    <node concept="3EZMnI" id="6gxxZVsFV0S" role="2wV5jI">
      <node concept="3F0ifn" id="6gxxZVsFV0Z" role="3EZMnx">
        <property role="3F0ifm" value="queries methods" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="6gxxZVsFV15" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" node="5SyewCboVA6" resolve="LeftBrace" />
      </node>
      <node concept="3F2HdR" id="6gxxZVsFV1B" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="3nll:6gxxZVsFKMa" resolve="queryContainerReference" />
        <node concept="l2Vlx" id="6gxxZVsFV1D" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="6gxxZVsFV1d" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="6gxxZVsFV0V" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="6gxxZVsRN9q">
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="QueryRequiredDtoRepositoriesDeletionActionMap" />
    <ref role="1h_SK9" to="3nll:7fqk8p43yh4" resolve="Query" />
    <node concept="1hA7zw" id="6gxxZVsRN9r" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="6gxxZVsRN9s" role="1hA7z_">
        <node concept="3clFbS" id="6gxxZVsRN9t" role="2VODD2">
          <node concept="3clFbJ" id="1LTEHzhXXc" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHzhXXd" role="3clFbw">
              <node concept="0IXxy" id="1LTEHzhXXe" role="2Oq$k0" />
              <node concept="2xy62i" id="1LTEHzhXXf" role="2OqNvi">
                <node concept="1Q80Hx" id="1LTEHzhXXg" role="2xHN3q" />
                <node concept="2TlHUq" id="1LTEHzhXXh" role="3a7HXU">
                  <ref role="2TlMyj" node="6gxxZVsRMJ8" resolve="requiresBlockCellId" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1LTEHzhXXi" role="3clFbx">
              <node concept="3cpWs6" id="1LTEHzhXXj" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="1LTEHzhXXl" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHzhXXm" role="3clFbG">
              <node concept="0IXxy" id="1LTEHzhXXn" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHzhXXo" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTikSOJ" resolve="resetReferences" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1LTEHzhXXp" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHzhXXq" role="3clFbG">
              <node concept="0IXxy" id="1LTEHzhXXr" role="2Oq$k0" />
              <node concept="1OKiuA" id="1LTEHzhXXs" role="2OqNvi">
                <node concept="1Q80Hx" id="1LTEHzhXXt" role="lBI5i" />
                <node concept="2B6iha" id="1LTEHzhXXu" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
                <node concept="3cmrfG" id="1LTEHzhXXv" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="omljbxiOE_" role="jK8aL">
        <node concept="3clFbS" id="omljbxiOEA" role="2VODD2">
          <node concept="3clFbF" id="omljbxiOV8" role="3cqZAp">
            <node concept="2OqwBi" id="omljbxiPiX" role="3clFbG">
              <node concept="0IXxy" id="omljbxiOV7" role="2Oq$k0" />
              <node concept="3TrcHB" id="omljbxiPFz" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="1LTEH$kWkt">
    <property role="3GE5qa" value="dtoRepository" />
    <ref role="aqKnT" to="3nll:1WhJCpUQqV4" resolve="IDtoRepositoryComponent" />
    <node concept="22hDWj" id="1LTEH$kWku" role="22hAXT" />
    <node concept="2VfDsV" id="1LTEH$kWkw" role="3ft7WO">
      <node concept="1GpqWn" id="1LTEH$mQmD" role="1Go12V">
        <node concept="3clFbS" id="1LTEH$mQmE" role="2VODD2">
          <node concept="3cpWs8" id="1LTEH$qJM2" role="3cqZAp">
            <node concept="3cpWsn" id="1LTEH$qJM3" role="3cpWs9">
              <property role="TrG5h" value="dtoRepository" />
              <node concept="3Tqbb2" id="1LTEH$qJJh" role="1tU5fm">
                <ref role="ehGHo" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
              </node>
              <node concept="2OqwBi" id="1LTEH$qJM4" role="33vP2m">
                <node concept="3bvxqY" id="1LTEH$qJM5" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1LTEH$qJM6" role="2OqNvi">
                  <node concept="1xMEDy" id="1LTEH$qJM7" role="1xVPHs">
                    <node concept="chp4Y" id="1LTEH$qJM8" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="1LTEH$qJM9" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="omljbz2GEo" role="3cqZAp" />
          <node concept="1_3QMa" id="omljbz2FSP" role="3cqZAp">
            <node concept="1pnPoh" id="omljbz2G6S" role="1_3QMm">
              <node concept="3gn64h" id="omljbz2G6U" role="1pnPq6">
                <ref role="3gnhBz" to="3nll:6gxxZVsFKM9" resolve="QueryContainerMethods" />
              </node>
              <node concept="3clFbS" id="omljbz2G6W" role="1pnPq1">
                <node concept="3cpWs6" id="omljbz2Gl9" role="3cqZAp">
                  <node concept="3fqX7Q" id="omljbz2Gla" role="3cqZAk">
                    <node concept="2OqwBi" id="omljbz2Glb" role="3fr31v">
                      <node concept="37vLTw" id="omljbz2Glc" role="2Oq$k0">
                        <ref role="3cqZAo" node="1LTEH$qJM3" resolve="dtoRepository" />
                      </node>
                      <node concept="2qgKlT" id="omljbz2Gld" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:1LTEH$qKnx" resolve="hasQueryContainerMethodsDefined" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1pnPoh" id="omljbz2Gbe" role="1_3QMm">
              <node concept="3gn64h" id="omljbz2Gbg" role="1pnPq6">
                <ref role="3gnhBz" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
              </node>
              <node concept="3clFbS" id="omljbz2Gbi" role="1pnPq1">
                <node concept="3cpWs6" id="omljbz2Gta" role="3cqZAp">
                  <node concept="3fqX7Q" id="omljbz2Gtb" role="3cqZAk">
                    <node concept="2OqwBi" id="omljbz2Gtc" role="3fr31v">
                      <node concept="37vLTw" id="omljbz2Gtd" role="2Oq$k0">
                        <ref role="3cqZAo" node="1LTEH$qJM3" resolve="dtoRepository" />
                      </node>
                      <node concept="2qgKlT" id="omljbz2Gte" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:1LTEH$qOyo" resolve="hasQueryMethodsDefined" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1GpqW3" id="omljbz2G41" role="1_3QMn" />
            <node concept="3clFbS" id="omljbz2Ggz" role="1prKM_">
              <node concept="3cpWs6" id="omljbz2Ggy" role="3cqZAp">
                <node concept="3clFbT" id="omljbz2Gj_" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="6Qa18YFNJ4k" role="3ft7WO" />
    <node concept="1s_PAr" id="6Qa18YFNJ7B" role="3ft7WO">
      <node concept="2kknPI" id="6Qa18YFNJ8H" role="1s_PAo">
        <ref role="2kkw0f" node="5SyewCbwAOA" resolve="MethodCreationKeywordsSubstiudeMenu" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="1LTEH$t1Pb">
    <property role="3GE5qa" value="queryContainer" />
    <ref role="aqKnT" to="3nll:6gxxZVsFKMc" resolve="QueryContainerReference" />
    <node concept="2XrIbr" id="5A5sGroQy2y" role="32lrUH">
      <property role="TrG5h" value="provideQueryContainersFor" />
      <node concept="37vLTG" id="5A5sGroQygi" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5A5sGroQyiq" role="1tU5fm">
          <ref role="ehGHo" to="3nll:6gxxZVsFKM9" resolve="QueryContainerMethods" />
        </node>
      </node>
      <node concept="37vLTG" id="5A5sGroRRC6" role="3clF46">
        <property role="TrG5h" value="currentTargetNode" />
        <node concept="3Tqbb2" id="5A5sGroRRN4" role="1tU5fm">
          <ref role="ehGHo" to="3nll:6gxxZVsFKMc" resolve="QueryContainerReference" />
        </node>
      </node>
      <node concept="A3Dl8" id="5A5sGroQy9t" role="3clF45">
        <node concept="3Tqbb2" id="5A5sGroQyb$" role="A3Ik2">
          <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
        </node>
      </node>
      <node concept="3clFbS" id="5A5sGroQy2$" role="3clF47">
        <node concept="3cpWs8" id="5A5sGroQyku" role="3cqZAp">
          <node concept="3cpWsn" id="5A5sGroQykv" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="5A5sGroQykw" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="5A5sGroQykx" role="33vP2m">
              <node concept="37vLTw" id="5A5sGroQyn3" role="2Oq$k0">
                <ref role="3cqZAo" node="5A5sGroQygi" resolve="node" />
              </node>
              <node concept="2qgKlT" id="3VGLvhF1SJz" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3aCsR_cH0Ff" role="3cqZAp">
          <node concept="3cpWsn" id="3aCsR_cH0Fg" role="3cpWs9">
            <property role="TrG5h" value="allowedDto" />
            <node concept="3Tqbb2" id="3aCsR_cH0Fh" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            </node>
            <node concept="2OqwBi" id="3aCsR_cH0Fi" role="33vP2m">
              <node concept="2OqwBi" id="3aCsR_cH0Fj" role="2Oq$k0">
                <node concept="2OqwBi" id="3aCsR_cH0Fk" role="2Oq$k0">
                  <node concept="37vLTw" id="3aCsR_cH0Fl" role="2Oq$k0">
                    <ref role="3cqZAo" node="5A5sGroQygi" resolve="node" />
                  </node>
                  <node concept="2qgKlT" id="3aCsR_cH0Fm" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:5A5sGroHXVV" resolve="dtoRepository" />
                  </node>
                </node>
                <node concept="3TrEf2" id="3aCsR_cH0Fn" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:1WhJCpUQoKb" resolve="dtoReference" />
                </node>
              </node>
              <node concept="3TrEf2" id="3aCsR_cH0Fo" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:4Wa3rAG5J$7" resolve="dto" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_cEBfK" role="3cqZAp" />
        <node concept="3cpWs8" id="3VGLvhF68Es" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhF68Et" role="3cpWs9">
            <property role="TrG5h" value="queryContainers" />
            <node concept="A3Dl8" id="3VGLvhF68nI" role="1tU5fm">
              <node concept="3Tqbb2" id="3VGLvhF68nL" role="A3Ik2">
                <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
              </node>
            </node>
            <node concept="2OqwBi" id="3VGLvhF68Eu" role="33vP2m">
              <node concept="37vLTw" id="3VGLvhF68Ev" role="2Oq$k0">
                <ref role="3cqZAo" node="5A5sGroQykv" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="3VGLvhF68Ew" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3DbZR$O3FhA" resolve="queryContainers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5A5sGroQEbU" role="3cqZAp">
          <node concept="3cpWsn" id="5A5sGroQEbV" role="3cpWs9">
            <property role="TrG5h" value="referencedContainers" />
            <node concept="A3Dl8" id="5A5sGroQB5R" role="1tU5fm">
              <node concept="3Tqbb2" id="5A5sGroQB5U" role="A3Ik2">
                <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
              </node>
            </node>
            <node concept="2OqwBi" id="5A5sGroQEbW" role="33vP2m">
              <node concept="37vLTw" id="5A5sGroQEbX" role="2Oq$k0">
                <ref role="3cqZAo" node="5A5sGroQykv" resolve="boundedContext" />
              </node>
              <node concept="2qgKlT" id="5A5sGroQEbY" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5A5sGroEGrB" resolve="findReferencedQueryContainersInDtoRepositories" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_cH1TA" role="3cqZAp" />
        <node concept="3clFbF" id="5A5sGroSr$x" role="3cqZAp">
          <node concept="2OqwBi" id="5A5sGroSrQK" role="3clFbG">
            <node concept="3zZkjj" id="5A5sGroSs5G" role="2OqNvi">
              <node concept="1bVj0M" id="5A5sGroSs5I" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="5A5sGroSs5J" role="1bW5cS">
                  <node concept="3clFbF" id="5A5sGroStNT" role="3cqZAp">
                    <node concept="22lmx$" id="3aCsR_cH9hK" role="3clFbG">
                      <node concept="1eOMI4" id="3aCsR_cH9KS" role="3uHU7w">
                        <node concept="1Wc70l" id="3aCsR_cHauK" role="1eOMHV">
                          <node concept="2OqwBi" id="3aCsR_cHcws" role="3uHU7w">
                            <node concept="2OqwBi" id="3aCsR_cHbm9" role="2Oq$k0">
                              <node concept="37vLTw" id="3aCsR_cHaZ5" role="2Oq$k0">
                                <ref role="3cqZAo" node="5A5sGroSs5K" resolve="queryContainer" />
                              </node>
                              <node concept="2qgKlT" id="3aCsR_cHcbS" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5SyewCaMpun" resolve="queries" />
                              </node>
                            </node>
                            <node concept="2HxqBE" id="3aCsR_cHcU6" role="2OqNvi">
                              <node concept="1bVj0M" id="3aCsR_cHcU8" role="23t8la">
                                <node concept="3clFbS" id="3aCsR_cHcU9" role="1bW5cS">
                                  <node concept="3clFbF" id="3aCsR_cHd7o" role="3cqZAp">
                                    <node concept="2OqwBi" id="3aCsR_cHdyH" role="3clFbG">
                                      <node concept="37vLTw" id="3aCsR_cHd7n" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3aCsR_cHcUa" resolve="query" />
                                      </node>
                                      <node concept="2qgKlT" id="3aCsR_cHe9v" role="2OqNvi">
                                        <ref role="37wK5l" to="sx7w:3aCsR_csrN7" resolve="areOnlyValidDtoReferencesUsed" />
                                        <node concept="37vLTw" id="3aCsR_cHesa" role="37wK5m">
                                          <ref role="3cqZAo" node="3aCsR_cH0Fg" resolve="allowedDto" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="3aCsR_cHcUa" role="1bW2Oz">
                                  <property role="TrG5h" value="query" />
                                  <node concept="2jxLKc" id="3aCsR_cHcUb" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="3aCsR_cH9KT" role="3uHU7B">
                            <node concept="2OqwBi" id="3aCsR_cH9KU" role="3fr31v">
                              <node concept="37vLTw" id="3aCsR_cH9KV" role="2Oq$k0">
                                <ref role="3cqZAo" node="5A5sGroQEbV" resolve="referencedContainers" />
                              </node>
                              <node concept="3JPx81" id="3aCsR_cH9KW" role="2OqNvi">
                                <node concept="37vLTw" id="3aCsR_cH9KX" role="25WWJ7">
                                  <ref role="3cqZAo" node="5A5sGroSs5K" resolve="queryContainer" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="5A5sGroSvEH" role="3uHU7B">
                        <node concept="2OqwBi" id="5A5sGroSwe6" role="3uHU7w">
                          <node concept="37vLTw" id="5A5sGroSvWS" role="2Oq$k0">
                            <ref role="3cqZAo" node="5A5sGroRRC6" resolve="currentTargetNode" />
                          </node>
                          <node concept="3TrEf2" id="5A5sGroSwu3" role="2OqNvi">
                            <ref role="3Tt5mk" to="3nll:6gxxZVsFKMd" resolve="queryContainer" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="5A5sGroSvn$" role="3uHU7B">
                          <ref role="3cqZAo" node="5A5sGroSs5K" resolve="queryContainer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5A5sGroSs5K" role="1bW2Oz">
                  <property role="TrG5h" value="queryContainer" />
                  <node concept="2jxLKc" id="5A5sGroSs5L" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3VGLvhF69I2" role="2Oq$k0">
              <ref role="3cqZAo" node="3VGLvhF68Et" resolve="queryContainers" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5A5sGroQy2_" role="1B3o_S" />
    </node>
    <node concept="22hDWj" id="1LTEH$t1Pc" role="22hAXT" />
    <node concept="2F$Pav" id="1LTEH$v14D" role="3ft7WO">
      <node concept="3eGOop" id="1LTEH$v18b" role="2$S_pN">
        <node concept="16NL0t" id="1LTEH$x1ZG" role="upBLP">
          <node concept="uGdhv" id="1LTEH$x286" role="16NL0q">
            <node concept="3clFbS" id="1LTEH$x288" role="2VODD2">
              <node concept="3clFbF" id="5A5sGroOsA1" role="3cqZAp">
                <node concept="3cpWs3" id="5A5sGroOt7b" role="3clFbG">
                  <node concept="2OqwBi" id="5A5sGroOtTM" role="3uHU7w">
                    <node concept="2OqwBi" id="5A5sGroOtvz" role="2Oq$k0">
                      <node concept="2ZBlsa" id="5A5sGroOt8K" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5A5sGroOtKs" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                      </node>
                    </node>
                    <node concept="1XCIdh" id="5A5sGroOueC" role="2OqNvi" />
                  </node>
                  <node concept="Xl_RD" id="5A5sGroOsA0" role="3uHU7B">
                    <property role="Xl_RC" value="query " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ucgPf" id="1LTEH$v18d" role="3aKz83">
          <node concept="3clFbS" id="1LTEH$v18f" role="2VODD2">
            <node concept="3clFbF" id="3VGLvhFbeWB" role="3cqZAp">
              <node concept="2OqwBi" id="3VGLvhFbfEe" role="3clFbG">
                <node concept="2OqwBi" id="3VGLvhFbfca" role="2Oq$k0">
                  <node concept="2ZBlsa" id="3VGLvhFbeWA" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3VGLvhFbfuv" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3VGLvhFbfX2" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:3VGLvhFaU4h" resolve="removeReferencedQueriesOf" />
                  <node concept="2ZBlsa" id="3VGLvhFbg2T" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3VGLvhF678Y" role="3cqZAp" />
            <node concept="3cpWs8" id="1LTEH$v4d3" role="3cqZAp">
              <node concept="3cpWsn" id="1LTEH$v4d4" role="3cpWs9">
                <property role="TrG5h" value="reference" />
                <node concept="3Tqbb2" id="1LTEH$v4cF" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:6gxxZVsFKMc" resolve="QueryContainerReference" />
                </node>
                <node concept="2ShNRf" id="1LTEH$v4d5" role="33vP2m">
                  <node concept="3zrR0B" id="1LTEH$v4d6" role="2ShVmc">
                    <node concept="3Tqbb2" id="1LTEH$v4d7" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:6gxxZVsFKMc" resolve="QueryContainerReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1LTEH$v4lE" role="3cqZAp">
              <node concept="2OqwBi" id="1LTEH$v4U4" role="3clFbG">
                <node concept="2OqwBi" id="1LTEH$v4vb" role="2Oq$k0">
                  <node concept="37vLTw" id="1LTEH$v4lC" role="2Oq$k0">
                    <ref role="3cqZAo" node="1LTEH$v4d4" resolve="reference" />
                  </node>
                  <node concept="3TrEf2" id="1LTEH$v4G8" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:6gxxZVsFKMd" resolve="queryContainer" />
                  </node>
                </node>
                <node concept="2oxUTD" id="1LTEH$v5fD" role="2OqNvi">
                  <node concept="2ZBlsa" id="1LTEH$v5lb" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1LTEH$v3T5" role="3cqZAp">
              <node concept="37vLTw" id="1LTEH$v4d8" role="3clFbG">
                <ref role="3cqZAo" node="1LTEH$v4d4" resolve="reference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="1LTEH$x1P5" role="upBLP">
          <node concept="uGdhv" id="1LTEH$x1Qg" role="16NeZM">
            <node concept="3clFbS" id="1LTEH$x1Qi" role="2VODD2">
              <node concept="3clFbF" id="2RbvdOKUhsW" role="3cqZAp">
                <node concept="2OqwBi" id="2RbvdOKUhLq" role="3clFbG">
                  <node concept="2ZBlsa" id="2RbvdOKUhsV" role="2Oq$k0" />
                  <node concept="2qgKlT" id="2RbvdOKUi1n" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:2RbvdOKU0GT" resolve="getQueryContainerName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1LTEH$v15i" role="2ZBHrp">
        <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
      </node>
      <node concept="2$S_p_" id="1LTEH$v15l" role="2$S_pT">
        <node concept="3clFbS" id="1LTEH$v15m" role="2VODD2">
          <node concept="Jncv_" id="5jZDGTdpk33" role="3cqZAp">
            <ref role="JncvD" to="3nll:6gxxZVsFKM9" resolve="QueryContainerMethods" />
            <node concept="3bvxqY" id="5jZDGTdpk5y" role="JncvB" />
            <node concept="3clFbS" id="5jZDGTdpk37" role="Jncv$">
              <node concept="3cpWs6" id="5jZDGTdpkbs" role="3cqZAp">
                <node concept="2OqwBi" id="5jZDGTdpkbt" role="3cqZAk">
                  <node concept="2WthIp" id="5jZDGTdpkbu" role="2Oq$k0" />
                  <node concept="2XshWL" id="5jZDGTdpkbv" role="2OqNvi">
                    <ref role="2WH_rO" node="5A5sGroQy2y" resolve="provideQueryContainersFor" />
                    <node concept="Jnkvi" id="5jZDGTdpkCH" role="2XxRq1">
                      <ref role="1M0zk5" node="5jZDGTdpk39" resolve="node" />
                    </node>
                    <node concept="1yR$tW" id="5jZDGTdpkpD" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="5jZDGTdpk39" role="JncvA">
              <property role="TrG5h" value="node" />
              <node concept="2jxLKc" id="5jZDGTdpk3a" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="5jZDGTdpkLL" role="3cqZAp" />
          <node concept="3clFbF" id="5A5sGroQ$E2" role="3cqZAp">
            <node concept="2ShNRf" id="5A5sGroQ$DY" role="3clFbG">
              <node concept="kMnCb" id="5A5sGroQ_yk" role="2ShVmc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="325Ffw" id="1LTEH_QNlw">
    <property role="3GE5qa" value="general.placeholder" />
    <property role="TrG5h" value="IComponentWithNamePlaceholder_KeyMap" />
    <ref role="1chiOs" to="3nll:1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
    <node concept="2PxR9H" id="1LTEHA7rlD" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rlE" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="a" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rlF" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rlG" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7svM" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7sD3" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7svL" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7sLV" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7sQr" role="37wK5m">
                  <property role="1XhdNS" value="a" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9E7s" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rm6" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rm7" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="A" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rmB" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="A" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rm8" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rm9" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7sSW" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7sSX" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7sSY" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7sSZ" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7sT0" role="37wK5m">
                  <property role="1XhdNS" value="A" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9E8L" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rmE" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rmF" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="b" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rmG" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rmH" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7sUG" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7sUH" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7sUI" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7sUJ" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7sUK" role="37wK5m">
                  <property role="1XhdNS" value="b" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9Ea6" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rnk" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rnl" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="B" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rnY" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="B" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rnm" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rnn" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7sYC" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7sYD" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7sYE" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7sYF" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7sYG" role="37wK5m">
                  <property role="1XhdNS" value="B" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EaQ" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rql" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rqm" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="c" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rqn" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rqo" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7t5o" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7t5p" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7t5q" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7t5r" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7t5s" role="37wK5m">
                  <property role="1XhdNS" value="c" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EbA" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rqp" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rqq" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="C" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rqr" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="C" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rqs" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rqt" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7tco" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7tcp" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7tcq" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7tcr" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7tcs" role="37wK5m">
                  <property role="1XhdNS" value="C" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9Ecm" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rrp" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rrq" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="d" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rrr" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rrs" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7tf8" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7tf9" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7tfa" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7tfb" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7tfc" role="37wK5m">
                  <property role="1XhdNS" value="d" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9Eh5" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rrt" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rru" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="D" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rrv" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="D" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rrw" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rrx" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7ti8" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7ti9" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7tia" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7tib" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7tic" role="37wK5m">
                  <property role="1XhdNS" value="D" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EhP" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rsA" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rsB" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="e" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rsC" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rsD" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7tlo" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7tlp" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7tlq" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7tlr" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7tls" role="37wK5m">
                  <property role="1XhdNS" value="e" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EmC" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rsE" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rsF" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="E" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rsG" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="E" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rsH" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rsI" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7toS" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7toT" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7toU" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7toV" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7toW" role="37wK5m">
                  <property role="1XhdNS" value="E" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9Eno" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rtW" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rtX" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="f" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rtY" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rtZ" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7tsC" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7tsD" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7tsE" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7tsF" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7tsG" role="37wK5m">
                  <property role="1XhdNS" value="f" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9Eo8" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7ru0" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7ru1" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="F" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7ru2" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="F" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7ru3" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7ru4" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7twC" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7twD" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7twE" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7twF" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7twG" role="37wK5m">
                  <property role="1XhdNS" value="F" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EoS" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rvr" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rvs" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="g" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rvt" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rvu" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7t$S" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7t$T" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7t$U" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7t$V" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7t$W" role="37wK5m">
                  <property role="1XhdNS" value="g" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EpC" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rvv" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rvw" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="G" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rvx" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="G" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rvy" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rvz" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7tDo" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7tDp" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7tDq" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7tDr" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7tDs" role="37wK5m">
                  <property role="1XhdNS" value="G" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9Eqo" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rx3" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rx4" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="h" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rx5" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rx6" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7tI8" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7tI9" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7tIa" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7tIb" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7tIc" role="37wK5m">
                  <property role="1XhdNS" value="h" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9Er8" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rx7" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rx8" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="H" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rx9" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="H" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rxa" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rxb" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7tN8" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7tN9" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7tNa" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7tNb" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7tNc" role="37wK5m">
                  <property role="1XhdNS" value="H" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9ErS" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7ryO" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7ryP" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="i" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7ryQ" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7ryR" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7tSo" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7tSp" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7tSq" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7tSr" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7tSs" role="37wK5m">
                  <property role="1XhdNS" value="i" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EsC" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7ryS" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7ryT" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="I" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7ryU" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="I" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7ryV" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7ryW" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7u1R" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7u1S" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7u1T" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7u1U" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7u1V" role="37wK5m">
                  <property role="1XhdNS" value="I" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9Eto" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7r$I" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7r$J" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="j" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7r$K" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7r$L" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7uf_" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7ufA" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7ufB" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7ufC" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7ufD" role="37wK5m">
                  <property role="1XhdNS" value="j" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9Eu8" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7r$M" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7r$N" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="J" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7r$O" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="J" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7r$P" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7r$Q" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7um6" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7um7" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7um8" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7um9" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7uma" role="37wK5m">
                  <property role="1XhdNS" value="J" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EuS" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rCz" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rC$" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="k" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rC_" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rCA" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7usm" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7usn" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7uso" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7usp" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7usq" role="37wK5m">
                  <property role="1XhdNS" value="k" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EvC" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rCB" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rCC" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="K" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rCD" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="K" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rCE" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rCF" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7uyQ" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7uyR" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7uyS" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7uyT" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7uyU" role="37wK5m">
                  <property role="1XhdNS" value="K" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9Ewo" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rGm" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rGn" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="l" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rGo" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rGp" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7uDA" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7uDB" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7uDC" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7uDD" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7uDE" role="37wK5m">
                  <property role="1XhdNS" value="l" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9E$A" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rGq" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rGr" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="L" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rGs" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="L" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rGt" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rGu" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7uKA" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7uKB" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7uKC" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7uKD" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7uKE" role="37wK5m">
                  <property role="1XhdNS" value="L" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9ECO" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rIF" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rIG" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="m" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rIH" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rII" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7uRQ" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7uRR" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7uRS" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7uRT" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7uRU" role="37wK5m">
                  <property role="1XhdNS" value="m" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9ED$" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rIJ" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rIK" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="M" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rIL" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="M" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rIM" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rIN" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7uZm" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7uZn" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7uZo" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7uZp" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7uZq" role="37wK5m">
                  <property role="1XhdNS" value="M" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EEk" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rL9" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rLa" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="n" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rLb" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rLc" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7v76" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7v77" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7v78" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7v79" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7v7a" role="37wK5m">
                  <property role="1XhdNS" value="n" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EF4" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rLd" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rLe" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="N" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rLf" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="N" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rLg" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rLh" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7vf6" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7vf7" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7vf8" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7vf9" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7vfa" role="37wK5m">
                  <property role="1XhdNS" value="N" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EFO" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rNK" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rNL" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="o" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rNM" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rNN" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7vnm" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7vnn" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7vno" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7vnp" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7vnq" role="37wK5m">
                  <property role="1XhdNS" value="o" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EG$" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rNO" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rNP" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="O" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rNQ" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="O" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rNR" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rNS" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7vvQ" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7vvR" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7vvS" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7vvT" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7vvU" role="37wK5m">
                  <property role="1XhdNS" value="O" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EHk" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rQw" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rQx" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="p" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rQy" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rQz" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7vCA" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7vCB" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7vCC" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7vCD" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7vCE" role="37wK5m">
                  <property role="1XhdNS" value="p" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EID" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rQ$" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rQ_" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="P" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rQA" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="P" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rQB" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rQC" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7vP4" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7vP5" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7vP6" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7vP7" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7vP8" role="37wK5m">
                  <property role="1XhdNS" value="P" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EJp" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rTp" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rTq" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="q" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rTr" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rTs" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7w2O" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7w2P" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7w2Q" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7w2R" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7w2S" role="37wK5m">
                  <property role="1XhdNS" value="q" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EK9" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rTt" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rTu" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="Q" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rTv" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="Q" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rTw" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rTx" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7wcP" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7wcQ" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7wcR" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7wcS" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7wcT" role="37wK5m">
                  <property role="1XhdNS" value="Q" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9ELu" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rWr" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rWs" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="r" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rWt" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rWu" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7wm_" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7wmA" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7wmB" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7wmC" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7wmD" role="37wK5m">
                  <property role="1XhdNS" value="r" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EMe" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rWv" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rWw" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="R" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rWx" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="R" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rWy" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rWz" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7ww_" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7wwA" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7wwB" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7wwC" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7wwD" role="37wK5m">
                  <property role="1XhdNS" value="R" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EMY" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rZA" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rZB" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="s" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rZC" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rZD" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7wEP" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7wEQ" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7wER" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7wES" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7wET" role="37wK5m">
                  <property role="1XhdNS" value="s" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9ENI" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7rZE" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7rZF" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="S" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7rZG" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="S" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7rZH" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7rZI" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7wPl" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7wPm" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7wPn" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7wPo" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7wPp" role="37wK5m">
                  <property role="1XhdNS" value="S" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9ESx" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7s2U" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7s2V" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="t" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7s2W" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7s2X" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7x05" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7x06" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7x07" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7x08" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7x09" role="37wK5m">
                  <property role="1XhdNS" value="t" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EWJ" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7s2Y" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7s2Z" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="T" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7s30" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="T" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7s31" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7s32" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7xb5" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7xb6" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7xb7" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7xb8" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7xb9" role="37wK5m">
                  <property role="1XhdNS" value="T" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EXv" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7s6n" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7s6o" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="u" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7s6p" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7s6q" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7xml" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7xmm" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7xmn" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7xmo" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7xmp" role="37wK5m">
                  <property role="1XhdNS" value="u" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EYf" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7s6r" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7s6s" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="U" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7s6t" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="U" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7s6u" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7s6v" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7xxP" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7xxQ" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7xxR" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7xxS" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7xxT" role="37wK5m">
                  <property role="1XhdNS" value="U" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EYZ" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7s9X" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7s9Y" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="v" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7s9Z" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7sa0" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7xH_" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7xHA" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7xHB" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7xHC" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7xHD" role="37wK5m">
                  <property role="1XhdNS" value="v" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9EZJ" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7sa1" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7sa2" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="V" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7sa3" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="V" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7sa4" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7sa5" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7xT_" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7xTA" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7xTB" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7xTC" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7xTD" role="37wK5m">
                  <property role="1XhdNS" value="V" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9F0v" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7sdG" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7sdH" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="w" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7sdI" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7sdJ" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7y5P" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7y5Q" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7y5R" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7y5S" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7y5T" role="37wK5m">
                  <property role="1XhdNS" value="w" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9F1f" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7sdK" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7sdL" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="W" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7sdM" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="W" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7sdN" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7sdO" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7ylN" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7ylO" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7ylP" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7ylQ" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7ylR" role="37wK5m">
                  <property role="1XhdNS" value="W" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9F1Z" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7sh$" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7sh_" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="x" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7shA" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7shB" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7yB3" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7yB4" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7yB5" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7yB6" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7yB7" role="37wK5m">
                  <property role="1XhdNS" value="x" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9F2J" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7shC" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7shD" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="X" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7shE" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="X" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7shF" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7shG" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7yO$" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7yO_" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7yOA" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7yOB" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7yOC" role="37wK5m">
                  <property role="1XhdNS" value="X" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9F44" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7sl_" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7slA" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="y" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7slB" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7slC" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7z1O" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7z1P" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7z1Q" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7z1R" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7z1S" role="37wK5m">
                  <property role="1XhdNS" value="y" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9F5p" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7slD" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7slE" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="Y" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7slF" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="Y" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7slG" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7slH" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7zfk" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7zfl" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7zfm" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7zfn" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7zfo" role="37wK5m">
                  <property role="1XhdNS" value="Y" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9F6I" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7spJ" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7spK" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="z" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7spL" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7spM" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7zt4" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7zt5" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7zt6" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7zt7" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7zt8" role="37wK5m">
                  <property role="1XhdNS" value="z" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9F83" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="1LTEHA7spN" role="2QnnpI">
      <node concept="2Py5lD" id="1LTEHA7spO" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="Z" />
      </node>
      <node concept="2Py5lD" id="1LTEHA7spP" role="2PyaAO">
        <property role="2PWKIB" value="none" />
        <property role="2PWKIS" value="Z" />
      </node>
      <node concept="2PzhpH" id="1LTEHA7spQ" role="2PL9iG">
        <node concept="3clFbS" id="1LTEHA7spR" role="2VODD2">
          <node concept="3clFbF" id="1LTEHA7zF4" role="3cqZAp">
            <node concept="2OqwBi" id="1LTEHA7zF5" role="3clFbG">
              <node concept="0GJ7k" id="1LTEHA7zF6" role="2Oq$k0" />
              <node concept="2qgKlT" id="1LTEHA7zF7" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="1LTEHA7zF8" role="37wK5m">
                  <property role="1XhdNS" value="Z" />
                </node>
                <node concept="1Q80Hx" id="1LTEHA9F8N" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2PxR9H" id="2RbvdOLeqzG" role="2QnnpI">
      <node concept="2Py5lD" id="2RbvdOLeqzH" role="2PyaAO">
        <property role="2PWKIB" value="shift" />
        <property role="2PWKIS" value="_" />
      </node>
      <node concept="2Py5lD" id="2RbvdOLerdU" role="2PyaAO">
        <property role="2PWKIS" value="_" />
        <property role="2PWKIB" value="none" />
      </node>
      <node concept="2PzhpH" id="2RbvdOLeqzI" role="2PL9iG">
        <node concept="3clFbS" id="2RbvdOLeqzJ" role="2VODD2">
          <node concept="3clFbF" id="2RbvdOLergJ" role="3cqZAp">
            <node concept="2OqwBi" id="2RbvdOLergK" role="3clFbG">
              <node concept="0GJ7k" id="2RbvdOLergL" role="2Oq$k0" />
              <node concept="2qgKlT" id="2RbvdOLergM" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHA7rg6" resolve="onValidLetterTypedOnPlaceholder" />
                <node concept="1Xhbcc" id="2RbvdOLergN" role="37wK5m">
                  <property role="1XhdNS" value="_" />
                </node>
                <node concept="1Q80Hx" id="2RbvdOLergO" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2RbvdOJ2XKi">
    <property role="3GE5qa" value="general.identifier" />
    <ref role="1XX52x" to="3nll:2RbvdOJ2XKf" resolve="IOptionalValidIdentifierWrapper" />
    <node concept="3F0A7n" id="2RbvdOJ2XKk" role="2wV5jI">
      <property role="1O74Pk" value="true" />
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      <node concept="2SqB2G" id="2RbvdOJ81o1" role="2SqHTX">
        <property role="TrG5h" value="nameCellId" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2RbvdOJsBs1">
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="GenericNodeDeletionActionMap" />
    <ref role="1h_SK9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1hA7zw" id="2RbvdOJsBs2" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="2RbvdOJsBs3" role="1hA7z_">
        <node concept="3clFbS" id="2RbvdOJsBs4" role="2VODD2">
          <node concept="3cpWs8" id="omljbxU$Dj" role="3cqZAp">
            <node concept="3cpWsn" id="omljbxU$Dk" role="3cpWs9">
              <property role="TrG5h" value="selectedNode" />
              <node concept="3Tqbb2" id="omljbxU$Qk" role="1tU5fm" />
              <node concept="2OqwBi" id="omljbxU$Dl" role="33vP2m">
                <node concept="1Q80Hx" id="omljbxU$Dm" role="2Oq$k0" />
                <node concept="liA8E" id="omljbxU$Dn" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode()" resolve="getSelectedNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="omljbxJuN$" role="3cqZAp">
            <node concept="3clFbS" id="omljbxJuNA" role="3clFbx">
              <node concept="3clFbJ" id="5jZDGTdPhYF" role="3cqZAp">
                <node concept="2OqwBi" id="5jZDGTdPhYG" role="3clFbw">
                  <node concept="37vLTw" id="omljbxUAGF" role="2Oq$k0">
                    <ref role="3cqZAo" node="omljbxU$Dk" resolve="selectedNode" />
                  </node>
                  <node concept="2xy62i" id="5jZDGTdPhYM" role="2OqNvi">
                    <node concept="1Q80Hx" id="5jZDGTdPhYN" role="2xHN3q" />
                  </node>
                </node>
                <node concept="3clFbS" id="5jZDGTdPhYO" role="3clFbx">
                  <node concept="3cpWs6" id="5jZDGTdPhYP" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbF" id="omljbxWOzf" role="3cqZAp">
                <node concept="2OqwBi" id="omljbxWOzg" role="3clFbG">
                  <node concept="3YRAZt" id="omljbxWOzh" role="2OqNvi" />
                  <node concept="37vLTw" id="omljbxWOzi" role="2Oq$k0">
                    <ref role="3cqZAo" node="omljbxU$Dk" resolve="selectedNode" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="omljbxWOxN" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="omljby1e8e" role="3clFbw">
              <node concept="2OqwBi" id="omljby1e8g" role="3fr31v">
                <node concept="2OqwBi" id="omljby1e8h" role="2Oq$k0">
                  <node concept="37vLTw" id="omljby1e8i" role="2Oq$k0">
                    <ref role="3cqZAo" node="omljbxU$Dk" resolve="selectedNode" />
                  </node>
                  <node concept="2yIwOk" id="omljby1e8j" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="omljby1e8k" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="29ZTnyInkMX" role="3cqZAp">
            <node concept="2OqwBi" id="29ZTnyInkMY" role="3clFbG">
              <node concept="3YRAZt" id="29ZTnyInkMZ" role="2OqNvi" />
              <node concept="37vLTw" id="29ZTnyInkN0" role="2Oq$k0">
                <ref role="3cqZAo" node="omljbxU$Dk" resolve="selectedNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="2RbvdOJL6Yq">
    <property role="3GE5qa" value="general.identifier" />
    <ref role="aqKnT" to="3nll:2RbvdOJ2XKf" resolve="IOptionalValidIdentifierWrapper" />
    <node concept="22hDWj" id="2RbvdOJL6Yr" role="22hAXT" />
  </node>
  <node concept="PKFIW" id="2RbvdOLp5Ws">
    <property role="3GE5qa" value="general.placeholder" />
    <property role="TrG5h" value="IComponentWithNamePlaceholder_EditorComponent" />
    <ref role="1XX52x" to="3nll:1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
    <node concept="1QoScp" id="2RbvdOL$g4d" role="2wV5jI">
      <node concept="pkWqt" id="2RbvdOL$g4e" role="3e4ffs">
        <node concept="3clFbS" id="2RbvdOL$g4f" role="2VODD2">
          <node concept="3clFbF" id="2RbvdOL$jeC" role="3cqZAp">
            <node concept="3fqX7Q" id="2RbvdOLXZu$" role="3clFbG">
              <node concept="2OqwBi" id="2RbvdOLXZuA" role="3fr31v">
                <node concept="pncrf" id="2RbvdOLXZuB" role="2Oq$k0" />
                <node concept="2qgKlT" id="2RbvdOLXZuC" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:2RbvdOL$gIz" resolve="shouldShowPlaceholder" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1HlG4h" id="2RbvdOL$g4r" role="1QoVPY">
        <ref role="34QXea" node="1LTEH_QNlw" resolve="IComponentWithNamePlaceholder_KeyMap" />
        <ref role="1ERwB7" node="2RbvdOJsBs1" resolve="GenericNodeDeletionActionMap" />
        <ref role="1k5W1q" node="2RbvdOJyHvg" resolve="PlaceholderTextStyle" />
        <node concept="1HfYo3" id="2RbvdOL$g4s" role="1HlULh">
          <node concept="3TQlhw" id="2RbvdOL$g4t" role="1Hhtcw">
            <node concept="3clFbS" id="2RbvdOL$g4u" role="2VODD2">
              <node concept="3clFbF" id="2RbvdOL$g4v" role="3cqZAp">
                <node concept="3cpWs3" id="2RbvdOL$g4w" role="3clFbG">
                  <node concept="Xl_RD" id="2RbvdOL$g4x" role="3uHU7w">
                    <property role="Xl_RC" value="&gt;" />
                  </node>
                  <node concept="3cpWs3" id="2RbvdOL$g4y" role="3uHU7B">
                    <node concept="Xl_RD" id="2RbvdOL$g4z" role="3uHU7B">
                      <property role="Xl_RC" value="&lt;" />
                    </node>
                    <node concept="2OqwBi" id="2RbvdOL$g4$" role="3uHU7w">
                      <node concept="pncrf" id="2RbvdOL$g4_" role="2Oq$k0" />
                      <node concept="2qgKlT" id="2RbvdOL$g4A" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:2RbvdOLeryC" resolve="getPlaceholderText" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="2RbvdOL$g4B" role="2SqHTX">
          <property role="TrG5h" value="placeholderCellId" />
        </node>
      </node>
      <node concept="3F1sOY" id="2RbvdOL$g4C" role="1QoS34">
        <ref role="1NtTu8" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
        <ref role="1ERwB7" node="2RbvdOL$9vq" resolve="IOptionalValidIdentifierWrapper_IComponentWithPlaceholderNameDeletionActions" />
        <node concept="1I8cUB" id="2RbvdOL$g4D" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2RbvdOL$9vq">
    <property role="3GE5qa" value="general.placeholder" />
    <property role="TrG5h" value="IOptionalValidIdentifierWrapper_IComponentWithPlaceholderNameDeletionActions" />
    <ref role="1h_SK9" to="3nll:2RbvdOJ2XKf" resolve="IOptionalValidIdentifierWrapper" />
    <node concept="1hA7zw" id="2RbvdOL$9vr" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="2RbvdOL$9vs" role="1hA7z_">
        <node concept="3clFbS" id="2RbvdOL$9vt" role="2VODD2">
          <node concept="3cpWs8" id="2RbvdOL$dG4" role="3cqZAp">
            <node concept="3cpWsn" id="2RbvdOL$dG5" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3Tqbb2" id="2RbvdOL$dDL" role="1tU5fm">
                <ref role="ehGHo" to="3nll:1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
              </node>
              <node concept="2OqwBi" id="2RbvdOLXXiS" role="33vP2m">
                <node concept="0IXxy" id="2RbvdOL$dG7" role="2Oq$k0" />
                <node concept="2Xjw5R" id="2RbvdOM8C7L" role="2OqNvi">
                  <node concept="1xMEDy" id="2RbvdOM8C7N" role="1xVPHs">
                    <node concept="chp4Y" id="2RbvdOM8CbM" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="2RbvdOM8Cj2" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2RbvdOL$dNA" role="3cqZAp" />
          <node concept="3clFbJ" id="2RbvdOL$dXA" role="3cqZAp">
            <property role="TyiWL" value="true" />
            <node concept="3clFbS" id="2RbvdOL$dXC" role="3clFbx">
              <node concept="3clFbF" id="2RbvdOL$a2x" role="3cqZAp">
                <node concept="2OqwBi" id="2RbvdOL$a2y" role="3clFbG">
                  <node concept="2OqwBi" id="2RbvdOL$a2z" role="2Oq$k0">
                    <node concept="37vLTw" id="2RbvdOL$a2$" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RbvdOL$dG5" resolve="component" />
                    </node>
                    <node concept="3TrEf2" id="2RbvdOL$a2_" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                    </node>
                  </node>
                  <node concept="3YRAZt" id="2RbvdOL$a2A" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="2RbvdOL$a2B" role="3cqZAp">
                <node concept="2OqwBi" id="2RbvdOL$a2C" role="3clFbG">
                  <node concept="37vLTw" id="2RbvdOL$a2D" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RbvdOL$dG5" resolve="component" />
                  </node>
                  <node concept="1OKiuA" id="2RbvdOL$a2E" role="2OqNvi">
                    <node concept="1Q80Hx" id="2RbvdOL$a2F" role="lBI5i" />
                    <node concept="2TlHUq" id="2RbvdOL$a2G" role="lGT1i">
                      <ref role="2TlMyj" node="2RbvdOL$g4B" resolve="placeholderCellId" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2RbvdOL$a2H" role="3cqZAp" />
            </node>
            <node concept="22lmx$" id="3NXs7yqPCyl" role="3clFbw">
              <node concept="22lmx$" id="5jZDGTdkPal" role="3uHU7B">
                <node concept="22lmx$" id="2RbvdOMmGRa" role="3uHU7B">
                  <node concept="22lmx$" id="2RbvdOMcCFk" role="3uHU7B">
                    <node concept="2OqwBi" id="2RbvdOL$fiL" role="3uHU7B">
                      <node concept="1PxgMI" id="2RbvdOL$eWk" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="2RbvdOL$f4K" role="3oSUPX">
                          <ref role="cht4Q" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
                        </node>
                        <node concept="37vLTw" id="2RbvdOL$e0h" role="1m5AlR">
                          <ref role="3cqZAo" node="2RbvdOL$dG5" resolve="component" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="2RbvdOL$f_T" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:6gxxZVtebNx" resolve="isQueriesBlock" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2RbvdOMcDo4" role="3uHU7w">
                      <node concept="37vLTw" id="2RbvdOMcCHo" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RbvdOL$dG5" resolve="component" />
                      </node>
                      <node concept="1mIQ4w" id="2RbvdOMkH8$" role="2OqNvi">
                        <node concept="chp4Y" id="2RbvdOMkHbk" role="cj9EA">
                          <ref role="cht4Q" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2RbvdOMmHcW" role="3uHU7w">
                    <node concept="37vLTw" id="2RbvdOMmH1f" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RbvdOL$dG5" resolve="component" />
                    </node>
                    <node concept="1mIQ4w" id="2RbvdOMmHnQ" role="2OqNvi">
                      <node concept="chp4Y" id="2RbvdOMmHqp" role="cj9EA">
                        <ref role="cht4Q" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5jZDGTdkPyI" role="3uHU7w">
                  <node concept="37vLTw" id="5jZDGTdkPlK" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RbvdOL$dG5" resolve="component" />
                  </node>
                  <node concept="1mIQ4w" id="5jZDGTdkPI4" role="2OqNvi">
                    <node concept="chp4Y" id="5jZDGTdkPL3" role="cj9EA">
                      <ref role="cht4Q" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3NXs7yqPCYu" role="3uHU7w">
                <node concept="37vLTw" id="3NXs7yqPCK4" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RbvdOL$dG5" resolve="component" />
                </node>
                <node concept="1mIQ4w" id="3NXs7yqPDag" role="2OqNvi">
                  <node concept="chp4Y" id="3NXs7yqPDdF" role="cj9EA">
                    <ref role="cht4Q" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="51Z40VxQRT$" role="3cqZAp" />
          <node concept="Jncv_" id="51Z40VxQSaC" role="3cqZAp">
            <ref role="JncvD" to="3nll:awtshkmllB" resolve="CommandContainer" />
            <node concept="37vLTw" id="51Z40VxQSfU" role="JncvB">
              <ref role="3cqZAo" node="2RbvdOL$dG5" resolve="component" />
            </node>
            <node concept="3clFbS" id="51Z40VxQSaG" role="Jncv$">
              <node concept="3clFbJ" id="51Z40VxQT3P" role="3cqZAp">
                <node concept="3clFbS" id="51Z40VxQT3R" role="3clFbx">
                  <node concept="3clFbF" id="51Z40VxQSGY" role="3cqZAp">
                    <node concept="2OqwBi" id="51Z40VxQSGZ" role="3clFbG">
                      <node concept="2OqwBi" id="51Z40VxQSH0" role="2Oq$k0">
                        <node concept="Jnkvi" id="51Z40VxQSJR" role="2Oq$k0">
                          <ref role="1M0zk5" node="51Z40VxQSaI" resolve="commandContainer" />
                        </node>
                        <node concept="3TrEf2" id="51Z40VxQSH2" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                        </node>
                      </node>
                      <node concept="3YRAZt" id="51Z40VxQSH3" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="51Z40VxQSH4" role="3cqZAp">
                    <node concept="2OqwBi" id="51Z40VxQSH5" role="3clFbG">
                      <node concept="Jnkvi" id="51Z40VxQSNc" role="2Oq$k0">
                        <ref role="1M0zk5" node="51Z40VxQSaI" resolve="commandContainer" />
                      </node>
                      <node concept="1OKiuA" id="51Z40VxQSH7" role="2OqNvi">
                        <node concept="1Q80Hx" id="51Z40VxQSH8" role="lBI5i" />
                        <node concept="2TlHUq" id="51Z40VxQSH9" role="lGT1i">
                          <ref role="2TlMyj" node="2RbvdOL$g4B" resolve="placeholderCellId" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="51Z40VxQSWw" role="3cqZAp" />
                </node>
                <node concept="2OqwBi" id="51Z40VxQTnA" role="3clFbw">
                  <node concept="Jnkvi" id="51Z40VxQT8c" role="2Oq$k0">
                    <ref role="1M0zk5" node="51Z40VxQSaI" resolve="commandContainer" />
                  </node>
                  <node concept="3TrcHB" id="51Z40Vy1lIC" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="51Z40VxQSaI" role="JncvA">
              <property role="TrG5h" value="commandContainer" />
              <node concept="2jxLKc" id="51Z40VxQSaJ" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="2RbvdOL$a2L" role="3cqZAp" />
          <node concept="3clFbJ" id="2RbvdOL$a2M" role="3cqZAp">
            <node concept="3clFbS" id="2RbvdOL$a2N" role="3clFbx">
              <node concept="3cpWs6" id="2RbvdOL$a2O" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="2RbvdOL$a2P" role="3clFbw">
              <node concept="37vLTw" id="2RbvdOL$a2Q" role="2Oq$k0">
                <ref role="3cqZAo" node="2RbvdOL$dG5" resolve="component" />
              </node>
              <node concept="2xy62i" id="2RbvdOL$a2R" role="2OqNvi">
                <node concept="1Q80Hx" id="2RbvdOL$a2S" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2RbvdOL$a2T" role="3cqZAp">
            <node concept="2OqwBi" id="2RbvdOL$a2U" role="3clFbG">
              <node concept="37vLTw" id="2RbvdOL$a2V" role="2Oq$k0">
                <ref role="3cqZAo" node="2RbvdOL$dG5" resolve="component" />
              </node>
              <node concept="3YRAZt" id="2RbvdOL$a2W" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="2RbvdOL$cnq" role="jK8aL">
        <node concept="3clFbS" id="2RbvdOL$cnr" role="2VODD2">
          <node concept="3clFbF" id="2RbvdOM8AAE" role="3cqZAp">
            <node concept="2OqwBi" id="2RbvdOM8BkN" role="3clFbG">
              <node concept="2OqwBi" id="2RbvdOM8ART" role="2Oq$k0">
                <node concept="0IXxy" id="2RbvdOM8AAD" role="2Oq$k0" />
                <node concept="2Xjw5R" id="2RbvdOM8B4x" role="2OqNvi">
                  <node concept="1xMEDy" id="2RbvdOM8B4z" role="1xVPHs">
                    <node concept="chp4Y" id="2RbvdOM8B76" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="2RbvdOM8Bb4" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="2RbvdOM8BuA" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="6Qa18YGmmFQ">
    <property role="3GE5qa" value="typing.generic" />
    <ref role="aqKnT" to="3nll:5SyewCaZ9pz" resolve="GenericType" />
    <node concept="22hDWj" id="6Qa18YGmmFR" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="3VGLvhF1LnY">
    <property role="3GE5qa" value="query" />
    <ref role="aqKnT" to="3nll:7fqk8p43yh7" resolve="QueryReference" />
    <node concept="2XrIbr" id="3VGLvhF1Pox" role="32lrUH">
      <property role="TrG5h" value="provideQueriesFor" />
      <node concept="37vLTG" id="3VGLvhF1QRC" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3VGLvhF1QTN" role="1tU5fm">
          <ref role="ehGHo" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
        </node>
      </node>
      <node concept="37vLTG" id="3VGLvhF1RJK" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="3VGLvhF1RLX" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7fqk8p43yh7" resolve="QueryReference" />
        </node>
      </node>
      <node concept="A3Dl8" id="3VGLvhF1Pu3" role="3clF45">
        <node concept="3Tqbb2" id="3VGLvhF1PwO" role="A3Ik2">
          <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
        </node>
      </node>
      <node concept="3clFbS" id="3VGLvhF1Poz" role="3clF47">
        <node concept="3cpWs8" id="3VGLvhF3V9A" role="3cqZAp">
          <node concept="3cpWsn" id="3VGLvhF3V9B" role="3cpWs9">
            <property role="TrG5h" value="boundedContext" />
            <node concept="3Tqbb2" id="3VGLvhF3V8o" role="1tU5fm">
              <ref role="ehGHo" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
            </node>
            <node concept="2OqwBi" id="3VGLvhF3V9C" role="33vP2m">
              <node concept="37vLTw" id="3VGLvhF3V9D" role="2Oq$k0">
                <ref role="3cqZAo" node="3VGLvhF1QRC" resolve="node" />
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
                    <ref role="3cqZAo" node="3VGLvhF1QRC" resolve="node" />
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
        <node concept="3clFbH" id="3VGLvhF1T4O" role="3cqZAp" />
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
        <node concept="3clFbF" id="3VGLvhF3Wxm" role="3cqZAp">
          <node concept="2OqwBi" id="3VGLvhF3WNp" role="3clFbG">
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
                          <node concept="37vLTw" id="3VGLvhF3XPm" role="2Oq$k0">
                            <ref role="3cqZAo" node="3VGLvhF1RJK" resolve="target" />
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
      <node concept="3Tm6S6" id="3VGLvhF1Po$" role="1B3o_S" />
    </node>
    <node concept="2F$Pav" id="3VGLvhF1Lo3" role="3ft7WO">
      <node concept="3eGOop" id="3VGLvhF1LsU" role="2$S_pN">
        <node concept="ucgPf" id="3VGLvhF1LsW" role="3aKz83">
          <node concept="3clFbS" id="3VGLvhF1LsY" role="2VODD2">
            <node concept="3clFbF" id="7IRUqbcqmjE" role="3cqZAp">
              <node concept="2OqwBi" id="7IRUqbcqmEe" role="3clFbG">
                <node concept="2ZBlsa" id="7IRUqbcqmjD" role="2Oq$k0" />
                <node concept="2qgKlT" id="7IRUqbcqn3C" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5jZDGThYDzO" resolve="toReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="3aCsR_cEF8n" role="upBLP">
          <node concept="uGdhv" id="3aCsR_cEFbE" role="16NL0q">
            <node concept="3clFbS" id="3aCsR_cEFbG" role="2VODD2">
              <node concept="3clFbJ" id="3aCsR_cJuG_" role="3cqZAp">
                <node concept="3clFbS" id="3aCsR_cJuGB" role="3clFbx">
                  <node concept="3cpWs6" id="3aCsR_cJv93" role="3cqZAp">
                    <node concept="Xl_RD" id="3aCsR_cEFiD" role="3cqZAk">
                      <property role="Xl_RC" value="query" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="3aCsR_cJ_c3" role="3clFbw">
                  <node concept="2OqwBi" id="3aCsR_cJ_c5" role="3fr31v">
                    <node concept="2ZBlsa" id="3aCsR_cJ_c6" role="2Oq$k0" />
                    <node concept="2qgKlT" id="3aCsR_cJ_c7" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:2Bsub$Lr4Li" resolve="isInsideQueryContainer" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3aCsR_cJuyQ" role="3cqZAp">
                <node concept="3cpWsn" id="3aCsR_cJuyR" role="3cpWs9">
                  <property role="TrG5h" value="queryContainer" />
                  <node concept="3Tqbb2" id="3aCsR_cJusx" role="1tU5fm">
                    <ref role="ehGHo" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
                  </node>
                  <node concept="2OqwBi" id="3aCsR_cJuyS" role="33vP2m">
                    <node concept="2ZBlsa" id="3aCsR_cJu$B" role="2Oq$k0" />
                    <node concept="2qgKlT" id="3aCsR_cJuyU" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:6gxxZVrXJ64" resolve="getQueryContainer" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3aCsR_cLYuy" role="3cqZAp" />
              <node concept="3cpWs8" id="3aCsR_cM6pu" role="3cqZAp">
                <node concept="3cpWsn" id="3aCsR_cM6pv" role="3cpWs9">
                  <property role="TrG5h" value="containerDisplayName" />
                  <node concept="17QB3L" id="3aCsR_cM6oe" role="1tU5fm" />
                  <node concept="3K4zz7" id="3aCsR_cM6pw" role="33vP2m">
                    <node concept="2OqwBi" id="3aCsR_cM6px" role="3K4E3e">
                      <node concept="37vLTw" id="3aCsR_cM6py" role="2Oq$k0">
                        <ref role="3cqZAo" node="3aCsR_cJuyR" resolve="queryContainer" />
                      </node>
                      <node concept="2qgKlT" id="3aCsR_cM6pz" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:2RbvdOM0peT" resolve="getName" />
                      </node>
                    </node>
                    <node concept="3K4zz7" id="3aCsR_cM6p$" role="3K4GZi">
                      <node concept="2OqwBi" id="3aCsR_cM6p_" role="3K4E3e">
                        <node concept="37vLTw" id="3aCsR_cM6pA" role="2Oq$k0">
                          <ref role="3cqZAo" node="3aCsR_cJuyR" resolve="queryContainer" />
                        </node>
                        <node concept="2qgKlT" id="3aCsR_cM6pB" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:2RbvdOLeryC" resolve="getPlaceholderText" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="3aCsR_cM6pC" role="3K4GZi">
                        <node concept="2OqwBi" id="3aCsR_cM6pD" role="3uHU7w">
                          <node concept="2OqwBi" id="3aCsR_cM6pE" role="2Oq$k0">
                            <node concept="37vLTw" id="3aCsR_cM6pF" role="2Oq$k0">
                              <ref role="3cqZAo" node="3aCsR_cJuyR" resolve="queryContainer" />
                            </node>
                            <node concept="3TrcHB" id="3aCsR_cM6pG" role="2OqNvi">
                              <ref role="3TsBF5" to="3nll:1WhJCpUOLrJ" resolve="type" />
                            </node>
                          </node>
                          <node concept="1XCIdh" id="3aCsR_cM6pH" role="2OqNvi" />
                        </node>
                        <node concept="Xl_RD" id="3aCsR_cM6pI" role="3uHU7B">
                          <property role="Xl_RC" value="query " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3aCsR_cM6pJ" role="3K4Cdx">
                        <node concept="37vLTw" id="3aCsR_cM6pK" role="2Oq$k0">
                          <ref role="3cqZAo" node="3aCsR_cJuyR" resolve="queryContainer" />
                        </node>
                        <node concept="2qgKlT" id="3aCsR_cM6pL" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:6gxxZVtebNx" resolve="isQueriesBlock" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3aCsR_cM6pM" role="3K4Cdx">
                      <node concept="37vLTw" id="3aCsR_cM6pN" role="2Oq$k0">
                        <ref role="3cqZAo" node="3aCsR_cJuyR" resolve="queryContainer" />
                      </node>
                      <node concept="2qgKlT" id="3aCsR_cM6pO" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:2RbvdOM0nGV" resolve="isNameSet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3aCsR_cJKfi" role="3cqZAp">
                <node concept="3cpWs3" id="3aCsR_cJEuz" role="3clFbG">
                  <node concept="Xl_RD" id="3aCsR_cJEuH" role="3uHU7B">
                    <property role="Xl_RC" value="query of " />
                  </node>
                  <node concept="37vLTw" id="3aCsR_cM8qP" role="3uHU7w">
                    <ref role="3cqZAo" node="3aCsR_cM6pv" resolve="containerDisplayName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3VGLvhF1Lq1" role="2ZBHrp">
        <ref role="ehGHo" to="3nll:7fqk8p43yh4" resolve="Query" />
      </node>
      <node concept="2$S_p_" id="3VGLvhF1Lq4" role="2$S_pT">
        <node concept="3clFbS" id="3VGLvhF1Lq5" role="2VODD2">
          <node concept="3clFbJ" id="3VGLvhF1OCZ" role="3cqZAp">
            <node concept="3clFbS" id="3VGLvhF1OD1" role="3clFbx">
              <node concept="3cpWs6" id="3VGLvhF1T7k" role="3cqZAp">
                <node concept="2OqwBi" id="3VGLvhF1TnB" role="3cqZAk">
                  <node concept="2WthIp" id="3VGLvhF1TbT" role="2Oq$k0" />
                  <node concept="2XshWL" id="3VGLvhF1TtR" role="2OqNvi">
                    <ref role="2WH_rO" node="3VGLvhF1Pox" resolve="provideQueriesFor" />
                    <node concept="1PxgMI" id="3VGLvhF1TDo" role="2XxRq1">
                      <node concept="chp4Y" id="3VGLvhF1TFs" role="3oSUPX">
                        <ref role="cht4Q" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
                      </node>
                      <node concept="3bvxqY" id="3VGLvhF1TvB" role="1m5AlR" />
                    </node>
                    <node concept="1yR$tW" id="3VGLvhF1TJ5" role="2XxRq1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3VGLvhF1OQL" role="3clFbw">
              <node concept="3bvxqY" id="3VGLvhF3Soe" role="2Oq$k0" />
              <node concept="1mIQ4w" id="3VGLvhF1P0U" role="2OqNvi">
                <node concept="chp4Y" id="3VGLvhF1P3o" role="cj9EA">
                  <ref role="cht4Q" to="3nll:1WhJCpUZu2R" resolve="QueryMethods" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3VGLvhF3SB6" role="3cqZAp" />
          <node concept="3clFbF" id="3VGLvhF1P8H" role="3cqZAp">
            <node concept="2ShNRf" id="3VGLvhF1P8D" role="3clFbG">
              <node concept="kMnCb" id="3VGLvhF1PgY" role="2ShVmc" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWj" id="3VGLvhF1LnZ" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="5jZDGTdpaEL">
    <property role="3GE5qa" value="eventContainer" />
    <ref role="1XX52x" to="3nll:5jZDGTdpaEI" resolve="EventContainerReference" />
    <node concept="1iCGBv" id="5jZDGTdpaEN" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:5jZDGTdpaEJ" resolve="eventContainer" />
      <node concept="1sVBvm" id="5jZDGTdpaEP" role="1sWHZn">
        <node concept="1HlG4h" id="5jZDGTdpaEW" role="2wV5jI">
          <node concept="1HfYo3" id="5jZDGTdpaEY" role="1HlULh">
            <node concept="3TQlhw" id="5jZDGTdpaF0" role="1Hhtcw">
              <node concept="3clFbS" id="5jZDGTdpaF2" role="2VODD2">
                <node concept="3clFbF" id="5jZDGTdpiKY" role="3cqZAp">
                  <node concept="2OqwBi" id="5jZDGTdpiLx" role="3clFbG">
                    <node concept="pncrf" id="5jZDGTdpiKX" role="2Oq$k0" />
                    <node concept="2qgKlT" id="5jZDGTdpiMP" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:5jZDGTdpgfc" resolve="getEventContainerName" />
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
  <node concept="3ICUPy" id="5jZDGTdpmHG">
    <property role="3GE5qa" value="eventContainer" />
    <ref role="aqKnT" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
    <node concept="1Qtc8_" id="5jZDGTdpmHJ" role="IW6Ez">
      <node concept="1GhOrh" id="5jZDGTdpmOC" role="1Qtc8A">
        <node concept="1GhMSn" id="5jZDGTdpmOE" role="1GhOrs">
          <node concept="3clFbS" id="5jZDGTdpmOG" role="2VODD2">
            <node concept="3clFbF" id="5jZDGTdpnCZ" role="3cqZAp">
              <node concept="2OqwBi" id="5jZDGTdpoel" role="3clFbG">
                <node concept="1XH99k" id="5jZDGTdpnCY" role="2Oq$k0">
                  <ref role="1XH99l" to="3nll:3VGLvhFnWd_" resolve="EventContainerType" />
                </node>
                <node concept="2ViDtN" id="5jZDGTdpowh" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="5jZDGTdpmYw" role="1GhOri">
          <node concept="1hCUdq" id="5jZDGTdpmYy" role="1hCUd6">
            <node concept="3clFbS" id="5jZDGTdpmY$" role="2VODD2">
              <node concept="3clFbF" id="5jZDGTdpo$u" role="3cqZAp">
                <node concept="2OqwBi" id="5jZDGTdpoOL" role="3clFbG">
                  <node concept="2ZBlsa" id="5jZDGTdpo$t" role="2Oq$k0" />
                  <node concept="1XCIdh" id="5jZDGTdpp3r" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="5jZDGTdpmYA" role="IWgqQ">
            <node concept="3clFbS" id="5jZDGTdpmYC" role="2VODD2">
              <node concept="3clFbF" id="5jZDGTdps2w" role="3cqZAp">
                <node concept="2OqwBi" id="5jZDGTdps_x" role="3clFbG">
                  <node concept="2OqwBi" id="5jZDGTdpsdY" role="2Oq$k0">
                    <node concept="7Obwk" id="5jZDGTdps2v" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5jZDGTdpss1" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="5jZDGTdpsKE" role="2OqNvi">
                    <node concept="2ZBlsa" id="5jZDGTdpsLk" role="tz02z" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5jZDGTgx7Yw" role="3cqZAp" />
              <node concept="3clFbJ" id="5jZDGTgx8gt" role="3cqZAp">
                <node concept="3clFbS" id="5jZDGTgx8gv" role="3clFbx">
                  <node concept="3clFbF" id="5jZDGTgx8Am" role="3cqZAp">
                    <node concept="2OqwBi" id="5jZDGTgx8No" role="3clFbG">
                      <node concept="7Obwk" id="5jZDGTgx8Al" role="2Oq$k0" />
                      <node concept="2qgKlT" id="5jZDGTgx94F" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:d$u27T68WS" resolve="resetAndMergeChildRepositoryReferences" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="5jZDGTg_AOY" role="3clFbw">
                  <node concept="2OqwBi" id="5jZDGTg_AP0" role="3fr31v">
                    <node concept="2OqwBi" id="5jZDGTg_AP1" role="2Oq$k0">
                      <node concept="7Obwk" id="5jZDGTg_AP2" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5jZDGTg_AP3" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
                      </node>
                    </node>
                    <node concept="21noJN" id="5jZDGTg_AP4" role="2OqNvi">
                      <node concept="21nZrQ" id="5jZDGTg_AP5" role="21noJM">
                        <ref role="21nZrZ" to="3nll:3VGLvhFnWdA" resolve="EventBlock" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="5jZDGTdpp5U" role="2jiSrf">
            <node concept="3clFbS" id="5jZDGTdpp5V" role="2VODD2">
              <node concept="3clFbF" id="5jZDGTdppko" role="3cqZAp">
                <node concept="3fqX7Q" id="5jZDGTdppkm" role="3clFbG">
                  <node concept="2OqwBi" id="5jZDGTdpq6r" role="3fr31v">
                    <node concept="2OqwBi" id="5jZDGTdppI7" role="2Oq$k0">
                      <node concept="7Obwk" id="5jZDGTdpppA" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5jZDGTdppWA" role="2OqNvi">
                        <ref role="3TsBF5" to="3nll:5jZDGTd5UEc" resolve="type" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5jZDGTdpqi0" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2ZBlsa" id="5jZDGTdpqjr" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="5jZDGTdpqoB" role="2jZA2a">
            <node concept="3cqJkl" id="5jZDGTdpqoC" role="3cqGtW">
              <node concept="3clFbS" id="5jZDGTdpqoD" role="2VODD2">
                <node concept="3clFbF" id="5jZDGTdpqCR" role="3cqZAp">
                  <node concept="3cpWs3" id="5jZDGTdprJF" role="3clFbG">
                    <node concept="Xl_RD" id="5jZDGTdprJJ" role="3uHU7w">
                      <property role="Xl_RC" value=" declaration" />
                    </node>
                    <node concept="3cpWs3" id="5jZDGTdpr$p" role="3uHU7B">
                      <node concept="Xl_RD" id="5jZDGTdpqCQ" role="3uHU7B">
                        <property role="Xl_RC" value="Transform into a event " />
                      </node>
                      <node concept="2OqwBi" id="5jZDGTdprFA" role="3uHU7w">
                        <node concept="2ZBlsa" id="5jZDGTdpr_8" role="2Oq$k0" />
                        <node concept="1XCIdh" id="5jZDGTdprHu" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2ZThk1" id="5jZDGTdpmST" role="2ZBHrp">
          <ref role="2ZWj4r" to="3nll:3VGLvhFnWd_" resolve="EventContainerType" />
        </node>
      </node>
      <node concept="3cWJ9i" id="5jZDGTdpmHN" role="1Qtc8$">
        <node concept="CtIbL" id="5jZDGTdpmHP" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="5jZDGTdpmHH" role="22hAXT">
      <property role="TrG5h" value="EventContainerTypeTransformationMenu" />
    </node>
  </node>
  <node concept="1h_SRR" id="5jZDGTdvP4i">
    <property role="3GE5qa" value="eventContainer" />
    <property role="TrG5h" value="EventContainerRequiresDeletionActionMap" />
    <ref role="1h_SK9" to="3nll:7fqk8p44qYv" resolve="EventContainer" />
    <node concept="1hA7zw" id="5jZDGTdvPky" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="5jZDGTdvPkz" role="1hA7z_">
        <node concept="3clFbS" id="5jZDGTdvPk$" role="2VODD2">
          <node concept="3clFbJ" id="5jZDGTdvQ39" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGTdvQ3a" role="3clFbw">
              <node concept="0IXxy" id="5jZDGTdvQ3b" role="2Oq$k0" />
              <node concept="2xy62i" id="5jZDGTdvQ3c" role="2OqNvi">
                <node concept="1Q80Hx" id="5jZDGTdvQ3d" role="2xHN3q" />
                <node concept="2TlHUq" id="5jZDGTdvQ3e" role="3a7HXU">
                  <ref role="2TlMyj" node="5jZDGTdvNQx" resolve="requiresBlockCellId" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5jZDGTdvQ3f" role="3clFbx">
              <node concept="3cpWs6" id="5jZDGTdvQ3g" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGTdvQ3h" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGTdvQ3i" role="3clFbG">
              <node concept="0IXxy" id="5jZDGTdvQ3j" role="2Oq$k0" />
              <node concept="2qgKlT" id="5jZDGTdvQ3k" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTikSOJ" resolve="resetReferences" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGTeC8f2" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGTeC8s9" role="3clFbG">
              <node concept="0IXxy" id="5jZDGTeC8f1" role="2Oq$k0" />
              <node concept="1OKiuA" id="5jZDGTeC8Kz" role="2OqNvi">
                <node concept="1Q80Hx" id="5jZDGTeC8Ld" role="lBI5i" />
                <node concept="2TlHUq" id="5jZDGTeC8Tt" role="lGT1i">
                  <ref role="2TlMyj" node="5jZDGTeA1ZW" resolve="placeholderSpacerCellId" />
                </node>
                <node concept="3cmrfG" id="5jZDGTeORwx" role="3dN3m$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="5jZDGTdvPkS" role="jK8aL">
        <node concept="3clFbS" id="5jZDGTdvPkT" role="2VODD2">
          <node concept="3clFbF" id="5jZDGTdvPrC" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGTdvPIF" role="3clFbG">
              <node concept="0IXxy" id="5jZDGTdvPrB" role="2Oq$k0" />
              <node concept="3TrcHB" id="5jZDGTdvPYz" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="5jZDGTfV_ay">
    <property role="3GE5qa" value="event" />
    <property role="TrG5h" value="EventRequiredDtoRepositoriesDeletionActionMap" />
    <ref role="1h_SK9" to="3nll:7fqk8p43ygS" resolve="Event" />
    <node concept="1hA7zw" id="5jZDGTfV_cN" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="5jZDGTfV_cO" role="1hA7z_">
        <node concept="3clFbS" id="5jZDGTfV_cP" role="2VODD2">
          <node concept="3clFbJ" id="5jZDGTfV_cQ" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGTfV_cR" role="3clFbw">
              <node concept="0IXxy" id="5jZDGTfV_cS" role="2Oq$k0" />
              <node concept="2xy62i" id="5jZDGTfV_cT" role="2OqNvi">
                <node concept="1Q80Hx" id="5jZDGTfV_cU" role="2xHN3q" />
                <node concept="2TlHUq" id="5jZDGTfV_cV" role="3a7HXU">
                  <ref role="2TlMyj" node="5jZDGTfV$b6" resolve="requiresBlockCellId" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5jZDGTfV_cW" role="3clFbx">
              <node concept="3cpWs6" id="5jZDGTfV_cX" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGTfV_cZ" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGTfV_d0" role="3clFbG">
              <node concept="0IXxy" id="5jZDGTfV_d1" role="2Oq$k0" />
              <node concept="2qgKlT" id="5jZDGTfV_d2" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5jZDGTikSOJ" resolve="resetReferences" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jZDGTfV_d3" role="3cqZAp">
            <node concept="2OqwBi" id="5jZDGTfV_d4" role="3clFbG">
              <node concept="0IXxy" id="5jZDGTfV_d5" role="2Oq$k0" />
              <node concept="1OKiuA" id="5jZDGTfV_d6" role="2OqNvi">
                <node concept="1Q80Hx" id="5jZDGTfV_d7" role="lBI5i" />
                <node concept="2B6iha" id="5jZDGTfV_d8" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
                <node concept="3cmrfG" id="5jZDGTfV_d9" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="omljbxiN79" role="jK8aL">
        <node concept="3clFbS" id="omljbxiN7a" role="2VODD2">
          <node concept="3clFbF" id="omljbxiNkz" role="3cqZAp">
            <node concept="2OqwBi" id="omljbxiNFm" role="3clFbG">
              <node concept="0IXxy" id="omljbxiNky" role="2Oq$k0" />
              <node concept="3TrcHB" id="omljbxiO21" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="5jZDGTilOg4">
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="IComponentWithRepositoryReferences_EditorComponent" />
    <ref role="1XX52x" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
    <node concept="3EZMnI" id="5jZDGTilOgc" role="2wV5jI">
      <node concept="3F0ifn" id="5jZDGTilOgd" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" node="4REBMIum1$x" resolve="LeftSquareBrace" />
        <node concept="ljvvj" id="5jZDGTilOge" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="5jZDGTilOgf" role="3n$kyP">
            <node concept="3clFbS" id="5jZDGTilOgg" role="2VODD2">
              <node concept="3clFbF" id="5jZDGTilOgh" role="3cqZAp">
                <node concept="2OqwBi" id="5jZDGTilOgi" role="3clFbG">
                  <node concept="pncrf" id="5jZDGTilOgj" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jZDGTilOgk" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="5jZDGTilOgl" role="2SqHTX">
          <property role="TrG5h" value="repositoryReferenceListStartCellId" />
        </node>
      </node>
      <node concept="3F2HdR" id="5jZDGTilOgm" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
        <node concept="l2Vlx" id="5jZDGTilOgn" role="2czzBx" />
        <node concept="tppnM" id="5jZDGTilOgo" role="sWeuL">
          <node concept="ljvvj" id="5jZDGTilOgp" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="5jZDGTilOgq" role="3n$kyP">
              <node concept="3clFbS" id="5jZDGTilOgr" role="2VODD2">
                <node concept="3clFbF" id="5jZDGTilOgs" role="3cqZAp">
                  <node concept="2OqwBi" id="5jZDGTilOgt" role="3clFbG">
                    <node concept="pncrf" id="5jZDGTilOgu" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5jZDGTilOgv" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pj6Ft" id="5jZDGTilOgw" role="3F10Kt" />
        <node concept="ljvvj" id="5jZDGTilOgx" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="5jZDGTilOgy" role="3n$kyP">
            <node concept="3clFbS" id="5jZDGTilOgz" role="2VODD2">
              <node concept="3clFbF" id="5jZDGTilOg$" role="3cqZAp">
                <node concept="2OqwBi" id="5jZDGTilOg_" role="3clFbG">
                  <node concept="pncrf" id="5jZDGTilOgA" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jZDGTilOgB" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="5jZDGTilOgC" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="5jZDGTilOgD" role="3n$kyP">
            <node concept="3clFbS" id="5jZDGTilOgE" role="2VODD2">
              <node concept="3clFbF" id="5jZDGTilOgF" role="3cqZAp">
                <node concept="2OqwBi" id="5jZDGTilOgG" role="3clFbG">
                  <node concept="pncrf" id="5jZDGTilOgH" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jZDGTilOgI" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5jZDGTikMfc" resolve="hasVerticallyAlignedReferences" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5jZDGTilOgJ" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" node="4REBMIum1$D" resolve="RightSquareBrace" />
      </node>
      <node concept="l2Vlx" id="5jZDGTilOgK" role="2iSdaV" />
    </node>
  </node>
  <node concept="3ICUPy" id="5jZDGTimaP9">
    <property role="3GE5qa" value="repository" />
    <ref role="aqKnT" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
    <node concept="1Qtc8_" id="5jZDGTimaPc" role="IW6Ez">
      <node concept="IWgqT" id="5jZDGTimaPd" role="1Qtc8A">
        <node concept="1hCUdq" id="5jZDGTimaPe" role="1hCUd6">
          <node concept="3clFbS" id="5jZDGTimaPf" role="2VODD2">
            <node concept="3clFbF" id="5jZDGTimaPg" role="3cqZAp">
              <node concept="Xl_RD" id="5jZDGTimaPh" role="3clFbG">
                <property role="Xl_RC" value="requires" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="5jZDGTimaPi" role="IWgqQ">
          <node concept="3clFbS" id="5jZDGTimaPj" role="2VODD2">
            <node concept="3clFbF" id="omljbxg6kg" role="3cqZAp">
              <node concept="2OqwBi" id="omljbxg60D" role="3clFbG">
                <node concept="2OqwBi" id="omljbxaDS9" role="2Oq$k0">
                  <node concept="7Obwk" id="omljbxaDSa" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="omljbxaDSb" role="2OqNvi">
                    <node concept="1xMEDy" id="omljbxaDSc" role="1xVPHs">
                      <node concept="chp4Y" id="omljbxaDSd" role="ri$Ld">
                        <ref role="cht4Q" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="omljbxaDSe" role="1xVPHs" />
                  </node>
                </node>
                <node concept="2qgKlT" id="omljbxg6ci" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:omljbxfYaR" resolve="executeRequiresTransformation" />
                  <node concept="1Q80Hx" id="omljbxg6eH" role="37wK5m" />
                  <node concept="7Obwk" id="omljbxg6hb" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="5jZDGTimaPy" role="2jiSrf">
          <node concept="3clFbS" id="5jZDGTimaPz" role="2VODD2">
            <node concept="3clFbF" id="omljbxaCuP" role="3cqZAp">
              <node concept="2OqwBi" id="omljbxaDJo" role="3clFbG">
                <node concept="2OqwBi" id="omljbxaDJp" role="2Oq$k0">
                  <node concept="7Obwk" id="omljbxaDJq" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="omljbxaDJr" role="2OqNvi">
                    <node concept="1xMEDy" id="omljbxaDJs" role="1xVPHs">
                      <node concept="chp4Y" id="omljbxaDJt" role="ri$Ld">
                        <ref role="cht4Q" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="omljbxaDJu" role="1xVPHs" />
                  </node>
                </node>
                <node concept="2qgKlT" id="omljbxfI4C" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:omljbxf$Pf" resolve="canExecuteRequiresTransformation" />
                  <node concept="1Q80Hx" id="omljbxfI99" role="37wK5m" />
                  <node concept="7Obwk" id="omljbxfIbe" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="5jZDGTimaPD" role="1Qtc8$">
        <node concept="CtIbL" id="5jZDGTimaPE" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="5jZDGTimaPa" role="22hAXT">
      <property role="TrG5h" value="IComponentWithRepositoryReferences_RequiresTransformationMenu" />
    </node>
  </node>
  <node concept="24kQdi" id="mdpAJLpk8a">
    <property role="3GE5qa" value="generationSettings" />
    <ref role="1XX52x" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
    <node concept="3EZMnI" id="mdpAJLpk8c" role="2wV5jI">
      <ref role="1ERwB7" node="5qxF18Fqqxs" resolve="GenerationSettings_ActionMap" />
      <node concept="3F0ifn" id="mdpAJLpk8m" role="3EZMnx">
        <property role="3F0ifm" value="generation settings" />
        <ref role="1k5W1q" node="7fqk8p40QMe" resolve="BoundedContextKeywordStyle" />
        <ref role="1ERwB7" node="5qxF18Fqqxs" resolve="GenerationSettings_ActionMap" />
      </node>
      <node concept="3F0ifn" id="mdpAJLpk8s" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="mdpAJLpokn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="omljbyVz8z" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:omljbyVy$T" resolve="components" />
        <node concept="2iRkQZ" id="omljbyVz8P" role="2czzBx" />
        <node concept="ljvvj" id="omljbyVz8G" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="omljbyVz8L" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="mdpAJLpokO" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
      <node concept="l2Vlx" id="mdpAJLpk8f" role="2iSdaV" />
    </node>
  </node>
  <node concept="22mcaB" id="mdpAJLzu8H">
    <property role="3GE5qa" value="repository" />
    <ref role="aqKnT" to="3nll:5jZDGTgnxtU" resolve="IRepositoryReference" />
    <node concept="2XrIbr" id="mdpAJLzuXe" role="32lrUH">
      <property role="TrG5h" value="provideRepositoriesFor" />
      <node concept="37vLTG" id="mdpAJLzwTI" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="mdpAJLzwTJ" role="1tU5fm">
          <ref role="ehGHo" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
        </node>
      </node>
      <node concept="37vLTG" id="mdpAJLzwTK" role="3clF46">
        <property role="TrG5h" value="targetNode" />
        <node concept="3Tqbb2" id="mdpAJLzwTL" role="1tU5fm">
          <ref role="ehGHo" to="3nll:5jZDGTgnxtU" resolve="IRepositoryReference" />
        </node>
      </node>
      <node concept="37vLTG" id="mdpAJLzDxB" role="3clF46">
        <property role="TrG5h" value="repositories" />
        <node concept="A3Dl8" id="mdpAJL$bvn" role="1tU5fm">
          <node concept="3Tqbb2" id="mdpAJL$bvo" role="A3Ik2">
            <ref role="ehGHo" to="3nll:5jZDGTilvf_" resolve="IRepository" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="mdpAJLzuXf" role="3clF47">
        <node concept="3cpWs8" id="mdpAJL$Rs7" role="3cqZAp">
          <node concept="3cpWsn" id="mdpAJL$Rs8" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3Tqbb2" id="mdpAJL$RmU" role="1tU5fm">
              <ref role="ehGHo" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
            </node>
            <node concept="2OqwBi" id="mdpAJL$Rs9" role="33vP2m">
              <node concept="37vLTw" id="mdpAJL$Rsa" role="2Oq$k0">
                <ref role="3cqZAo" node="mdpAJLzwTI" resolve="node" />
              </node>
              <node concept="2qgKlT" id="mdpAJL$Rsb" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:d$u27T5hnJ" resolve="findParentComponentWithRepositoryReferences" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mdpAJLzEHw" role="3cqZAp">
          <node concept="2OqwBi" id="mdpAJLzG9I" role="3clFbG">
            <node concept="37vLTw" id="mdpAJLzEHu" role="2Oq$k0">
              <ref role="3cqZAo" node="mdpAJLzDxB" resolve="repositories" />
            </node>
            <node concept="3zZkjj" id="mdpAJLzGGt" role="2OqNvi">
              <node concept="1bVj0M" id="mdpAJLzGGv" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="mdpAJLzGGw" role="1bW5cS">
                  <node concept="3clFbF" id="mdpAJLzHeC" role="3cqZAp">
                    <node concept="1Wc70l" id="mdpAJLzIGj" role="3clFbG">
                      <node concept="1eOMI4" id="mdpAJLzJbY" role="3uHU7w">
                        <node concept="22lmx$" id="mdpAJLzLib" role="1eOMHV">
                          <node concept="3clFbC" id="mdpAJLzMhS" role="3uHU7w">
                            <node concept="37vLTw" id="mdpAJLzM_R" role="3uHU7w">
                              <ref role="3cqZAo" node="mdpAJLzGGx" resolve="repository" />
                            </node>
                            <node concept="2OqwBi" id="mdpAJLzLJ0" role="3uHU7B">
                              <node concept="37vLTw" id="mdpAJLzLsb" role="2Oq$k0">
                                <ref role="3cqZAo" node="mdpAJLzwTK" resolve="targetNode" />
                              </node>
                              <node concept="2qgKlT" id="mdpAJLzM2o" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTil89u" resolve="getRepository" />
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="mdpAJLzJp8" role="3uHU7B">
                            <node concept="2OqwBi" id="mdpAJLzKe8" role="3fr31v">
                              <node concept="37vLTw" id="mdpAJLzJWv" role="2Oq$k0">
                                <ref role="3cqZAo" node="mdpAJLzwTI" resolve="node" />
                              </node>
                              <node concept="2qgKlT" id="mdpAJLzKtk" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                                <node concept="37vLTw" id="mdpAJLzKAM" role="37wK5m">
                                  <ref role="3cqZAo" node="mdpAJLzGGx" resolve="repository" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="mdpAJLzHeA" role="3uHU7B">
                        <node concept="2OqwBi" id="mdpAJLzHVp" role="3fr31v">
                          <node concept="2qgKlT" id="mdpAJLzI4M" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5jZDGTilx5F" resolve="isReferencing" />
                            <node concept="37vLTw" id="mdpAJLzIdG" role="37wK5m">
                              <ref role="3cqZAo" node="mdpAJLzGGx" resolve="repository" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="mdpAJL$SWS" role="2Oq$k0">
                            <ref role="3cqZAo" node="mdpAJL$Rs8" resolve="parent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="mdpAJLzGGx" role="1bW2Oz">
                  <property role="TrG5h" value="repository" />
                  <node concept="2jxLKc" id="mdpAJLzGGy" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="mdpAJLzuXy" role="1B3o_S" />
      <node concept="A3Dl8" id="mdpAJLzuXz" role="3clF45">
        <node concept="3Tqbb2" id="mdpAJLzuX$" role="A3Ik2">
          <ref role="ehGHo" to="3nll:5jZDGTilvf_" resolve="IRepository" />
        </node>
      </node>
    </node>
    <node concept="22hDWj" id="mdpAJLzu8I" role="22hAXT" />
    <node concept="2F$Pav" id="mdpAJLzu8K" role="3ft7WO">
      <node concept="3eGOop" id="mdpAJLzuev" role="2$S_pN">
        <node concept="16NfWO" id="mdpAJN0yux" role="upBLP">
          <node concept="uGdhv" id="mdpAJN0yz2" role="16NeZM">
            <node concept="3clFbS" id="mdpAJN0yz4" role="2VODD2">
              <node concept="3clFbF" id="mdpAJN0yzz" role="3cqZAp">
                <node concept="2OqwBi" id="mdpAJN0yz$" role="3clFbG">
                  <node concept="2ZBlsa" id="mdpAJN0yz_" role="2Oq$k0" />
                  <node concept="2qgKlT" id="mdpAJN0yzA" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:mdpAJL$$QT" resolve="repositoryName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ucgPf" id="mdpAJLzuex" role="3aKz83">
          <node concept="3clFbS" id="mdpAJLzuez" role="2VODD2">
            <node concept="Jncv_" id="mdpAJOAn8N" role="3cqZAp">
              <ref role="JncvD" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
              <node concept="3bvxqY" id="mdpAJOAnhm" role="JncvB" />
              <node concept="3clFbS" id="mdpAJOAn8R" role="Jncv$">
                <node concept="3clFbF" id="mdpAJOAnEn" role="3cqZAp">
                  <node concept="2OqwBi" id="mdpAJOAnEo" role="3clFbG">
                    <node concept="2OqwBi" id="mdpAJOAnEp" role="2Oq$k0">
                      <node concept="Jnkvi" id="mdpAJOAnW9" role="2Oq$k0">
                        <ref role="1M0zk5" node="mdpAJOAn8T" resolve="component" />
                      </node>
                      <node concept="2qgKlT" id="mdpAJOAnEt" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:d$u27T6o6s" resolve="findChildComponentsWithRepositoryReferences" />
                      </node>
                    </node>
                    <node concept="2es0OD" id="mdpAJOAnEu" role="2OqNvi">
                      <node concept="1bVj0M" id="mdpAJOAnEv" role="23t8la">
                        <node concept="3clFbS" id="mdpAJOAnEw" role="1bW5cS">
                          <node concept="3clFbF" id="mdpAJOAnEx" role="3cqZAp">
                            <node concept="2OqwBi" id="mdpAJOAnEy" role="3clFbG">
                              <node concept="37vLTw" id="mdpAJOAnEz" role="2Oq$k0">
                                <ref role="3cqZAo" node="mdpAJOAnEE" resolve="childComponent" />
                              </node>
                              <node concept="2qgKlT" id="mdpAJOAnE$" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTikSPa" resolve="removeReference" />
                                <node concept="2ZBlsa" id="mdpAJOAnE_" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="mdpAJOAnEA" role="3cqZAp">
                            <node concept="2OqwBi" id="mdpAJOAnEB" role="3clFbG">
                              <node concept="37vLTw" id="mdpAJOAnEC" role="2Oq$k0">
                                <ref role="3cqZAo" node="mdpAJOAnEE" resolve="childComponent" />
                              </node>
                              <node concept="2qgKlT" id="mdpAJOAnED" role="2OqNvi">
                                <ref role="37wK5l" to="sx7w:5jZDGTikSOY" resolve="resetReferencesIfEmpty" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="mdpAJOAnEE" role="1bW2Oz">
                          <property role="TrG5h" value="childComponent" />
                          <node concept="2jxLKc" id="mdpAJOAnEF" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="mdpAJOAn8T" role="JncvA">
                <property role="TrG5h" value="component" />
                <node concept="2jxLKc" id="mdpAJOAn8U" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbH" id="mdpAJOAmTi" role="3cqZAp" />
            <node concept="3clFbF" id="mdpAJL$tNy" role="3cqZAp">
              <node concept="2OqwBi" id="mdpAJOAnsu" role="3clFbG">
                <node concept="2ZBlsa" id="mdpAJOAnsv" role="2Oq$k0" />
                <node concept="2qgKlT" id="mdpAJOAnsw" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5jZDGTilCJr" resolve="toRepositoryReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="mdpAJMWrQj" role="upBLP">
          <node concept="uGdhv" id="mdpAJN0yGu" role="16NL0q">
            <node concept="3clFbS" id="mdpAJN0yGw" role="2VODD2">
              <node concept="3clFbF" id="mdpAJN0yHG" role="3cqZAp">
                <node concept="Xl_RD" id="mdpAJN0yHF" role="3clFbG">
                  <property role="Xl_RC" value="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="mdpAJLzubA" role="2ZBHrp">
        <ref role="ehGHo" to="3nll:5jZDGTilvf_" resolve="IRepository" />
      </node>
      <node concept="2$S_p_" id="mdpAJLzubD" role="2$S_pT">
        <node concept="3clFbS" id="mdpAJLzubE" role="2VODD2">
          <node concept="3cpWs8" id="sPJqcqhT8w" role="3cqZAp">
            <node concept="3cpWsn" id="sPJqcqhT8x" role="3cpWs9">
              <property role="TrG5h" value="referencesLink" />
              <node concept="3GbmH5" id="sPJqcqhT6O" role="1tU5fm" />
              <node concept="359W_D" id="sPJqcqhT8y" role="33vP2m">
                <ref role="359W_E" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
                <ref role="359W_F" to="3nll:5jZDGTikMf6" resolve="repositoryReferences" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="sPJqcq2JTY" role="3cqZAp">
            <property role="TyiWK" value="true" />
            <node concept="3clFbS" id="sPJqcq2JU0" role="3clFbx">
              <node concept="3cpWs6" id="sPJqcq2NeZ" role="3cqZAp">
                <node concept="2ShNRf" id="sPJqcq2NoF" role="3cqZAk">
                  <node concept="kMnCb" id="sPJqcq2NoB" role="2ShVmc">
                    <node concept="3Tqbb2" id="sPJqcq2NoC" role="kMuH3">
                      <ref role="ehGHo" to="3nll:5jZDGTilvf_" resolve="IRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="sPJqcq7z4T" role="3clFbw">
              <node concept="17QLQc" id="sPJqcq7$j7" role="3uHU7w">
                <node concept="1J7kdh" id="sPJqcq7z_W" role="3uHU7B" />
                <node concept="37vLTw" id="sPJqcqhU6A" role="3uHU7w">
                  <ref role="3cqZAo" node="sPJqcqhT8x" resolve="referencesLink" />
                </node>
              </node>
              <node concept="17QLQc" id="sPJqcq2Ltc" role="3uHU7B">
                <node concept="2OqwBi" id="sPJqcq2Khp" role="3uHU7B">
                  <node concept="1yR$tW" id="sPJqcq2JYB" role="2Oq$k0" />
                  <node concept="2NL2c5" id="sPJqcq2Kx$" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="sPJqcqhU18" role="3uHU7w">
                  <ref role="3cqZAo" node="sPJqcqhT8x" resolve="referencesLink" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="sPJqcqetNI" role="3cqZAp" />
          <node concept="Jncv_" id="omljbwYezp" role="3cqZAp">
            <ref role="JncvD" to="3nll:4REBMItTCF3" resolve="IComponentWithAggregateRootRepositoryReferences" />
            <node concept="3bvxqY" id="omljbwYezq" role="JncvB" />
            <node concept="3clFbS" id="omljbwYezr" role="Jncv$">
              <node concept="3cpWs6" id="omljbwYez$" role="3cqZAp">
                <node concept="2OqwBi" id="omljbwYez_" role="3cqZAk">
                  <node concept="2WthIp" id="omljbwYezA" role="2Oq$k0" />
                  <node concept="2XshWL" id="omljbwYezB" role="2OqNvi">
                    <ref role="2WH_rO" node="mdpAJLzuXe" resolve="provideRepositoriesFor" />
                    <node concept="Jnkvi" id="omljbwYezC" role="2XxRq1">
                      <ref role="1M0zk5" node="omljbwYe$3" resolve="component" />
                    </node>
                    <node concept="1yR$tW" id="omljbwYezD" role="2XxRq1" />
                    <node concept="2OqwBi" id="omljbwYezE" role="2XxRq1">
                      <node concept="2OqwBi" id="omljbwYezF" role="2Oq$k0">
                        <node concept="Jnkvi" id="omljbwYezG" role="2Oq$k0">
                          <ref role="1M0zk5" node="omljbwYe$3" resolve="component" />
                        </node>
                        <node concept="2qgKlT" id="omljbwYezH" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="omljbwYezI" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:7fqk8p3M$40" resolve="aggregateRoots" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="omljbwYe$3" role="JncvA">
              <property role="TrG5h" value="component" />
              <node concept="2jxLKc" id="omljbwYe$4" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="omljbwYfIi" role="3cqZAp" />
          <node concept="Jncv_" id="omljbwYfLn" role="3cqZAp">
            <ref role="JncvD" to="3nll:6gxxZVrO$5G" resolve="IComponentWithDtoRepositoryReferences" />
            <node concept="3bvxqY" id="omljbwYfLo" role="JncvB" />
            <node concept="3clFbS" id="omljbwYfLp" role="Jncv$">
              <node concept="3cpWs6" id="omljbwYfLK" role="3cqZAp">
                <node concept="2OqwBi" id="omljbwYfLL" role="3cqZAk">
                  <node concept="2WthIp" id="omljbwYfLM" role="2Oq$k0" />
                  <node concept="2XshWL" id="omljbwYfLN" role="2OqNvi">
                    <ref role="2WH_rO" node="mdpAJLzuXe" resolve="provideRepositoriesFor" />
                    <node concept="Jnkvi" id="omljbwYfLO" role="2XxRq1">
                      <ref role="1M0zk5" node="omljbwYfM1" resolve="component" />
                    </node>
                    <node concept="1yR$tW" id="omljbwYfLP" role="2XxRq1" />
                    <node concept="2OqwBi" id="omljbwYfLQ" role="2XxRq1">
                      <node concept="2OqwBi" id="omljbwYfLR" role="2Oq$k0">
                        <node concept="Jnkvi" id="omljbwYfLS" role="2Oq$k0">
                          <ref role="1M0zk5" node="omljbwYfM1" resolve="component" />
                        </node>
                        <node concept="2qgKlT" id="omljbwYfLT" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="omljbwYfLU" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:1WhJCpUS1If" resolve="dtoRepositories" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="omljbwYfM1" role="JncvA">
              <property role="TrG5h" value="component" />
              <node concept="2jxLKc" id="omljbwYfM2" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="omljbwYeeQ" role="3cqZAp" />
          <node concept="3clFbF" id="mdpAJLzuvi" role="3cqZAp">
            <node concept="2ShNRf" id="mdpAJLzuvj" role="3clFbG">
              <node concept="kMnCb" id="mdpAJLzuvk" role="2ShVmc" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="mdpAJNy9as" role="3ft7WO" />
  </node>
  <node concept="1h_SRR" id="mdpAJLZ9FC">
    <property role="3GE5qa" value="import" />
    <property role="TrG5h" value="ImportStatementGenericTypeDeletionMap" />
    <ref role="1h_SK9" to="3nll:5SyewCaZ9pz" resolve="GenericType" />
    <node concept="1hA7zw" id="mdpAJLZ9FD" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="mdpAJLZ9FE" role="1hA7z_">
        <node concept="3clFbS" id="mdpAJLZ9FF" role="2VODD2">
          <node concept="3cpWs8" id="mdpAJMiEe1" role="3cqZAp">
            <node concept="3cpWsn" id="mdpAJMiEe2" role="3cpWs9">
              <property role="TrG5h" value="importStatement" />
              <node concept="3Tqbb2" id="mdpAJMiEdJ" role="1tU5fm">
                <ref role="ehGHo" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
              </node>
              <node concept="2OqwBi" id="mdpAJMiEe3" role="33vP2m">
                <node concept="0IXxy" id="mdpAJMiEe4" role="2Oq$k0" />
                <node concept="2Xjw5R" id="mdpAJMiEe5" role="2OqNvi">
                  <node concept="1xMEDy" id="mdpAJMiEe6" role="1xVPHs">
                    <node concept="chp4Y" id="mdpAJMiEe7" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="mdpAJMiEe8" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mdpAJMcsjM" role="3cqZAp">
            <node concept="2OqwBi" id="mdpAJMcswl" role="3clFbG">
              <node concept="37vLTw" id="mdpAJMjh_p" role="2Oq$k0">
                <ref role="3cqZAo" node="mdpAJMiEe2" resolve="importStatement" />
              </node>
              <node concept="2qgKlT" id="mdpAJMcsK1" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:mdpAJMlvHj" resolve="adjustImportStatementReferenceGenericTypes" />
                <node concept="3cmrfG" id="mdpAJMnZUp" role="37wK5m">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mdpAJMiEGI" role="3cqZAp">
            <node concept="2OqwBi" id="mdpAJMiHFN" role="3clFbG">
              <node concept="2OqwBi" id="mdpAJMiF0e" role="2Oq$k0">
                <node concept="37vLTw" id="mdpAJMiEGG" role="2Oq$k0">
                  <ref role="3cqZAo" node="mdpAJMiEe2" resolve="importStatement" />
                </node>
                <node concept="3Tsc0h" id="mdpAJMiFgb" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
                </node>
              </node>
              <node concept="3dhRuq" id="mdpAJMiMRS" role="2OqNvi">
                <node concept="0IXxy" id="mdpAJMqi7e" role="25WWJ7" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="mdpAJN4ATA">
    <property role="3GE5qa" value="repository" />
    <ref role="1XX52x" to="3nll:5jZDGTgnxtU" resolve="IRepositoryReference" />
    <node concept="1xolST" id="mdpAJN4ATI" role="2wV5jI">
      <property role="1xolSY" value="&lt;repository&gt;" />
    </node>
  </node>
  <node concept="PKFIW" id="omljbxj1iH">
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="IComponentWithRepositoryReferencesAndRequiresKeyword_EditorComponent" />
    <ref role="1XX52x" to="3nll:5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
    <node concept="3EZMnI" id="omljbxj1rW" role="2wV5jI">
      <node concept="3F0ifn" id="omljbxj1s3" role="3EZMnx">
        <property role="3F0ifm" value="requires" />
        <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
      </node>
      <node concept="PMmxH" id="omljbxj1s9" role="3EZMnx">
        <ref role="PMmxG" node="5jZDGTilOg4" resolve="IComponentWithRepositoryReferences_EditorComponent" />
      </node>
      <node concept="l2Vlx" id="omljbxj1rZ" role="2iSdaV" />
      <node concept="2SqB2G" id="omljbxj2dm" role="2SqHTX">
        <property role="TrG5h" value="requiresBlockCellId" />
      </node>
      <node concept="pkWqt" id="omljbxj2do" role="pqm2j">
        <node concept="3clFbS" id="omljbxj2dp" role="2VODD2">
          <node concept="3clFbF" id="omljbxj2k$" role="3cqZAp">
            <node concept="2OqwBi" id="omljbxj2$L" role="3clFbG">
              <node concept="pncrf" id="omljbxj2kz" role="2Oq$k0" />
              <node concept="3TrcHB" id="omljbxj2Se" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:5jZDGTikMfb" resolve="shouldDisplayReferences" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="omljbyujib">
    <property role="3GE5qa" value="import" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5ICL" resolve="ImportStatement" />
    <node concept="3EZMnI" id="omljbyujid" role="2wV5jI">
      <node concept="3F0ifn" id="omljbyujik" role="3EZMnx">
        <property role="3F0ifm" value="import" />
        <ref role="1k5W1q" node="sPJqcqlEKz" resolve="KeywordStyle" />
      </node>
      <node concept="3F2HdR" id="omljbyujit" role="3EZMnx">
        <property role="2czwfO" value="." />
        <ref role="1NtTu8" to="3nll:7fqk8p49Gdh" resolve="packages" />
        <node concept="l2Vlx" id="omljbyujiv" role="2czzBx" />
        <node concept="tppnM" id="omljbyujiC" role="sWeuL">
          <ref role="1k5W1q" node="7fqk8p3XnwB" resolve="noWhiteSpaces" />
        </node>
      </node>
      <node concept="1QoScp" id="omljbyujiL" role="3EZMnx">
        <property role="1QpmdY" value="true" />
        <node concept="3F0ifn" id="omljbyujnQ" role="1QoS34">
          <property role="3F0ifm" value="as" />
          <ref role="1ERwB7" node="5SyewCaSMUG" resolve="ImportAsDeletionKeyMap" />
          <ref role="1k5W1q" node="sPJqcqlEKz" resolve="KeywordStyle" />
        </node>
        <node concept="pkWqt" id="omljbyujiO" role="3e4ffs">
          <node concept="3clFbS" id="omljbyujiQ" role="2VODD2">
            <node concept="3clFbF" id="omljbyujss" role="3cqZAp">
              <node concept="1Wc70l" id="omljbyujRF" role="3clFbG">
                <node concept="2OqwBi" id="omljbyuk9C" role="3uHU7w">
                  <node concept="pncrf" id="omljbyujSB" role="2Oq$k0" />
                  <node concept="3TrcHB" id="omljbyukpQ" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7fqk8p49Gdj" resolve="isAliasImport" />
                  </node>
                </node>
                <node concept="3clFbT" id="omljbyujsr" role="3uHU7B" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="omljbyujnV" role="1QoVPY">
          <property role="3F0ifm" value="." />
          <ref role="1k5W1q" node="7fqk8p3XnwB" resolve="noWhiteSpaces" />
          <node concept="A1WHu" id="omljbyukEt" role="3vIgyS">
            <ref role="A1WHt" node="5SyewCaQbV3" resolve="ImportAsAliasTransformationMenu" />
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="omljbyujoF" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="A1WHu" id="omljbyukEv" role="3vIgyS">
          <ref role="A1WHt" node="5SyewCb0rGD" resolve="ImportStatementGenericTypeTransformationMenu" />
        </node>
      </node>
      <node concept="3EZMnI" id="omljbyujp9" role="3EZMnx">
        <node concept="VPM3Z" id="omljbyujpb" role="3F10Kt" />
        <node concept="3F0ifn" id="omljbyuqeM" role="3EZMnx">
          <property role="3F0ifm" value="&lt;" />
          <ref role="1k5W1q" node="hY9fg1G" resolve="LeftAngleBracketAfterName" />
          <ref role="1ERwB7" node="5SyewCb3wzw" resolve="ImportStatementGenericDeclarationDeletionActionMap" />
          <node concept="2SqB2G" id="23r34DKnX8a" role="2SqHTX">
            <property role="TrG5h" value="genericTypesLeftAngleBracketCellId" />
          </node>
        </node>
        <node concept="3F2HdR" id="omljbyuqh$" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
          <ref role="APP_o" node="mdpAJLZ9FC" resolve="ImportStatementGenericTypeDeletionMap" />
          <node concept="l2Vlx" id="omljbyuqhA" role="2czzBx" />
          <node concept="2SqB2G" id="omljbyuqFL" role="2SqHTX">
            <property role="TrG5h" value="genericImportTypes" />
          </node>
          <node concept="4$FPG" id="omljbyz4dm" role="4_6I_">
            <node concept="3clFbS" id="omljbyz4dn" role="2VODD2">
              <node concept="3clFbF" id="omljbyz4Ek" role="3cqZAp">
                <node concept="2OqwBi" id="omljbyz4SR" role="3clFbG">
                  <node concept="pncrf" id="omljbyz4Ej" role="2Oq$k0" />
                  <node concept="2qgKlT" id="omljbyz58U" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:mdpAJMlvHj" resolve="adjustImportStatementReferenceGenericTypes" />
                    <node concept="3cmrfG" id="omljbyz5g0" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="omljbyz4hj" role="3cqZAp">
                <node concept="2ShNRf" id="omljbyz4hf" role="3clFbG">
                  <node concept="3zrR0B" id="omljbyz4AX" role="2ShVmc">
                    <node concept="3Tqbb2" id="omljbyz4AZ" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:5SyewCaZ9pz" resolve="GenericType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="omljbyuqkr" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <ref role="1k5W1q" node="5SyewCbjRsl" resolve="RightAngleBracket" />
          <ref role="1ERwB7" node="5SyewCb3wzw" resolve="ImportStatementGenericDeclarationDeletionActionMap" />
        </node>
        <node concept="l2Vlx" id="omljbyujpe" role="2iSdaV" />
        <node concept="pkWqt" id="omljbyukEx" role="pqm2j">
          <node concept="3clFbS" id="omljbyukEy" role="2VODD2">
            <node concept="3clFbF" id="omljbyukGK" role="3cqZAp">
              <node concept="2OqwBi" id="omljbyuo2v" role="3clFbG">
                <node concept="2OqwBi" id="omljbyukZN" role="2Oq$k0">
                  <node concept="pncrf" id="omljbyukGJ" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="omljbyulfF" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:5SyewCaZbpa" resolve="genericTypes" />
                  </node>
                </node>
                <node concept="3GX2aA" id="omljbyuq90" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="omljbyujig" role="2iSdaV" />
    </node>
  </node>
  <node concept="22mcaB" id="omljbyXJ8A">
    <property role="3GE5qa" value="generationSettings" />
    <ref role="aqKnT" to="3nll:omljbyVy$R" resolve="IGeneratorSettingsComponent" />
    <node concept="22hDWj" id="omljbyXJ8B" role="22hAXT" />
    <node concept="2VfDsV" id="omljbyXJ8F" role="3ft7WO">
      <node concept="1GpqWn" id="omljbyXJ8H" role="1Go12V">
        <node concept="3clFbS" id="omljbyXJ8I" role="2VODD2">
          <node concept="3cpWs8" id="omljbz2z4d" role="3cqZAp">
            <node concept="3cpWsn" id="omljbz2z4e" role="3cpWs9">
              <property role="TrG5h" value="settings" />
              <node concept="3Tqbb2" id="omljbz2z3O" role="1tU5fm">
                <ref role="ehGHo" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
              </node>
              <node concept="2OqwBi" id="omljbz2z4f" role="33vP2m">
                <node concept="3bvxqY" id="omljbz2z4g" role="2Oq$k0" />
                <node concept="2Xjw5R" id="omljbz2z4h" role="2OqNvi">
                  <node concept="1xMEDy" id="omljbz2z4i" role="1xVPHs">
                    <node concept="chp4Y" id="omljbz2z4j" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="omljbz2z4k" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="omljbz2Eet" role="3cqZAp" />
          <node concept="3clFbJ" id="7qLyWzvgjkK" role="3cqZAp">
            <property role="TyiWK" value="true" />
            <node concept="3clFbS" id="7qLyWzvgjkM" role="3clFbx">
              <node concept="3cpWs6" id="7qLyWzvgkYH" role="3cqZAp">
                <node concept="3clFbT" id="7qLyWzvglaN" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7qLyWzvgkAU" role="3clFbw">
              <node concept="1GpqW3" id="7qLyWzvgl$6" role="2Oq$k0" />
              <node concept="3O6GUB" id="7qLyWzvgkEe" role="2OqNvi">
                <node concept="chp4Y" id="7qLyWzvgkGB" role="3QVz_e">
                  <ref role="cht4Q" to="3nll:oGImgOnn6y" resolve="CommentLine" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7qLyWzvgjfB" role="3cqZAp" />
          <node concept="3clFbF" id="7qLyWzvgeG$" role="3cqZAp">
            <node concept="3fqX7Q" id="7qLyWzvgqHe" role="3clFbG">
              <node concept="2OqwBi" id="7qLyWzvgqHg" role="3fr31v">
                <node concept="2OqwBi" id="7qLyWzvgqHh" role="2Oq$k0">
                  <node concept="37vLTw" id="7qLyWzvgqHi" role="2Oq$k0">
                    <ref role="3cqZAo" node="omljbz2z4e" resolve="settings" />
                  </node>
                  <node concept="3Tsc0h" id="7qLyWzvgqHj" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:omljbyVy$T" resolve="components" />
                  </node>
                </node>
                <node concept="2HwmR7" id="7qLyWzvgqHk" role="2OqNvi">
                  <node concept="1bVj0M" id="7qLyWzvgqHl" role="23t8la">
                    <node concept="3clFbS" id="7qLyWzvgqHm" role="1bW5cS">
                      <node concept="3clFbF" id="7qLyWzvgqHn" role="3cqZAp">
                        <node concept="17R0WA" id="7qLyWzvgqHo" role="3clFbG">
                          <node concept="1GpqW3" id="7qLyWzvgqHp" role="3uHU7w" />
                          <node concept="2OqwBi" id="7qLyWzvgqHq" role="3uHU7B">
                            <node concept="37vLTw" id="7qLyWzvgqHr" role="2Oq$k0">
                              <ref role="3cqZAo" node="7qLyWzvgqHt" resolve="it" />
                            </node>
                            <node concept="2yIwOk" id="7qLyWzvgqHs" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7qLyWzvgqHt" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7qLyWzvgqHu" role="1tU5fm" />
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
  <node concept="24kQdi" id="omljbz5nWq">
    <property role="3GE5qa" value="generationSettings.command" />
    <ref role="1XX52x" to="3nll:omljbyVy$V" resolve="CommandGenerationSettings" />
    <node concept="3EZMnI" id="omljbz5nWs" role="2wV5jI">
      <node concept="3F0ifn" id="omljbz5nWz" role="3EZMnx">
        <property role="3F0ifm" value="command settings" />
        <ref role="1k5W1q" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="omljbz5nWD" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="omljbz5nWH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5qxF18ELq5H" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:5qxF18ELq3b" resolve="components" />
        <node concept="2iRkQZ" id="5qxF18ELq60" role="2czzBx" />
        <node concept="lj46D" id="5qxF18ELq5R" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="5qxF18ELq5W" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="omljbz5nWO" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
      <node concept="l2Vlx" id="omljbz5nWv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="omljbz5nXT">
    <property role="3GE5qa" value="generationSettings.event" />
    <ref role="1XX52x" to="3nll:omljbyVy$Y" resolve="EventGenerationSettings" />
    <node concept="3EZMnI" id="omljbz5nXV" role="2wV5jI">
      <node concept="3F0ifn" id="omljbz5nXW" role="3EZMnx">
        <property role="3F0ifm" value="event settings" />
        <ref role="1k5W1q" node="3FBObrptC$k" resolve="ConnectingComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="omljbz5nXX" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="omljbz5nXY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5qxF18EC3GB" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:5qxF18EC3Gr" resolve="components" />
        <node concept="2iRkQZ" id="5qxF18EC3GT" role="2czzBx" />
        <node concept="lj46D" id="5qxF18EC3GK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="5qxF18EC3GP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="omljbz5nY4" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
      <node concept="l2Vlx" id="omljbz5nY5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="omljbz5nYh">
    <property role="3GE5qa" value="generationSettings.query" />
    <ref role="1XX52x" to="3nll:omljbyVy_1" resolve="QueryGenerationSettings" />
    <node concept="3EZMnI" id="omljbz5nYj" role="2wV5jI">
      <node concept="3F0ifn" id="omljbz5nYk" role="3EZMnx">
        <property role="3F0ifm" value="query settings" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="omljbz5nYl" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="omljbz5nYm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5qxF18ENJj1" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:5qxF18ENIZu" resolve="components" />
        <node concept="2iRkQZ" id="5qxF18ENJjj" role="2czzBx" />
        <node concept="lj46D" id="5qxF18ENJja" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="5qxF18ENJjf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="omljbz5nYs" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
      <node concept="l2Vlx" id="omljbz5nYt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="omljbzjybM">
    <property role="3GE5qa" value="generationSettings.description" />
    <ref role="1XX52x" to="3nll:omljbzjybJ" resolve="DescriptionLine" />
    <node concept="3F0A7n" id="omljbzjybO" role="2wV5jI">
      <property role="1O74Pk" value="true" />
      <ref role="1NtTu8" to="3nll:omljbzjybK" resolve="value" />
      <ref role="1ERwB7" node="5qxF18Dyhza" resolve="DescriptionLine_ActionMap" />
      <node concept="VPxyj" id="omljbzjybR" role="3F10Kt" />
      <node concept="Vb9p2" id="omljbzjybW" role="3F10Kt">
        <property role="Vbekb" value="g1_kEg4/ITALIC" />
      </node>
      <node concept="VechU" id="omljbzjyc4" role="3F10Kt">
        <property role="Vb096" value="fLJRk5_/gray" />
      </node>
      <node concept="VSNWy" id="omljb_kHex" role="3F10Kt">
        <property role="1lJzqX" value="10" />
      </node>
      <node concept="3$7fVu" id="23r34DNApAS" role="3F10Kt">
        <property role="3$6WeP" value="1" />
      </node>
      <node concept="3$7jql" id="23r34DNIDh3" role="3F10Kt">
        <property role="3$6WeP" value="1" />
      </node>
      <node concept="pkWqt" id="23r34DLCpO0" role="pqm2j">
        <node concept="3clFbS" id="23r34DLCpO1" role="2VODD2">
          <node concept="3clFbF" id="23r34DLCpUN" role="3cqZAp">
            <node concept="3y3z36" id="23r34DLCr2v" role="3clFbG">
              <node concept="10Nm6u" id="23r34DLCrpm" role="3uHU7w" />
              <node concept="2OqwBi" id="23r34DLCqae" role="3uHU7B">
                <node concept="pncrf" id="23r34DLCpUM" role="2Oq$k0" />
                <node concept="3TrcHB" id="23r34DLCqjA" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:omljbzjybK" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="omljbzONA0">
    <property role="3GE5qa" value="generationSettings.description" />
    <ref role="1XX52x" to="3nll:omljbzON_X" resolve="Description" />
    <node concept="3EZMnI" id="omljb$zb7j" role="2wV5jI">
      <ref role="1ERwB7" node="23r34DPl3iO" resolve="Description_ActionMap" />
      <node concept="3F2HdR" id="omljbzONA3" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="3nll:omljbzON_Y" resolve="lines" />
        <ref role="APP_o" node="5qxF18Dyhza" resolve="DescriptionLine_ActionMap" />
        <ref role="1ERwB7" node="23r34DPl3iO" resolve="Description_ActionMap" />
        <node concept="2iRkQZ" id="omljbzONA4" role="2czzBx" />
        <node concept="4$FPG" id="omljbzONA7" role="4_6I_">
          <node concept="3clFbS" id="omljbzONA8" role="2VODD2">
            <node concept="3clFbF" id="omljbzONA9" role="3cqZAp">
              <node concept="10Nm6u" id="omljbzONAa" role="3clFbG" />
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="omljb$1QK5" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="omljb$zb7m" role="2iSdaV" />
      <node concept="Veino" id="23r34DNm08F" role="3F10Kt">
        <property role="Vb096" value="fLJRk5A/lightGray" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="omljbzONEG">
    <property role="3GE5qa" value="generationSettings.description" />
    <ref role="aqKnT" to="3nll:omljbzjybJ" resolve="DescriptionLine" />
    <node concept="22hDWj" id="omljbzONEH" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="omljbzOR0j">
    <property role="3GE5qa" value="generationSettings.description" />
    <ref role="aqKnT" to="3nll:omljbzON_X" resolve="Description" />
    <node concept="22hDWj" id="omljbzOR0k" role="22hAXT" />
  </node>
  <node concept="1h_SRR" id="23r34DPl3iO">
    <property role="3GE5qa" value="generationSettings.description" />
    <property role="TrG5h" value="Description_ActionMap" />
    <ref role="1h_SK9" to="3nll:omljbzON_X" resolve="Description" />
    <node concept="1hA7zw" id="23r34DPl3kn" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABBii/cut_action_id" />
      <node concept="1hAIg9" id="23r34DPl3ko" role="1hA7z_">
        <node concept="3clFbS" id="23r34DPl3kp" role="2VODD2" />
      </node>
      <node concept="jK8Ss" id="23r34DPl3t3" role="jK8aL">
        <node concept="3clFbS" id="23r34DPl3t4" role="2VODD2">
          <node concept="3clFbF" id="23r34DPl3wF" role="3cqZAp">
            <node concept="3clFbT" id="23r34DPl3wE" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="23r34DPl3iP" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABBih/copy_action_id" />
      <node concept="1hAIg9" id="23r34DPl3iQ" role="1hA7z_">
        <node concept="3clFbS" id="23r34DPl3iR" role="2VODD2">
          <node concept="3clFbH" id="23r34DPl3jb" role="3cqZAp" />
        </node>
      </node>
      <node concept="jK8Ss" id="23r34DPl3kL" role="jK8aL">
        <node concept="3clFbS" id="23r34DPl3kM" role="2VODD2">
          <node concept="3clFbF" id="23r34DPl3nZ" role="3cqZAp">
            <node concept="3clFbT" id="23r34DPl3nY" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="5qxF18DC3lw" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABBij/paste_action_id" />
      <node concept="1hAIg9" id="5qxF18DC3lx" role="1hA7z_">
        <node concept="3clFbS" id="5qxF18DC3ly" role="2VODD2">
          <node concept="3SKdUt" id="23r34DR0d$Z" role="3cqZAp">
            <node concept="1PaTwC" id="23r34DR0d_0" role="1aUNEU">
              <node concept="3oM_SD" id="23r34DR0d_S" role="1PaTwD">
                <property role="3oM_SC" value="Detaches" />
              </node>
              <node concept="3oM_SD" id="23r34DR0d_Y" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dA2" role="1PaTwD">
                <property role="3oM_SC" value="pasted" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dA7" role="1PaTwD">
                <property role="3oM_SC" value="Description" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dBd" role="1PaTwD">
                <property role="3oM_SC" value="line" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dBk" role="1PaTwD">
                <property role="3oM_SC" value="since" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dBs" role="1PaTwD">
                <property role="3oM_SC" value="no" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dB_" role="1PaTwD">
                <property role="3oM_SC" value="copy" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dBJ" role="1PaTwD">
                <property role="3oM_SC" value="paste" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dBU" role="1PaTwD">
                <property role="3oM_SC" value="should" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dC6" role="1PaTwD">
                <property role="3oM_SC" value="be" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dCj" role="1PaTwD">
                <property role="3oM_SC" value="possible" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dCx" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="23r34DR0dCK" role="1PaTwD">
                <property role="3oM_SC" value="them" />
              </node>
              <node concept="3oM_SD" id="23r34DR0d_U" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
          <node concept="2xdQw9" id="5qxF18DC3wD" role="3cqZAp">
            <node concept="Xl_RD" id="5qxF18DC3wF" role="9lYJi">
              <property role="Xl_RC" value="Hallo 123" />
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="5qxF18DC3m5" role="jK8aL">
        <node concept="3clFbS" id="5qxF18DC3m6" role="2VODD2">
          <node concept="3clFbF" id="5qxF18DC3p5" role="3cqZAp">
            <node concept="3clFbT" id="5qxF18DC3p4" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="5qxF18Dyhza">
    <property role="3GE5qa" value="generationSettings.description" />
    <property role="TrG5h" value="DescriptionLine_ActionMap" />
    <ref role="1h_SK9" to="3nll:omljbzjybJ" resolve="DescriptionLine" />
    <node concept="1hA7zw" id="5qxF18D$_0U" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="5qxF18D$_0V" role="1hA7z_">
        <node concept="3clFbS" id="5qxF18D$_0W" role="2VODD2">
          <node concept="3cpWs8" id="5qxF18D$_0X" role="3cqZAp">
            <node concept="3cpWsn" id="5qxF18D$_0Y" role="3cpWs9">
              <property role="TrG5h" value="nodeContainingDescription" />
              <node concept="3Tqbb2" id="5qxF18D$_0Z" role="1tU5fm" />
              <node concept="2OqwBi" id="5qxF18D$_10" role="33vP2m">
                <node concept="2OqwBi" id="5qxF18D$_11" role="2Oq$k0">
                  <node concept="0IXxy" id="5qxF18D$_12" role="2Oq$k0" />
                  <node concept="2qgKlT" id="5qxF18D$_13" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:23r34DNYVIF" resolve="getDescriptionParent" />
                  </node>
                </node>
                <node concept="1mfA1w" id="5qxF18D$_14" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5qxF18D$_15" role="3cqZAp">
            <node concept="3clFbS" id="5qxF18D$_16" role="3clFbx">
              <node concept="3cpWs6" id="5qxF18D$_17" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="5qxF18D$_18" role="3clFbw">
              <node concept="37vLTw" id="5qxF18D$_19" role="2Oq$k0">
                <ref role="3cqZAo" node="5qxF18D$_0Y" resolve="nodeContainingDescription" />
              </node>
              <node concept="2xy62i" id="5qxF18D$_1a" role="2OqNvi">
                <node concept="1Q80Hx" id="5qxF18D$_1b" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5qxF18D$_1c" role="3cqZAp">
            <node concept="2OqwBi" id="5qxF18D$_1d" role="3clFbG">
              <node concept="37vLTw" id="5qxF18D$_1e" role="2Oq$k0">
                <ref role="3cqZAo" node="5qxF18D$_0Y" resolve="nodeContainingDescription" />
              </node>
              <node concept="3YRAZt" id="5qxF18D$_1f" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="5qxF18Dyhzx" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABBii/cut_action_id" />
      <node concept="1hAIg9" id="5qxF18Dyhzy" role="1hA7z_">
        <node concept="3clFbS" id="5qxF18Dyhzz" role="2VODD2" />
      </node>
      <node concept="jK8Ss" id="5qxF18Dyhz$" role="jK8aL">
        <node concept="3clFbS" id="5qxF18Dyhz_" role="2VODD2">
          <node concept="3clFbF" id="5qxF18DyhzA" role="3cqZAp">
            <node concept="3clFbT" id="5qxF18DyhzB" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="5qxF18DyhzC" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABBih/copy_action_id" />
      <node concept="1hAIg9" id="5qxF18DyhzD" role="1hA7z_">
        <node concept="3clFbS" id="5qxF18DyhzE" role="2VODD2" />
      </node>
      <node concept="jK8Ss" id="5qxF18DyhzF" role="jK8aL">
        <node concept="3clFbS" id="5qxF18DyhzG" role="2VODD2">
          <node concept="3clFbF" id="5qxF18DyhzH" role="3cqZAp">
            <node concept="3clFbT" id="5qxF18DyhzI" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5qxF18EC3z6">
    <property role="3GE5qa" value="generationSettings.event.handling" />
    <ref role="1XX52x" to="3nll:5qxF18EuQWa" resolve="EventHandlingSetting" />
    <node concept="3EZMnI" id="5qxF18EC3z8" role="2wV5jI">
      <node concept="3F0ifn" id="5qxF18EC3zf" role="3EZMnx">
        <property role="3F0ifm" value="handling" />
        <ref role="1k5W1q" node="sPJqcqlEKz" resolve="KeywordStyle" />
      </node>
      <node concept="3F0ifn" id="5qxF18EC3zh" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="5qxF18EC3zi" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:5qxF18EC3$h" resolve="handlingtype" />
        <node concept="ljvvj" id="5qxF18EC3zj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="5qxF18EC3zk" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <property role="3EXrWe" value="true" />
        <node concept="VPM3Z" id="5qxF18EC3zl" role="3F10Kt" />
        <node concept="3EZMnI" id="5qxF18EC3zo" role="3EZMnx">
          <node concept="VPM3Z" id="5qxF18EC3zp" role="3F10Kt" />
          <node concept="3F0ifn" id="5qxF18EC3zq" role="3EZMnx">
            <property role="3F0ifm" value="• separated: Generate a event handler for each event object" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18EC3zr" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5qxF18EC3zs" role="3EZMnx">
          <node concept="VPM3Z" id="5qxF18EC3zt" role="3F10Kt" />
          <node concept="3F0ifn" id="5qxF18EC3zu" role="3EZMnx">
            <property role="3F0ifm" value="• grouped: Generate a single" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="3F0ifn" id="5qxF18EC3zv" role="3EZMnx">
            <property role="3F0ifm" value="event handler" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="3F0ifn" id="5qxF18EC3zw" role="3EZMnx">
            <property role="3F0ifm" value="for all event objects" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18EC3zx" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5qxF18EC3zy" role="3EZMnx">
          <node concept="3F0ifn" id="5qxF18EC3zz" role="3EZMnx">
            <property role="3F0ifm" value="*" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
            <node concept="VSNWy" id="5qxF18EC3z$" role="3F10Kt">
              <property role="1lJzqX" value="9" />
            </node>
          </node>
          <node concept="VPM3Z" id="5qxF18EC3z_" role="3F10Kt" />
          <node concept="lj46D" id="5qxF18EC3zA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="5qxF18EC3zB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="5qxF18EC3zC" role="3EZMnx">
            <property role="3F0ifm" value="Events defined inside an" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="3F0ifn" id="5qxF18EC3zD" role="3EZMnx">
            <property role="3F0ifm" value="event handler" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
            <node concept="3Xmtl4" id="5qxF18EC3zE" role="3F10Kt">
              <node concept="1wgc9g" id="5qxF18EC3zF" role="3XvnJa">
                <ref role="1wgcnl" node="3FBObrptC$k" resolve="ConnectingComponentKeywordStyle" />
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="5qxF18EC3zG" role="3EZMnx">
            <property role="3F0ifm" value="are ignored" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18EC3zH" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="5qxF18EC3zI" role="2iSdaV" />
        <node concept="3F0ifn" id="5qxF18EC3zJ" role="AHCbl">
          <property role="3F0ifm" value="[show description]" />
          <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
        </node>
      </node>
      <node concept="l2Vlx" id="5qxF18EC3zb" role="2iSdaV" />
    </node>
  </node>
  <node concept="22mcaB" id="5qxF18EC3$y">
    <property role="3GE5qa" value="generationSettings.event" />
    <ref role="aqKnT" to="3nll:5qxF18EuQW9" resolve="IEventGenerationSettingsComponent" />
    <node concept="22hDWj" id="5qxF18EC3$z" role="22hAXT" />
    <node concept="2VfDsV" id="5qxF18EGMMl" role="3ft7WO">
      <node concept="1GpqWn" id="5qxF18ESkN_" role="1Go12V">
        <node concept="3clFbS" id="5qxF18ESkNA" role="2VODD2">
          <node concept="3cpWs8" id="5qxF18ESmMI" role="3cqZAp">
            <node concept="3cpWsn" id="5qxF18ESmMJ" role="3cpWs9">
              <property role="TrG5h" value="settings" />
              <node concept="3Tqbb2" id="5qxF18ESmMi" role="1tU5fm">
                <ref role="ehGHo" to="3nll:omljbyVy$Y" resolve="EventGenerationSettings" />
              </node>
              <node concept="2OqwBi" id="5qxF18ESmMK" role="33vP2m">
                <node concept="3bvxqY" id="5qxF18ESmML" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5qxF18ESmMM" role="2OqNvi">
                  <node concept="1xMEDy" id="5qxF18ESmMN" role="1xVPHs">
                    <node concept="chp4Y" id="5qxF18ESmMO" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:omljbyVy$Y" resolve="EventGenerationSettings" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5qxF18ESmMP" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5qxF18ESmh4" role="3cqZAp" />
          <node concept="1_3QMa" id="5qxF18ESkTM" role="3cqZAp">
            <node concept="1GpqW3" id="5qxF18ESkUh" role="1_3QMn" />
            <node concept="3clFbS" id="5qxF18ESkXu" role="1prKM_">
              <node concept="3cpWs6" id="5qxF18ESkXt" role="3cqZAp">
                <node concept="3clFbT" id="5qxF18ESkYx" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="1pnPoh" id="5qxF18ESkZa" role="1_3QMm">
              <node concept="3gn64h" id="5qxF18ESkZb" role="1pnPq6">
                <ref role="3gnhBz" to="3nll:5qxF18EuQWa" resolve="EventHandlingSetting" />
              </node>
              <node concept="3clFbS" id="5qxF18ESkZc" role="1pnPq1">
                <node concept="3cpWs6" id="5qxF18ESme_" role="3cqZAp">
                  <node concept="3fqX7Q" id="5qxF18ESCU2" role="3cqZAk">
                    <node concept="2OqwBi" id="5qxF18ESCU4" role="3fr31v">
                      <node concept="37vLTw" id="5qxF18ESCU5" role="2Oq$k0">
                        <ref role="3cqZAo" node="5qxF18ESmMJ" resolve="settings" />
                      </node>
                      <node concept="2qgKlT" id="5qxF18ESCU6" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5qxF18ESmSC" resolve="isEventHandlingSettingDefined" />
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
  <node concept="24kQdi" id="5qxF18ELq1R">
    <property role="3GE5qa" value="generationSettings.command.handling" />
    <ref role="1XX52x" to="3nll:5qxF18ELq1P" resolve="CommandHandlingSetting" />
    <node concept="3EZMnI" id="5qxF18ELq1T" role="2wV5jI">
      <node concept="3F0ifn" id="5qxF18ELq20" role="3EZMnx">
        <property role="3F0ifm" value="handling" />
        <ref role="1k5W1q" node="sPJqcqlEKz" resolve="KeywordStyle" />
      </node>
      <node concept="3F0ifn" id="5qxF18ELq22" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="5qxF18ELq23" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:5qxF18ELq39" resolve="handlingType" />
        <node concept="ljvvj" id="5qxF18ELq24" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="5qxF18ELq25" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <property role="3EXrWe" value="true" />
        <node concept="VPM3Z" id="5qxF18ELq26" role="3F10Kt" />
        <node concept="3EZMnI" id="5qxF18ELq29" role="3EZMnx">
          <node concept="VPM3Z" id="5qxF18ELq2a" role="3F10Kt" />
          <node concept="3F0ifn" id="5qxF18ELq2b" role="3EZMnx">
            <property role="3F0ifm" value="• separated: Generate a command handler for each command object" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18ELq2c" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5qxF18ELq2d" role="3EZMnx">
          <node concept="VPM3Z" id="5qxF18ELq2e" role="3F10Kt" />
          <node concept="3F0ifn" id="5qxF18ELq2f" role="3EZMnx">
            <property role="3F0ifm" value="• grouped: Generate a single" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="3F0ifn" id="5qxF18ELq2g" role="3EZMnx">
            <property role="3F0ifm" value="command handler" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="3F0ifn" id="5qxF18ELq2h" role="3EZMnx">
            <property role="3F0ifm" value="for all command objects" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18ELq2i" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5qxF18ELq2j" role="3EZMnx">
          <node concept="3F0ifn" id="5qxF18ELq2k" role="3EZMnx">
            <property role="3F0ifm" value="*" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
            <node concept="VSNWy" id="5qxF18ELq2l" role="3F10Kt">
              <property role="1lJzqX" value="9" />
            </node>
          </node>
          <node concept="VPM3Z" id="5qxF18ELq2m" role="3F10Kt" />
          <node concept="3F0ifn" id="5qxF18ELq2n" role="3EZMnx">
            <property role="3F0ifm" value="Commands defined inside a" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="3F0ifn" id="5qxF18ELq2o" role="3EZMnx">
            <property role="3F0ifm" value="command service" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
            <node concept="3Xmtl4" id="5qxF18ELq2p" role="3F10Kt">
              <node concept="1wgc9g" id="5qxF18ELq2q" role="3XvnJa">
                <ref role="1wgcnl" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="5qxF18ELq2r" role="3EZMnx">
            <property role="3F0ifm" value="or" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="3F0ifn" id="5qxF18ELq2s" role="3EZMnx">
            <property role="3F0ifm" value="command handler" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
            <node concept="3Xmtl4" id="5qxF18ELq2t" role="3F10Kt">
              <node concept="1wgc9g" id="5qxF18ELq2u" role="3XvnJa">
                <ref role="1wgcnl" node="3FBObrptCqe" resolve="CommandComponentKeywordStyle" />
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="5qxF18ELq2v" role="3EZMnx">
            <property role="3F0ifm" value="are ignored" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18ELq2w" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="5qxF18ELq2x" role="2iSdaV" />
        <node concept="3F0ifn" id="5qxF18ELq2y" role="AHCbl">
          <property role="3F0ifm" value="[show description]" />
          <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
        </node>
      </node>
      <node concept="l2Vlx" id="5qxF18ELq1W" role="2iSdaV" />
    </node>
  </node>
  <node concept="22mcaB" id="5qxF18ELq63">
    <property role="3GE5qa" value="generationSettings.command" />
    <ref role="aqKnT" to="3nll:5qxF18ELp99" resolve="ICommandGenerationSettingsComponent" />
    <node concept="22hDWj" id="5qxF18ELq64" role="22hAXT" />
    <node concept="2VfDsV" id="5qxF18ELq66" role="3ft7WO">
      <node concept="1GpqWn" id="5qxF18ES_ZT" role="1Go12V">
        <node concept="3clFbS" id="5qxF18ES_ZU" role="2VODD2">
          <node concept="3cpWs8" id="5qxF18ESA5M" role="3cqZAp">
            <node concept="3cpWsn" id="5qxF18ESA5N" role="3cpWs9">
              <property role="TrG5h" value="settings" />
              <node concept="3Tqbb2" id="5qxF18ESA5O" role="1tU5fm">
                <ref role="ehGHo" to="3nll:omljbyVy$V" resolve="CommandGenerationSettings" />
              </node>
              <node concept="2OqwBi" id="5qxF18ESA5P" role="33vP2m">
                <node concept="3bvxqY" id="5qxF18ESA5Q" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5qxF18ESA5R" role="2OqNvi">
                  <node concept="1xMEDy" id="5qxF18ESA5S" role="1xVPHs">
                    <node concept="chp4Y" id="5qxF18ESA5T" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:omljbyVy$V" resolve="CommandGenerationSettings" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5qxF18ESA5U" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5qxF18ESA5V" role="3cqZAp" />
          <node concept="1_3QMa" id="5qxF18ESA5W" role="3cqZAp">
            <node concept="1GpqW3" id="5qxF18ESA5X" role="1_3QMn" />
            <node concept="3clFbS" id="5qxF18ESA5Y" role="1prKM_">
              <node concept="3cpWs6" id="5qxF18ESA5Z" role="3cqZAp">
                <node concept="3clFbT" id="5qxF18ESA60" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="1pnPoh" id="5qxF18ESA61" role="1_3QMm">
              <node concept="3gn64h" id="5qxF18ESA62" role="1pnPq6">
                <ref role="3gnhBz" to="3nll:5qxF18ELq1P" resolve="CommandHandlingSetting" />
              </node>
              <node concept="3clFbS" id="5qxF18ESA63" role="1pnPq1">
                <node concept="3cpWs6" id="5qxF18ESA64" role="3cqZAp">
                  <node concept="3fqX7Q" id="5qxF18ESDfp" role="3cqZAk">
                    <node concept="2OqwBi" id="5qxF18ESDfr" role="3fr31v">
                      <node concept="37vLTw" id="5qxF18ESDfs" role="2Oq$k0">
                        <ref role="3cqZAo" node="5qxF18ESA5N" resolve="settings" />
                      </node>
                      <node concept="2qgKlT" id="5qxF18ESDft" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5qxF18ES__k" resolve="isCommandHandlingSettingDefined" />
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
  <node concept="22mcaB" id="5qxF18ENHHZ">
    <property role="3GE5qa" value="generationSettings.query" />
    <ref role="aqKnT" to="3nll:5qxF18ELp98" resolve="IQueryGenerationSettingsComponent" />
    <node concept="22hDWj" id="5qxF18ENHI0" role="22hAXT" />
    <node concept="2VfDsV" id="5qxF18ENHI2" role="3ft7WO">
      <node concept="1GpqWn" id="5qxF18ESCbK" role="1Go12V">
        <node concept="3clFbS" id="5qxF18ESCbL" role="2VODD2">
          <node concept="3cpWs8" id="5qxF18ESCgB" role="3cqZAp">
            <node concept="3cpWsn" id="5qxF18ESCgC" role="3cpWs9">
              <property role="TrG5h" value="settings" />
              <node concept="3Tqbb2" id="5qxF18ESCgD" role="1tU5fm">
                <ref role="ehGHo" to="3nll:omljbyVy_1" resolve="QueryGenerationSettings" />
              </node>
              <node concept="2OqwBi" id="5qxF18ESCgE" role="33vP2m">
                <node concept="3bvxqY" id="5qxF18ESCgF" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5qxF18ESCgG" role="2OqNvi">
                  <node concept="1xMEDy" id="5qxF18ESCgH" role="1xVPHs">
                    <node concept="chp4Y" id="5qxF18ESCgI" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:omljbyVy_1" resolve="QueryGenerationSettings" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5qxF18ESCgJ" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5qxF18ESCgK" role="3cqZAp" />
          <node concept="1_3QMa" id="5qxF18ESCgL" role="3cqZAp">
            <node concept="1GpqW3" id="5qxF18ESCgM" role="1_3QMn" />
            <node concept="3clFbS" id="5qxF18ESCgN" role="1prKM_">
              <node concept="3cpWs6" id="5qxF18ESCgO" role="3cqZAp">
                <node concept="3clFbT" id="5qxF18ESCgP" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="1pnPoh" id="5qxF18ESCgQ" role="1_3QMm">
              <node concept="3gn64h" id="5qxF18ESCgR" role="1pnPq6">
                <ref role="3gnhBz" to="3nll:5qxF18ELq1Q" resolve="QueryHandlingSetting" />
              </node>
              <node concept="3clFbS" id="5qxF18ESCgS" role="1pnPq1">
                <node concept="3cpWs6" id="5qxF18ESCgT" role="3cqZAp">
                  <node concept="3fqX7Q" id="5qxF18ESCRz" role="3cqZAk">
                    <node concept="2OqwBi" id="5qxF18ESCR_" role="3fr31v">
                      <node concept="37vLTw" id="5qxF18ESCRA" role="2Oq$k0">
                        <ref role="3cqZAo" node="5qxF18ESCgC" resolve="settings" />
                      </node>
                      <node concept="2qgKlT" id="5qxF18ESCRB" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5qxF18ESB_m" resolve="isQueryHandlingSettingDefined" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1pnPoh" id="5qxF18FlF4l" role="1_3QMm">
              <node concept="3gn64h" id="5qxF18FlF4n" role="1pnPq6">
                <ref role="3gnhBz" to="3nll:5qxF18ENJjm" resolve="QueryProcessingSetting" />
              </node>
              <node concept="3clFbS" id="5qxF18FlF4p" role="1pnPq1">
                <node concept="3cpWs6" id="5qxF18FlFbA" role="3cqZAp">
                  <node concept="3fqX7Q" id="5qxF18FlFdP" role="3cqZAk">
                    <node concept="2OqwBi" id="5qxF18FlFuU" role="3fr31v">
                      <node concept="37vLTw" id="5qxF18FlFf8" role="2Oq$k0">
                        <ref role="3cqZAo" node="5qxF18ESCgC" resolve="settings" />
                      </node>
                      <node concept="2qgKlT" id="5qxF18FlFGl" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:5qxF18EUWYK" resolve="isQueryProcessingSettingDefined" />
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
  <node concept="24kQdi" id="5qxF18ENHI5">
    <property role="3GE5qa" value="generationSettings.query.handling" />
    <ref role="1XX52x" to="3nll:5qxF18ELq1Q" resolve="QueryHandlingSetting" />
    <node concept="3EZMnI" id="5qxF18ENHR4" role="2wV5jI">
      <node concept="3F0ifn" id="5qxF18ENHRb" role="3EZMnx">
        <property role="3F0ifm" value="handling" />
        <ref role="1k5W1q" node="sPJqcqlEKz" resolve="KeywordStyle" />
      </node>
      <node concept="3F0ifn" id="5qxF18ENHRd" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3EZMnI" id="5qxF18ENHRe" role="3EZMnx">
        <node concept="VPM3Z" id="5qxF18ENHRf" role="3F10Kt" />
        <node concept="ljvvj" id="5qxF18ENHRg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0A7n" id="5qxF18ENHRh" role="3EZMnx">
          <ref role="1NtTu8" to="3nll:5qxF18ENHSu" resolve="handlingType" />
          <node concept="2SqB2G" id="5qxF18ENHRi" role="2SqHTX">
            <property role="TrG5h" value="handlingTypeCellId" />
          </node>
        </node>
        <node concept="l2Vlx" id="5qxF18ENHRj" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5qxF18ENHRk" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <property role="3EXrWe" value="true" />
        <node concept="VPM3Z" id="5qxF18ENHRl" role="3F10Kt" />
        <node concept="3EZMnI" id="5qxF18ENHRo" role="3EZMnx">
          <node concept="VPM3Z" id="5qxF18ENHRp" role="3F10Kt" />
          <node concept="3F0ifn" id="5qxF18ENHRq" role="3EZMnx">
            <property role="3F0ifm" value="• separated: Generate a query handler for each query object" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18ENHRr" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5qxF18ENHRs" role="3EZMnx">
          <node concept="VPM3Z" id="5qxF18ENHRt" role="3F10Kt" />
          <node concept="3F0ifn" id="5qxF18ENHRu" role="3EZMnx">
            <property role="3F0ifm" value="• grouped: Generate a single" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="3F0ifn" id="5qxF18ENHRv" role="3EZMnx">
            <property role="3F0ifm" value="query handler for all query objects" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18ENHRw" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5qxF18ENHRx" role="3EZMnx">
          <node concept="3F0ifn" id="5qxF18ENHRy" role="3EZMnx">
            <property role="3F0ifm" value="*" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
            <node concept="VSNWy" id="5qxF18ENHRz" role="3F10Kt">
              <property role="1lJzqX" value="9" />
            </node>
          </node>
          <node concept="VPM3Z" id="5qxF18ENHR$" role="3F10Kt" />
          <node concept="lj46D" id="5qxF18ENHR_" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="5qxF18ENHRA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="5qxF18ENHRB" role="3EZMnx">
            <property role="3F0ifm" value="Queries defined inside a" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="3F0ifn" id="5qxF18ENHRC" role="3EZMnx">
            <property role="3F0ifm" value="query service" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
            <node concept="3Xmtl4" id="5qxF18ENHRD" role="3F10Kt">
              <node concept="1wgc9g" id="5qxF18ENHRE" role="3XvnJa">
                <ref role="1wgcnl" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="5qxF18ENHRF" role="3EZMnx">
            <property role="3F0ifm" value="or" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="3F0ifn" id="5qxF18ENHRG" role="3EZMnx">
            <property role="3F0ifm" value="query handler" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
            <node concept="3Xmtl4" id="5qxF18ENHRH" role="3F10Kt">
              <node concept="1wgc9g" id="5qxF18ENHRI" role="3XvnJa">
                <ref role="1wgcnl" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="5qxF18ENHRJ" role="3EZMnx">
            <property role="3F0ifm" value="are ignored" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18ENHRK" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="5qxF18ENHRL" role="2iSdaV" />
        <node concept="3F0ifn" id="5qxF18ENHRM" role="AHCbl">
          <property role="3F0ifm" value="[show description]" />
          <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
        </node>
      </node>
      <node concept="l2Vlx" id="5qxF18ENHR7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5qxF18EUWP1">
    <property role="3GE5qa" value="generationSettings.query.processing" />
    <ref role="1XX52x" to="3nll:5qxF18ENJjm" resolve="QueryProcessingSetting" />
    <node concept="3EZMnI" id="5qxF18EUXlr" role="2wV5jI">
      <node concept="3F0ifn" id="5qxF18EUXls" role="3EZMnx">
        <property role="3F0ifm" value="generate processor" />
        <ref role="1k5W1q" node="sPJqcqlEKz" resolve="KeywordStyle" />
      </node>
      <node concept="3F0ifn" id="5qxF18EUXlu" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3EZMnI" id="5qxF18EUXlv" role="3EZMnx">
        <node concept="VPM3Z" id="5qxF18EUXlw" role="3F10Kt" />
        <node concept="ljvvj" id="5qxF18EUXlx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0A7n" id="5qxF18EUXly" role="3EZMnx">
          <ref role="1NtTu8" to="3nll:5qxF18EUWOZ" resolve="useProcessingImplementation" />
          <node concept="2SqB2G" id="5qxF18EUXlz" role="2SqHTX">
            <property role="TrG5h" value="handlingTypeCellId" />
          </node>
        </node>
        <node concept="l2Vlx" id="5qxF18EUXl$" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5qxF18EUXl_" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <property role="3EXrWe" value="true" />
        <node concept="VPM3Z" id="5qxF18EUXlA" role="3F10Kt" />
        <node concept="3EZMnI" id="5qxF18EUXlF" role="3EZMnx">
          <node concept="VPM3Z" id="5qxF18EUXlG" role="3F10Kt" />
          <node concept="3F0ifn" id="5qxF18EUXlH" role="3EZMnx">
            <property role="3F0ifm" value="• false: Do not generate a query processor implementation." />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18EUXlJ" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5qxF18EUXlB" role="3EZMnx">
          <node concept="VPM3Z" id="5qxF18EUXlC" role="3F10Kt" />
          <node concept="3F0ifn" id="5qxF18EUXlD" role="3EZMnx">
            <property role="3F0ifm" value="• true: Generate a query processor that maps each query to a query handler. This enables" />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18EUXlE" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5qxF18EXi6J" role="3EZMnx">
          <node concept="VPM3Z" id="5qxF18EXi6K" role="3F10Kt" />
          <node concept="3F0ifn" id="5qxF18EXi6L" role="3EZMnx">
            <property role="3F0ifm" value="        the processing of all queries with a single query processor object." />
            <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
          </node>
          <node concept="l2Vlx" id="5qxF18EXi6M" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="5qxF18EUXm0" role="2iSdaV" />
        <node concept="3F0ifn" id="5qxF18EUXm1" role="AHCbl">
          <property role="3F0ifm" value="[show description]" />
          <ref role="1k5W1q" node="5qxF18DP0ZB" resolve="DescriptionTextStyle" />
        </node>
      </node>
      <node concept="l2Vlx" id="5qxF18EUXm2" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="5qxF18Fqqxs">
    <property role="3GE5qa" value="generationSettings" />
    <property role="TrG5h" value="GenerationSettings_ActionMap" />
    <ref role="1h_SK9" to="3nll:mdpAJLpk86" resolve="GenerationSettings" />
    <node concept="1hA7zw" id="5qxF18Fqqxt" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABBih/copy_action_id" />
      <node concept="1hAIg9" id="5qxF18Fqqxu" role="1hA7z_">
        <node concept="3clFbS" id="5qxF18Fqqxv" role="2VODD2">
          <node concept="2xdQw9" id="5qxF18FsN__" role="3cqZAp">
            <node concept="Xl_RD" id="5qxF18FsN_B" role="9lYJi">
              <property role="Xl_RC" value="Copy" />
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="5qxF18FqqxN" role="jK8aL">
        <node concept="3clFbS" id="5qxF18FqqxO" role="2VODD2">
          <node concept="3clFbF" id="5qxF18FqqCG" role="3cqZAp">
            <node concept="3clFbT" id="5qxF18FqqCF" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="5qxF18FqqDo" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABBii/cut_action_id" />
      <node concept="1hAIg9" id="5qxF18FqqDp" role="1hA7z_">
        <node concept="3clFbS" id="5qxF18FqqDq" role="2VODD2">
          <node concept="2xdQw9" id="5qxF18FsNBb" role="3cqZAp">
            <node concept="Xl_RD" id="5qxF18FsNBc" role="9lYJi">
              <property role="Xl_RC" value="Cut" />
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="5qxF18FqqDS" role="jK8aL">
        <node concept="3clFbS" id="5qxF18FqqDT" role="2VODD2">
          <node concept="3clFbF" id="5qxF18FqqH4" role="3cqZAp">
            <node concept="3clFbT" id="5qxF18FqqH3" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="5qxF18FvaUS" role="1h_SK8">
      <property role="1hAc7j" value="7P1WhNABBij/paste_action_id" />
      <node concept="1hAIg9" id="5qxF18FvaUT" role="1hA7z_">
        <node concept="3clFbS" id="5qxF18FvaUU" role="2VODD2">
          <node concept="2xdQw9" id="5qxF18FvaXn" role="3cqZAp">
            <node concept="Xl_RD" id="5qxF18FvaXo" role="9lYJi">
              <property role="Xl_RC" value="Paste" />
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="5qxF18FvaVw" role="jK8aL">
        <node concept="3clFbS" id="5qxF18FvaVx" role="2VODD2">
          <node concept="3clFbF" id="5qxF18FvaWF" role="3cqZAp">
            <node concept="3clFbT" id="5qxF18FvaWE" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="29ZTnyH7VIX">
    <property role="3GE5qa" value="typing.collections" />
    <ref role="1XX52x" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
    <node concept="3EZMnI" id="29ZTnyH7VIZ" role="2wV5jI">
      <node concept="PMmxH" id="29ZTnyH7VJk" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="7fqk8p40QEI" resolve="CollectionDataTypeKeywordStyle" />
        <ref role="1ERwB7" node="29ZTnyInk_p" resolve="GenericDataTypeDeletion_ActionMap" />
        <node concept="VPxyj" id="29ZTnyHO9XX" role="3F10Kt" />
        <node concept="A1WHu" id="29ZTnyIwdTe" role="3vIgyS">
          <ref role="A1WHt" node="29ZTnyH8eIe" resolve="DataTypeTransformationMenu" />
        </node>
      </node>
      <node concept="3F0ifn" id="29ZTnyH7VJ1" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" node="hY9fg1G" resolve="LeftAngleBracketAfterName" />
      </node>
      <node concept="3F1sOY" id="29ZTnyH7VJ2" role="3EZMnx">
        <property role="1$x2rV" value="&lt;type&gt;" />
        <ref role="1NtTu8" to="3nll:23PrvZR7WXq" resolve="elementType" />
      </node>
      <node concept="3F0ifn" id="29ZTnyH7VJ3" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" node="5SyewCbjRsl" resolve="RightAngleBracket" />
      </node>
      <node concept="l2Vlx" id="29ZTnyH7VJ4" role="2iSdaV" />
    </node>
  </node>
  <node concept="3ICUPy" id="29ZTnyH8eIe">
    <property role="3GE5qa" value="typing.collections" />
    <ref role="aqKnT" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
    <node concept="2XrIbr" id="3aCsR_d2Xrt" role="2oQuUE">
      <property role="TrG5h" value="handleCollectionTransformations" />
      <node concept="37vLTG" id="3aCsR_d2X$1" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="3aCsR_d2XF7" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
        </node>
      </node>
      <node concept="37vLTG" id="3aCsR_d2Xwa" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="3aCsR_d2Xy$" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
        </node>
      </node>
      <node concept="3cqZAl" id="3aCsR_d2Xv5" role="3clF45" />
      <node concept="3clFbS" id="3aCsR_d2Xrv" role="3clF47">
        <node concept="Jncv_" id="3aCsR_d59PQ" role="3cqZAp">
          <ref role="JncvD" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
          <node concept="37vLTw" id="3aCsR_d59Rs" role="JncvB">
            <ref role="3cqZAo" node="3aCsR_d2X$1" resolve="oldNode" />
          </node>
          <node concept="3clFbS" id="3aCsR_d59PU" role="Jncv$">
            <node concept="3clFbF" id="3aCsR_d7n_u" role="3cqZAp">
              <node concept="2OqwBi" id="3aCsR_d7n_o" role="3clFbG">
                <node concept="2WthIp" id="3aCsR_d7n_r" role="2Oq$k0" />
                <node concept="2XshWL" id="3aCsR_d7n_t" role="2OqNvi">
                  <ref role="2WH_rO" node="3aCsR_d7mE6" resolve="handleCollectionToCollectionTransformation" />
                  <node concept="Jnkvi" id="3aCsR_d7nDr" role="2XxRq1">
                    <ref role="1M0zk5" node="3aCsR_d59PW" resolve="collectionType" />
                  </node>
                  <node concept="37vLTw" id="3aCsR_d7q2e" role="2XxRq1">
                    <ref role="3cqZAo" node="3aCsR_d2Xwa" resolve="newNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3aCsR_d59PW" role="JncvA">
            <property role="TrG5h" value="collectionType" />
            <node concept="2jxLKc" id="3aCsR_d59PX" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_d7ntn" role="3cqZAp" />
        <node concept="Jncv_" id="3aCsR_d7nwS" role="3cqZAp">
          <ref role="JncvD" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
          <node concept="37vLTw" id="3aCsR_d7nys" role="JncvB">
            <ref role="3cqZAo" node="3aCsR_d2X$1" resolve="oldNode" />
          </node>
          <node concept="3clFbS" id="3aCsR_d7nwW" role="Jncv$">
            <node concept="3clFbF" id="3aCsR_d7qbw" role="3cqZAp">
              <node concept="2OqwBi" id="3aCsR_d7qbq" role="3clFbG">
                <node concept="2WthIp" id="3aCsR_d7qbt" role="2Oq$k0" />
                <node concept="2XshWL" id="3aCsR_d7qbv" role="2OqNvi">
                  <ref role="2WH_rO" node="3aCsR_d7nkl" resolve="handleImportTypeToCollectionTransformation" />
                  <node concept="Jnkvi" id="3aCsR_d7qf9" role="2XxRq1">
                    <ref role="1M0zk5" node="3aCsR_d7nwY" resolve="importType" />
                  </node>
                  <node concept="37vLTw" id="3aCsR_d7qiE" role="2XxRq1">
                    <ref role="3cqZAo" node="3aCsR_d2Xwa" resolve="newNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3aCsR_d7nwY" role="JncvA">
            <property role="TrG5h" value="importType" />
            <node concept="2jxLKc" id="3aCsR_d7nwZ" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="1bq_vIp_VeT" role="3cqZAp" />
        <node concept="Jncv_" id="1bq_vIpFhRv" role="3cqZAp">
          <ref role="JncvD" to="3nll:7wXJBPuINtT" resolve="MapType" />
          <node concept="37vLTw" id="1bq_vIpFhTo" role="JncvB">
            <ref role="3cqZAo" node="3aCsR_d2X$1" resolve="oldNode" />
          </node>
          <node concept="3clFbS" id="1bq_vIpFhRz" role="Jncv$">
            <node concept="3clFbF" id="1bq_vIpFi2U" role="3cqZAp">
              <node concept="2OqwBi" id="1bq_vIpFi2O" role="3clFbG">
                <node concept="2WthIp" id="1bq_vIpFi2R" role="2Oq$k0" />
                <node concept="2XshWL" id="1bq_vIpFi2T" role="2OqNvi">
                  <ref role="2WH_rO" node="1bq_vIpCHuQ" resolve="handleMapTypeToCollectionTypeTransformation" />
                  <node concept="Jnkvi" id="1bq_vIpFi4J" role="2XxRq1">
                    <ref role="1M0zk5" node="1bq_vIpFhR_" resolve="mapType" />
                  </node>
                  <node concept="37vLTw" id="1bq_vIpFi7F" role="2XxRq1">
                    <ref role="3cqZAo" node="3aCsR_d2Xwa" resolve="newNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="1bq_vIpFhR_" role="JncvA">
            <property role="TrG5h" value="mapType" />
            <node concept="2jxLKc" id="1bq_vIpFhRA" role="1tU5fm" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3aCsR_d2Xrw" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="1bq_vIpCHuQ" role="2oQuUE">
      <property role="TrG5h" value="handleMapTypeToCollectionTypeTransformation" />
      <node concept="37vLTG" id="1bq_vIpCHEY" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="1bq_vIpCHEZ" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7wXJBPuINtT" resolve="MapType" />
        </node>
      </node>
      <node concept="37vLTG" id="1bq_vIpCHF0" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="1bq_vIpCHF1" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
        </node>
      </node>
      <node concept="3cqZAl" id="1bq_vIpCHCr" role="3clF45" />
      <node concept="3clFbS" id="1bq_vIpCHuS" role="3clF47">
        <node concept="3clFbF" id="1bq_vIpCHHL" role="3cqZAp">
          <node concept="2OqwBi" id="1bq_vIpCIhb" role="3clFbG">
            <node concept="2OqwBi" id="1bq_vIpCHSl" role="2Oq$k0">
              <node concept="37vLTw" id="1bq_vIpCHHK" role="2Oq$k0">
                <ref role="3cqZAo" node="1bq_vIpCHF0" resolve="newNode" />
              </node>
              <node concept="3TrEf2" id="1bq_vIpCI4s" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
              </node>
            </node>
            <node concept="2oxUTD" id="1bq_vIpCIt_" role="2OqNvi">
              <node concept="2OqwBi" id="1bq_vIpCIEG" role="2oxUTC">
                <node concept="37vLTw" id="1bq_vIpCIuS" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bq_vIpCHEY" resolve="oldNode" />
                </node>
                <node concept="3TrEf2" id="1bq_vIpCIRz" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:7wXJBPuINtW" resolve="keyType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1bq_vIpCHuT" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3aCsR_d7nkl" role="2oQuUE">
      <property role="TrG5h" value="handleImportTypeToCollectionTransformation" />
      <node concept="37vLTG" id="3aCsR_d7nko" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="3aCsR_d7nkp" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
        </node>
      </node>
      <node concept="37vLTG" id="3aCsR_d7nkm" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="3aCsR_d7nkn" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
        </node>
      </node>
      <node concept="3cqZAl" id="3aCsR_d7nkq" role="3clF45" />
      <node concept="3clFbS" id="3aCsR_d7nkr" role="3clF47">
        <node concept="3clFbJ" id="3aCsR_d7J$M" role="3cqZAp">
          <node concept="3clFbS" id="3aCsR_d7J$O" role="3clFbx">
            <node concept="3cpWs6" id="3aCsR_d7Mnx" role="3cqZAp" />
          </node>
          <node concept="2dkUwp" id="3aCsR_d7MdG" role="3clFbw">
            <node concept="2OqwBi" id="3aCsR_d7JDQ" role="3uHU7B">
              <node concept="37vLTw" id="3aCsR_d7JAJ" role="2Oq$k0">
                <ref role="3cqZAo" node="3aCsR_d7nko" resolve="oldNode" />
              </node>
              <node concept="2qgKlT" id="3aCsR_d7JSM" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:SXYyTVHlmk" resolve="typeCount" />
              </node>
            </node>
            <node concept="3cmrfG" id="3aCsR_d7LZc" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3aCsR_d7Mvw" role="3cqZAp">
          <node concept="2OqwBi" id="3aCsR_d7Ndy" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_d7MKX" role="2Oq$k0">
              <node concept="37vLTw" id="3aCsR_d7Mvu" role="2Oq$k0">
                <ref role="3cqZAo" node="3aCsR_d7nkm" resolve="newNode" />
              </node>
              <node concept="3TrEf2" id="3aCsR_d7MYY" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
              </node>
            </node>
            <node concept="2oxUTD" id="3aCsR_d7NCd" role="2OqNvi">
              <node concept="1y4W85" id="3aCsR_d7Rsm" role="2oxUTC">
                <node concept="3cmrfG" id="3aCsR_d7RDd" role="1y58nS">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="3aCsR_d7NQy" role="1y566C">
                  <node concept="37vLTw" id="3aCsR_d7NF4" role="2Oq$k0">
                    <ref role="3cqZAo" node="3aCsR_d7nko" resolve="oldNode" />
                  </node>
                  <node concept="3Tsc0h" id="3aCsR_d7O2m" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3aCsR_d7nk_" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3aCsR_d7mE6" role="2oQuUE">
      <property role="TrG5h" value="handleCollectionToCollectionTransformation" />
      <node concept="37vLTG" id="3aCsR_d7mIU" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="3aCsR_d7mIV" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
        </node>
      </node>
      <node concept="37vLTG" id="3aCsR_d7mIS" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="3aCsR_d7mIT" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
        </node>
      </node>
      <node concept="3cqZAl" id="3aCsR_d7mHl" role="3clF45" />
      <node concept="3clFbS" id="3aCsR_d7mE8" role="3clF47">
        <node concept="3clFbF" id="3aCsR_d7mKs" role="3cqZAp">
          <node concept="2OqwBi" id="3aCsR_d7mKt" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_d7mKu" role="2Oq$k0">
              <node concept="37vLTw" id="3aCsR_d7mQz" role="2Oq$k0">
                <ref role="3cqZAo" node="3aCsR_d7mIS" resolve="newNode" />
              </node>
              <node concept="3TrEf2" id="3aCsR_d7mKw" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
              </node>
            </node>
            <node concept="2oxUTD" id="3aCsR_d7mKx" role="2OqNvi">
              <node concept="2OqwBi" id="3aCsR_d7mKy" role="2oxUTC">
                <node concept="37vLTw" id="3aCsR_d7mKz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aCsR_d7mIU" resolve="oldNode" />
                </node>
                <node concept="3TrEf2" id="3aCsR_d7mK$" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3aCsR_d7mE9" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3aCsR_d7nMT" role="2oQuUE">
      <property role="TrG5h" value="handleImportTypeTransformations" />
      <node concept="37vLTG" id="3aCsR_d7nMW" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="3aCsR_d7nMX" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
        </node>
      </node>
      <node concept="37vLTG" id="3aCsR_d7nMU" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="3aCsR_d7nMV" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
        </node>
      </node>
      <node concept="3cqZAl" id="3aCsR_d7nMY" role="3clF45" />
      <node concept="3clFbS" id="3aCsR_d7nMZ" role="3clF47">
        <node concept="Jncv_" id="3aCsR_d7nN0" role="3cqZAp">
          <ref role="JncvD" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
          <node concept="37vLTw" id="3aCsR_d7nN1" role="JncvB">
            <ref role="3cqZAo" node="3aCsR_d7nMW" resolve="oldNode" />
          </node>
          <node concept="3clFbS" id="3aCsR_d7nN2" role="Jncv$">
            <node concept="3clFbF" id="3aCsR_d7oD3" role="3cqZAp">
              <node concept="2OqwBi" id="3aCsR_d7oCX" role="3clFbG">
                <node concept="2WthIp" id="3aCsR_d7oD0" role="2Oq$k0" />
                <node concept="2XshWL" id="3aCsR_d7oD2" role="2OqNvi">
                  <ref role="2WH_rO" node="3aCsR_d7naF" resolve="handleCollectionToImportTypeTransformation" />
                  <node concept="Jnkvi" id="3aCsR_d7oDL" role="2XxRq1">
                    <ref role="1M0zk5" node="3aCsR_d7nN9" resolve="collectionType" />
                  </node>
                  <node concept="37vLTw" id="3aCsR_d7oEn" role="2XxRq1">
                    <ref role="3cqZAo" node="3aCsR_d7nMU" resolve="newNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3aCsR_d7nN9" role="JncvA">
            <property role="TrG5h" value="collectionType" />
            <node concept="2jxLKc" id="3aCsR_d7nNa" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3aCsR_d7nNb" role="3cqZAp" />
        <node concept="Jncv_" id="3aCsR_d7nNc" role="3cqZAp">
          <ref role="JncvD" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
          <node concept="37vLTw" id="3aCsR_d7nNd" role="JncvB">
            <ref role="3cqZAo" node="3aCsR_d7nMW" resolve="oldNode" />
          </node>
          <node concept="3clFbS" id="3aCsR_d7nNe" role="Jncv$">
            <node concept="3clFbF" id="3aCsR_d7oHV" role="3cqZAp">
              <node concept="2OqwBi" id="3aCsR_d7oHP" role="3clFbG">
                <node concept="2WthIp" id="3aCsR_d7oHS" role="2Oq$k0" />
                <node concept="2XshWL" id="3aCsR_d7oHU" role="2OqNvi">
                  <ref role="2WH_rO" node="3aCsR_d7nZ6" resolve="handleImportTypeToImportTypeTransformation" />
                  <node concept="Jnkvi" id="3aCsR_d7pUP" role="2XxRq1">
                    <ref role="1M0zk5" node="3aCsR_d7nNf" resolve="importType" />
                  </node>
                  <node concept="37vLTw" id="3aCsR_d7pVx" role="2XxRq1">
                    <ref role="3cqZAo" node="3aCsR_d7nMU" resolve="newNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3aCsR_d7nNf" role="JncvA">
            <property role="TrG5h" value="importType" />
            <node concept="2jxLKc" id="3aCsR_d7nNg" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="1bq_vIpFi9h" role="3cqZAp" />
        <node concept="Jncv_" id="1bq_vIpFieo" role="3cqZAp">
          <ref role="JncvD" to="3nll:7wXJBPuINtT" resolve="MapType" />
          <node concept="37vLTw" id="1bq_vIpFigh" role="JncvB">
            <ref role="3cqZAo" node="3aCsR_d7nMW" resolve="oldNode" />
          </node>
          <node concept="3clFbS" id="1bq_vIpFies" role="Jncv$">
            <node concept="3clFbF" id="1bq_vIpFirI" role="3cqZAp">
              <node concept="2OqwBi" id="1bq_vIpFirC" role="3clFbG">
                <node concept="2WthIp" id="1bq_vIpFirF" role="2Oq$k0" />
                <node concept="2XshWL" id="1bq_vIpFirH" role="2OqNvi">
                  <ref role="2WH_rO" node="1bq_vIpCIUB" resolve="handleMapTypeToImportTypeTransformation" />
                  <node concept="Jnkvi" id="1bq_vIpFitk" role="2XxRq1">
                    <ref role="1M0zk5" node="1bq_vIpFieu" resolve="mapType" />
                  </node>
                  <node concept="37vLTw" id="1bq_vIpFiwg" role="2XxRq1">
                    <ref role="3cqZAo" node="3aCsR_d7nMU" resolve="newNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="1bq_vIpFieu" role="JncvA">
            <property role="TrG5h" value="mapType" />
            <node concept="2jxLKc" id="1bq_vIpFiev" role="1tU5fm" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3aCsR_d7nNh" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="1bq_vIpCIUB" role="2oQuUE">
      <property role="TrG5h" value="handleMapTypeToImportTypeTransformation" />
      <node concept="37vLTG" id="1bq_vIpCIUC" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="1bq_vIpCIUD" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7wXJBPuINtT" resolve="MapType" />
        </node>
      </node>
      <node concept="37vLTG" id="1bq_vIpCIUE" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="1bq_vIpCIUF" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
        </node>
      </node>
      <node concept="3cqZAl" id="1bq_vIpCIUG" role="3clF45" />
      <node concept="3clFbS" id="1bq_vIpCIUH" role="3clF47">
        <node concept="3clFbJ" id="1bq_vIpCJcD" role="3cqZAp">
          <node concept="3clFbS" id="1bq_vIpCJcF" role="3clFbx">
            <node concept="3clFbF" id="1bq_vIpCM0o" role="3cqZAp">
              <node concept="37vLTI" id="1bq_vIpCP8z" role="3clFbG">
                <node concept="2OqwBi" id="1bq_vIpCS8q" role="37vLTx">
                  <node concept="37vLTw" id="1bq_vIpCRO8" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bq_vIpCIUC" resolve="oldNode" />
                  </node>
                  <node concept="3TrEf2" id="1bq_vIpCSm5" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7wXJBPuINtW" resolve="keyType" />
                  </node>
                </node>
                <node concept="1y4W85" id="1bq_vIpCOj8" role="37vLTJ">
                  <node concept="3cmrfG" id="1bq_vIpCOU0" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1bq_vIpCMbo" role="1y566C">
                    <node concept="37vLTw" id="1bq_vIpCM0n" role="2Oq$k0">
                      <ref role="3cqZAo" node="1bq_vIpCIUE" resolve="newNode" />
                    </node>
                    <node concept="3Tsc0h" id="1bq_vIpCMn$" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="1bq_vIpCR5O" role="3clFbw">
            <node concept="3cmrfG" id="1bq_vIpCR6A" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="1bq_vIpCSxL" role="3uHU7B">
              <node concept="37vLTw" id="1bq_vIpCSxM" role="2Oq$k0">
                <ref role="3cqZAo" node="1bq_vIpCIUE" resolve="newNode" />
              </node>
              <node concept="2qgKlT" id="1bq_vIpCSxN" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:SXYyTVHlmk" resolve="typeCount" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1bq_vIpCRh6" role="3cqZAp">
          <node concept="3clFbS" id="1bq_vIpCRh7" role="3clFbx">
            <node concept="3clFbF" id="1bq_vIpCRh8" role="3cqZAp">
              <node concept="37vLTI" id="1bq_vIpCRh9" role="3clFbG">
                <node concept="2OqwBi" id="1bq_vIpCStB" role="37vLTx">
                  <node concept="37vLTw" id="1bq_vIpCSs1" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bq_vIpCIUC" resolve="oldNode" />
                  </node>
                  <node concept="3TrEf2" id="1bq_vIpCSvY" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7wXJBPuINtY" resolve="valueType" />
                  </node>
                </node>
                <node concept="1y4W85" id="1bq_vIpCRhb" role="37vLTJ">
                  <node concept="3cmrfG" id="1bq_vIpCRhc" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1bq_vIpCRhd" role="1y566C">
                    <node concept="37vLTw" id="1bq_vIpCRhe" role="2Oq$k0">
                      <ref role="3cqZAo" node="1bq_vIpCIUE" resolve="newNode" />
                    </node>
                    <node concept="3Tsc0h" id="1bq_vIpCRhf" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="1bq_vIpCRhg" role="3clFbw">
            <node concept="3cmrfG" id="1bq_vIpCRvO" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="1bq_vIpCPM9" role="3uHU7B">
              <node concept="37vLTw" id="1bq_vIpCPMa" role="2Oq$k0">
                <ref role="3cqZAo" node="1bq_vIpCIUE" resolve="newNode" />
              </node>
              <node concept="2qgKlT" id="1bq_vIpCPMb" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:SXYyTVHlmk" resolve="typeCount" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1bq_vIpCIUR" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3aCsR_d7nZ6" role="2oQuUE">
      <property role="TrG5h" value="handleImportTypeToImportTypeTransformation" />
      <node concept="37vLTG" id="3aCsR_d7nZ9" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="3aCsR_d7nZa" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
        </node>
      </node>
      <node concept="37vLTG" id="3aCsR_d7nZ7" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="3aCsR_d7nZ8" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
        </node>
      </node>
      <node concept="3cqZAl" id="3aCsR_d7nZb" role="3clF45" />
      <node concept="3clFbS" id="3aCsR_d7nZc" role="3clF47">
        <node concept="1Dw8fO" id="3aCsR_d7_zz" role="3cqZAp">
          <node concept="3clFbS" id="3aCsR_d7_z_" role="2LFqv$">
            <node concept="3clFbJ" id="3aCsR_d7Bsk" role="3cqZAp">
              <node concept="3clFbS" id="3aCsR_d7Bsm" role="3clFbx">
                <node concept="3cpWs6" id="3aCsR_d7FI$" role="3cqZAp" />
              </node>
              <node concept="3eOVzh" id="3aCsR_d7FAC" role="3clFbw">
                <node concept="37vLTw" id="3aCsR_d7FDf" role="3uHU7w">
                  <ref role="3cqZAo" node="3aCsR_d7_zA" resolve="i" />
                </node>
                <node concept="2OqwBi" id="3aCsR_d7EiZ" role="3uHU7B">
                  <node concept="37vLTw" id="3aCsR_d7BC2" role="2Oq$k0">
                    <ref role="3cqZAo" node="3aCsR_d7nZ9" resolve="oldNode" />
                  </node>
                  <node concept="2qgKlT" id="3aCsR_d7EzZ" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:SXYyTVHlmk" resolve="typeCount" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3aCsR_d7x64" role="3cqZAp">
              <node concept="37vLTI" id="3aCsR_d7IDB" role="3clFbG">
                <node concept="1y4W85" id="3aCsR_d7JnB" role="37vLTx">
                  <node concept="37vLTw" id="3aCsR_d7Jtj" role="1y58nS">
                    <ref role="3cqZAo" node="3aCsR_d7_zA" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="3aCsR_d7IYg" role="1y566C">
                    <node concept="37vLTw" id="3aCsR_d7IIW" role="2Oq$k0">
                      <ref role="3cqZAo" node="3aCsR_d7nZ9" resolve="oldNode" />
                    </node>
                    <node concept="3Tsc0h" id="3aCsR_d7J27" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                    </node>
                  </node>
                </node>
                <node concept="1y4W85" id="3aCsR_d7InG" role="37vLTJ">
                  <node concept="37vLTw" id="3aCsR_d7IsQ" role="1y58nS">
                    <ref role="3cqZAo" node="3aCsR_d7_zA" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="3aCsR_d7xhl" role="1y566C">
                    <node concept="37vLTw" id="3aCsR_d7x63" role="2Oq$k0">
                      <ref role="3cqZAo" node="3aCsR_d7nZ7" resolve="newNode" />
                    </node>
                    <node concept="3Tsc0h" id="3aCsR_d7xwl" role="2OqNvi">
                      <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3aCsR_d7_zA" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3aCsR_d7_B$" role="1tU5fm" />
            <node concept="3cmrfG" id="3aCsR_d7_GR" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3aCsR_d7B5X" role="1Dwp0S">
            <node concept="37vLTw" id="3aCsR_d7B89" role="3uHU7B">
              <ref role="3cqZAo" node="3aCsR_d7_zA" resolve="i" />
            </node>
            <node concept="2OqwBi" id="3aCsR_d7_UE" role="3uHU7w">
              <node concept="37vLTw" id="3aCsR_d7_II" role="2Oq$k0">
                <ref role="3cqZAo" node="3aCsR_d7nZ7" resolve="newNode" />
              </node>
              <node concept="2qgKlT" id="3aCsR_d7_XA" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:SXYyTVHlmk" resolve="typeCount" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="3aCsR_d7Bmw" role="1Dwrff">
            <node concept="37vLTw" id="3aCsR_d7Bmy" role="2$L3a6">
              <ref role="3cqZAo" node="3aCsR_d7_zA" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3aCsR_d7nZd" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3aCsR_d7naF" role="2oQuUE">
      <property role="TrG5h" value="handleCollectionToImportTypeTransformation" />
      <node concept="37vLTG" id="3aCsR_d7naI" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="3aCsR_d7naJ" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
        </node>
      </node>
      <node concept="37vLTG" id="3aCsR_d7naG" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="3aCsR_d7naH" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
        </node>
      </node>
      <node concept="3cqZAl" id="3aCsR_d7naK" role="3clF45" />
      <node concept="3clFbS" id="3aCsR_d7naL" role="3clF47">
        <node concept="3clFbJ" id="3aCsR_d7RIm" role="3cqZAp">
          <node concept="22lmx$" id="3aCsR_d7TO9" role="3clFbw">
            <node concept="3clFbC" id="3aCsR_d7U5e" role="3uHU7w">
              <node concept="3cmrfG" id="3aCsR_d7U8$" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="3aCsR_d7TSl" role="3uHU7B">
                <node concept="37vLTw" id="3aCsR_d7TQJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aCsR_d7naG" resolve="newNode" />
                </node>
                <node concept="2qgKlT" id="3aCsR_d7TVv" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:SXYyTVHlmk" resolve="typeCount" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3aCsR_d7Tg6" role="3uHU7B">
              <node concept="2OqwBi" id="3aCsR_d7RW1" role="3uHU7B">
                <node concept="37vLTw" id="3aCsR_d7RKm" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aCsR_d7naG" resolve="newNode" />
                </node>
                <node concept="2qgKlT" id="3aCsR_d7S9V" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:SXYyTVHqCv" resolve="expectedTypeCount" />
                </node>
              </node>
              <node concept="3cmrfG" id="3aCsR_d7TLP" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3aCsR_d7RIo" role="3clFbx">
            <node concept="3cpWs6" id="3aCsR_d7Ue4" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="3aCsR_d7UlW" role="3cqZAp">
          <node concept="37vLTI" id="3aCsR_d7Y2R" role="3clFbG">
            <node concept="2OqwBi" id="3aCsR_d7Yir" role="37vLTx">
              <node concept="37vLTw" id="3aCsR_d7Y8p" role="2Oq$k0">
                <ref role="3cqZAo" node="3aCsR_d7naI" resolve="oldNode" />
              </node>
              <node concept="3TrEf2" id="3aCsR_d7Yxw" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
              </node>
            </node>
            <node concept="1y4W85" id="3aCsR_d7Xbc" role="37vLTJ">
              <node concept="3cmrfG" id="3aCsR_d7Xgy" role="1y58nS">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="3aCsR_d7Uq7" role="1y566C">
                <node concept="37vLTw" id="3aCsR_d7UlU" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aCsR_d7naG" resolve="newNode" />
                </node>
                <node concept="3Tsc0h" id="3aCsR_d7UtH" role="2OqNvi">
                  <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3aCsR_d7naV" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="1bq_vIp_Q8$" role="2oQuUE">
      <property role="TrG5h" value="handleMapTypeTransformations" />
      <node concept="37vLTG" id="1bq_vIp_V6j" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="1bq_vIp_V9p" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
        </node>
      </node>
      <node concept="37vLTG" id="1bq_vIp_Va$" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="1bq_vIp_VdI" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7wXJBPuINtT" resolve="MapType" />
        </node>
      </node>
      <node concept="3cqZAl" id="1bq_vIp_V5K" role="3clF45" />
      <node concept="3clFbS" id="1bq_vIp_Q8A" role="3clF47">
        <node concept="Jncv_" id="1bq_vIpCHmI" role="3cqZAp">
          <ref role="JncvD" to="3nll:7wXJBPuINtT" resolve="MapType" />
          <node concept="37vLTw" id="1bq_vIpCHnj" role="JncvB">
            <ref role="3cqZAo" node="1bq_vIp_V6j" resolve="oldNode" />
          </node>
          <node concept="3clFbS" id="1bq_vIpCHmK" role="Jncv$">
            <node concept="3clFbF" id="1bq_vIpCHse" role="3cqZAp">
              <node concept="2OqwBi" id="1bq_vIpCHs8" role="3clFbG">
                <node concept="2WthIp" id="1bq_vIpCHsb" role="2Oq$k0" />
                <node concept="2XshWL" id="1bq_vIpCHsd" role="2OqNvi">
                  <ref role="2WH_rO" node="1bq_vIp_VlJ" resolve="handleMapTypeToMapTypeTransformation" />
                  <node concept="Jnkvi" id="1bq_vIpCHsW" role="2XxRq1">
                    <ref role="1M0zk5" node="1bq_vIpCHmL" resolve="mapType" />
                  </node>
                  <node concept="37vLTw" id="1bq_vIpCHu8" role="2XxRq1">
                    <ref role="3cqZAo" node="1bq_vIp_Va$" resolve="newNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="1bq_vIpCHmL" role="JncvA">
            <property role="TrG5h" value="mapType" />
            <node concept="2jxLKc" id="1bq_vIpCHmM" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="1bq_vIpFixQ" role="3cqZAp" />
        <node concept="Jncv_" id="1bq_vIpFi_n" role="3cqZAp">
          <ref role="JncvD" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
          <node concept="37vLTw" id="1bq_vIpFiAY" role="JncvB">
            <ref role="3cqZAo" node="1bq_vIp_V6j" resolve="oldNode" />
          </node>
          <node concept="3clFbS" id="1bq_vIpFi_r" role="Jncv$">
            <node concept="3clFbF" id="1bq_vIpFiSg" role="3cqZAp">
              <node concept="2OqwBi" id="1bq_vIpFiSa" role="3clFbG">
                <node concept="2WthIp" id="1bq_vIpFiSd" role="2Oq$k0" />
                <node concept="2XshWL" id="1bq_vIpFiSf" role="2OqNvi">
                  <ref role="2WH_rO" node="1bq_vIpCWdW" resolve="handleCollectionTypeToMapTypeTransformation" />
                  <node concept="Jnkvi" id="1bq_vIpFjp$" role="2XxRq1">
                    <ref role="1M0zk5" node="1bq_vIpFi_t" resolve="collectionType" />
                  </node>
                  <node concept="37vLTw" id="1bq_vIpFjmc" role="2XxRq1">
                    <ref role="3cqZAo" node="1bq_vIp_Va$" resolve="newNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="1bq_vIpFi_t" role="JncvA">
            <property role="TrG5h" value="collectionType" />
            <node concept="2jxLKc" id="1bq_vIpFi_u" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="1bq_vIpFiGf" role="3cqZAp" />
        <node concept="Jncv_" id="1bq_vIpFiKY" role="3cqZAp">
          <ref role="JncvD" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
          <node concept="37vLTw" id="1bq_vIpFiMF" role="JncvB">
            <ref role="3cqZAo" node="1bq_vIp_V6j" resolve="oldNode" />
          </node>
          <node concept="3clFbS" id="1bq_vIpFiL2" role="Jncv$">
            <node concept="3clFbF" id="1bq_vIpFjvO" role="3cqZAp">
              <node concept="2OqwBi" id="1bq_vIpFjvI" role="3clFbG">
                <node concept="2WthIp" id="1bq_vIpFjvL" role="2Oq$k0" />
                <node concept="2XshWL" id="1bq_vIpFjvN" role="2OqNvi">
                  <ref role="2WH_rO" node="1bq_vIpCWEm" resolve="handleImportTypeToMapTypeTransformation" />
                  <node concept="Jnkvi" id="1bq_vIpFkHw" role="2XxRq1">
                    <ref role="1M0zk5" node="1bq_vIpFiL4" resolve="importType" />
                  </node>
                  <node concept="37vLTw" id="1bq_vIpFkIY" role="2XxRq1">
                    <ref role="3cqZAo" node="1bq_vIp_Va$" resolve="newNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="1bq_vIpFiL4" role="JncvA">
            <property role="TrG5h" value="importType" />
            <node concept="2jxLKc" id="1bq_vIpFiL5" role="1tU5fm" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1bq_vIp_Q8B" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="1bq_vIp_VlJ" role="2oQuUE">
      <property role="TrG5h" value="handleMapTypeToMapTypeTransformation" />
      <node concept="37vLTG" id="1bq_vIpCFcH" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="1bq_vIpCFcI" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7wXJBPuINtT" resolve="MapType" />
        </node>
      </node>
      <node concept="37vLTG" id="1bq_vIpCFcJ" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="1bq_vIpCFcK" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7wXJBPuINtT" resolve="MapType" />
        </node>
      </node>
      <node concept="3cqZAl" id="1bq_vIp_Vv6" role="3clF45" />
      <node concept="3clFbS" id="1bq_vIp_VlL" role="3clF47">
        <node concept="3clFbF" id="1bq_vIpCFh$" role="3cqZAp">
          <node concept="2OqwBi" id="1bq_vIpCFN1" role="3clFbG">
            <node concept="2OqwBi" id="1bq_vIpCFsf" role="2Oq$k0">
              <node concept="37vLTw" id="1bq_vIpCFhz" role="2Oq$k0">
                <ref role="3cqZAo" node="1bq_vIpCFcJ" resolve="newNode" />
              </node>
              <node concept="3TrEf2" id="1bq_vIpCFCD" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:7wXJBPuINtW" resolve="keyType" />
              </node>
            </node>
            <node concept="2oxUTD" id="1bq_vIpCG1A" role="2OqNvi">
              <node concept="2OqwBi" id="1bq_vIpCG4l" role="2oxUTC">
                <node concept="37vLTw" id="1bq_vIpCG2T" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bq_vIpCFcH" resolve="oldNode" />
                </node>
                <node concept="3TrEf2" id="1bq_vIpCG5S" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:7wXJBPuINtW" resolve="keyType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1bq_vIpCG9Y" role="3cqZAp">
          <node concept="2OqwBi" id="1bq_vIpCGUn" role="3clFbG">
            <node concept="2OqwBi" id="1bq_vIpCGkM" role="2Oq$k0">
              <node concept="37vLTw" id="1bq_vIpCG9W" role="2Oq$k0">
                <ref role="3cqZAo" node="1bq_vIpCFcJ" resolve="newNode" />
              </node>
              <node concept="3TrEf2" id="1bq_vIpCGxc" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:7wXJBPuINtY" resolve="valueType" />
              </node>
            </node>
            <node concept="2oxUTD" id="1bq_vIpCH6L" role="2OqNvi">
              <node concept="2OqwBi" id="1bq_vIpCHie" role="2oxUTC">
                <node concept="37vLTw" id="1bq_vIpCH84" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bq_vIpCFcH" resolve="oldNode" />
                </node>
                <node concept="3TrEf2" id="1bq_vIpCHjL" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:7wXJBPuINtY" resolve="valueType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1bq_vIp_VlM" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="1bq_vIpCWdW" role="2oQuUE">
      <property role="TrG5h" value="handleCollectionTypeToMapTypeTransformation" />
      <node concept="37vLTG" id="1bq_vIpCWdX" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="1bq_vIpCWdY" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
        </node>
      </node>
      <node concept="37vLTG" id="1bq_vIpCWdZ" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="1bq_vIpCWe0" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7wXJBPuINtT" resolve="MapType" />
        </node>
      </node>
      <node concept="3cqZAl" id="1bq_vIpCWe1" role="3clF45" />
      <node concept="3clFbS" id="1bq_vIpCWe2" role="3clF47">
        <node concept="3clFbF" id="1bq_vIpCWe3" role="3cqZAp">
          <node concept="2OqwBi" id="1bq_vIpCWe4" role="3clFbG">
            <node concept="2OqwBi" id="1bq_vIpCWe5" role="2Oq$k0">
              <node concept="37vLTw" id="1bq_vIpCWe6" role="2Oq$k0">
                <ref role="3cqZAo" node="1bq_vIpCWdZ" resolve="newNode" />
              </node>
              <node concept="3TrEf2" id="1bq_vIpCWe7" role="2OqNvi">
                <ref role="3Tt5mk" to="3nll:7wXJBPuINtW" resolve="keyType" />
              </node>
            </node>
            <node concept="2oxUTD" id="1bq_vIpCWe8" role="2OqNvi">
              <node concept="2OqwBi" id="1bq_vIpCWe9" role="2oxUTC">
                <node concept="37vLTw" id="1bq_vIpCWea" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bq_vIpCWdX" resolve="oldNode" />
                </node>
                <node concept="3TrEf2" id="1bq_vIpCWDv" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:23PrvZR7WXq" resolve="elementType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1bq_vIpCWel" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="1bq_vIpCWEm" role="2oQuUE">
      <property role="TrG5h" value="handleImportTypeToMapTypeTransformation" />
      <node concept="37vLTG" id="1bq_vIpCWEn" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="1bq_vIpCWEo" role="1tU5fm">
          <ref role="ehGHo" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
        </node>
      </node>
      <node concept="37vLTG" id="1bq_vIpCWEp" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="1bq_vIpCWEq" role="1tU5fm">
          <ref role="ehGHo" to="3nll:7wXJBPuINtT" resolve="MapType" />
        </node>
      </node>
      <node concept="3cqZAl" id="1bq_vIpCWEr" role="3clF45" />
      <node concept="3clFbS" id="1bq_vIpCWEs" role="3clF47">
        <node concept="3clFbJ" id="1bq_vIpCXmO" role="3cqZAp">
          <node concept="3clFbS" id="1bq_vIpCXmP" role="3clFbx">
            <node concept="3clFbF" id="1bq_vIpCZ2f" role="3cqZAp">
              <node concept="2OqwBi" id="1bq_vIpCZu9" role="3clFbG">
                <node concept="2OqwBi" id="1bq_vIpCZds" role="2Oq$k0">
                  <node concept="37vLTw" id="1bq_vIpCZ2d" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bq_vIpCWEp" resolve="newNode" />
                  </node>
                  <node concept="3TrEf2" id="1bq_vIpCZiF" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7wXJBPuINtW" resolve="keyType" />
                  </node>
                </node>
                <node concept="2oxUTD" id="1bq_vIpCZTQ" role="2OqNvi">
                  <node concept="1y4W85" id="1bq_vIpD2LA" role="2oxUTC">
                    <node concept="3cmrfG" id="1bq_vIpD2NW" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="1bq_vIpD0ix" role="1y566C">
                      <node concept="37vLTw" id="1bq_vIpD04f" role="2Oq$k0">
                        <ref role="3cqZAo" node="1bq_vIpCWEn" resolve="oldNode" />
                      </node>
                      <node concept="3Tsc0h" id="1bq_vIpD0r_" role="2OqNvi">
                        <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="1bq_vIpCXn0" role="3clFbw">
            <node concept="3cmrfG" id="1bq_vIpCXn1" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="1bq_vIpCXn2" role="3uHU7B">
              <node concept="37vLTw" id="1bq_vIpCXn3" role="2Oq$k0">
                <ref role="3cqZAo" node="1bq_vIpCWEn" resolve="oldNode" />
              </node>
              <node concept="2qgKlT" id="1bq_vIpCXn4" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:SXYyTVHlmk" resolve="typeCount" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1bq_vIpCXn5" role="3cqZAp">
          <node concept="3clFbS" id="1bq_vIpCXn6" role="3clFbx">
            <node concept="3clFbF" id="1bq_vIpD2Wg" role="3cqZAp">
              <node concept="2OqwBi" id="1bq_vIpD2Wh" role="3clFbG">
                <node concept="2OqwBi" id="1bq_vIpD2Wi" role="2Oq$k0">
                  <node concept="37vLTw" id="1bq_vIpD2Wj" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bq_vIpCWEp" resolve="newNode" />
                  </node>
                  <node concept="3TrEf2" id="1bq_vIpD2Wk" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:7wXJBPuINtY" resolve="valueType" />
                  </node>
                </node>
                <node concept="2oxUTD" id="1bq_vIpD2Wl" role="2OqNvi">
                  <node concept="1y4W85" id="1bq_vIpD2Wm" role="2oxUTC">
                    <node concept="3cmrfG" id="1bq_vIpD2Wn" role="1y58nS">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="1bq_vIpD2Wo" role="1y566C">
                      <node concept="37vLTw" id="1bq_vIpD2Wp" role="2Oq$k0">
                        <ref role="3cqZAo" node="1bq_vIpCWEn" resolve="oldNode" />
                      </node>
                      <node concept="3Tsc0h" id="1bq_vIpD2Wq" role="2OqNvi">
                        <ref role="3TtcxE" to="3nll:5SyewCbB1fd" resolve="actualTypes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="1bq_vIpCXnh" role="3clFbw">
            <node concept="3cmrfG" id="1bq_vIpCXni" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="1bq_vIpCXnj" role="3uHU7B">
              <node concept="37vLTw" id="1bq_vIpCXnk" role="2Oq$k0">
                <ref role="3cqZAo" node="1bq_vIpCWEn" resolve="oldNode" />
              </node>
              <node concept="2qgKlT" id="1bq_vIpCXnl" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:SXYyTVHlmk" resolve="typeCount" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1bq_vIpCWEA" role="1B3o_S" />
    </node>
    <node concept="1Qtc8_" id="29ZTnyH8eIh" role="IW6Ez">
      <node concept="3eGOoe" id="29ZTnyH8eIl" role="1Qtc8$" />
      <node concept="3c8P5G" id="29ZTnyH8eIo" role="1Qtc8A">
        <node concept="2kknPJ" id="29ZTnyH8eIK" role="3c8P5H">
          <ref role="2ZyFGn" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
        </node>
        <node concept="3c8PGw" id="29ZTnyH8eIq" role="3c8PHt">
          <node concept="3clFbS" id="29ZTnyH8eIr" role="2VODD2">
            <node concept="Jncv_" id="3aCsR_d59Eq" role="3cqZAp">
              <ref role="JncvD" to="3nll:4NUTY$DwDMX" resolve="ICollectionType" />
              <node concept="3c8USq" id="3aCsR_d7n5l" role="JncvB" />
              <node concept="3clFbS" id="3aCsR_d59Es" role="Jncv$">
                <node concept="3clFbF" id="3aCsR_d59Ke" role="3cqZAp">
                  <node concept="2OqwBi" id="3aCsR_d59K8" role="3clFbG">
                    <node concept="2WthIp" id="3aCsR_d59Kb" role="2Oq$k0" />
                    <node concept="2XshWL" id="3aCsR_d59Kd" role="2OqNvi">
                      <ref role="2WH_rO" node="3aCsR_d2Xrt" resolve="handleCollectionTransformations" />
                      <node concept="7Obwk" id="3aCsR_d7n63" role="2XxRq1" />
                      <node concept="Jnkvi" id="3aCsR_d7qu8" role="2XxRq1">
                        <ref role="1M0zk5" node="3aCsR_d59Et" resolve="collectionType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="3aCsR_d59Et" role="JncvA">
                <property role="TrG5h" value="collectionType" />
                <node concept="2jxLKc" id="3aCsR_d59Eu" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbH" id="3aCsR_d7qka" role="3cqZAp" />
            <node concept="Jncv_" id="3aCsR_d7qoK" role="3cqZAp">
              <ref role="JncvD" to="3nll:4Wa3rAG5JzH" resolve="ImportedType" />
              <node concept="3c8USq" id="3aCsR_d7qqm" role="JncvB" />
              <node concept="3clFbS" id="3aCsR_d7qoO" role="Jncv$">
                <node concept="3clFbF" id="3aCsR_d7qzM" role="3cqZAp">
                  <node concept="2OqwBi" id="3aCsR_d7qzG" role="3clFbG">
                    <node concept="2WthIp" id="3aCsR_d7qzJ" role="2Oq$k0" />
                    <node concept="2XshWL" id="3aCsR_d7qzL" role="2OqNvi">
                      <ref role="2WH_rO" node="3aCsR_d7nMT" resolve="handleImportTypeTransformations" />
                      <node concept="7Obwk" id="3aCsR_d7q$w" role="2XxRq1" />
                      <node concept="Jnkvi" id="3aCsR_d7q_$" role="2XxRq1">
                        <ref role="1M0zk5" node="3aCsR_d7qoQ" resolve="importType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="3aCsR_d7qoQ" role="JncvA">
                <property role="TrG5h" value="importType" />
                <node concept="2jxLKc" id="3aCsR_d7qoR" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbH" id="1bq_vIpD3oW" role="3cqZAp" />
            <node concept="Jncv_" id="1bq_vIpD3uQ" role="3cqZAp">
              <ref role="JncvD" to="3nll:7wXJBPuINtT" resolve="MapType" />
              <node concept="3c8USq" id="1bq_vIpD3x4" role="JncvB" />
              <node concept="3clFbS" id="1bq_vIpD3uU" role="Jncv$">
                <node concept="3clFbF" id="1bq_vIpD3__" role="3cqZAp">
                  <node concept="2OqwBi" id="1bq_vIpD3_v" role="3clFbG">
                    <node concept="2WthIp" id="1bq_vIpD3_y" role="2Oq$k0" />
                    <node concept="2XshWL" id="1bq_vIpD3_$" role="2OqNvi">
                      <ref role="2WH_rO" node="1bq_vIp_Q8$" resolve="handleMapTypeTransformations" />
                      <node concept="7Obwk" id="1bq_vIpD3Aj" role="2XxRq1" />
                      <node concept="Jnkvi" id="1bq_vIpD3AU" role="2XxRq1">
                        <ref role="1M0zk5" node="1bq_vIpD3uW" resolve="mapType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="1bq_vIpD3uW" role="JncvA">
                <property role="TrG5h" value="mapType" />
                <node concept="2jxLKc" id="1bq_vIpD3uX" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbH" id="3aCsR_d59Zu" role="3cqZAp" />
            <node concept="3clFbF" id="3aCsR_d5a2u" role="3cqZAp">
              <node concept="2OqwBi" id="3aCsR_d5a2v" role="3clFbG">
                <node concept="7Obwk" id="3aCsR_d5atE" role="2Oq$k0" />
                <node concept="1P9Npp" id="3aCsR_d5a2x" role="2OqNvi">
                  <node concept="3c8USq" id="3aCsR_d5auo" role="1P9ThW" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="29ZTnyH8eIf" role="22hAXT">
      <property role="TrG5h" value="DataTypeTransformationMenu" />
    </node>
  </node>
  <node concept="1h_SRR" id="29ZTnyInk_p">
    <property role="3GE5qa" value="typing" />
    <property role="TrG5h" value="GenericDataTypeDeletion_ActionMap" />
    <ref role="1h_SK9" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
    <node concept="1hA7zw" id="29ZTnyInk_q" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="29ZTnyInk_r" role="1hA7z_">
        <node concept="3clFbS" id="29ZTnyInk_s" role="2VODD2">
          <node concept="3cpWs8" id="29ZTnyInm3K" role="3cqZAp">
            <node concept="3cpWsn" id="29ZTnyInm3L" role="3cpWs9">
              <property role="TrG5h" value="selectedNode" />
              <node concept="3Tqbb2" id="29ZTnyInm3M" role="1tU5fm" />
              <node concept="2OqwBi" id="29ZTnyInm3N" role="33vP2m">
                <node concept="1Q80Hx" id="29ZTnyInm3O" role="2Oq$k0" />
                <node concept="liA8E" id="29ZTnyInm3P" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode()" resolve="getSelectedNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="29ZTnyInm3Q" role="3cqZAp">
            <node concept="3clFbS" id="29ZTnyInm3R" role="3clFbx">
              <node concept="3clFbJ" id="29ZTnyInm3S" role="3cqZAp">
                <node concept="2OqwBi" id="29ZTnyInm3T" role="3clFbw">
                  <node concept="37vLTw" id="29ZTnyInm3U" role="2Oq$k0">
                    <ref role="3cqZAo" node="29ZTnyInm3L" resolve="selectedNode" />
                  </node>
                  <node concept="2xy62i" id="29ZTnyInm3V" role="2OqNvi">
                    <node concept="1Q80Hx" id="29ZTnyInm3W" role="2xHN3q" />
                  </node>
                </node>
                <node concept="3clFbS" id="29ZTnyInm3X" role="3clFbx">
                  <node concept="3cpWs6" id="29ZTnyInm3Y" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbF" id="29ZTnyInngR" role="3cqZAp">
                <node concept="2OqwBi" id="29ZTnyInngS" role="3clFbG">
                  <node concept="37vLTw" id="29ZTnyInngT" role="2Oq$k0">
                    <ref role="3cqZAo" node="29ZTnyInm3L" resolve="selectedNode" />
                  </node>
                  <node concept="1P9Npp" id="29ZTnyInngU" role="2OqNvi">
                    <node concept="2ShNRf" id="29ZTnyInngV" role="1P9ThW">
                      <node concept="3zrR0B" id="29ZTnyInngW" role="2ShVmc">
                        <node concept="3Tqbb2" id="29ZTnyInngX" role="3zrR0E">
                          <ref role="ehGHo" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="29ZTnyInm43" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="29ZTnyInm44" role="3clFbw">
              <node concept="2OqwBi" id="29ZTnyInm45" role="3fr31v">
                <node concept="2OqwBi" id="29ZTnyInm46" role="2Oq$k0">
                  <node concept="37vLTw" id="29ZTnyInm47" role="2Oq$k0">
                    <ref role="3cqZAo" node="29ZTnyInm3L" resolve="selectedNode" />
                  </node>
                  <node concept="2yIwOk" id="29ZTnyInm48" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="29ZTnyInm49" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="29ZTnyInm4a" role="3cqZAp">
            <node concept="2OqwBi" id="29ZTnyInm4b" role="3clFbG">
              <node concept="37vLTw" id="29ZTnyInm4d" role="2Oq$k0">
                <ref role="3cqZAo" node="29ZTnyInm3L" resolve="selectedNode" />
              </node>
              <node concept="1P9Npp" id="29ZTnyInmjc" role="2OqNvi">
                <node concept="2ShNRf" id="29ZTnyInmjG" role="1P9ThW">
                  <node concept="3zrR0B" id="29ZTnyInnc6" role="2ShVmc">
                    <node concept="3Tqbb2" id="29ZTnyInncE" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="29ZTnyInkRK" role="jK8aL">
        <node concept="3clFbS" id="29ZTnyInkRL" role="2VODD2">
          <node concept="3clFbF" id="29ZTnyInkYG" role="3cqZAp">
            <node concept="2OqwBi" id="29ZTnyInlGE" role="3clFbG">
              <node concept="2OqwBi" id="29ZTnyInleT" role="2Oq$k0">
                <node concept="0IXxy" id="29ZTnyInkYF" role="2Oq$k0" />
                <node concept="2yIwOk" id="29ZTnyInlpA" role="2OqNvi" />
              </node>
              <node concept="2Zo12i" id="29ZTnyInlY_" role="2OqNvi">
                <node concept="chp4Y" id="29ZTnyInm2C" role="2Zo12j">
                  <ref role="cht4Q" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="4LpUh3UaizX">
    <property role="3GE5qa" value="dtoDerivation" />
    <ref role="aqKnT" to="3nll:4LpUh3SXzl5" resolve="IDtoDerivableReference" />
    <node concept="22hDWg" id="4LpUh3UaizY" role="22hAXT">
      <property role="TrG5h" value="IDtoDerivableReference_TransformationMenu" />
    </node>
    <node concept="1Qtc8_" id="4LpUh3Uai$0" role="IW6Ez">
      <node concept="3eGOoe" id="4LpUh3Uai$4" role="1Qtc8$" />
      <node concept="3c8P5G" id="4LpUh3Uai$7" role="1Qtc8A">
        <node concept="2kknPJ" id="4LpUh3Uai$v" role="3c8P5H">
          <ref role="2ZyFGn" to="3nll:4LpUh3SXzl5" resolve="IDtoDerivableReference" />
        </node>
        <node concept="3c8PGw" id="4LpUh3Uai$9" role="3c8PHt">
          <node concept="3clFbS" id="4LpUh3Uai$a" role="2VODD2">
            <node concept="Jncv_" id="3NXs7yoONNW" role="3cqZAp">
              <ref role="JncvD" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
              <node concept="7Obwk" id="3NXs7yoOPCO" role="JncvB" />
              <node concept="3clFbS" id="3NXs7yoONO0" role="Jncv$">
                <node concept="3clFbF" id="3NXs7yoOYDn" role="3cqZAp">
                  <node concept="2OqwBi" id="3NXs7yoP0Uc" role="3clFbG">
                    <node concept="2OqwBi" id="3NXs7yoOYN9" role="2Oq$k0">
                      <node concept="Jnkvi" id="3NXs7yoOYDm" role="2Oq$k0">
                        <ref role="1M0zk5" node="3NXs7yoONO2" resolve="derivation" />
                      </node>
                      <node concept="3TrEf2" id="3NXs7yoP0Km" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                      </node>
                    </node>
                    <node concept="2oxUTD" id="3NXs7yoP2Ri" role="2OqNvi">
                      <node concept="3c8USq" id="3NXs7yoP2S7" role="2oxUTC" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="3NXs7yoONO2" role="JncvA">
                <property role="TrG5h" value="derivation" />
                <node concept="2jxLKc" id="3NXs7yoONO3" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbH" id="3NXs7ynux2F" role="3cqZAp" />
            <node concept="Jncv_" id="3NXs7ynux66" role="3cqZAp">
              <ref role="JncvD" to="3nll:4LpUh3SXzl5" resolve="IDtoDerivableReference" />
              <node concept="7Obwk" id="3NXs7ynux7x" role="JncvB" />
              <node concept="3clFbS" id="3NXs7ynux6a" role="Jncv$">
                <node concept="3clFbJ" id="3NXs7ynuyqh" role="3cqZAp">
                  <node concept="3clFbS" id="3NXs7ynuyqj" role="3clFbx">
                    <node concept="3cpWs8" id="25wIjMsZHRD" role="3cqZAp">
                      <node concept="3cpWsn" id="25wIjMsZHRE" role="3cpWs9">
                        <property role="TrG5h" value="derivation" />
                        <node concept="3Tqbb2" id="25wIjMsZHMB" role="1tU5fm">
                          <ref role="ehGHo" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
                        </node>
                        <node concept="2OqwBi" id="25wIjMsZHRF" role="33vP2m">
                          <node concept="7Obwk" id="25wIjMsZHRG" role="2Oq$k0" />
                          <node concept="2Xjw5R" id="25wIjMsZHRH" role="2OqNvi">
                            <node concept="1xMEDy" id="25wIjMsZHRI" role="1xVPHs">
                              <node concept="chp4Y" id="25wIjMsZHRJ" role="ri$Ld">
                                <ref role="cht4Q" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
                              </node>
                            </node>
                            <node concept="1xIGOp" id="25wIjMsZHRK" role="1xVPHs" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="25wIjMsZLBg" role="3cqZAp">
                      <node concept="2OqwBi" id="25wIjMsZNzy" role="3clFbG">
                        <node concept="37vLTw" id="25wIjMsZLBe" role="2Oq$k0">
                          <ref role="3cqZAo" node="25wIjMsZHRE" resolve="derivation" />
                        </node>
                        <node concept="2qgKlT" id="25wIjMsZQLe" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:3NXs7ypg5IO" resolve="clearIgnoredVariables" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="25wIjMsZR3o" role="3cqZAp">
                      <node concept="2OqwBi" id="25wIjMsZRdH" role="3clFbG">
                        <node concept="37vLTw" id="25wIjMsZR3m" role="2Oq$k0">
                          <ref role="3cqZAo" node="25wIjMsZHRE" resolve="derivation" />
                        </node>
                        <node concept="2qgKlT" id="25wIjMsZRsR" role="2OqNvi">
                          <ref role="37wK5l" to="sx7w:1pnQbpDKcyV" resolve="clearUsedDerivationRules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="3NXs7ynuyUQ" role="3clFbw">
                    <node concept="2OqwBi" id="3NXs7ynuy$A" role="3uHU7B">
                      <node concept="Jnkvi" id="3NXs7ynu$Ly" role="2Oq$k0">
                        <ref role="1M0zk5" node="3NXs7ynux6c" resolve="reference" />
                      </node>
                      <node concept="2qgKlT" id="3NXs7ynuyHy" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:4LpUh3T0tIy" resolve="getDtoDerivable" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3NXs7ynu_12" role="3uHU7w">
                      <node concept="3c8USq" id="3NXs7ynu$W6" role="2Oq$k0" />
                      <node concept="2qgKlT" id="3NXs7ynu_3h" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:4LpUh3T0tIy" resolve="getDtoDerivable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4LpUh3Uc$5U" role="3cqZAp">
                  <node concept="2OqwBi" id="4LpUh3Uc$fH" role="3clFbG">
                    <node concept="7Obwk" id="4LpUh3Uc$6I" role="2Oq$k0" />
                    <node concept="1P9Npp" id="4LpUh3Uc$o_" role="2OqNvi">
                      <node concept="3c8USq" id="4LpUh3Uc$pe" role="1P9ThW" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="3NXs7ynux6c" role="JncvA">
                <property role="TrG5h" value="reference" />
                <node concept="2jxLKc" id="3NXs7ynux6d" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqGtN" id="4LpUh3Uc$r0" role="2jZA2a">
          <node concept="3cqJkl" id="4LpUh3Uc$r1" role="3cqGtW">
            <node concept="3clFbS" id="4LpUh3Uc$r2" role="2VODD2">
              <node concept="1_3QMa" id="4LpUh3Uc_0J" role="3cqZAp">
                <node concept="3clFbS" id="4LpUh3Uc_2A" role="1prKM_">
                  <node concept="3cpWs6" id="4LpUh3Uc_eL" role="3cqZAp">
                    <node concept="Xl_RD" id="4LpUh3Uc_2z" role="3cqZAk">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
                <node concept="1pnPoh" id="4LpUh3Uc_hO" role="1_3QMm">
                  <node concept="3gn64h" id="4LpUh3Uc_hP" role="1pnPq6">
                    <ref role="3gnhBz" to="3nll:4Wa3rAG5JzU" resolve="ValueObjectReference" />
                  </node>
                  <node concept="3clFbS" id="4LpUh3Uc_hQ" role="1pnPq1">
                    <node concept="3cpWs6" id="4LpUh3Uh6Ax" role="3cqZAp">
                      <node concept="Xl_RD" id="4LpUh3Uc_tk" role="3cqZAk">
                        <property role="Xl_RC" value="value object" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1pnPoh" id="4LpUh3Uc_jO" role="1_3QMm">
                  <node concept="3gn64h" id="4LpUh3Uc_jQ" role="1pnPq6">
                    <ref role="3gnhBz" to="3nll:4Wa3rAG5J$0" resolve="EntityReference" />
                  </node>
                  <node concept="3clFbS" id="4LpUh3Uc_jS" role="1pnPq1">
                    <node concept="3cpWs6" id="4LpUh3Uh6NJ" role="3cqZAp">
                      <node concept="Xl_RD" id="4LpUh3Uc_uM" role="3cqZAk">
                        <property role="Xl_RC" value="entity" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1pnPoh" id="4LpUh3Uc_r9" role="1_3QMm">
                  <node concept="3gn64h" id="4LpUh3Uc_rb" role="1pnPq6">
                    <ref role="3gnhBz" to="3nll:4Wa3rAG5JzM" resolve="AggregateRootReference" />
                  </node>
                  <node concept="3clFbS" id="4LpUh3Uc_rd" role="1pnPq1">
                    <node concept="3cpWs6" id="4LpUh3Uh77Z" role="3cqZAp">
                      <node concept="Xl_RD" id="4LpUh3Uc_wh" role="3cqZAk">
                        <property role="Xl_RC" value="aggregate root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4LpUh3Uh7nM" role="1_3QMn">
                  <node concept="3jrdc4" id="4LpUh3Uh7h2" role="2Oq$k0" />
                  <node concept="3j5asz" id="4LpUh3Uh7pI" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4LpUh3UZanV">
    <property role="3GE5qa" value="variable.parameter" />
    <ref role="1XX52x" to="3nll:7fqk8p3V6WK" resolve="ParameterReference" />
    <node concept="1iCGBv" id="4LpUh3UZanX" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:7fqk8p3V6WL" resolve="parameter" />
      <node concept="1sVBvm" id="4LpUh3UZanZ" role="1sWHZn">
        <node concept="3F0A7n" id="4LpUh3UZaux" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPxyj" id="4LpUh3WpvyK" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4LpUh3UZau$">
    <property role="3GE5qa" value="variable.property" />
    <ref role="1XX52x" to="3nll:7fqk8p3V84L" resolve="PropertyReference" />
    <node concept="1iCGBv" id="4LpUh3UZauA" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:7fqk8p3V84M" resolve="property" />
      <node concept="1sVBvm" id="4LpUh3UZauC" role="1sWHZn">
        <node concept="3F0A7n" id="4LpUh3UZauJ" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPxyj" id="4LpUh3WpvyI" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4LpUh3VBN_1">
    <property role="3GE5qa" value="variable" />
    <ref role="1XX52x" to="3nll:4LpUh3UZauM" resolve="IVariableReference" />
    <node concept="3F0ifn" id="4LpUh3VBN_3" role="2wV5jI">
      <property role="3F0ifm" value="" />
      <property role="ilYzB" value="&lt;variable&gt;" />
      <node concept="VPxyj" id="4LpUh3Y8eUs" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="A1WHu" id="5QsWOhXAUPD" role="3vIgyS">
        <ref role="A1WHt" node="5QsWOhWCkpD" resolve="IVariableReference_IgnoredVariables_TransformationMenu" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="4LpUh3VYl4i">
    <property role="3GE5qa" value="typing" />
    <ref role="aqKnT" to="3nll:4LpUh3VYkXq" resolve="SubstitudeDataType" />
    <node concept="22hDWj" id="4LpUh3VYl4j" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="4LpUh3XLV7B">
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <ref role="1XX52x" to="3nll:1bq_vIpSfA4" resolve="DtoDataTypeRule" />
    <node concept="3EZMnI" id="4LpUh3XLV7D" role="2wV5jI">
      <node concept="3F0A7n" id="E4RYE92Uho" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:5QsWOhW3TSQ" resolve="usage" />
        <node concept="Vb9p2" id="E4RYE92UkK" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
      </node>
      <node concept="3F1sOY" id="4LpUh3XLV8z" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:4LpUh3XLV8u" resolve="fromType" />
      </node>
      <node concept="3F0ifn" id="4LpUh3XLV8Q" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="3F1sOY" id="4LpUh3XLV94" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:4LpUh3XLV8w" resolve="toType" />
      </node>
      <node concept="3F0ifn" id="3L7_qKLmuMm" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="5SyewCboVA6" resolve="LeftBrace" />
      </node>
      <node concept="3F0A7n" id="3L7_qKLmuNo" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:3L7_qKL5B4u" resolve="applicability" />
      </node>
      <node concept="3F0ifn" id="3L7_qKLmuNG" role="3EZMnx">
        <property role="3F0ifm" value="match" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="3L7_qKLmuMA" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="4LpUh3XLV7G" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4LpUh3XOknX">
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <ref role="1XX52x" to="3nll:4LpUh3XOknS" resolve="DtoDataTypeRuleContainer" />
    <node concept="3EZMnI" id="4LpUh3XOknZ" role="2wV5jI">
      <node concept="3F0ifn" id="4LpUh3XOko9" role="3EZMnx">
        <property role="3F0ifm" value="dto" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="4LpUh3XOkow" role="3EZMnx">
        <property role="3F0ifm" value="type rules" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="4LpUh3XOkoE" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="4LpUh3XOkoZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4LpUh3XOkoQ" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:4LpUh3XOknV" resolve="components" />
        <node concept="2iRkQZ" id="4LpUh3XOkpt" role="2czzBx" />
        <node concept="lj46D" id="4LpUh3XOkpk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="4LpUh3XOkpp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4LpUh3XOkpa" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
      <node concept="l2Vlx" id="4LpUh3XOko2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3NXs7ynXoOd">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <ref role="1XX52x" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
    <node concept="3EZMnI" id="3NXs7ynXoOf" role="2wV5jI">
      <node concept="3F0A7n" id="5QsWOhW3Uz4" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:5QsWOhW3TSQ" resolve="usage" />
        <node concept="Vb9p2" id="5QsWOhW3Z6C" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
        <node concept="A1WHu" id="E4RYE8Oi13" role="3vIgyS">
          <ref role="A1WHt" node="3NXs7yr3ezb" resolve="DtoFlatDerivationRule_NameConvention_TransformationMenu" />
        </node>
        <node concept="2SqB2G" id="E4RYE96AQb" role="2SqHTX">
          <property role="TrG5h" value="usageCellId" />
        </node>
      </node>
      <node concept="3EZMnI" id="3NXs7yobJly" role="3EZMnx">
        <ref role="1ERwB7" node="3NXs7yqZLUa" resolve="DtoFlatteningRule_DeleteNameConvention_ActionMap" />
        <node concept="VPM3Z" id="3NXs7yobJl$" role="3F10Kt" />
        <node concept="3F0ifn" id="3NXs7yobJjR" role="3EZMnx">
          <property role="3F0ifm" value="with" />
          <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
        </node>
        <node concept="3F0A7n" id="3NXs7yqZLTd" role="3EZMnx">
          <ref role="1NtTu8" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
          <node concept="Vb9p2" id="3NXs7yqZLU7" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
        <node concept="PMmxH" id="3NXs7yqMdfy" role="3EZMnx">
          <ref role="PMmxG" node="3L7_qKKKJVY" resolve="IComponentWithNamePlaceholder_StringLiteral_EditorComponent" />
        </node>
        <node concept="l2Vlx" id="3NXs7yobJlB" role="2iSdaV" />
        <node concept="2SqB2G" id="3NXs7yp9pCP" role="2SqHTX">
          <property role="TrG5h" value="nameConventionBlockId" />
        </node>
        <node concept="pkWqt" id="3NXs7yqZKkY" role="pqm2j">
          <node concept="3clFbS" id="3NXs7yqZKkZ" role="2VODD2">
            <node concept="3clFbF" id="3NXs7yqZKmg" role="3cqZAp">
              <node concept="3fqX7Q" id="3NXs7yqZLJX" role="3clFbG">
                <node concept="2OqwBi" id="3NXs7yqZLJZ" role="3fr31v">
                  <node concept="2OqwBi" id="3NXs7yqZLK0" role="2Oq$k0">
                    <node concept="pncrf" id="3NXs7yqZLK1" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3NXs7yqZLK2" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
                    </node>
                  </node>
                  <node concept="21noJN" id="3NXs7yqZLK3" role="2OqNvi">
                    <node concept="21nZrQ" id="3NXs7yqZLK4" role="21noJM">
                      <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3NXs7yobJkl" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F1sOY" id="3NXs7ynXoOC" role="3EZMnx">
        <property role="1$x2rV" value="&lt;reference&gt;" />
        <ref role="1NtTu8" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
        <node concept="A1WHu" id="3NXs7yo46I5" role="3vIgyS">
          <ref role="A1WHt" node="4LpUh3UaizX" resolve="IDtoDerivableReference_TransformationMenu" />
        </node>
        <node concept="1I8cUB" id="3NXs7yoSoQL" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
      </node>
      <node concept="3F0ifn" id="3NXs7ypIK25" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="11L4FC" id="3NXs7ypIK4j" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="3NXs7ypIK4r" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="3NXs7ypIK4s" role="3n$kyP">
            <node concept="3clFbS" id="3NXs7ypIK4t" role="2VODD2">
              <node concept="3clFbF" id="3NXs7ypIK4u" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7ypIK4w" role="3clFbG">
                  <node concept="pncrf" id="3NXs7ypIK4x" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3NXs7ypIK4y" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="E4RYE9RuJi" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9RuK9" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9RuKa" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9RuN8" role="3cqZAp">
                <node concept="22lmx$" id="E4RYE9RvRt" role="3clFbG">
                  <node concept="2OqwBi" id="E4RYE9RvTk" role="3uHU7w">
                    <node concept="pncrf" id="E4RYE9RvS$" role="2Oq$k0" />
                    <node concept="3TrcHB" id="E4RYE9RvV2" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="E4RYE9Rv8f" role="3uHU7B">
                    <node concept="pncrf" id="E4RYE9RuN7" role="2Oq$k0" />
                    <node concept="3TrcHB" id="E4RYE9RvrX" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="3NXs7ypIKj6" role="2SqHTX">
          <property role="TrG5h" value="spaceAfterDerivableCellId" />
        </node>
        <node concept="A1WHu" id="3NXs7ypIKkI" role="3vIgyS">
          <ref role="A1WHt" node="3NXs7ypxad6" resolve="IDtoDerivation_IgnoredVariablesTransformationMenu" />
        </node>
      </node>
      <node concept="PMmxH" id="E4RYE9NNHx" role="3EZMnx">
        <ref role="PMmxG" node="E4RYE9NMY4" resolve="DtoFlatteningRule_DerivationLayout_EditorComponent" />
      </node>
      <node concept="l2Vlx" id="3NXs7ynXoOi" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3NXs7yoi$Ep">
    <property role="3GE5qa" value="dtoDerivation" />
    <ref role="1XX52x" to="3nll:4LpUh3SXzl5" resolve="IDtoDerivableReference" />
    <node concept="3F0ifn" id="3NXs7yoi$Er" role="2wV5jI">
      <property role="3F0ifm" value="" />
      <property role="ilYzB" value="&lt;reference&gt;" />
      <node concept="VPxyj" id="3NXs7yoi$Eu" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="2SqB2G" id="3NXs7ypjMya" role="2SqHTX">
        <property role="TrG5h" value="derivableReferencePlaceholderCellId" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="3NXs7ypg5ie">
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="IDtoDerivation_IgnoredVariables_EditorComponent" />
    <ref role="1XX52x" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="3EZMnI" id="3NXs7ypg5ig" role="2wV5jI">
      <ref role="1ERwB7" node="3NXs7ypgfzC" resolve="IDtoDerivation_DeleteIgnoredVariables_Action_map" />
      <node concept="VPM3Z" id="3NXs7ypg5ih" role="3F10Kt" />
      <node concept="3F0ifn" id="3NXs7ypg5ii" role="3EZMnx">
        <property role="3F0ifm" value="ignore" />
        <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="3NXs7ypg5ij" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" node="5SyewCboVA6" resolve="LeftBrace" />
        <node concept="3mYdg7" id="3NXs7ypg5iA" role="3F10Kt">
          <property role="1413C4" value="ignoredVariablesBrace" />
        </node>
        <node concept="ljvvj" id="E4RYE9txTF" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9txTG" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9txTH" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9txTI" role="3cqZAp">
                <node concept="2OqwBi" id="E4RYE9txTJ" role="3clFbG">
                  <node concept="pncrf" id="E4RYE9txTK" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9txTL" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7z5h98TrECo" resolve="hasVerticallyAlignedIgnoredVariables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="3NXs7ypxdeo" role="2SqHTX">
          <property role="TrG5h" value="ignoredVariablesStartBraceCellId" />
        </node>
      </node>
      <node concept="3F2HdR" id="3NXs7ypg5ik" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
        <node concept="pj6Ft" id="E4RYE9hXkz" role="3F10Kt" />
        <node concept="lj46D" id="E4RYE9hXk$" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9hXk_" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9hXkA" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9hXkB" role="3cqZAp">
                <node concept="2OqwBi" id="E4RYE9hXkC" role="3clFbG">
                  <node concept="pncrf" id="E4RYE9hXkD" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9hXkE" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7z5h98TrECo" resolve="hasVerticallyAlignedIgnoredVariables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="E4RYE9hXkF" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9hXkG" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9hXkH" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9hXkI" role="3cqZAp">
                <node concept="2OqwBi" id="E4RYE9hXkJ" role="3clFbG">
                  <node concept="pncrf" id="E4RYE9hXkK" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9hXkL" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7z5h98TrECo" resolve="hasVerticallyAlignedIgnoredVariables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="3NXs7ypg5il" role="2czzBx" />
        <node concept="A1WHu" id="5QsWOhWNOhi" role="3vIgyS">
          <ref role="A1WHt" node="5QsWOhWCkpD" resolve="IVariableReference_IgnoredVariables_TransformationMenu" />
        </node>
        <node concept="3F0ifn" id="5QsWOhWWhCx" role="2czzBI">
          <property role="ilYzB" value="&lt;&lt; ... &gt;&gt;" />
          <node concept="A1WHu" id="5QsWOhWZcI3" role="3vIgyS">
            <ref role="A1WHt" node="5QsWOhWWhpz" resolve="IDtoDerivition_IgnoredVariablesTransformationMenu" />
          </node>
        </node>
        <node concept="2w$q5c" id="7z5h98TAWYT" role="78xua" />
        <node concept="pkWqt" id="E4RYE9hXI2" role="1p_IA6">
          <node concept="3clFbS" id="E4RYE9hXI3" role="2VODD2">
            <node concept="3clFbF" id="E4RYE9hXSS" role="3cqZAp">
              <node concept="2OqwBi" id="E4RYE9hY8P" role="3clFbG">
                <node concept="pncrf" id="E4RYE9hXSR" role="2Oq$k0" />
                <node concept="3TrcHB" id="E4RYE9hYex" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:7z5h98TrECo" resolve="hasVerticallyAlignedIgnoredVariables" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="tppnM" id="E4RYE9hYqa" role="sWeuL">
          <node concept="ljvvj" id="E4RYE9hYyB" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="E4RYE9hYyC" role="3n$kyP">
              <node concept="3clFbS" id="E4RYE9hYyD" role="2VODD2">
                <node concept="3clFbF" id="E4RYE9hYyE" role="3cqZAp">
                  <node concept="2OqwBi" id="E4RYE9hYyF" role="3clFbG">
                    <node concept="pncrf" id="E4RYE9hYyG" role="2Oq$k0" />
                    <node concept="3TrcHB" id="E4RYE9hYyH" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:7z5h98TrECo" resolve="hasVerticallyAlignedIgnoredVariables" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3NXs7ypg5im" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
        <node concept="3mYdg7" id="3NXs7ypg5iC" role="3F10Kt">
          <property role="1413C4" value="ignoredVariablesBrace" />
        </node>
        <node concept="A1WHu" id="3NXs7yqd9fA" role="3vIgyS">
          <ref role="A1WHt" node="3NXs7yq2OWU" resolve="IDtoDerivable_UseDerivationRules_TransformationMenu" />
        </node>
        <node concept="2SqB2G" id="3NXs7yqgw3Q" role="2SqHTX">
          <property role="TrG5h" value="ignoredVariablesRightBraceCellId" />
        </node>
      </node>
      <node concept="l2Vlx" id="3NXs7ypg5in" role="2iSdaV" />
      <node concept="2SqB2G" id="3NXs7ypg5iw" role="2SqHTX">
        <property role="TrG5h" value="ignoredVariablesCellId" />
      </node>
      <node concept="pkWqt" id="3NXs7ypgeCg" role="pqm2j">
        <node concept="3clFbS" id="3NXs7ypgeCh" role="2VODD2">
          <node concept="3clFbF" id="3NXs7ypgeJo" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7ypgeZ_" role="3clFbG">
              <node concept="pncrf" id="3NXs7ypgeJn" role="2Oq$k0" />
              <node concept="3TrcHB" id="3NXs7ypgfeE" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3NXs7ypgfzC">
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="IDtoDerivation_DeleteIgnoredVariables_Action_map" />
    <ref role="1h_SK9" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="1hA7zw" id="3NXs7ypgfzD" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="3NXs7ypgfzE" role="1hA7z_">
        <node concept="3clFbS" id="3NXs7ypgfzF" role="2VODD2">
          <node concept="3clFbJ" id="3NXs7ypggnM" role="3cqZAp">
            <node concept="3clFbS" id="3NXs7ypggnO" role="3clFbx">
              <node concept="3cpWs6" id="3NXs7ypggRT" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="3NXs7ypggxZ" role="3clFbw">
              <node concept="0IXxy" id="3NXs7ypggoh" role="2Oq$k0" />
              <node concept="2xy62i" id="3NXs7ypggGz" role="2OqNvi">
                <node concept="1Q80Hx" id="3NXs7ypggNf" role="2xHN3q" />
                <node concept="2TlHUq" id="3NXs7ypggOl" role="3a7HXU">
                  <ref role="2TlMyj" node="3NXs7ypg5iw" resolve="ignoredVariablesCellId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3NXs7ypggWg" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7ypggYE" role="3clFbG">
              <node concept="0IXxy" id="3NXs7ypggWf" role="2Oq$k0" />
              <node concept="2qgKlT" id="3NXs7ypggZM" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3NXs7ypgbbL" resolve="resetIgnoredVariables" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3NXs7ypIIhB" role="3cqZAp" />
          <node concept="Jncv_" id="3NXs7ypIIpq" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            <node concept="0IXxy" id="3NXs7ypIIqE" role="JncvB" />
            <node concept="3clFbS" id="3NXs7ypIIpu" role="Jncv$">
              <node concept="3clFbF" id="3NXs7ypIIu_" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7ypIIGv" role="3clFbG">
                  <node concept="Jnkvi" id="3NXs7ypIIu$" role="2Oq$k0">
                    <ref role="1M0zk5" node="3NXs7ypIIpw" resolve="dto" />
                  </node>
                  <node concept="1OKiuA" id="3NXs7ypIJ0$" role="2OqNvi">
                    <node concept="1Q80Hx" id="3NXs7ypIJ1k" role="lBI5i" />
                    <node concept="2TlHUq" id="3NXs7ypIJ6i" role="lGT1i">
                      <ref role="2TlMyj" node="3NXs7ypIKms" resolve="spaceAfterDerivableCellId" />
                    </node>
                    <node concept="3cmrfG" id="3NXs7ypIKCP" role="3dN3m$">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3NXs7ypIIpw" role="JncvA">
              <property role="TrG5h" value="dto" />
              <node concept="2jxLKc" id="3NXs7ypIIpx" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="3NXs7ypIJ94" role="3cqZAp" />
          <node concept="Jncv_" id="3NXs7ypIJi2" role="3cqZAp">
            <ref role="JncvD" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
            <node concept="0IXxy" id="3NXs7ypIJjK" role="JncvB" />
            <node concept="3clFbS" id="3NXs7ypIJi6" role="Jncv$">
              <node concept="3clFbF" id="3NXs7ypIKEk" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7ypIKEl" role="3clFbG">
                  <node concept="Jnkvi" id="3NXs7ypIKEm" role="2Oq$k0">
                    <ref role="1M0zk5" node="3NXs7ypIJi8" resolve="flatDerivable" />
                  </node>
                  <node concept="1OKiuA" id="3NXs7ypIKEn" role="2OqNvi">
                    <node concept="1Q80Hx" id="3NXs7ypIKEo" role="lBI5i" />
                    <node concept="2TlHUq" id="3NXs7ypIKEp" role="lGT1i">
                      <ref role="2TlMyj" node="3NXs7ypIKj6" resolve="spaceAfterDerivableCellId" />
                    </node>
                    <node concept="3cmrfG" id="3NXs7ypIKEq" role="3dN3m$">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3NXs7ypIJi8" role="JncvA">
              <property role="TrG5h" value="flatDerivable" />
              <node concept="2jxLKc" id="3NXs7ypIJi9" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="3NXs7ypgfzZ" role="jK8aL">
        <node concept="3clFbS" id="3NXs7ypgf$0" role="2VODD2">
          <node concept="3clFbF" id="3NXs7ypgfGB" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7ypgfSN" role="3clFbG">
              <node concept="0IXxy" id="3NXs7ypgfGA" role="2Oq$k0" />
              <node concept="3TrcHB" id="3NXs7ypgg3w" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3NXs7ypj_5b">
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="Dto_DerivedFromBlockDeletion_ActionMap" />
    <ref role="1h_SK9" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    <node concept="1hA7zw" id="3NXs7ypj_5c" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="3NXs7ypj_5d" role="1hA7z_">
        <node concept="3clFbS" id="3NXs7ypj_5e" role="2VODD2">
          <node concept="3clFbJ" id="3NXs7ypjC_j" role="3cqZAp">
            <node concept="3clFbS" id="3NXs7ypjC_l" role="3clFbx">
              <node concept="3cpWs6" id="3NXs7ypjCGt" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="3NXs7ypjCA2" role="3clFbw">
              <node concept="0IXxy" id="3NXs7ypjC_N" role="2Oq$k0" />
              <node concept="2xy62i" id="3NXs7ypjCBd" role="2OqNvi">
                <node concept="1Q80Hx" id="3NXs7ypjCBN" role="2xHN3q" />
                <node concept="2TlHUq" id="3NXs7ypjCCT" role="3a7HXU">
                  <ref role="2TlMyj" node="4LpUh3WpvyN" resolve="derivedFromBlockCellId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3NXs7ypjGcW" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7ypjGra" role="3clFbG">
              <node concept="0IXxy" id="3NXs7ypjGcV" role="2Oq$k0" />
              <node concept="2qgKlT" id="3NXs7ypjGIT" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:3NXs7ypjFaC" resolve="resetDerivedFromBlock" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3NXs7yptP0j" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7yptPeK" role="3clFbG">
              <node concept="0IXxy" id="3NXs7yptP0i" role="2Oq$k0" />
              <node concept="1OKiuA" id="3NXs7yptPyd" role="2OqNvi">
                <node concept="1Q80Hx" id="3NXs7yptPyR" role="lBI5i" />
                <node concept="2TlHUq" id="3NXs7yptPF7" role="lGT1i">
                  <ref role="2TlMyj" node="3NXs7yptOJO" resolve="constructorRightBraceCellId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="3NXs7ypj_5y" role="jK8aL">
        <node concept="3clFbS" id="3NXs7ypj_5z" role="2VODD2">
          <node concept="3clFbF" id="3NXs7ypjBJW" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7ypjC4V" role="3clFbG">
              <node concept="0IXxy" id="3NXs7ypjBJV" role="2Oq$k0" />
              <node concept="3TrcHB" id="3NXs7ypjCsI" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7ypj_ap" resolve="showDerivedFromBlock" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="3NXs7ypxad6">
    <property role="3GE5qa" value="dto" />
    <ref role="aqKnT" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="1Qtc8_" id="3NXs7ypxad9" role="IW6Ez">
      <node concept="mvV$s" id="3NXs7yqtYe6" role="1Qtc8A">
        <node concept="A1WHu" id="3NXs7yqtYg4" role="A14EM">
          <ref role="A1WHt" node="3NXs7yq2OWU" resolve="IDtoDerivable_UseDerivationRules_TransformationMenu" />
        </node>
      </node>
      <node concept="3cWJ9i" id="3NXs7ypxadd" role="1Qtc8$">
        <node concept="CtIbL" id="3NXs7ypxadf" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
        <node concept="CtIbL" id="3NXs7yqng2l" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="IWgqT" id="3NXs7ypxadj" role="1Qtc8A">
        <node concept="1hCUdq" id="3NXs7ypxadk" role="1hCUd6">
          <node concept="3clFbS" id="3NXs7ypxadl" role="2VODD2">
            <node concept="3clFbF" id="3NXs7ypxalt" role="3cqZAp">
              <node concept="Xl_RD" id="3NXs7ypxals" role="3clFbG">
                <property role="Xl_RC" value="ignore" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3NXs7ypxadm" role="IWgqQ">
          <node concept="3clFbS" id="3NXs7ypxadn" role="2VODD2">
            <node concept="3clFbF" id="3NXs7ypxbdN" role="3cqZAp">
              <node concept="2OqwBi" id="3NXs7ypxcab" role="3clFbG">
                <node concept="2OqwBi" id="3NXs7ypxbrJ" role="2Oq$k0">
                  <node concept="7Obwk" id="3NXs7ypxbdM" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3NXs7ypxbIX" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
                  </node>
                </node>
                <node concept="tyxLq" id="3NXs7ypxcwn" role="2OqNvi">
                  <node concept="3clFbT" id="3NXs7ypxcx1" role="tz02z">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3NXs7ypxczV" role="3cqZAp">
              <node concept="2OqwBi" id="3NXs7ypxcMf" role="3clFbG">
                <node concept="7Obwk" id="3NXs7ypxczU" role="2Oq$k0" />
                <node concept="1OKiuA" id="3NXs7ypxd5v" role="2OqNvi">
                  <node concept="1Q80Hx" id="3NXs7ypxd69" role="lBI5i" />
                  <node concept="2TlHUq" id="3NXs7ypxdeq" role="lGT1i">
                    <ref role="2TlMyj" node="3NXs7ypxdeo" resolve="ignoredVariablesStartBraceCellId" />
                  </node>
                  <node concept="3cmrfG" id="3NXs7ypxdfz" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="3NXs7ypxamK" role="2jiSrf">
          <node concept="3clFbS" id="3NXs7ypxamL" role="2VODD2">
            <node concept="3clFbF" id="3NXs7ypxatZ" role="3cqZAp">
              <node concept="3fqX7Q" id="3NXs7ypxbab" role="3clFbG">
                <node concept="2OqwBi" id="3NXs7ypxbad" role="3fr31v">
                  <node concept="7Obwk" id="3NXs7ypxbae" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3NXs7ypxbaf" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="3NXs7ypxad7" role="22hAXT">
      <property role="TrG5h" value="IDtoDerivation_IgnoredVariablesTransformationMenu" />
    </node>
  </node>
  <node concept="3ICUPy" id="3NXs7yq2OWU">
    <property role="3GE5qa" value="dto" />
    <ref role="aqKnT" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="1Qtc8_" id="3NXs7yq2OWX" role="IW6Ez">
      <node concept="3cWJ9i" id="3NXs7yq2OX1" role="1Qtc8$">
        <node concept="CtIbL" id="3NXs7yq2OX3" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="1GhOrh" id="3NXs7yq2PbA" role="1Qtc8A">
        <node concept="1GhMSn" id="3NXs7yq2PbB" role="1GhOrs">
          <node concept="3clFbS" id="3NXs7yq2PbC" role="2VODD2">
            <node concept="3clFbF" id="3NXs7yq2Pkx" role="3cqZAp">
              <node concept="2ShNRf" id="3NXs7yq2Pkv" role="3clFbG">
                <node concept="Tc6Ow" id="3NXs7yq2Qcw" role="2ShVmc">
                  <node concept="17QB3L" id="3NXs7yq2Ras" role="HW$YZ" />
                  <node concept="Xl_RD" id="3NXs7yq2S4q" role="HW$Y0">
                    <property role="Xl_RC" value="use rules" />
                  </node>
                  <node concept="Xl_RD" id="3NXs7yq2S7b" role="HW$Y0">
                    <property role="Xl_RC" value="rules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="3NXs7yq2Sbo" role="1GhOri">
          <node concept="1hCUdq" id="3NXs7yq2Sbq" role="1hCUd6">
            <node concept="3clFbS" id="3NXs7yq2Sbs" role="2VODD2">
              <node concept="3clFbF" id="3NXs7yq2ShY" role="3cqZAp">
                <node concept="2ZBlsa" id="3NXs7yqtXLj" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="3NXs7yq2Sbu" role="IWgqQ">
            <node concept="3clFbS" id="3NXs7yq2Sbw" role="2VODD2">
              <node concept="3clFbF" id="3NXs7yq2TaB" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7yq2TVp" role="3clFbG">
                  <node concept="tyxLq" id="3NXs7yq2UhD" role="2OqNvi">
                    <node concept="3clFbT" id="3NXs7yq2Ulg" role="tz02z">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3NXs7yqd9aP" role="2Oq$k0">
                    <node concept="7Obwk" id="3NXs7yqd9aS" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3NXs7yqd9aT" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3NXs7yqxkvt" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7yqxkXl" role="3clFbG">
                  <node concept="7Obwk" id="3NXs7yqxkvs" role="2Oq$k0" />
                  <node concept="1OKiuA" id="3NXs7yqxlin" role="2OqNvi">
                    <node concept="1Q80Hx" id="3NXs7yqxljd" role="lBI5i" />
                    <node concept="2TlHUq" id="3NXs7yqxlBG" role="lGT1i">
                      <ref role="2TlMyj" node="5QsWOhWpHeO" resolve="derivationRulesLeftBraceCellId" />
                    </node>
                    <node concept="3cmrfG" id="3NXs7yqxlE5" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="3NXs7yq2SiE" role="2jiSrf">
            <node concept="3clFbS" id="3NXs7yq2SiF" role="2VODD2">
              <node concept="3clFbF" id="5QsWOhWpNw7" role="3cqZAp">
                <node concept="3fqX7Q" id="5QsWOhWpNXt" role="3clFbG">
                  <node concept="2OqwBi" id="5QsWOhWpNXv" role="3fr31v">
                    <node concept="7Obwk" id="5QsWOhWpNXw" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5QsWOhWpNXx" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="3NXs7yq2Pfk" role="2ZBHrp" />
      </node>
    </node>
    <node concept="22hDWg" id="3NXs7yq2OWV" role="22hAXT">
      <property role="TrG5h" value="IDtoDerivable_UseDerivationRules_TransformationMenu" />
    </node>
  </node>
  <node concept="1h_SRR" id="3NXs7yqguJD">
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="IDtoDerivation_DerivationRulesDeletion_ActionMap" />
    <ref role="1h_SK9" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="1hA7zw" id="3NXs7yqguVc" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="3NXs7yqguVd" role="1hA7z_">
        <node concept="3clFbS" id="3NXs7yqguVe" role="2VODD2">
          <node concept="3clFbJ" id="3NXs7yqgvNV" role="3cqZAp">
            <node concept="3clFbS" id="3NXs7yqgvNX" role="3clFbx">
              <node concept="3cpWs6" id="3NXs7yqgw1N" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="3NXs7yqgvOE" role="3clFbw">
              <node concept="0IXxy" id="3NXs7yqgvOr" role="2Oq$k0" />
              <node concept="2xy62i" id="3NXs7yqgvPP" role="2OqNvi">
                <node concept="1Q80Hx" id="3NXs7yqgvX1" role="2xHN3q" />
                <node concept="2TlHUq" id="3NXs7yqgvY7" role="3a7HXU">
                  <ref role="2TlMyj" node="5QsWOhWpHeU" resolve="derivationRulesBlockId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6Yyl_4i0mY4" role="3cqZAp">
            <node concept="2OqwBi" id="6Yyl_4i0na8" role="3clFbG">
              <node concept="0IXxy" id="6Yyl_4i0mY3" role="2Oq$k0" />
              <node concept="2qgKlT" id="6Yyl_4i0nkK" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:5QsWOhW8B1z" resolve="resetUsedDerivationRules" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3NXs7yqgwCY" role="3cqZAp" />
          <node concept="3clFbJ" id="3NXs7yqgw6f" role="3cqZAp">
            <node concept="3clFbS" id="3NXs7yqgw6h" role="3clFbx">
              <node concept="3clFbF" id="3NXs7yqgylG" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7yqgyzz" role="3clFbG">
                  <node concept="0IXxy" id="3NXs7yqgylF" role="2Oq$k0" />
                  <node concept="1OKiuA" id="3NXs7yqgy$J" role="2OqNvi">
                    <node concept="1Q80Hx" id="3NXs7yqgy_p" role="lBI5i" />
                    <node concept="2TlHUq" id="3NXs7yqgyA_" role="lGT1i">
                      <ref role="2TlMyj" node="3NXs7yqgw3Q" resolve="ignoredVariablesRightBraceCellId" />
                    </node>
                    <node concept="3cmrfG" id="3NXs7yqgyPf" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3NXs7yqgyj1" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="3NXs7yqgwlq" role="3clFbw">
              <node concept="0IXxy" id="3NXs7yqgw7$" role="2Oq$k0" />
              <node concept="3TrcHB" id="3NXs7yqgyf5" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3NXs7yqgyBc" role="3cqZAp" />
          <node concept="Jncv_" id="4V91Il6nAw7" role="3cqZAp">
            <ref role="JncvD" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
            <node concept="0IXxy" id="4V91Il6nACA" role="JncvB" />
            <node concept="3clFbS" id="4V91Il6nAwb" role="Jncv$">
              <node concept="3clFbF" id="4V91Il6nAP$" role="3cqZAp">
                <node concept="2OqwBi" id="4V91Il6nAP_" role="3clFbG">
                  <node concept="1OKiuA" id="4V91Il6nAPD" role="2OqNvi">
                    <node concept="1Q80Hx" id="4V91Il6nAPE" role="lBI5i" />
                    <node concept="2TlHUq" id="4V91Il6nAPF" role="lGT1i">
                      <ref role="2TlMyj" node="3NXs7ypIKms" resolve="spaceAfterDerivableCellId" />
                    </node>
                    <node concept="3cmrfG" id="4V91Il6nAPG" role="3dN3m$">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="Jnkvi" id="4V91Il6nAT5" role="2Oq$k0">
                    <ref role="1M0zk5" node="4V91Il6nAwd" resolve="dto" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4V91Il6nAwd" role="JncvA">
              <property role="TrG5h" value="dto" />
              <node concept="2jxLKc" id="4V91Il6nAwe" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbH" id="4V91Il6nAqp" role="3cqZAp" />
          <node concept="Jncv_" id="4V91Il6nB1y" role="3cqZAp">
            <ref role="JncvD" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
            <node concept="0IXxy" id="4V91Il6nB5t" role="JncvB" />
            <node concept="3clFbS" id="4V91Il6nB1A" role="Jncv$">
              <node concept="3clFbF" id="4V91Il6nBcI" role="3cqZAp">
                <node concept="2OqwBi" id="4V91Il6nBcJ" role="3clFbG">
                  <node concept="1OKiuA" id="4V91Il6nBcN" role="2OqNvi">
                    <node concept="1Q80Hx" id="4V91Il6nBcO" role="lBI5i" />
                    <node concept="2B6iha" id="4V91Il6nBcP" role="lGT1i">
                      <property role="1lyBwo" value="1S2pyLby17K/last" />
                    </node>
                  </node>
                  <node concept="Jnkvi" id="4V91Il6nBgl" role="2Oq$k0">
                    <ref role="1M0zk5" node="4V91Il6nB1C" resolve="flatteningRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="4V91Il6nB1C" role="JncvA">
              <property role="TrG5h" value="flatteningRule" />
              <node concept="2jxLKc" id="4V91Il6nB1D" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="3NXs7yqguVy" role="jK8aL">
        <node concept="3clFbS" id="3NXs7yqguVz" role="2VODD2">
          <node concept="3clFbF" id="3NXs7yqgv2K" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7yqgvnJ" role="3clFbG">
              <node concept="0IXxy" id="3NXs7yqgv2J" role="2Oq$k0" />
              <node concept="3TrcHB" id="3NXs7yqgvFa" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="3NXs7yqC3ez">
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="Dto_DerivationLayout_EditorComponent" />
    <ref role="1XX52x" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    <node concept="3EZMnI" id="4LpUh3SXBKg" role="2wV5jI">
      <ref role="1ERwB7" node="3NXs7ypj_5b" resolve="Dto_DerivedFromBlockDeletion_ActionMap" />
      <node concept="VPM3Z" id="4LpUh3SXBKi" role="3F10Kt" />
      <node concept="3F0ifn" id="4LpUh3SXBMS" role="3EZMnx">
        <property role="3F0ifm" value="derived from" />
        <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
      </node>
      <node concept="3F1sOY" id="4LpUh3SXBMY" role="3EZMnx">
        <property role="1$x2rV" value="&lt;reference&gt;" />
        <ref role="1NtTu8" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
        <node concept="A1WHu" id="4LpUh3UajwV" role="3vIgyS">
          <ref role="A1WHt" node="4LpUh3UaizX" resolve="IDtoDerivableReference_TransformationMenu" />
        </node>
      </node>
      <node concept="3F0ifn" id="3NXs7ypxkW7" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="A1WHu" id="3NXs7ypxkWT" role="3vIgyS">
          <ref role="A1WHt" node="3NXs7ypxad6" resolve="IDtoDerivation_IgnoredVariablesTransformationMenu" />
        </node>
        <node concept="2SqB2G" id="3NXs7ypIKms" role="2SqHTX">
          <property role="TrG5h" value="spaceAfterDerivableCellId" />
        </node>
        <node concept="11L4FC" id="3NXs7ypW89R" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="3NXs7ypZtcA" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="3NXs7ypZtcE" role="3n$kyP">
            <node concept="3clFbS" id="3NXs7ypZtcF" role="2VODD2">
              <node concept="3clFbF" id="3NXs7ypZtft" role="3cqZAp">
                <node concept="22lmx$" id="3NXs7yqjTed" role="3clFbG">
                  <node concept="2OqwBi" id="3NXs7yqjTxo" role="3uHU7w">
                    <node concept="pncrf" id="3NXs7yqjTfk" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3NXs7yqjTz6" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3NXs7ypZt$s" role="3uHU7B">
                    <node concept="pncrf" id="3NXs7ypZtfs" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3NXs7ypZtWf" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="E4RYE9Cy3X" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9Cy5a" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9Cy5b" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9Cy89" role="3cqZAp">
                <node concept="22lmx$" id="E4RYE9Czcr" role="3clFbG">
                  <node concept="2OqwBi" id="E4RYE9Czei" role="3uHU7w">
                    <node concept="pncrf" id="E4RYE9Czdy" role="2Oq$k0" />
                    <node concept="3TrcHB" id="E4RYE9Czg0" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="E4RYE9Cyt8" role="3uHU7B">
                    <node concept="pncrf" id="E4RYE9Cy88" role="2Oq$k0" />
                    <node concept="3TrcHB" id="E4RYE9CyKz" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:3NXs7yom3dC" resolve="showIgnoredVariables" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3NXs7ypgfzv" role="3EZMnx">
        <ref role="PMmxG" node="3NXs7ypg5ie" resolve="IDtoDerivation_IgnoredVariables_EditorComponent" />
        <node concept="ljvvj" id="E4RYE9GcKl" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9GcKo" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9GcKp" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9GcRJ" role="3cqZAp">
                <node concept="2OqwBi" id="E4RYE9GdcI" role="3clFbG">
                  <node concept="pncrf" id="E4RYE9GcRI" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9Gdw9" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="A1WHu" id="3NXs7yq2UBH" role="3vIgyS">
          <ref role="A1WHt" node="3NXs7yq2OWU" resolve="IDtoDerivable_UseDerivationRules_TransformationMenu" />
        </node>
      </node>
      <node concept="PMmxH" id="5QsWOhWpIg4" role="3EZMnx">
        <ref role="PMmxG" node="5QsWOhWpHeH" resolve="IDtoDerivation_UsedDerivationRules_EditorComponent" />
      </node>
      <node concept="l2Vlx" id="4LpUh3SXBKl" role="2iSdaV" />
      <node concept="2SqB2G" id="4LpUh3WpvyN" role="2SqHTX">
        <property role="TrG5h" value="derivedFromBlockCellId" />
      </node>
      <node concept="pkWqt" id="3NXs7ypqv5a" role="pqm2j">
        <node concept="3clFbS" id="3NXs7ypqv5b" role="2VODD2">
          <node concept="3clFbF" id="3NXs7ypqv7U" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7ypqvsT" role="3clFbG">
              <node concept="pncrf" id="3NXs7ypqv7T" role="2Oq$k0" />
              <node concept="3TrcHB" id="3NXs7ypqvKk" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7ypj_ap" resolve="showDerivedFromBlock" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3NXs7yqZLUa">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <property role="TrG5h" value="DtoFlatteningRule_DeleteNameConvention_ActionMap" />
    <ref role="1h_SK9" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
    <node concept="1hA7zw" id="3NXs7yqZLUb" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="3NXs7yqZLUc" role="1hA7z_">
        <node concept="3clFbS" id="3NXs7yqZLUd" role="2VODD2">
          <node concept="3clFbJ" id="3NXs7yqZN4I" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7yqZN5p" role="3clFbw">
              <node concept="0IXxy" id="3NXs7yqZN5a" role="2Oq$k0" />
              <node concept="2xy62i" id="3NXs7yqZN6$" role="2OqNvi">
                <node concept="1Q80Hx" id="3NXs7yqZN7a" role="2xHN3q" />
                <node concept="2TlHUq" id="3NXs7yqZN7J" role="3a7HXU">
                  <ref role="2TlMyj" node="3NXs7yp9pCP" resolve="nameConventionBlockId" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3NXs7yqZN4K" role="3clFbx">
              <node concept="3cpWs6" id="3NXs7yqZNbr" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="3NXs7yqZO6i" role="3cqZAp">
            <node concept="2OqwBi" id="3NXs7yqZOhK" role="3clFbG">
              <node concept="2OqwBi" id="3NXs7yqZO77" role="2Oq$k0">
                <node concept="0IXxy" id="3NXs7yqZO6h" role="2Oq$k0" />
                <node concept="3TrcHB" id="3NXs7yqZO8g" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
                </node>
              </node>
              <node concept="tyxLq" id="3NXs7yqZOqI" role="2OqNvi">
                <node concept="21nZrQ" id="3NXs7yqZOro" role="tz02z">
                  <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="E4RYE96_Ga" role="3cqZAp" />
          <node concept="3clFbF" id="E4RYE96Axe" role="3cqZAp">
            <node concept="2OqwBi" id="E4RYE96Axf" role="3clFbG">
              <node concept="0IXxy" id="E4RYE96Axg" role="2Oq$k0" />
              <node concept="1OKiuA" id="E4RYE96Axh" role="2OqNvi">
                <node concept="1Q80Hx" id="E4RYE96Axi" role="lBI5i" />
                <node concept="2TlHUq" id="E4RYE96Axj" role="lGT1i">
                  <ref role="2TlMyj" node="E4RYE96AQb" resolve="usageCellId" />
                </node>
                <node concept="3cmrfG" id="E4RYE96Axk" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="3NXs7yqZLUx" role="jK8aL">
        <node concept="3clFbS" id="3NXs7yqZLUy" role="2VODD2">
          <node concept="3clFbF" id="3NXs7yqZM0b" role="3cqZAp">
            <node concept="3fqX7Q" id="3NXs7yqZMYR" role="3clFbG">
              <node concept="2OqwBi" id="3NXs7yqZMYT" role="3fr31v">
                <node concept="2OqwBi" id="3NXs7yqZMYU" role="2Oq$k0">
                  <node concept="0IXxy" id="3NXs7yqZMYV" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3NXs7yqZMYW" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
                  </node>
                </node>
                <node concept="21noJN" id="3NXs7yqZMYX" role="2OqNvi">
                  <node concept="21nZrQ" id="3NXs7yqZMYY" role="21noJM">
                    <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="3NXs7yr3ezb">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <ref role="aqKnT" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
    <node concept="22hDWg" id="3NXs7yr3eze" role="22hAXT">
      <property role="TrG5h" value="DtoFlatDerivationRule_NameConvention_TransformationMenu" />
    </node>
    <node concept="1Qtc8_" id="3NXs7yr3ezh" role="IW6Ez">
      <node concept="3cWJ9i" id="3NXs7yr3ezl" role="1Qtc8$">
        <node concept="CtIbL" id="3NXs7yr3ezn" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="1GhOrh" id="3NXs7yr3ezr" role="1Qtc8A">
        <node concept="1GhMSn" id="3NXs7yr3ezs" role="1GhOrs">
          <node concept="3clFbS" id="3NXs7yr3ezt" role="2VODD2">
            <node concept="3clFbF" id="3NXs7yr3eIO" role="3cqZAp">
              <node concept="2ShNRf" id="3NXs7yr3eIM" role="3clFbG">
                <node concept="Tc6Ow" id="3NXs7yr3eRD" role="2ShVmc">
                  <node concept="17QB3L" id="3NXs7yr3fPF" role="HW$YZ" />
                  <node concept="Xl_RD" id="3NXs7yr3gVN" role="HW$Y0">
                    <property role="Xl_RC" value="with suffix" />
                  </node>
                  <node concept="Xl_RD" id="3NXs7yr3hay" role="HW$Y0">
                    <property role="Xl_RC" value="with prefix" />
                  </node>
                  <node concept="Xl_RD" id="3NXs7yr6FMQ" role="HW$Y0">
                    <property role="Xl_RC" value="suffix" />
                  </node>
                  <node concept="Xl_RD" id="3NXs7yr6FST" role="HW$Y0">
                    <property role="Xl_RC" value="prefix" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="3NXs7yr3hmw" role="1GhOri">
          <node concept="1hCUdq" id="3NXs7yr3hmy" role="1hCUd6">
            <node concept="3clFbS" id="3NXs7yr3hm$" role="2VODD2">
              <node concept="3clFbF" id="3NXs7yr3hzq" role="3cqZAp">
                <node concept="2ZBlsa" id="3NXs7yr3hzp" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="3NXs7yr3hmA" role="IWgqQ">
            <node concept="3clFbS" id="3NXs7yr3hmC" role="2VODD2">
              <node concept="3clFbJ" id="3NXs7yr3iD$" role="3cqZAp">
                <node concept="2OqwBi" id="3NXs7yr6GuW" role="3clFbw">
                  <node concept="2ZBlsa" id="3NXs7yr6G68" role="2Oq$k0" />
                  <node concept="liA8E" id="3NXs7yr6GT6" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="3NXs7yr3jyW" role="37wK5m">
                      <property role="Xl_RC" value="suffix" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3NXs7yr3iDA" role="3clFbx">
                  <node concept="3clFbF" id="3NXs7yr3kdo" role="3cqZAp">
                    <node concept="2OqwBi" id="3NXs7yr3kPC" role="3clFbG">
                      <node concept="2OqwBi" id="3NXs7yr3kqy" role="2Oq$k0">
                        <node concept="7Obwk" id="3NXs7yr3kdn" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3NXs7yr3kG8" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
                        </node>
                      </node>
                      <node concept="tyxLq" id="3NXs7yr3l1q" role="2OqNvi">
                        <node concept="21nZrQ" id="3NXs7yr3l24" role="tz02z">
                          <ref role="21nZrZ" to="3nll:3NXs7yqZJYI" resolve="Suffix" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3NXs7yr3j_S" role="3cqZAp" />
              <node concept="3clFbJ" id="3NXs7yr3jD0" role="3cqZAp">
                <node concept="3clFbS" id="3NXs7yr3jD2" role="3clFbx">
                  <node concept="3clFbF" id="3NXs7yr3l89" role="3cqZAp">
                    <node concept="2OqwBi" id="3NXs7yr3law" role="3clFbG">
                      <node concept="2OqwBi" id="3NXs7yr3l8t" role="2Oq$k0">
                        <node concept="7Obwk" id="3NXs7yr3l88" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3NXs7yr3l9$" role="2OqNvi">
                          <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
                        </node>
                      </node>
                      <node concept="tyxLq" id="3NXs7yr3lco" role="2OqNvi">
                        <node concept="21nZrQ" id="3NXs7yr3ld2" role="tz02z">
                          <ref role="21nZrZ" to="3nll:3NXs7yqZJYF" resolve="Prefix" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3NXs7yr6Ha9" role="3clFbw">
                  <node concept="2ZBlsa" id="3NXs7yr3jDO" role="2Oq$k0" />
                  <node concept="liA8E" id="3NXs7yr6Hh6" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="3NXs7yr6Hjb" role="37wK5m">
                      <property role="Xl_RC" value="prefix" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3NXs7yr6How" role="3cqZAp" />
              <node concept="3clFbJ" id="3NXs7yr6HB2" role="3cqZAp">
                <node concept="3clFbS" id="3NXs7yr6HB4" role="3clFbx">
                  <node concept="3clFbF" id="3NXs7yr6InF" role="3cqZAp">
                    <node concept="2OqwBi" id="3NXs7yr6Iqk" role="3clFbG">
                      <node concept="2OqwBi" id="3NXs7yr6Ito" role="2Oq$k0">
                        <node concept="7Obwk" id="3NXs7yr6InE" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3NXs7yr6IUj" role="2OqNvi">
                          <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                        </node>
                      </node>
                      <node concept="1OKiuA" id="3NXs7yr6Irr" role="2OqNvi">
                        <node concept="1Q80Hx" id="3NXs7yr6Is5" role="lBI5i" />
                        <node concept="2TlHUq" id="3NXs7yr6IV4" role="lGT1i">
                          <ref role="2TlMyj" node="2RbvdOJ81o1" resolve="nameCellId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3NXs7yr6HVE" role="3clFbw">
                  <node concept="7Obwk" id="3NXs7yr6HE9" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3NXs7yr6IeY" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:2RbvdOM0nGV" resolve="isNameSet" />
                  </node>
                </node>
                <node concept="9aQIb" id="3NXs7yr6IVM" role="9aQIa">
                  <node concept="3clFbS" id="3NXs7yr6IVN" role="9aQI4">
                    <node concept="3clFbF" id="3NXs7yr6J0L" role="3cqZAp">
                      <node concept="2OqwBi" id="3NXs7yr6J15" role="3clFbG">
                        <node concept="7Obwk" id="3NXs7yr6J0K" role="2Oq$k0" />
                        <node concept="1OKiuA" id="3NXs7yr6J2c" role="2OqNvi">
                          <node concept="1Q80Hx" id="3NXs7yr6J2Q" role="lBI5i" />
                          <node concept="1lyA5W" id="4V91Il35FIR" role="lGT1i">
                            <property role="1lUG9U" value="placeholderCellId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="3NXs7yr3h$7" role="2jiSrf">
            <node concept="3clFbS" id="3NXs7yr3h$8" role="2VODD2">
              <node concept="3clFbF" id="3NXs7yr3ivF" role="3cqZAp">
                <node concept="3clFbT" id="3NXs7yr3ivE" role="3clFbG">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="3NXs7yr3eD$" role="2ZBHrp" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="5QsWOhWpHeH">
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="IDtoDerivation_UsedDerivationRules_EditorComponent" />
    <ref role="1XX52x" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="3EZMnI" id="5QsWOhWpHeJ" role="2wV5jI">
      <ref role="1ERwB7" node="3NXs7yqguJD" resolve="IDtoDerivation_DerivationRulesDeletion_ActionMap" />
      <node concept="VPM3Z" id="5QsWOhWpHeK" role="3F10Kt" />
      <node concept="3F0ifn" id="5QsWOhWpHeL" role="3EZMnx">
        <property role="3F0ifm" value="use rules" />
        <ref role="1k5W1q" node="5$Oa65a1HqK" resolve="OptionalKeywordStyle" />
        <node concept="A1WHu" id="5QsWOhWpHeM" role="3vIgyS">
          <ref role="A1WHt" node="3NXs7ypxad6" resolve="IDtoDerivation_IgnoredVariablesTransformationMenu" />
        </node>
      </node>
      <node concept="3F0ifn" id="5QsWOhWpHeN" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" node="5SyewCboVA6" resolve="LeftBrace" />
        <node concept="3mYdg7" id="5QsWOhWsMRP" role="3F10Kt">
          <property role="1413C4" value="usedRulesBrace" />
        </node>
        <node concept="ljvvj" id="E4RYE9txds" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9txdt" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9txdu" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9txdv" role="3cqZAp">
                <node concept="2OqwBi" id="E4RYE9txdw" role="3clFbG">
                  <node concept="pncrf" id="E4RYE9txdx" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9txdy" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7z5h98TrECr" resolve="hasVerticallyAlignedRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="5QsWOhWpHeO" role="2SqHTX">
          <property role="TrG5h" value="derivationRulesLeftBraceCellId" />
        </node>
      </node>
      <node concept="3F2HdR" id="5QsWOhWpHeP" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="3nll:5QsWOhW8vfl" resolve="derivationRuleReferences" />
        <node concept="pj6Ft" id="E4RYE9hYUx" role="3F10Kt" />
        <node concept="lj46D" id="E4RYE9hYUy" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9hYUz" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9hYU$" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9hYU_" role="3cqZAp">
                <node concept="2OqwBi" id="E4RYE9hYUA" role="3clFbG">
                  <node concept="pncrf" id="E4RYE9hYUB" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9hYUC" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7z5h98TrECr" resolve="hasVerticallyAlignedRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="E4RYE9hYUD" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9hYUE" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9hYUF" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9hYUG" role="3cqZAp">
                <node concept="2OqwBi" id="E4RYE9hYUH" role="3clFbG">
                  <node concept="pncrf" id="E4RYE9hYUI" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9hYUJ" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:7z5h98TrECr" resolve="hasVerticallyAlignedRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="5QsWOhWpHeQ" role="2czzBx" />
        <node concept="2w$q5c" id="7z5h98TAX60" role="78xua" />
        <node concept="pkWqt" id="E4RYE9hZfC" role="1p_IA6">
          <node concept="3clFbS" id="E4RYE9hZfD" role="2VODD2">
            <node concept="3clFbF" id="E4RYE9hZqn" role="3cqZAp">
              <node concept="2OqwBi" id="E4RYE9hZEk" role="3clFbG">
                <node concept="pncrf" id="E4RYE9hZqm" role="2Oq$k0" />
                <node concept="3TrcHB" id="E4RYE9hZFC" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:7z5h98TrECr" resolve="hasVerticallyAlignedRules" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="tppnM" id="E4RYE9hZGx" role="sWeuL">
          <node concept="ljvvj" id="E4RYE9hZOY" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="E4RYE9hZOZ" role="3n$kyP">
              <node concept="3clFbS" id="E4RYE9hZP0" role="2VODD2">
                <node concept="3clFbF" id="E4RYE9hZP1" role="3cqZAp">
                  <node concept="2OqwBi" id="E4RYE9hZP2" role="3clFbG">
                    <node concept="pncrf" id="E4RYE9hZP3" role="2Oq$k0" />
                    <node concept="3TrcHB" id="E4RYE9hZP4" role="2OqNvi">
                      <ref role="3TsBF5" to="3nll:7z5h98TrECr" resolve="hasVerticallyAlignedRules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5QsWOhWpHeR" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" node="5SyewCboVD_" resolve="RightBrace" />
        <node concept="3mYdg7" id="5QsWOhWsMSy" role="3F10Kt">
          <property role="1413C4" value="usedRulesBrace" />
        </node>
        <node concept="A1WHu" id="5QsWOhWpHeS" role="3vIgyS">
          <ref role="A1WHt" node="3NXs7ypxad6" resolve="IDtoDerivation_IgnoredVariablesTransformationMenu" />
        </node>
      </node>
      <node concept="l2Vlx" id="5QsWOhWpHeT" role="2iSdaV" />
      <node concept="2SqB2G" id="5QsWOhWpHeU" role="2SqHTX">
        <property role="TrG5h" value="derivationRulesBlockId" />
      </node>
      <node concept="pkWqt" id="5QsWOhWpHeV" role="pqm2j">
        <node concept="3clFbS" id="5QsWOhWpHeW" role="2VODD2">
          <node concept="3clFbF" id="5QsWOhWpHeX" role="3cqZAp">
            <node concept="2OqwBi" id="5QsWOhWpHeY" role="3clFbG">
              <node concept="pncrf" id="5QsWOhWpHeZ" role="2Oq$k0" />
              <node concept="3TrcHB" id="5QsWOhWpHf0" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2ABfQD" id="5QsWOhWvA_P">
    <property role="3GE5qa" value="hints" />
    <property role="TrG5h" value="UseEditorHints" />
    <node concept="2BsEeg" id="5QsWOhWvA_Q" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="ignoredVariablesContextHint" />
    </node>
  </node>
  <node concept="24kQdi" id="5QsWOhWvA_X">
    <property role="3GE5qa" value="variable" />
    <ref role="1XX52x" to="3nll:4LpUh3UZauM" resolve="IVariableReference" />
    <node concept="2aJ2om" id="5QsWOhWvA_Z" role="CpUAK">
      <ref role="2$4xQ3" node="5QsWOhWvA_Q" resolve="ignoredVariablesContextHint" />
    </node>
    <node concept="1QoScp" id="5QsWOhWKYD4" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="pkWqt" id="5QsWOhWKYD7" role="3e4ffs">
        <node concept="3clFbS" id="5QsWOhWKYD9" role="2VODD2">
          <node concept="3clFbF" id="5QsWOhWKYNy" role="3cqZAp">
            <node concept="3fqX7Q" id="5QsWOhWKZYC" role="3clFbG">
              <node concept="2OqwBi" id="5QsWOhWKZYE" role="3fr31v">
                <node concept="2OqwBi" id="5QsWOhWKZYF" role="2Oq$k0">
                  <node concept="pncrf" id="5QsWOhWKZYG" role="2Oq$k0" />
                  <node concept="2yIwOk" id="5QsWOhWKZYH" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="5QsWOhWKZYI" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5QsWOhWKYJQ" role="1QoVPY">
        <property role="3F0ifm" value="" />
        <property role="ilYzB" value="&lt;variable&gt;" />
        <node concept="A1WHu" id="5QsWOhWNOac" role="3vIgyS">
          <ref role="A1WHt" node="5QsWOhWCkpD" resolve="IVariableReference_IgnoredVariables_TransformationMenu" />
        </node>
      </node>
      <node concept="1HlG4h" id="5QsWOhWHX4p" role="1QoS34">
        <ref role="1ERwB7" node="29ZTnyInk_p" resolve="GenericDataTypeDeletion_ActionMap" />
        <node concept="1HfYo3" id="5QsWOhWHX4s" role="1HlULh">
          <node concept="3TQlhw" id="5QsWOhWHX4v" role="1Hhtcw">
            <node concept="3clFbS" id="5QsWOhWHX4y" role="2VODD2">
              <node concept="3clFbF" id="51Z40VvUjbh" role="3cqZAp">
                <node concept="3K4zz7" id="51Z40VvUjT1" role="3clFbG">
                  <node concept="Xl_RD" id="51Z40VvUoFM" role="3K4E3e">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="2OqwBi" id="51Z40VvUjbj" role="3K4Cdx">
                    <node concept="3w_OXm" id="51Z40VvUjbk" role="2OqNvi" />
                    <node concept="2OqwBi" id="51Z40VvUjbl" role="2Oq$k0">
                      <node concept="pncrf" id="51Z40VvUjbm" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="51Z40VvUjbn" role="2OqNvi">
                        <node concept="1xMEDy" id="51Z40VvUjbo" role="1xVPHs">
                          <node concept="chp4Y" id="51Z40VvUjbp" role="ri$Ld">
                            <ref role="cht4Q" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="51Z40VvUjbq" role="1xVPHs" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="51Z40VvUoHq" role="3K4GZi">
                    <node concept="2OqwBi" id="51Z40VvUoHr" role="2Oq$k0">
                      <node concept="pncrf" id="51Z40VvUoHs" role="2Oq$k0" />
                      <node concept="2qgKlT" id="51Z40VvUoHt" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:4LpUh3V3HC0" resolve="getReferencedVariable" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="51Z40VvUoHu" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="A1WHu" id="5QsWOhWHXaQ" role="3vIgyS">
          <ref role="A1WHt" node="5QsWOhWCkpD" resolve="IVariableReference_IgnoredVariables_TransformationMenu" />
        </node>
        <node concept="VPxyj" id="5QsWOhWIa5_" role="3F10Kt" />
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="5QsWOhWCkpD">
    <property role="3GE5qa" value="variable" />
    <ref role="aqKnT" to="3nll:4LpUh3UZauM" resolve="IVariableReference" />
    <node concept="22hDWg" id="5QsWOhWCkpG" role="22hAXT">
      <property role="TrG5h" value="IVariableReference_IgnoredVariables_TransformationMenu" />
    </node>
    <node concept="1Qtc8_" id="5QsWOhWCkpI" role="IW6Ez">
      <node concept="3eGOoe" id="5QsWOhWCkpM" role="1Qtc8$" />
      <node concept="3c8P5G" id="5QsWOhWCkqd" role="1Qtc8A">
        <node concept="3c8PGw" id="5QsWOhWCkqf" role="3c8PHt">
          <node concept="3clFbS" id="5QsWOhWCkqg" role="2VODD2">
            <node concept="3clFbF" id="5QsWOhX7QyX" role="3cqZAp">
              <node concept="2OqwBi" id="5QsWOhX7QFY" role="3clFbG">
                <node concept="7Obwk" id="5QsWOhX7QyW" role="2Oq$k0" />
                <node concept="1P9Npp" id="5QsWOhX7QOQ" role="2OqNvi">
                  <node concept="3c8USq" id="5QsWOhX7QPv" role="1P9ThW" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2kknPI" id="5QsWOhXdvxD" role="3c8P5H">
          <ref role="2kkw0f" node="5QsWOhXdsuP" resolve="IgnoredVariablesSubstitudeMenu" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="5QsWOhWWhpz">
    <property role="3GE5qa" value="dtoDerivation" />
    <ref role="aqKnT" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
    <node concept="22hDWg" id="5QsWOhWWhp$" role="22hAXT">
      <property role="TrG5h" value="IDtoDerivition_IgnoredVariablesTransformationMenu" />
    </node>
    <node concept="1Qtc8_" id="5QsWOhWWhpA" role="IW6Ez">
      <node concept="3c8P5G" id="5QsWOhWWhpJ" role="1Qtc8A">
        <node concept="3c8PGw" id="5QsWOhWWhpM" role="3c8PHt">
          <node concept="3clFbS" id="5QsWOhWWhpO" role="2VODD2">
            <node concept="3clFbF" id="5QsWOhX7Mmb" role="3cqZAp">
              <node concept="2OqwBi" id="5QsWOhX7OFY" role="3clFbG">
                <node concept="2OqwBi" id="5QsWOhX7Mw1" role="2Oq$k0">
                  <node concept="7Obwk" id="5QsWOhX7Mma" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5QsWOhX7N2a" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:3NXs7yom3d_" resolve="ignoredVariableReferences" />
                  </node>
                </node>
                <node concept="TSZUe" id="5QsWOhX7Q5P" role="2OqNvi">
                  <node concept="3c8USq" id="5QsWOhX7QbN" role="25WWJ7" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2kknPI" id="5QsWOhXdrN$" role="3c8P5H">
          <ref role="2kkw0f" node="5QsWOhXdsuP" resolve="IgnoredVariablesSubstitudeMenu" />
        </node>
      </node>
      <node concept="3eGOoe" id="5QsWOhWWhpE" role="1Qtc8$" />
    </node>
  </node>
  <node concept="22mcaB" id="5QsWOhXdsuP">
    <property role="3GE5qa" value="variable" />
    <ref role="aqKnT" to="3nll:4LpUh3UZauM" resolve="IVariableReference" />
    <node concept="3VyMlK" id="5QsWOhXj7on" role="3ft7WO" />
    <node concept="2F$Pav" id="5QsWOhXrwlz" role="3ft7WO">
      <node concept="3eGOop" id="5QsWOhXrwtK" role="2$S_pN">
        <node concept="16NfWO" id="5QsWOhXxa_Q" role="upBLP">
          <node concept="uGdhv" id="5QsWOhXxaTS" role="16NeZM">
            <node concept="3clFbS" id="5QsWOhXxaTU" role="2VODD2">
              <node concept="3cpWs8" id="1vyzkEMyhV0" role="3cqZAp">
                <node concept="3cpWsn" id="1vyzkEMyhV1" role="3cpWs9">
                  <property role="TrG5h" value="wrappedVariable" />
                  <node concept="3Tqbb2" id="1vyzkEMyhU2" role="1tU5fm">
                    <ref role="ehGHo" to="3nll:4LpUh3V3H_u" resolve="IVariable" />
                  </node>
                  <node concept="2OqwBi" id="1vyzkEMyhV2" role="33vP2m">
                    <node concept="2ZBlsa" id="1vyzkEMyhV3" role="2Oq$k0" />
                    <node concept="liA8E" id="1vyzkEMyhV4" role="2OqNvi">
                      <ref role="37wK5l" to="4d66:1vyzkEMx9vg" resolve="getWrappedVariable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5QsWOhXVPRt" role="3cqZAp">
                <node concept="3cpWsn" id="5QsWOhXVPRu" role="3cpWs9">
                  <property role="TrG5h" value="derivable" />
                  <node concept="3Tqbb2" id="5QsWOhXVPRv" role="1tU5fm">
                    <ref role="ehGHo" to="3nll:4LpUh3T0rQI" resolve="IDtoDerivable" />
                  </node>
                  <node concept="2OqwBi" id="5QsWOhXVPRw" role="33vP2m">
                    <node concept="37vLTw" id="1vyzkEMyib5" role="2Oq$k0">
                      <ref role="3cqZAo" node="1vyzkEMyhV1" resolve="wrappedVariable" />
                    </node>
                    <node concept="2Xjw5R" id="5QsWOhXVPRy" role="2OqNvi">
                      <node concept="1xMEDy" id="5QsWOhXVPRz" role="1xVPHs">
                        <node concept="chp4Y" id="5QsWOhXVPR$" role="ri$Ld">
                          <ref role="cht4Q" to="3nll:4LpUh3T0rQI" resolve="IDtoDerivable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1vyzkEMyhfL" role="3cqZAp" />
              <node concept="3clFbJ" id="5QsWOhXVPU3" role="3cqZAp">
                <node concept="3clFbS" id="5QsWOhXVPU4" role="3clFbx">
                  <node concept="3cpWs6" id="5QsWOhXVPU5" role="3cqZAp">
                    <node concept="2OqwBi" id="1vyzkEMykaI" role="3cqZAk">
                      <node concept="37vLTw" id="1vyzkEMyjq$" role="2Oq$k0">
                        <ref role="3cqZAo" node="1vyzkEMyhV1" resolve="wrappedVariable" />
                      </node>
                      <node concept="3TrcHB" id="1vyzkEMykoE" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5QsWOhXVPU7" role="3clFbw">
                  <node concept="37vLTw" id="5QsWOhXVPU8" role="2Oq$k0">
                    <ref role="3cqZAo" node="5QsWOhXVPRu" resolve="derivable" />
                  </node>
                  <node concept="3w_OXm" id="5QsWOhXVPU9" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbH" id="5QsWOhXVPST" role="3cqZAp" />
              <node concept="3clFbF" id="1vyzkEMyiA9" role="3cqZAp">
                <node concept="2OqwBi" id="1vyzkEMyiZI" role="3clFbG">
                  <node concept="2ZBlsa" id="1vyzkEMyiA8" role="2Oq$k0" />
                  <node concept="liA8E" id="1vyzkEMyj8K" role="2OqNvi">
                    <ref role="37wK5l" to="4d66:1vyzkEMtwwP" resolve="getVariableName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ucgPf" id="5QsWOhXrwtM" role="3aKz83">
          <node concept="3clFbS" id="5QsWOhXrwtO" role="2VODD2">
            <node concept="3clFbF" id="5QsWOhX$5T2" role="3cqZAp">
              <node concept="2OqwBi" id="5QsWOhX$6q0" role="3clFbG">
                <node concept="35c_gC" id="5QsWOhX$5T0" role="2Oq$k0">
                  <ref role="35c_gD" to="3nll:5QsWOhX$0Dm" resolve="DtoDerivedVariableReference" />
                </node>
                <node concept="2qgKlT" id="5QsWOhX$6Ju" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:5QsWOhX$4rF" resolve="convert" />
                  <node concept="2OqwBi" id="1vyzkEMygfX" role="37wK5m">
                    <node concept="2ZBlsa" id="5QsWOhX$6Qo" role="2Oq$k0" />
                    <node concept="liA8E" id="1vyzkEMygwf" role="2OqNvi">
                      <ref role="37wK5l" to="4d66:1vyzkEMx9vg" resolve="getWrappedVariable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="5QsWOhXr$dm" role="upBLP">
          <node concept="uGdhv" id="5QsWOhXr$ed" role="16NL0q">
            <node concept="3clFbS" id="5QsWOhXr$ef" role="2VODD2">
              <node concept="3cpWs8" id="5QsWOhXxc5l" role="3cqZAp">
                <node concept="3cpWsn" id="5QsWOhXxc5m" role="3cpWs9">
                  <property role="TrG5h" value="derivable" />
                  <node concept="3Tqbb2" id="5QsWOhXxc4T" role="1tU5fm">
                    <ref role="ehGHo" to="3nll:4LpUh3T0rQI" resolve="IDtoDerivable" />
                  </node>
                  <node concept="2OqwBi" id="5QsWOhXxc5n" role="33vP2m">
                    <node concept="2OqwBi" id="1vyzkEMykFy" role="2Oq$k0">
                      <node concept="2ZBlsa" id="5QsWOhXxc5o" role="2Oq$k0" />
                      <node concept="liA8E" id="1vyzkEMykQb" role="2OqNvi">
                        <ref role="37wK5l" to="4d66:1vyzkEMx9vg" resolve="getWrappedVariable" />
                      </node>
                    </node>
                    <node concept="2Xjw5R" id="5QsWOhXxc5p" role="2OqNvi">
                      <node concept="1xMEDy" id="5QsWOhXxc5q" role="1xVPHs">
                        <node concept="chp4Y" id="5QsWOhXxc5r" role="ri$Ld">
                          <ref role="cht4Q" to="3nll:4LpUh3T0rQI" resolve="IDtoDerivable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5QsWOhXxcG0" role="3cqZAp">
                <node concept="3clFbS" id="5QsWOhXxcG2" role="3clFbx">
                  <node concept="3cpWs6" id="5QsWOhXxd5O" role="3cqZAp">
                    <node concept="Xl_RD" id="5QsWOhXxd6Z" role="3cqZAk">
                      <property role="Xl_RC" value="variable" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5QsWOhXxcKa" role="3clFbw">
                  <node concept="37vLTw" id="5QsWOhXxcHm" role="2Oq$k0">
                    <ref role="3cqZAo" node="5QsWOhXxc5m" resolve="derivable" />
                  </node>
                  <node concept="3w_OXm" id="5QsWOhXxcZJ" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="5QsWOhXr$ll" role="3cqZAp">
                <node concept="2OqwBi" id="5QsWOhXxdzz" role="3clFbG">
                  <node concept="37vLTw" id="5QsWOhXxca_" role="2Oq$k0">
                    <ref role="3cqZAo" node="5QsWOhXxc5m" resolve="derivable" />
                  </node>
                  <node concept="3TrcHB" id="5QsWOhXxdSk" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2$S_p_" id="5QsWOhXrwqU" role="2$S_pT">
        <node concept="3clFbS" id="5QsWOhXrwqV" role="2VODD2">
          <node concept="3cpWs8" id="5QsWOhXrx2V" role="3cqZAp">
            <node concept="3cpWsn" id="5QsWOhXrx2W" role="3cpWs9">
              <property role="TrG5h" value="derivition" />
              <node concept="3Tqbb2" id="5QsWOhXrx2s" role="1tU5fm">
                <ref role="ehGHo" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
              </node>
              <node concept="2OqwBi" id="5QsWOhXrx2X" role="33vP2m">
                <node concept="3bvxqY" id="5QsWOhXrx2Y" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5QsWOhXrx2Z" role="2OqNvi">
                  <node concept="1xMEDy" id="5QsWOhXrx30" role="1xVPHs">
                    <node concept="chp4Y" id="5QsWOhXrx31" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5QsWOhXrx32" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QsWOhXrwAR" role="3cqZAp">
            <node concept="3K4zz7" id="5QsWOhXrxgx" role="3clFbG">
              <node concept="2ShNRf" id="5QsWOhXrxxX" role="3K4E3e">
                <node concept="kMnCb" id="5QsWOhXryTy" role="2ShVmc" />
              </node>
              <node concept="2OqwBi" id="5QsWOhXrzpy" role="3K4GZi">
                <node concept="37vLTw" id="5QsWOhXrz0s" role="2Oq$k0">
                  <ref role="3cqZAo" node="5QsWOhXrx2W" resolve="derivition" />
                </node>
                <node concept="2qgKlT" id="5QsWOhXrz$I" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:1vyzkEMwXLH" resolve="getUsedVariableWrappers" />
                </node>
              </node>
              <node concept="2OqwBi" id="5QsWOhXrxjm" role="3K4Cdx">
                <node concept="37vLTw" id="5QsWOhXrx33" role="2Oq$k0">
                  <ref role="3cqZAo" node="5QsWOhXrx2W" resolve="derivition" />
                </node>
                <node concept="3w_OXm" id="5QsWOhXrxtm" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1vyzkEMwlG8" role="2ZBHrp">
        <ref role="3uigEE" to="4d66:1vyzkEMtuLJ" resolve="VariableWrapper" />
      </node>
    </node>
    <node concept="22hDWg" id="5QsWOhXdsuQ" role="22hAXT">
      <property role="TrG5h" value="IgnoredVariablesSubstitudeMenu" />
    </node>
  </node>
  <node concept="24kQdi" id="5QsWOhX$17O">
    <property role="3GE5qa" value="variable" />
    <ref role="1XX52x" to="3nll:5QsWOhX$0Dm" resolve="DtoDerivedVariableReference" />
    <node concept="1QoScp" id="5QsWOhX$1uR" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="pkWqt" id="5QsWOhX$1uS" role="3e4ffs">
        <node concept="3clFbS" id="5QsWOhX$1uT" role="2VODD2">
          <node concept="3clFbF" id="5QsWOhX$1uU" role="3cqZAp">
            <node concept="3fqX7Q" id="5QsWOhX$1uV" role="3clFbG">
              <node concept="2OqwBi" id="5QsWOhX$1uW" role="3fr31v">
                <node concept="2OqwBi" id="5QsWOhX$1uX" role="2Oq$k0">
                  <node concept="pncrf" id="5QsWOhX$1uY" role="2Oq$k0" />
                  <node concept="2yIwOk" id="5QsWOhX$1uZ" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="5QsWOhX$1v0" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5QsWOhX$1v1" role="1QoVPY">
        <property role="3F0ifm" value="" />
        <property role="ilYzB" value="&lt;variable&gt;" />
        <node concept="A1WHu" id="5QsWOhX$1v2" role="3vIgyS">
          <ref role="A1WHt" node="5QsWOhWCkpD" resolve="IVariableReference_IgnoredVariables_TransformationMenu" />
        </node>
      </node>
      <node concept="1iCGBv" id="5QsWOhX$26B" role="1QoS34">
        <ref role="1NtTu8" to="3nll:5QsWOhX$0Dp" resolve="variable" />
        <node concept="1sVBvm" id="5QsWOhX$26D" role="1sWHZn">
          <node concept="3SHvHV" id="7z5h98Sklah" role="2wV5jI">
            <ref role="1ERwB7" node="29ZTnyInk_p" resolve="GenericDataTypeDeletion_ActionMap" />
            <node concept="A1WHu" id="7z5h98SnRSe" role="3vIgyS">
              <ref role="A1WHt" node="5QsWOhWCkpD" resolve="IVariableReference_IgnoredVariables_TransformationMenu" />
            </node>
            <node concept="VPxyj" id="7z5h98SnRSD" role="3F10Kt" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1pnQbpD$lvC">
    <property role="3GE5qa" value="dtoDerivation.rules" />
    <ref role="1XX52x" to="3nll:5YqiGT0mxNQ" resolve="IDtoDerivationRuleReference" />
    <node concept="3F0ifn" id="5YqiGT0mv61" role="2wV5jI">
      <property role="3F0ifm" value="" />
      <property role="ilYzB" value="&lt;rule&gt;" />
    </node>
  </node>
  <node concept="24kQdi" id="7z5h98U71m$">
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <ref role="1XX52x" to="3nll:7z5h98U71my" resolve="DtoDataTypeRuleReference" />
    <node concept="1iCGBv" id="7z5h98U71mA" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:7z5h98U71mz" resolve="rule" />
      <node concept="1sVBvm" id="7z5h98U71mC" role="1sWHZn">
        <node concept="1HlG4h" id="7z5h98U71mG" role="2wV5jI">
          <node concept="1HfYo3" id="7z5h98U71mI" role="1HlULh">
            <node concept="3TQlhw" id="7z5h98U71mK" role="1Hhtcw">
              <node concept="3clFbS" id="7z5h98U71mM" role="2VODD2">
                <node concept="3clFbF" id="7z5h98U71tT" role="3cqZAp">
                  <node concept="2OqwBi" id="7z5h98U71Lq" role="3clFbG">
                    <node concept="pncrf" id="7z5h98U71tS" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7z5h98U71Z_" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:1pnQbpD$lGH" resolve="getReferenceName" />
                      <node concept="1Q80Hx" id="3L7_qKV89HY" role="37wK5m" />
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
  <node concept="24kQdi" id="7z5h98U72cI">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <ref role="1XX52x" to="3nll:7z5h98U71mw" resolve="DtoFlatteningRuleReference" />
    <node concept="1iCGBv" id="7z5h98U72cK" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:7z5h98U71mx" resolve="rule" />
      <node concept="1sVBvm" id="7z5h98U72cM" role="1sWHZn">
        <node concept="1HlG4h" id="7z5h98U72cQ" role="2wV5jI">
          <node concept="1HfYo3" id="7z5h98U72cS" role="1HlULh">
            <node concept="3TQlhw" id="7z5h98U72cU" role="1Hhtcw">
              <node concept="3clFbS" id="7z5h98U72cW" role="2VODD2">
                <node concept="3clFbF" id="7z5h98U72lL" role="3cqZAp">
                  <node concept="2OqwBi" id="7z5h98U72Fe" role="3clFbG">
                    <node concept="pncrf" id="7z5h98U72lK" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7z5h98U72WW" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:1pnQbpD$lGH" resolve="getReferenceName" />
                      <node concept="1Q80Hx" id="3L7_qKV88V7" role="37wK5m" />
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
  <node concept="22mcaB" id="E4RYE8cPyg">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <ref role="aqKnT" to="3nll:5YqiGT0mxNQ" resolve="IDtoDerivationRuleReference" />
    <node concept="2F$Pav" id="E4RYE8ka7h" role="3ft7WO">
      <node concept="3eGOop" id="E4RYE8ka7i" role="2$S_pN">
        <node concept="16NL0t" id="E4RYE8ka7j" role="upBLP">
          <node concept="uGdhv" id="E4RYE8ka7k" role="16NL0q">
            <node concept="3clFbS" id="E4RYE8ka7l" role="2VODD2">
              <node concept="1_3QMa" id="E4RYE8ka7m" role="3cqZAp">
                <node concept="2OqwBi" id="E4RYE8ka7n" role="1_3QMn">
                  <node concept="2ZBlsa" id="E4RYE8ka7o" role="2Oq$k0" />
                  <node concept="2yIwOk" id="E4RYE8ka7p" role="2OqNvi" />
                </node>
                <node concept="1pnPoh" id="E4RYE8ka7q" role="1_3QMm">
                  <node concept="3gn64h" id="E4RYE8ka7r" role="1pnPq6">
                    <ref role="3gnhBz" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                  </node>
                  <node concept="3clFbS" id="E4RYE8ka7s" role="1pnPq1">
                    <node concept="3cpWs6" id="E4RYE8ka7t" role="3cqZAp">
                      <node concept="Xl_RD" id="E4RYE8ka7u" role="3cqZAk">
                        <property role="Xl_RC" value="flattening rule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1pnPoh" id="E4RYE8ka7v" role="1_3QMm">
                  <node concept="3gn64h" id="E4RYE8ka7w" role="1pnPq6">
                    <ref role="3gnhBz" to="3nll:1bq_vIpSfA4" resolve="DtoDataTypeRule" />
                  </node>
                  <node concept="3clFbS" id="E4RYE8ka7x" role="1pnPq1">
                    <node concept="3cpWs6" id="E4RYE8ka7y" role="3cqZAp">
                      <node concept="Xl_RD" id="E4RYE8ka7z" role="3cqZAk">
                        <property role="Xl_RC" value="type rule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="E4RYE8ka7$" role="1prKM_">
                  <node concept="3cpWs6" id="E4RYE8ka7_" role="3cqZAp">
                    <node concept="Xl_RD" id="E4RYE8ka7A" role="3cqZAk">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ucgPf" id="E4RYE8ka7B" role="3aKz83">
          <node concept="3clFbS" id="E4RYE8ka7C" role="2VODD2">
            <node concept="3clFbF" id="E4RYE8CJjr" role="3cqZAp">
              <node concept="2OqwBi" id="E4RYE8CJwl" role="3clFbG">
                <node concept="2ZBlsa" id="E4RYE8CJjq" role="2Oq$k0" />
                <node concept="2qgKlT" id="E4RYE8CJMu" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:7z5h98TrJPJ" resolve="toReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="E4RYE8ka7I" role="upBLP">
          <node concept="uGdhv" id="E4RYE8ka7J" role="16NeZM">
            <node concept="3clFbS" id="E4RYE8ka7K" role="2VODD2">
              <node concept="3clFbF" id="E4RYE8ka7L" role="3cqZAp">
                <node concept="2OqwBi" id="E4RYE8ka7M" role="3clFbG">
                  <node concept="2ZBlsa" id="E4RYE8ka7N" role="2Oq$k0" />
                  <node concept="2qgKlT" id="E4RYE8ka7O" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:1pnQbpD$lGH" resolve="getReferenceName" />
                    <node concept="1Q80Hx" id="3L7_qKV88xX" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="E4RYE8ka7P" role="2ZBHrp">
        <ref role="ehGHo" to="3nll:1bq_vIpSfA3" resolve="IDtoDerivationRule" />
      </node>
      <node concept="2$S_p_" id="E4RYE8ka7Q" role="2$S_pT">
        <node concept="3clFbS" id="E4RYE8ka7R" role="2VODD2">
          <node concept="3cpWs8" id="E4RYE8ka7S" role="3cqZAp">
            <node concept="3cpWsn" id="E4RYE8ka7T" role="3cpWs9">
              <property role="TrG5h" value="derivation" />
              <node concept="3Tqbb2" id="E4RYE8ka7U" role="1tU5fm">
                <ref role="ehGHo" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
              </node>
              <node concept="2OqwBi" id="E4RYE8ka7V" role="33vP2m">
                <node concept="3bvxqY" id="E4RYE8ka7W" role="2Oq$k0" />
                <node concept="2Xjw5R" id="E4RYE8ka7X" role="2OqNvi">
                  <node concept="1xMEDy" id="E4RYE8ka7Y" role="1xVPHs">
                    <node concept="chp4Y" id="E4RYE8ka7Z" role="ri$Ld">
                      <ref role="cht4Q" to="3nll:3NXs7yolYaR" resolve="IDtoDerivation" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="E4RYE8ka80" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="E4RYE8ka81" role="3cqZAp">
            <node concept="3clFbS" id="E4RYE8ka82" role="3clFbx">
              <node concept="3cpWs6" id="E4RYE8ka83" role="3cqZAp">
                <node concept="2ShNRf" id="E4RYE8ka84" role="3cqZAk">
                  <node concept="kMnCb" id="E4RYE8ka85" role="2ShVmc">
                    <node concept="3Tqbb2" id="E4RYE8ka86" role="kMuH3">
                      <ref role="ehGHo" to="3nll:1bq_vIpSfA3" resolve="IDtoDerivationRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="E4RYE8ka87" role="3clFbw">
              <node concept="37vLTw" id="E4RYE8ka88" role="2Oq$k0">
                <ref role="3cqZAo" node="E4RYE8ka7T" resolve="derivation" />
              </node>
              <node concept="3w_OXm" id="E4RYE8ka89" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="E4RYE8ka8a" role="3cqZAp" />
          <node concept="3cpWs8" id="E4RYE8ka8b" role="3cqZAp">
            <node concept="3cpWsn" id="E4RYE8ka8c" role="3cpWs9">
              <property role="TrG5h" value="dtoDerivationRules" />
              <node concept="A3Dl8" id="E4RYE8ka8d" role="1tU5fm">
                <node concept="3Tqbb2" id="E4RYE8ka8e" role="A3Ik2">
                  <ref role="ehGHo" to="3nll:1bq_vIpSfA3" resolve="IDtoDerivationRule" />
                </node>
              </node>
              <node concept="2OqwBi" id="E4RYE8ka8f" role="33vP2m">
                <node concept="2OqwBi" id="E4RYE8ka8g" role="2Oq$k0">
                  <node concept="37vLTw" id="E4RYE8ka8h" role="2Oq$k0">
                    <ref role="3cqZAo" node="E4RYE8ka7T" resolve="derivation" />
                  </node>
                  <node concept="2qgKlT" id="E4RYE8ka8i" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:3VGLvhEO$iA" resolve="boundedContext" />
                  </node>
                </node>
                <node concept="2qgKlT" id="E4RYE8ka8j" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:E4RYE8KbDb" resolve="dtoExplicitDerivationRules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="E4RYE8ka8k" role="3cqZAp">
            <node concept="3cpWsn" id="E4RYE8ka8l" role="3cpWs9">
              <property role="TrG5h" value="referencedRules" />
              <node concept="A3Dl8" id="E4RYE8ka8m" role="1tU5fm">
                <node concept="3Tqbb2" id="E4RYE8ka8n" role="A3Ik2">
                  <ref role="ehGHo" to="3nll:1bq_vIpSfA3" resolve="IDtoDerivationRule" />
                </node>
              </node>
              <node concept="2OqwBi" id="E4RYE8ka8o" role="33vP2m">
                <node concept="2OqwBi" id="E4RYE8ka8p" role="2Oq$k0">
                  <node concept="37vLTw" id="E4RYE8ka8q" role="2Oq$k0">
                    <ref role="3cqZAo" node="E4RYE8ka7T" resolve="derivation" />
                  </node>
                  <node concept="3Tsc0h" id="E4RYE8ka8r" role="2OqNvi">
                    <ref role="3TtcxE" to="3nll:5QsWOhW8vfl" resolve="derivationRuleReferences" />
                  </node>
                </node>
                <node concept="3$u5V9" id="E4RYE8ka8s" role="2OqNvi">
                  <node concept="1bVj0M" id="E4RYE8ka8t" role="23t8la">
                    <node concept="3clFbS" id="E4RYE8ka8u" role="1bW5cS">
                      <node concept="3clFbF" id="E4RYE8ka8v" role="3cqZAp">
                        <node concept="2OqwBi" id="E4RYE8ka8w" role="3clFbG">
                          <node concept="37vLTw" id="E4RYE8ka8x" role="2Oq$k0">
                            <ref role="3cqZAo" node="E4RYE8ka8z" resolve="it" />
                          </node>
                          <node concept="2qgKlT" id="E4RYE8ka8y" role="2OqNvi">
                            <ref role="37wK5l" to="sx7w:5YqiGT0mxXR" resolve="getReferencedRule" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="E4RYE8ka8z" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="E4RYE8ka8$" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="E4RYE8ka8_" role="3cqZAp">
            <node concept="2OqwBi" id="E4RYE8ka8A" role="3clFbG">
              <node concept="37vLTw" id="E4RYE8ka8B" role="2Oq$k0">
                <ref role="3cqZAo" node="E4RYE8ka8c" resolve="dtoDerivationRules" />
              </node>
              <node concept="3zZkjj" id="E4RYE8ka8C" role="2OqNvi">
                <node concept="1bVj0M" id="E4RYE8ka8D" role="23t8la">
                  <node concept="3clFbS" id="E4RYE8ka8E" role="1bW5cS">
                    <node concept="3clFbF" id="E4RYE8ka8F" role="3cqZAp">
                      <node concept="3fqX7Q" id="E4RYE8ka8G" role="3clFbG">
                        <node concept="2OqwBi" id="E4RYE8ka8H" role="3fr31v">
                          <node concept="3JPx81" id="E4RYE8ka8I" role="2OqNvi">
                            <node concept="37vLTw" id="E4RYE8ka8J" role="25WWJ7">
                              <ref role="3cqZAo" node="E4RYE8ka8L" resolve="it" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="E4RYE8ka8K" role="2Oq$k0">
                            <ref role="3cqZAo" node="E4RYE8ka8l" resolve="referencedRules" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="E4RYE8ka8L" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="E4RYE8ka8M" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="E4RYE8k9l7" role="3ft7WO" />
    <node concept="22hDWj" id="E4RYE8cPyh" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="E4RYE8Odym">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <ref role="1XX52x" to="3nll:3NXs7ypg5id" resolve="DtoFlatteningRuleContainer" />
    <node concept="3EZMnI" id="E4RYE8OeBU" role="2wV5jI">
      <node concept="3F0ifn" id="E4RYE8OeC4" role="3EZMnx">
        <property role="3F0ifm" value="dto" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="E4RYE8OeCa" role="3EZMnx">
        <property role="3F0ifm" value="flattening rules" />
        <ref role="1k5W1q" node="3FBObrptCpP" resolve="QueryComponentKeywordStyle" />
      </node>
      <node concept="3F0ifn" id="E4RYE8OeCi" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
        <node concept="ljvvj" id="E4RYE8OeCy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="E4RYE8OeCH" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:E4RYE8OeC$" resolve="components" />
        <node concept="2iRkQZ" id="E4RYE8OeD0" role="2czzBx" />
        <node concept="lj46D" id="E4RYE8OeCR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="E4RYE8OeCW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="E4RYE8OeCs" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="4REBMIuhnIE" resolve="BodyBrace" />
      </node>
      <node concept="l2Vlx" id="E4RYE8OeBX" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="E4RYE9NMY4">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <property role="TrG5h" value="DtoFlatteningRule_DerivationLayout_EditorComponent" />
    <ref role="1XX52x" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
    <node concept="3EZMnI" id="E4RYE9NNdt" role="2wV5jI">
      <node concept="PMmxH" id="E4RYE9NNd$" role="3EZMnx">
        <ref role="PMmxG" node="3NXs7ypg5ie" resolve="IDtoDerivation_IgnoredVariables_EditorComponent" />
        <node concept="ljvvj" id="E4RYE9NNXB" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="E4RYE9NNXD" role="3n$kyP">
            <node concept="3clFbS" id="E4RYE9NNXE" role="2VODD2">
              <node concept="3clFbF" id="E4RYE9NO50" role="3cqZAp">
                <node concept="2OqwBi" id="E4RYE9NOq7" role="3clFbG">
                  <node concept="pncrf" id="E4RYE9NO4Z" role="2Oq$k0" />
                  <node concept="3TrcHB" id="E4RYE9NOHP" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yq2MLp" resolve="showDerivationRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="E4RYE9NNd_" role="3EZMnx">
        <ref role="PMmxG" node="5QsWOhWpHeH" resolve="IDtoDerivation_UsedDerivationRules_EditorComponent" />
      </node>
      <node concept="l2Vlx" id="E4RYE9NNdw" role="2iSdaV" />
    </node>
  </node>
  <node concept="22mcaB" id="E4RYEauqzU">
    <property role="3GE5qa" value="dtoDerivation" />
    <ref role="aqKnT" to="3nll:4LpUh3T0rQI" resolve="IDtoDerivable" />
    <node concept="22hDWj" id="E4RYEauqzV" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="4V91Il4TQme">
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <ref role="aqKnT" to="3nll:E4RYE9aka8" resolve="IDtoDataTypeRuleContainerComponent" />
    <node concept="22hDWj" id="4V91Il4TQmf" role="22hAXT" />
    <node concept="2VfDsV" id="4V91Il4TQmj" role="3ft7WO" />
    <node concept="3VyMlK" id="4V91Il4TQml" role="3ft7WO" />
    <node concept="2F$Pav" id="4V91Il4TSuq" role="3ft7WO">
      <node concept="3eGOop" id="4V91Il4TWFK" role="2$S_pN">
        <node concept="16NL3D" id="4V91Il4TYuB" role="upBLP">
          <node concept="16Na2f" id="4V91Il4TYuD" role="16NL3A">
            <node concept="3clFbS" id="4V91Il4TYuF" role="2VODD2">
              <node concept="3cpWs6" id="4V91Il5kn94" role="3cqZAp">
                <node concept="3X5UdL" id="4V91Il57eK2" role="3cqZAk">
                  <node concept="2ZBlsa" id="4V91Il57eLe" role="3X5Ude" />
                  <node concept="3X5Udd" id="4V91Il57eMd" role="3X5gkp">
                    <node concept="21nZrQ" id="4V91Il57eMc" role="3X5Uda">
                      <ref role="21nZrZ" to="3nll:5QsWOhW3TSN" resolve="Explicit" />
                    </node>
                    <node concept="3X5gDF" id="4V91Il57ePq" role="3X5gFO">
                      <node concept="2OqwBi" id="4V91Il57eQZ" role="3X5gDC">
                        <node concept="2OqwBi" id="4V91Il5xB_Y" role="2Oq$k0">
                          <node concept="ub8z3" id="4V91Il57ePp" role="2Oq$k0" />
                          <node concept="liA8E" id="4V91Il5xCxC" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4V91Il57eTw" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                          <node concept="Xl_RD" id="4V91Il57eVm" role="37wK5m">
                            <property role="Xl_RC" value="ex" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3X5Udd" id="4V91Il57eNe" role="3X5gkp">
                    <node concept="21nZrQ" id="4V91Il57eNf" role="3X5Uda">
                      <ref role="21nZrZ" to="3nll:5QsWOhW3TSM" resolve="Implicit" />
                    </node>
                    <node concept="3X5gDF" id="4V91Il57fxg" role="3X5gFO">
                      <node concept="2OqwBi" id="4V91Il57hNm" role="3X5gDC">
                        <node concept="2OqwBi" id="4V91Il5xCB0" role="2Oq$k0">
                          <node concept="ub8z3" id="4V91Il57gGj" role="2Oq$k0" />
                          <node concept="liA8E" id="4V91Il5xCEr" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4V91Il57hQw" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                          <node concept="Xl_RD" id="4V91Il57hSP" role="37wK5m">
                            <property role="Xl_RC" value="im" />
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
        <node concept="ucgPf" id="4V91Il4TWFM" role="3aKz83">
          <node concept="3clFbS" id="4V91Il4TWFO" role="2VODD2">
            <node concept="3cpWs8" id="4V91Il4U0P4" role="3cqZAp">
              <node concept="3cpWsn" id="4V91Il4U0P5" role="3cpWs9">
                <property role="TrG5h" value="dataTypeRule" />
                <node concept="3Tqbb2" id="4V91Il4U0Mt" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:1bq_vIpSfA4" resolve="DtoDataTypeRule" />
                </node>
                <node concept="2ShNRf" id="4V91Il4U0P6" role="33vP2m">
                  <node concept="3zrR0B" id="4V91Il4U0P7" role="2ShVmc">
                    <node concept="3Tqbb2" id="4V91Il4U0P8" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:1bq_vIpSfA4" resolve="DtoDataTypeRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4V91Il4U12o" role="3cqZAp">
              <node concept="2OqwBi" id="4V91Il4U1Gn" role="3clFbG">
                <node concept="2OqwBi" id="4V91Il4U1id" role="2Oq$k0">
                  <node concept="37vLTw" id="4V91Il4U12m" role="2Oq$k0">
                    <ref role="3cqZAo" node="4V91Il4U0P5" resolve="dataTypeRule" />
                  </node>
                  <node concept="3TrcHB" id="4V91Il4U1y_" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5QsWOhW3TSQ" resolve="usage" />
                  </node>
                </node>
                <node concept="tyxLq" id="4V91Il4U1S4" role="2OqNvi">
                  <node concept="2ZBlsa" id="4V91Il4U1SX" role="tz02z" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4V91Il4U0VZ" role="3cqZAp">
              <node concept="37vLTw" id="4V91Il4U0VX" role="3clFbG">
                <ref role="3cqZAo" node="4V91Il4U0P5" resolve="dataTypeRule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="4V91Il4TWJx" role="upBLP">
          <node concept="uGdhv" id="4V91Il4TYkE" role="16NeZM">
            <node concept="3clFbS" id="4V91Il4TYkG" role="2VODD2">
              <node concept="3clFbF" id="4V91Il4TZWO" role="3cqZAp">
                <node concept="2OqwBi" id="4V91Il4U04z" role="3clFbG">
                  <node concept="2ZBlsa" id="4V91Il4TZWN" role="2Oq$k0" />
                  <node concept="1XCIdh" id="4V91Il4U0c7" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ZThk1" id="4V91Il4TWPh" role="2ZBHrp">
        <ref role="2ZWj4r" to="3nll:5QsWOhW3TSL" resolve="DtoDerivationRuleUsage" />
      </node>
      <node concept="2$S_p_" id="4V91Il4TSzM" role="2$S_pT">
        <node concept="3clFbS" id="4V91Il4TSzN" role="2VODD2">
          <node concept="3clFbF" id="4V91Il4TXlV" role="3cqZAp">
            <node concept="2OqwBi" id="4V91Il4TXYW" role="3clFbG">
              <node concept="1XH99k" id="4V91Il4TXlU" role="2Oq$k0">
                <ref role="1XH99l" to="3nll:5QsWOhW3TSL" resolve="DtoDerivationRuleUsage" />
              </node>
              <node concept="2ViDtN" id="4V91Il4TYj9" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="4V91Il4TYqX" role="3ft7WO" />
  </node>
  <node concept="22mcaB" id="4V91Il5xCK9">
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <ref role="aqKnT" to="3nll:E4RYE9aka5" resolve="IDtoFlatteningRuleContainerComponent" />
    <node concept="22hDWj" id="4V91Il5xCKa" role="22hAXT" />
    <node concept="2VfDsV" id="4V91Il5xCKc" role="3ft7WO" />
    <node concept="3VyMlK" id="4V91Il5xCKe" role="3ft7WO" />
    <node concept="2F$Pav" id="4V91Il5xCLF" role="3ft7WO">
      <node concept="3eGOop" id="4V91Il5xCLG" role="2$S_pN">
        <node concept="16NL3D" id="4V91Il5xCLH" role="upBLP">
          <node concept="16Na2f" id="4V91Il5xCLI" role="16NL3A">
            <node concept="3clFbS" id="4V91Il5xCLJ" role="2VODD2">
              <node concept="3cpWs6" id="4V91Il5xCLK" role="3cqZAp">
                <node concept="3X5UdL" id="4V91Il5xCLL" role="3cqZAk">
                  <node concept="2ZBlsa" id="4V91Il5xCLM" role="3X5Ude" />
                  <node concept="3X5Udd" id="4V91Il5xCLN" role="3X5gkp">
                    <node concept="21nZrQ" id="4V91Il5xCLO" role="3X5Uda">
                      <ref role="21nZrZ" to="3nll:5QsWOhW3TSN" resolve="Explicit" />
                    </node>
                    <node concept="3X5gDF" id="4V91Il5xCLP" role="3X5gFO">
                      <node concept="2OqwBi" id="4V91Il5xCLQ" role="3X5gDC">
                        <node concept="2OqwBi" id="4V91Il5xCLR" role="2Oq$k0">
                          <node concept="ub8z3" id="4V91Il5xCLS" role="2Oq$k0" />
                          <node concept="liA8E" id="4V91Il5xCLT" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4V91Il5xCLU" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                          <node concept="Xl_RD" id="4V91Il5xCLV" role="37wK5m">
                            <property role="Xl_RC" value="ex" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3X5Udd" id="4V91Il5xCLW" role="3X5gkp">
                    <node concept="21nZrQ" id="4V91Il5xCLX" role="3X5Uda">
                      <ref role="21nZrZ" to="3nll:5QsWOhW3TSM" resolve="Implicit" />
                    </node>
                    <node concept="3X5gDF" id="4V91Il5xCLY" role="3X5gFO">
                      <node concept="2OqwBi" id="4V91Il5xCLZ" role="3X5gDC">
                        <node concept="2OqwBi" id="4V91Il5xCM0" role="2Oq$k0">
                          <node concept="ub8z3" id="4V91Il5xCM1" role="2Oq$k0" />
                          <node concept="liA8E" id="4V91Il5xCM2" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4V91Il5xCM3" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                          <node concept="Xl_RD" id="4V91Il5xCM4" role="37wK5m">
                            <property role="Xl_RC" value="im" />
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
        <node concept="ucgPf" id="4V91Il5xCM5" role="3aKz83">
          <node concept="3clFbS" id="4V91Il5xCM6" role="2VODD2">
            <node concept="3cpWs8" id="4V91Il5xCM7" role="3cqZAp">
              <node concept="3cpWsn" id="4V91Il5xCM8" role="3cpWs9">
                <property role="TrG5h" value="flatteningRule" />
                <node concept="3Tqbb2" id="4V91Il5xCM9" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                </node>
                <node concept="2ShNRf" id="4V91Il5xCMa" role="33vP2m">
                  <node concept="3zrR0B" id="4V91Il5xCMb" role="2ShVmc">
                    <node concept="3Tqbb2" id="4V91Il5xCMc" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4V91Il5xCMd" role="3cqZAp">
              <node concept="2OqwBi" id="4V91Il5xCMe" role="3clFbG">
                <node concept="2OqwBi" id="4V91Il5xCMf" role="2Oq$k0">
                  <node concept="37vLTw" id="4V91Il5xCMg" role="2Oq$k0">
                    <ref role="3cqZAo" node="4V91Il5xCM8" resolve="flatteningRule" />
                  </node>
                  <node concept="3TrcHB" id="4V91Il5xCMh" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:5QsWOhW3TSQ" resolve="usage" />
                  </node>
                </node>
                <node concept="tyxLq" id="4V91Il5xCMi" role="2OqNvi">
                  <node concept="2ZBlsa" id="4V91Il5xCMj" role="tz02z" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4V91Il5IWt7" role="3cqZAp">
              <node concept="2OqwBi" id="4V91Il5IWQ4" role="3clFbG">
                <node concept="2OqwBi" id="4V91Il5IWAy" role="2Oq$k0">
                  <node concept="37vLTw" id="4V91Il5IWt5" role="2Oq$k0">
                    <ref role="3cqZAo" node="4V91Il5xCM8" resolve="flatteningRule" />
                  </node>
                  <node concept="3TrEf2" id="4V91Il5IWCR" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                  </node>
                </node>
                <node concept="2DeJnY" id="4V91Il5IX1n" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="4V91Il5xCMk" role="3cqZAp">
              <node concept="37vLTw" id="4V91Il5xCMl" role="3clFbG">
                <ref role="3cqZAo" node="4V91Il5xCM8" resolve="flatteningRule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="4V91Il5xCMm" role="upBLP">
          <node concept="uGdhv" id="4V91Il5xCMn" role="16NeZM">
            <node concept="3clFbS" id="4V91Il5xCMo" role="2VODD2">
              <node concept="3clFbF" id="4V91Il5xCMp" role="3cqZAp">
                <node concept="2OqwBi" id="4V91Il5xCMq" role="3clFbG">
                  <node concept="2ZBlsa" id="4V91Il5xCMr" role="2Oq$k0" />
                  <node concept="1XCIdh" id="4V91Il5xCMs" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ZThk1" id="4V91Il5xCMt" role="2ZBHrp">
        <ref role="2ZWj4r" to="3nll:5QsWOhW3TSL" resolve="DtoDerivationRuleUsage" />
      </node>
      <node concept="2$S_p_" id="4V91Il5xCMu" role="2$S_pT">
        <node concept="3clFbS" id="4V91Il5xCMv" role="2VODD2">
          <node concept="3clFbF" id="4V91Il5xCMw" role="3cqZAp">
            <node concept="2OqwBi" id="4V91Il5xCMx" role="3clFbG">
              <node concept="1XH99k" id="4V91Il5xCMy" role="2Oq$k0">
                <ref role="1XH99l" to="3nll:5QsWOhW3TSL" resolve="DtoDerivationRuleUsage" />
              </node>
              <node concept="2ViDtN" id="4V91Il5xCMz" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="4V91Il5xCKh" role="3ft7WO" />
    <node concept="2F$Pav" id="4V91Il69jYa" role="3ft7WO">
      <node concept="3eGOop" id="4V91Il69k6n" role="2$S_pN">
        <node concept="16NL3D" id="4V91Il69nmj" role="upBLP">
          <node concept="16Na2f" id="4V91Il69nml" role="16NL3A">
            <node concept="3clFbS" id="4V91Il69nmn" role="2VODD2">
              <node concept="3cpWs6" id="4V91Il69oXC" role="3cqZAp">
                <node concept="3X5UdL" id="4V91Il69p32" role="3cqZAk">
                  <node concept="2ZBlsa" id="4V91Il69p3J" role="3X5Ude" />
                  <node concept="3X5Udd" id="4V91Il69p4s" role="3X5gkp">
                    <node concept="21nZrQ" id="4V91Il69p4r" role="3X5Uda">
                      <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
                    </node>
                    <node concept="3X5gDF" id="4V91Il69p5c" role="3X5gFO">
                      <node concept="3clFbT" id="4V91Il69p5b" role="3X5gDC" />
                    </node>
                  </node>
                  <node concept="3X5Udd" id="4V91Il69p69" role="3X5gkp">
                    <node concept="21nZrQ" id="4V91Il69p6a" role="3X5Uda">
                      <ref role="21nZrZ" to="3nll:3NXs7yqZJYF" resolve="Prefix" />
                    </node>
                    <node concept="3X5gDF" id="4V91Il69pbl" role="3X5gFO">
                      <node concept="2OqwBi" id="4V91Il69pbm" role="3X5gDC">
                        <node concept="2OqwBi" id="4V91Il69pbn" role="2Oq$k0">
                          <node concept="ub8z3" id="4V91Il69pbo" role="2Oq$k0" />
                          <node concept="liA8E" id="4V91Il69pbp" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4V91Il69pbq" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                          <node concept="Xl_RD" id="4V91Il69pbr" role="37wK5m">
                            <property role="Xl_RC" value="pr" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3X5Udd" id="4V91Il69p9c" role="3X5gkp">
                    <node concept="21nZrQ" id="4V91Il69p9d" role="3X5Uda">
                      <ref role="21nZrZ" to="3nll:3NXs7yqZJYI" resolve="Suffix" />
                    </node>
                    <node concept="3X5gDF" id="4V91Il69pfc" role="3X5gFO">
                      <node concept="2OqwBi" id="4V91Il69pfd" role="3X5gDC">
                        <node concept="2OqwBi" id="4V91Il69pfe" role="2Oq$k0">
                          <node concept="ub8z3" id="4V91Il69pff" role="2Oq$k0" />
                          <node concept="liA8E" id="4V91Il69pfg" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4V91Il69pfh" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                          <node concept="Xl_RD" id="4V91Il69pfi" role="37wK5m">
                            <property role="Xl_RC" value="su" />
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
        <node concept="ucgPf" id="4V91Il69k6p" role="3aKz83">
          <node concept="3clFbS" id="4V91Il69k6r" role="2VODD2">
            <node concept="3cpWs8" id="4V91Il69pr8" role="3cqZAp">
              <node concept="3cpWsn" id="4V91Il69pr9" role="3cpWs9">
                <property role="TrG5h" value="flatteningRule" />
                <node concept="3Tqbb2" id="4V91Il69pra" role="1tU5fm">
                  <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                </node>
                <node concept="2ShNRf" id="4V91Il69prb" role="33vP2m">
                  <node concept="3zrR0B" id="4V91Il69prc" role="2ShVmc">
                    <node concept="3Tqbb2" id="4V91Il69prd" role="3zrR0E">
                      <ref role="ehGHo" to="3nll:1bq_vIpSfA5" resolve="DtoFlatteningRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4V91Il69pre" role="3cqZAp">
              <node concept="2OqwBi" id="4V91Il69qcW" role="3clFbG">
                <node concept="2OqwBi" id="4V91Il69prg" role="2Oq$k0">
                  <node concept="37vLTw" id="4V91Il69prh" role="2Oq$k0">
                    <ref role="3cqZAo" node="4V91Il69pr9" resolve="flatteningRule" />
                  </node>
                  <node concept="3TrcHB" id="4V91Il69pZN" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:3NXs7yqZK9u" resolve="nameConvention" />
                  </node>
                </node>
                <node concept="tyxLq" id="4V91Il69qsj" role="2OqNvi">
                  <node concept="2ZBlsa" id="4V91Il69qtc" role="tz02z" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4V91Il69prl" role="3cqZAp">
              <node concept="2OqwBi" id="4V91Il69prm" role="3clFbG">
                <node concept="2OqwBi" id="4V91Il69prn" role="2Oq$k0">
                  <node concept="37vLTw" id="4V91Il69pro" role="2Oq$k0">
                    <ref role="3cqZAo" node="4V91Il69pr9" resolve="flatteningRule" />
                  </node>
                  <node concept="3TrEf2" id="4V91Il69prp" role="2OqNvi">
                    <ref role="3Tt5mk" to="3nll:3NXs7yom3d$" resolve="derivableReference" />
                  </node>
                </node>
                <node concept="2DeJnY" id="4V91Il69prq" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="4V91Il69prr" role="3cqZAp">
              <node concept="37vLTw" id="4V91Il69prs" role="3clFbG">
                <ref role="3cqZAo" node="4V91Il69pr9" resolve="flatteningRule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="4V91Il69nll" role="upBLP">
          <node concept="uGdhv" id="4V91Il69nrG" role="16NeZM">
            <node concept="3clFbS" id="4V91Il69nrI" role="2VODD2">
              <node concept="3clFbF" id="4V91Il69n$C" role="3cqZAp">
                <node concept="2OqwBi" id="4V91Il69nGn" role="3clFbG">
                  <node concept="2ZBlsa" id="4V91Il69n$B" role="2Oq$k0" />
                  <node concept="1XCIdh" id="4V91Il69nI9" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ZThk1" id="4V91Il69k3u" role="2ZBHrp">
        <ref role="2ZWj4r" to="3nll:3NXs7yqZJYD" resolve="FlatteningRuleNameConvention" />
      </node>
      <node concept="2$S_p_" id="4V91Il69k3x" role="2$S_pT">
        <node concept="3clFbS" id="4V91Il69k3y" role="2VODD2">
          <node concept="3clFbF" id="4V91Il69kcK" role="3cqZAp">
            <node concept="2OqwBi" id="4V91Il69lUb" role="3clFbG">
              <node concept="2OqwBi" id="4V91Il69kPL" role="2Oq$k0">
                <node concept="1XH99k" id="4V91Il69kcJ" role="2Oq$k0">
                  <ref role="1XH99l" to="3nll:3NXs7yqZJYD" resolve="FlatteningRuleNameConvention" />
                </node>
                <node concept="2ViDtN" id="4V91Il69l7H" role="2OqNvi" />
              </node>
              <node concept="3zZkjj" id="4V91Il69mDZ" role="2OqNvi">
                <node concept="1bVj0M" id="4V91Il69mE1" role="23t8la">
                  <node concept="3clFbS" id="4V91Il69mE2" role="1bW5cS">
                    <node concept="3clFbF" id="4V91Il69mLq" role="3cqZAp">
                      <node concept="3fqX7Q" id="4V91Il69nhz" role="3clFbG">
                        <node concept="2OqwBi" id="4V91Il69nh_" role="3fr31v">
                          <node concept="37vLTw" id="4V91Il69nhA" role="2Oq$k0">
                            <ref role="3cqZAo" node="4V91Il69mE3" resolve="it" />
                          </node>
                          <node concept="21noJN" id="4V91Il69nhB" role="2OqNvi">
                            <node concept="21nZrQ" id="4V91Il69nhC" role="21noJM">
                              <ref role="21nZrZ" to="3nll:3NXs7yqZJYE" resolve="None" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4V91Il69mE3" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4V91Il69mE4" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7qLyWzvgeqM">
    <property role="3GE5qa" value="generationSettings.general" />
    <ref role="1XX52x" to="3nll:7qLyWzvgcUx" resolve="OutputPathPreference" />
    <node concept="3EZMnI" id="7qLyWzvgeqO" role="2wV5jI">
      <node concept="3F0ifn" id="7qLyWzvgeqV" role="3EZMnx">
        <property role="3F0ifm" value="output path:" />
        <node concept="VechU" id="7qLyWzvger5" role="3F10Kt">
          <property role="Vb096" value="fLwANPp/orange" />
        </node>
      </node>
      <node concept="3F0ifn" id="7qLyWzvCQRg" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
        <node concept="11LMrY" id="7qLyWzvCQRz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="7qLyWzvger1" role="3EZMnx">
        <ref role="1NtTu8" to="3nll:7qLyWzvgeqK" resolve="path" />
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
      </node>
      <node concept="3F0ifn" id="7qLyWzvCQRs" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
        <node concept="11L4FC" id="7qLyWzvCQR_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7qLyWzvgeqR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7IRUqbcguVr">
    <property role="3GE5qa" value="event" />
    <ref role="1XX52x" to="3nll:7fqk8p43ygT" resolve="EventReference" />
    <node concept="1iCGBv" id="7IRUqbcguVt" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:7fqk8p43ygW" resolve="event" />
      <node concept="1sVBvm" id="7IRUqbcguVv" role="1sWHZn">
        <node concept="3F0A7n" id="7IRUqbcguVA" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7IRUqbcguVD">
    <property role="3GE5qa" value="command" />
    <ref role="1XX52x" to="3nll:7fqk8p43yh1" resolve="CommandReference" />
    <node concept="1iCGBv" id="7IRUqbcguVF" role="2wV5jI">
      <ref role="1NtTu8" to="3nll:7fqk8p43yh2" resolve="command" />
      <node concept="1sVBvm" id="7IRUqbcguVH" role="1sWHZn">
        <node concept="3F0A7n" id="7IRUqbcguVS" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="51Z40VwF_vl">
    <property role="3GE5qa" value="commandContainer" />
    <ref role="aqKnT" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="1Qtc8_" id="51Z40VwF_vo" role="IW6Ez">
      <node concept="mvV$s" id="51Z40VwF_v$" role="1Qtc8A">
        <node concept="A1WHu" id="51Z40VwF_vB" role="A14EM">
          <ref role="A1WHt" node="5jZDGTimaP9" resolve="IComponentWithRepositoryReferences_RequiresTransformationMenu" />
        </node>
      </node>
      <node concept="3cWJ9i" id="51Z40VwF_vs" role="1Qtc8$">
        <node concept="CtIbL" id="51Z40VwF_vu" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="51Z40VwF_vH" role="1Qtc8A">
        <node concept="1hCUdq" id="51Z40VwF_vJ" role="1hCUd6">
          <node concept="3clFbS" id="51Z40VwF_vL" role="2VODD2">
            <node concept="3clFbF" id="51Z40VwFAv9" role="3cqZAp">
              <node concept="Xl_RD" id="51Z40VwFAv8" role="3clFbG">
                <property role="Xl_RC" value="of" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="51Z40VwF_vN" role="IWgqQ">
          <node concept="3clFbS" id="51Z40VwF_vP" role="2VODD2">
            <node concept="3clFbF" id="51Z40VwFACU" role="3cqZAp">
              <node concept="2OqwBi" id="51Z40VwFCDs" role="3clFbG">
                <node concept="2OqwBi" id="51Z40VwFADe" role="2Oq$k0">
                  <node concept="7Obwk" id="51Z40VwFACT" role="2Oq$k0" />
                  <node concept="3TrcHB" id="51Z40VwFAEl" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                  </node>
                </node>
                <node concept="tyxLq" id="51Z40VwFCZp" role="2OqNvi">
                  <node concept="3clFbT" id="51Z40VwFD71" role="tz02z">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="51Z40Vzeuyg" role="3cqZAp">
              <node concept="3clFbS" id="51Z40Vzeuyi" role="3clFbx">
                <node concept="3clFbF" id="51Z40Vzex9b" role="3cqZAp">
                  <node concept="2OqwBi" id="51Z40VzexfV" role="3clFbG">
                    <node concept="2OqwBi" id="51Z40VzexbW" role="2Oq$k0">
                      <node concept="7Obwk" id="51Z40Vzex9a" role="2Oq$k0" />
                      <node concept="3TrEf2" id="51Z40Vzexd3" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                      </node>
                    </node>
                    <node concept="3YRAZt" id="51Z40Vzexhq" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="51Z40VzevTv" role="3clFbw">
                <node concept="3fqX7Q" id="51Z40Vzex5a" role="3uHU7w">
                  <node concept="2OqwBi" id="51Z40Vzex5c" role="3fr31v">
                    <node concept="2OqwBi" id="51Z40Vzex5d" role="2Oq$k0">
                      <node concept="7Obwk" id="51Z40Vzex5e" role="2Oq$k0" />
                      <node concept="3TrEf2" id="51Z40Vzex5f" role="2OqNvi">
                        <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="51Z40Vzex5g" role="2OqNvi">
                      <ref role="37wK5l" to="sx7w:2RbvdOKU7zU" resolve="isNameSet" />
                    </node>
                  </node>
                </node>
                <node concept="17QLQc" id="51Z40VzevS3" role="3uHU7B">
                  <node concept="2OqwBi" id="51Z40VzeuLf" role="3uHU7B">
                    <node concept="7Obwk" id="51Z40Vzeuzp" role="2Oq$k0" />
                    <node concept="3TrEf2" id="51Z40Vzev4x" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="51Z40VzevSL" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="51Z40VwFE2Z" role="3cqZAp">
              <node concept="2OqwBi" id="51Z40VwFEi5" role="3clFbG">
                <node concept="7Obwk" id="51Z40VwFE2Y" role="2Oq$k0" />
                <node concept="1OKiuA" id="51Z40VwFEAX" role="2OqNvi">
                  <node concept="1Q80Hx" id="51Z40VwFEBB" role="lBI5i" />
                  <node concept="2TlHUq" id="51Z40VwFECN" role="lGT1i">
                    <ref role="2TlMyj" node="51Z40VwF_aU" resolve="forAggregateBlockId" />
                  </node>
                  <node concept="3cmrfG" id="51Z40VwFEE4" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="51Z40VwF_Bb" role="2jiSrf">
          <node concept="3clFbS" id="51Z40VwF_Bc" role="2VODD2">
            <node concept="3clFbF" id="51Z40VwF_IL" role="3cqZAp">
              <node concept="3fqX7Q" id="51Z40VwFAtg" role="3clFbG">
                <node concept="2OqwBi" id="51Z40VwFAti" role="3fr31v">
                  <node concept="7Obwk" id="51Z40VwFAtj" role="2Oq$k0" />
                  <node concept="3TrcHB" id="51Z40VwFAtk" role="2OqNvi">
                    <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="51Z40VwF_vm" role="22hAXT">
      <property role="TrG5h" value="CommandContainer_RequiresAndForAggregate_TransformationMenu" />
    </node>
  </node>
  <node concept="1h_SRR" id="51Z40VwJ5to">
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="CommandContainerOfAggregateDeletion_ActionMap" />
    <ref role="1h_SK9" to="3nll:awtshkmllB" resolve="CommandContainer" />
    <node concept="1hA7zw" id="51Z40VwJ5tJ" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="51Z40VwJ5tK" role="1hA7z_">
        <node concept="3clFbS" id="51Z40VwJ5tL" role="2VODD2">
          <node concept="3clFbJ" id="51Z40VwMyC9" role="3cqZAp">
            <node concept="3clFbS" id="51Z40VwMyCa" role="3clFbx">
              <node concept="3cpWs6" id="51Z40VwMyCb" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="51Z40VwMyCc" role="3clFbw">
              <node concept="0IXxy" id="51Z40VwMyCd" role="2Oq$k0" />
              <node concept="2xy62i" id="51Z40VwMyCe" role="2OqNvi">
                <node concept="1Q80Hx" id="51Z40VwMyCf" role="2xHN3q" />
                <node concept="2TlHUq" id="51Z40VwMyCg" role="3a7HXU">
                  <ref role="2TlMyj" node="51Z40VwF_aU" resolve="forAggregateBlockId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="51Z40VwMyAd" role="3cqZAp" />
          <node concept="3clFbF" id="51Z40VwJ6nl" role="3cqZAp">
            <node concept="2OqwBi" id="51Z40VwJ6NZ" role="3clFbG">
              <node concept="2OqwBi" id="51Z40VwJ6nE" role="2Oq$k0">
                <node concept="0IXxy" id="51Z40VwJ6nk" role="2Oq$k0" />
                <node concept="3TrcHB" id="51Z40VwJ6oL" role="2OqNvi">
                  <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
                </node>
              </node>
              <node concept="tyxLq" id="51Z40VwJ77e" role="2OqNvi">
                <node concept="3clFbT" id="51Z40VwJ77S" role="tz02z" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="51Z40VwJ7bS" role="3cqZAp">
            <node concept="2OqwBi" id="51Z40VwJ7pP" role="3clFbG">
              <node concept="2OqwBi" id="51Z40VwJ7cA" role="2Oq$k0">
                <node concept="0IXxy" id="51Z40VwJ7bR" role="2Oq$k0" />
                <node concept="3TrEf2" id="51Z40VwJ7dJ" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:7x9oRL8vqaW" resolve="aggregateReference" />
                </node>
              </node>
              <node concept="3YRAZt" id="51Z40VwJ7DT" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="51Z40VwJ78u" role="3cqZAp" />
          <node concept="3clFbJ" id="51Z40VyOZPp" role="3cqZAp">
            <node concept="3clFbS" id="51Z40VyOZPr" role="3clFbx">
              <node concept="3clFbF" id="51Z40Vyxszv" role="3cqZAp">
                <node concept="2OqwBi" id="51Z40VyxsOK" role="3clFbG">
                  <node concept="0IXxy" id="51Z40Vyxszu" role="2Oq$k0" />
                  <node concept="2qgKlT" id="51Z40Vyxtcw" role="2OqNvi">
                    <ref role="37wK5l" to="sx7w:2RbvdOMpYd2" resolve="setName" />
                    <node concept="10Nm6u" id="51Z40Vyxtl4" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="51Z40VyP0K4" role="3clFbw">
              <node concept="10Nm6u" id="51Z40VyP0TS" role="3uHU7w" />
              <node concept="2OqwBi" id="51Z40VyP0b6" role="3uHU7B">
                <node concept="0IXxy" id="51Z40VyP01Q" role="2Oq$k0" />
                <node concept="3TrEf2" id="51Z40VyP0e1" role="2OqNvi">
                  <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="51Z40VyOZLf" role="3cqZAp" />
          <node concept="3clFbJ" id="51Z40VwJ851" role="3cqZAp">
            <node concept="3clFbS" id="51Z40VwJ852" role="3clFbx">
              <node concept="3clFbF" id="51Z40VwJ853" role="3cqZAp">
                <node concept="2OqwBi" id="51Z40VwJ854" role="3clFbG">
                  <node concept="2OqwBi" id="51Z40Vy_Xqj" role="2Oq$k0">
                    <node concept="0IXxy" id="51Z40Vy_XpN" role="2Oq$k0" />
                    <node concept="3TrEf2" id="51Z40Vy_XKO" role="2OqNvi">
                      <ref role="3Tt5mk" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
                    </node>
                  </node>
                  <node concept="1OKiuA" id="51Z40VwJ856" role="2OqNvi">
                    <node concept="1Q80Hx" id="51Z40VwJ857" role="lBI5i" />
                    <node concept="2TlHUq" id="51Z40VwJ858" role="lGT1i">
                      <ref role="2TlMyj" node="2RbvdOJ81o1" resolve="nameCellId" />
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
              <node concept="0IXxy" id="51Z40VwJ85c" role="2Oq$k0" />
              <node concept="2qgKlT" id="51Z40VwJ85d" role="2OqNvi">
                <ref role="37wK5l" to="sx7w:1LTEHzOfCt" resolve="isCommandHandler" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="51Z40VwJ85e" role="3cqZAp">
            <node concept="2OqwBi" id="51Z40VwJ85f" role="3clFbG">
              <node concept="0IXxy" id="51Z40VwJ85g" role="2Oq$k0" />
              <node concept="1OKiuA" id="51Z40VwJ85h" role="2OqNvi">
                <node concept="1Q80Hx" id="51Z40VwJ85i" role="lBI5i" />
                <node concept="2TlHUq" id="51Z40VwJ85j" role="lGT1i">
                  <ref role="2TlMyj" node="6Qa18YGLSVu" resolve="containerTypeCellId" />
                </node>
                <node concept="3cmrfG" id="51Z40VwJ85k" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="51Z40VwJ5u5" role="jK8aL">
        <node concept="3clFbS" id="51Z40VwJ5u6" role="2VODD2">
          <node concept="3clFbF" id="51Z40VwJ5_C" role="3cqZAp">
            <node concept="2OqwBi" id="51Z40VwJ5Vx" role="3clFbG">
              <node concept="0IXxy" id="51Z40VwJ5_B" role="2Oq$k0" />
              <node concept="3TrcHB" id="51Z40VwJ6g$" role="2OqNvi">
                <ref role="3TsBF5" to="3nll:51Z40VwFzV7" resolve="shouldDisplayAggregate" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="3L7_qKKKJVY">
    <property role="3GE5qa" value="general.placeholder" />
    <property role="TrG5h" value="IComponentWithNamePlaceholder_StringLiteral_EditorComponent" />
    <ref role="1XX52x" to="3nll:1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
    <node concept="1QoScp" id="3L7_qKKKKhU" role="2wV5jI">
      <node concept="pkWqt" id="3L7_qKKKKhV" role="3e4ffs">
        <node concept="3clFbS" id="3L7_qKKKKhW" role="2VODD2">
          <node concept="3clFbF" id="3L7_qKKKKhX" role="3cqZAp">
            <node concept="3fqX7Q" id="3L7_qKKKKhY" role="3clFbG">
              <node concept="2OqwBi" id="3L7_qKKKKhZ" role="3fr31v">
                <node concept="pncrf" id="3L7_qKKKKi0" role="2Oq$k0" />
                <node concept="2qgKlT" id="3L7_qKKKKi1" role="2OqNvi">
                  <ref role="37wK5l" to="sx7w:2RbvdOL$gIz" resolve="shouldShowPlaceholder" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1HlG4h" id="3L7_qKKKKi2" role="1QoVPY">
        <ref role="34QXea" node="1LTEH_QNlw" resolve="IComponentWithNamePlaceholder_KeyMap" />
        <ref role="1ERwB7" node="2RbvdOJsBs1" resolve="GenericNodeDeletionActionMap" />
        <ref role="1k5W1q" node="2RbvdOJyHvg" resolve="PlaceholderTextStyle" />
        <node concept="1HfYo3" id="3L7_qKKKKi3" role="1HlULh">
          <node concept="3TQlhw" id="3L7_qKKKKi4" role="1Hhtcw">
            <node concept="3clFbS" id="3L7_qKKKKi5" role="2VODD2">
              <node concept="3clFbF" id="3L7_qKKKKi6" role="3cqZAp">
                <node concept="3cpWs3" id="3L7_qKKKKi7" role="3clFbG">
                  <node concept="Xl_RD" id="3L7_qKKKKi8" role="3uHU7w">
                    <property role="Xl_RC" value="&gt;" />
                  </node>
                  <node concept="3cpWs3" id="3L7_qKKKKi9" role="3uHU7B">
                    <node concept="Xl_RD" id="3L7_qKKKKia" role="3uHU7B">
                      <property role="Xl_RC" value="&lt;" />
                    </node>
                    <node concept="2OqwBi" id="3L7_qKKKKib" role="3uHU7w">
                      <node concept="pncrf" id="3L7_qKKKKic" role="2Oq$k0" />
                      <node concept="2qgKlT" id="3L7_qKKKKid" role="2OqNvi">
                        <ref role="37wK5l" to="sx7w:2RbvdOLeryC" resolve="getPlaceholderText" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2SqB2G" id="3L7_qKKKKie" role="2SqHTX">
          <property role="TrG5h" value="placeholderCellId" />
        </node>
      </node>
      <node concept="1iCGBv" id="3L7_qKKKQBU" role="1QoS34">
        <ref role="1NtTu8" to="3nll:2RbvdOM04SO" resolve="nameWrapper" />
        <ref role="1ERwB7" node="2RbvdOL$9vq" resolve="IOptionalValidIdentifierWrapper_IComponentWithPlaceholderNameDeletionActions" />
        <node concept="1sVBvm" id="3L7_qKKKQBV" role="1sWHZn">
          <node concept="3EZMnI" id="3L7_qKKKQFY" role="2wV5jI">
            <node concept="3F0ifn" id="3L7_qKKKQG8" role="3EZMnx">
              <property role="3F0ifm" value="&quot;" />
              <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
              <node concept="11LMrY" id="3L7_qKKKQGt" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F0A7n" id="3L7_qKKKQGm" role="3EZMnx">
              <property role="1Intyy" value="true" />
              <property role="1O74Pk" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
              <node concept="2SqB2G" id="3L7_qKKKQGx" role="2SqHTX">
                <property role="TrG5h" value="IOptionalValidIdentifierWrapper_IComponentWithPlaceholderNameDeletionActions" />
              </node>
            </node>
            <node concept="3F0ifn" id="3L7_qKKKQGe" role="3EZMnx">
              <property role="3F0ifm" value="&quot;" />
              <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
              <node concept="2SqB2G" id="3L7_qKKKQGr" role="2SqHTX">
                <property role="TrG5h" value="IOptionalValidIdentifierWrapper_IComponentWithPlaceholderNameDeletionActions" />
              </node>
              <node concept="11L4FC" id="3L7_qKKKQGv" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="l2Vlx" id="3L7_qKKKQG1" role="2iSdaV" />
            <node concept="2SqB2G" id="3L7_qKKKQGz" role="2SqHTX">
              <property role="TrG5h" value="IOptionalValidIdentifierWrapper_IComponentWithPlaceholderNameDeletionActions" />
            </node>
          </node>
        </node>
        <node concept="1I8cUB" id="3L7_qKKKQFW" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2QCVoC60MTN">
    <property role="3GE5qa" value="typing.kotlin" />
    <ref role="1XX52x" to="3nll:2QCVoC54a87" resolve="KotlinDataType" />
    <node concept="3F1sOY" id="2QCVoC60MTP" role="2wV5jI">
      <property role="1$x2rV" value="&lt;kotlin type&gt;" />
      <ref role="1NtTu8" to="3nll:2QCVoC6fUaM" resolve="actualType" />
    </node>
  </node>
</model>

