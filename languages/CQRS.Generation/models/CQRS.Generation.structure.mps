<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7c81c792-29f8-43b8-86dd-c441406afee9(CQRS.Generation.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="hcm8" ref="r:72a7bf00-0175-42ca-b99b-fe8519b6a16f(jetbrains.mps.kotlin.structure)" />
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
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
  <node concept="1TIwiD" id="CvLt7qMatM">
    <property role="EcuMT" value="729519169766729586" />
    <property role="TrG5h" value="QueryOutput" />
    <property role="3GE5qa" value="querySide.query" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="p4fykY81mq" role="1TKVEi">
      <property role="IQ2ns" value="451554192320894362" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="p4fykY81mr" role="1TKVEi">
      <property role="IQ2ns" value="451554192320894363" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="1TJgyj" id="CvLt7qMbhv" role="1TKVEi">
      <property role="IQ2ns" value="729519169766732895" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p43yh4" resolve="Query" />
    </node>
    <node concept="PrWs8" id="4yUYSn08EdV" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3GrpC3f1RXS">
    <property role="EcuMT" value="4259110576024158072" />
    <property role="3GE5qa" value="querySide.query" />
    <property role="TrG5h" value="QueryInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4yUYSn08EdX" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="PlHQZ" id="4yUYSn08Edi">
    <property role="TrG5h" value="FileOutput" />
    <property role="EcuMT" value="729519169766733351" />
    <property role="3GE5qa" value="base" />
    <node concept="PrWs8" id="2Np_kya0oSw" role="PrDN$">
      <ref role="PrY4T" node="2Np_kya0nuJ" resolve="ComponentOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4yUYSn0hQGy">
    <property role="EcuMT" value="5240777668274121506" />
    <property role="TrG5h" value="ParameterOutput" />
    <property role="3GE5qa" value="variable" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2Np_kya0p_p" role="PzmwI">
      <ref role="PrY4T" node="61W7Av0nhkE" resolve="ElementOutput" />
    </node>
    <node concept="1TJgyi" id="1DRRhzqSLFN" role="1TKVEl">
      <property role="IQ2nx" value="1907236066035964659" />
      <property role="TrG5h" value="name" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="p4fyl2V4x8" role="1TKVEl">
      <property role="IQ2nx" value="451554192401385544" />
      <property role="TrG5h" value="isMutable" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="p4fyl2V4xb" role="1TKVEl">
      <property role="IQ2nx" value="451554192401385547" />
      <property role="TrG5h" value="modifier" />
      <ref role="AX2Wp" to="3nll:p4fyl2V4xf" resolve="VariableModifier" />
    </node>
    <node concept="1TJgyi" id="p4fyl2WFYm" role="1TKVEl">
      <property role="IQ2nx" value="451554192401809302" />
      <property role="TrG5h" value="hideModifiers" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="p4fyl2WFYr" role="1TKVEl">
      <property role="IQ2nx" value="451554192401809307" />
      <property role="TrG5h" value="isOverriding" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="1DRRhzqSLFP" role="1TKVEi">
      <property role="IQ2ns" value="1907236066035964661" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="1TJgyj" id="p4fykUMIiB" role="1TKVEi">
      <property role="IQ2ns" value="451554192264979623" />
      <property role="20kJfa" value="originalParameter" />
      <ref role="20lvS9" to="3nll:7fqk8p3MBQ4" resolve="Parameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="4yUYSn0hQWi">
    <property role="EcuMT" value="5240777668274122514" />
    <property role="TrG5h" value="IDataTypeOutput" />
    <property role="3GE5qa" value="typing" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4yUYSn0hQWj" role="1TKVEi">
      <property role="IQ2ns" value="5240777668274122515" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="PrWs8" id="2Np_kya0MnO" role="PzmwI">
      <ref role="PrY4T" node="61W7Av0nhkE" resolve="ElementOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBgElC">
    <property role="EcuMT" value="4820124486370239848" />
    <property role="3GE5qa" value="querySide.dto" />
    <property role="TrG5h" value="DtoOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4b$xqUBgElD" role="1TKVEi">
      <property role="IQ2ns" value="4820124486370239849" />
      <property role="20kJfa" value="dto" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:4Wa3rAG5J$3" resolve="Dto" />
    </node>
    <node concept="PrWs8" id="4b$xqUBgEH3" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="4yIxVQyOSDg" role="1TKVEi">
      <property role="IQ2ns" value="5237272665228806736" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="p4fykY82c4" role="1TKVEi">
      <property role="IQ2ns" value="451554192320897796" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBhZGU">
    <property role="EcuMT" value="4820124486370589498" />
    <property role="TrG5h" value="ValueObjectOutput" />
    <property role="3GE5qa" value="commandSide" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4b$xqUBi0l8" role="1TKVEi">
      <property role="IQ2ns" value="4820124486370592072" />
      <property role="20kJfa" value="valueObject" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:4Wa3rAG5JzR" resolve="ValueObject" />
    </node>
    <node concept="PrWs8" id="4b$xqUBhZGV" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="p4fykW27X5" role="1TKVEi">
      <property role="IQ2ns" value="451554192285794117" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="2Np_kya7awX" role="1TKVEi">
      <property role="IQ2ns" value="3231778346402359357" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBigcZ">
    <property role="EcuMT" value="4820124486370657087" />
    <property role="3GE5qa" value="commandSide.entity" />
    <property role="TrG5h" value="EntityOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="p4fykW$8i_" role="1TKVEi">
      <property role="IQ2ns" value="451554192294708389" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="p4fykW$8iA" role="1TKVEi">
      <property role="IQ2ns" value="451554192294708390" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="PrWs8" id="4b$xqUBigd0" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="4b$xqUBigd2" role="1TKVEi">
      <property role="IQ2ns" value="4820124486370657090" />
      <property role="20kJfa" value="entity" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:4Wa3rAG5JzX" resolve="Entity" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBih0T">
    <property role="EcuMT" value="4820124486370660409" />
    <property role="3GE5qa" value="commandSide.aggregate" />
    <property role="TrG5h" value="AggregateOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4b$xqUBih0U" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="4b$xqUBih0W" role="1TKVEi">
      <property role="IQ2ns" value="4820124486370660412" />
      <property role="20kJfa" value="aggregate" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:4NUTY$DwDMp" resolve="AggregateRoot" />
    </node>
    <node concept="1TJgyj" id="1DRRhzrCEUZ" role="1TKVEi">
      <property role="IQ2ns" value="1907236066048519871" />
      <property role="20kJfa" value="eventWrapper" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1DRRhzrpWuH" resolve="EventWrapperInterfaceOutput" />
    </node>
    <node concept="1TJgyj" id="p4fykWPSa0" role="1TKVEi">
      <property role="IQ2ns" value="451554192299360896" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzt5JyR" role="1TKVEi">
      <property role="IQ2ns" value="1907236066072918199" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBnBBc">
    <property role="EcuMT" value="4820124486372063692" />
    <property role="3GE5qa" value="commandSide.command" />
    <property role="TrG5h" value="CommandOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4b$xqUBnBBd" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="4b$xqUBnBBf" role="1TKVEi">
      <property role="IQ2ns" value="4820124486372063695" />
      <property role="20kJfa" value="command" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p43ygY" resolve="Command" />
    </node>
    <node concept="1TJgyj" id="p4fykY80kE" role="1TKVEi">
      <property role="IQ2ns" value="451554192320890154" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="p4fykY80kH" role="1TKVEi">
      <property role="IQ2ns" value="451554192320890157" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBsCpa">
    <property role="EcuMT" value="4820124486373377610" />
    <property role="TrG5h" value="EventOutput" />
    <property role="3GE5qa" value="connecting" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="p4fykY80SC" role="1TKVEi">
      <property role="IQ2ns" value="451554192320892456" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="p4fykY80SD" role="1TKVEi">
      <property role="IQ2ns" value="451554192320892457" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="PrWs8" id="4b$xqUBsCpb" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="4b$xqUBsCpd" role="1TKVEi">
      <property role="IQ2ns" value="4820124486373377613" />
      <property role="20kJfa" value="event" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p43ygS" resolve="Event" />
    </node>
    <node concept="1TJgyi" id="4b$xqUBwhsQ" role="1TKVEl">
      <property role="IQ2nx" value="4820124486374332214" />
      <property role="TrG5h" value="applicationSide" />
      <ref role="AX2Wp" node="2Np_ky9T9E9" resolve="ApplicationSide" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBwbWI">
    <property role="EcuMT" value="4820124486374309678" />
    <property role="3GE5qa" value="commandSide.command" />
    <property role="TrG5h" value="CommandInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4b$xqUBwbWK" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBwbWJ">
    <property role="EcuMT" value="4820124486374309679" />
    <property role="3GE5qa" value="commandSide.command.handler" />
    <property role="TrG5h" value="CommandHandlerInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4b$xqUBwbWM" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="Sy32QQYi6S">
    <property role="EcuMT" value="1018389856221995448" />
    <property role="3GE5qa" value="connecting" />
    <property role="TrG5h" value="EventInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="Sy32QQYi6U" role="1TKVEl">
      <property role="IQ2nx" value="1018389856221995450" />
      <property role="TrG5h" value="applicationSide" />
      <ref role="AX2Wp" node="2Np_ky9T9E9" resolve="ApplicationSide" />
    </node>
    <node concept="PrWs8" id="Sy32QQYix5" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="Sy32QQYi6T">
    <property role="EcuMT" value="1018389856221995449" />
    <property role="3GE5qa" value="connecting.handler" />
    <property role="TrG5h" value="EventHandlerInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="Sy32QQZjzG" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="Sy32QQZtsU">
    <property role="EcuMT" value="1018389856222304058" />
    <property role="3GE5qa" value="querySide.query.handler" />
    <property role="TrG5h" value="QueryHandlerInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="Sy32QQZtsV" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="Sy32QR1NkI">
    <property role="EcuMT" value="1018389856222917934" />
    <property role="3GE5qa" value="commandSide.aggregate" />
    <property role="TrG5h" value="AggregateInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="Sy32QR1NkJ" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="Sy32QR1NkL">
    <property role="EcuMT" value="1018389856222917937" />
    <property role="3GE5qa" value="commandSide.aggregate" />
    <property role="TrG5h" value="EventAggregateInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="Sy32QR1NkM" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="61W7Av0nhk$">
    <property role="EcuMT" value="6952465355710993700" />
    <property role="TrG5h" value="MethodOutput" />
    <property role="3GE5qa" value="method" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2Np_kya7QJe" role="1TKVEi">
      <property role="IQ2ns" value="3231778346402540494" />
      <property role="20kJfa" value="property" />
      <ref role="20lvS9" to="3nll:7fqk8p3V6WN" resolve="Property" />
    </node>
    <node concept="1TJgyj" id="p4fykIUUxS" role="1TKVEi">
      <property role="IQ2ns" value="451554192065800312" />
      <property role="20kJfa" value="originalMethod" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p3W55Y" resolve="Method" />
    </node>
    <node concept="1TJgyi" id="1DRRhzqUGBH" role="1TKVEl">
      <property role="IQ2nx" value="1907236066036468205" />
      <property role="TrG5h" value="name" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2Np_ky9TKxd" role="1TKVEl">
      <property role="IQ2nx" value="3231778346398845005" />
      <property role="TrG5h" value="applicationSide" />
      <ref role="AX2Wp" node="2Np_ky9T9E9" resolve="ApplicationSide" />
    </node>
    <node concept="1TJgyi" id="2Np_kya0jhk" role="1TKVEl">
      <property role="IQ2nx" value="3231778346400560212" />
      <property role="TrG5h" value="isInInterface" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="2Np_kya7NCH" role="1TKVEl">
      <property role="IQ2nx" value="3231778346402527789" />
      <property role="TrG5h" value="isOverriding" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="p4fykIIUjg" role="1TKVEl">
      <property role="IQ2nx" value="451554192062653648" />
      <property role="TrG5h" value="modifier" />
      <ref role="AX2Wp" to="3nll:awtshksDj1" resolve="MethodModifier" />
    </node>
    <node concept="1TJgyi" id="p4fykIXUQO" role="1TKVEl">
      <property role="IQ2nx" value="451554192066588084" />
      <property role="TrG5h" value="hasVerticallyAlignedParameters" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="2Np_kya0p_t" role="PzmwI">
      <ref role="PrY4T" node="61W7Av0nhkE" resolve="ElementOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzqKHGP" role="1TKVEi">
      <property role="IQ2ns" value="1907236066033851189" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzqKHGT" role="1TKVEi">
      <property role="IQ2ns" value="1907236066033851193" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="returnType" />
      <ref role="20lvS9" to="3nll:4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
  <node concept="PlHQZ" id="61W7Av0nhkE">
    <property role="EcuMT" value="6952465355710993706" />
    <property role="3GE5qa" value="base" />
    <property role="TrG5h" value="ElementOutput" />
    <node concept="PrWs8" id="2Np_kya0o0$" role="PrDN$">
      <ref role="PrY4T" node="2Np_kya0nuJ" resolve="ComponentOutput" />
    </node>
  </node>
  <node concept="25R3W" id="2Np_ky9T9E9">
    <property role="3F6X1D" value="3231778346398685833" />
    <property role="3GE5qa" value="base" />
    <property role="TrG5h" value="ApplicationSide" />
    <node concept="25R33" id="2Np_ky9T9Ea" role="25R1y">
      <property role="3tVfz5" value="3231778346398685834" />
      <property role="TrG5h" value="COMMAND_SIDE" />
    </node>
    <node concept="25R33" id="2Np_ky9T9Eb" role="25R1y">
      <property role="3tVfz5" value="3231778346398685835" />
      <property role="TrG5h" value="QUERY_SIDE" />
    </node>
  </node>
  <node concept="PlHQZ" id="2Np_kya0nuJ">
    <property role="EcuMT" value="3231778346400577455" />
    <property role="3GE5qa" value="base" />
    <property role="TrG5h" value="ComponentOutput" />
    <node concept="1TJgyj" id="2Np_kyauRrT" role="1TKVEi">
      <property role="IQ2ns" value="3231778346408572665" />
      <property role="20kJfa" value="boundedContext" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="2Np_kya2ntf">
    <property role="EcuMT" value="3231778346401101647" />
    <property role="3GE5qa" value="commandSide.aggregate" />
    <property role="TrG5h" value="EventAggregateBaseClassOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2Np_kya2ntg" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="2Np_kyaSuJN">
    <property role="EcuMT" value="3231778346415287283" />
    <property role="3GE5qa" value="commandSide.command.handler" />
    <property role="TrG5h" value="CommandHandlerSeparatedOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3fVLq_srsR6" role="1TKVEi">
      <property role="IQ2ns" value="3745804846279544262" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="2Np_kyaTQp5" role="1TKVEi">
      <property role="IQ2ns" value="3231778346415646277" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="1TJgyj" id="2Np_kyaSuJQ" role="1TKVEi">
      <property role="IQ2ns" value="3231778346415287286" />
      <property role="20kJfa" value="command" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p43ygY" resolve="Command" />
    </node>
    <node concept="PrWs8" id="2Np_kyaSuJO" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzqWCPe">
    <property role="EcuMT" value="1907236066036976974" />
    <property role="3GE5qa" value="connecting.handler" />
    <property role="TrG5h" value="EventHandlerSeparatedOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1DRRhzqWD9V" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzqYTMq" role="1TKVEi">
      <property role="IQ2ns" value="1907236066037570714" />
      <property role="20kJfa" value="event" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p43ygS" resolve="Event" />
    </node>
    <node concept="1TJgyj" id="3fVLq_AJ2nG" role="1TKVEi">
      <property role="IQ2ns" value="3745804846452450796" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzr3hdU" role="1TKVEi">
      <property role="IQ2ns" value="1907236066038715258" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzr7q3V">
    <property role="EcuMT" value="1907236066039800059" />
    <property role="3GE5qa" value="querySide.query.handler" />
    <property role="TrG5h" value="QueryHandlerSeparatedOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1DRRhzr7q3W" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzr7q3Y" role="1TKVEi">
      <property role="IQ2ns" value="1907236066039800062" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p43yh4" resolve="Query" />
    </node>
    <node concept="1TJgyj" id="3fVLq_OuuwJ" role="1TKVEi">
      <property role="IQ2ns" value="3745804846682990639" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzr7q40" role="1TKVEi">
      <property role="IQ2ns" value="1907236066039800064" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzrpWuH">
    <property role="EcuMT" value="1907236066044659629" />
    <property role="3GE5qa" value="connecting" />
    <property role="TrG5h" value="EventWrapperInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1DRRhzrpWuI" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzrJ_Rj" role="1TKVEi">
      <property role="IQ2ns" value="1907236066050334163" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="substitudeEvent" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p43ygS" resolve="Event" />
    </node>
    <node concept="1TJgyj" id="1DRRhzrpWuK" role="1TKVEi">
      <property role="IQ2ns" value="1907236066044659632" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="wrappedEvents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4b$xqUBsCpa" resolve="EventOutput" />
    </node>
    <node concept="1TJgyi" id="1DRRhzrpXxL" role="1TKVEl">
      <property role="IQ2nx" value="1907236066044663921" />
      <property role="TrG5h" value="appicationSide" />
      <ref role="AX2Wp" node="2Np_ky9T9E9" resolve="ApplicationSide" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzrJ_Rg">
    <property role="EcuMT" value="1907236066050334160" />
    <property role="3GE5qa" value="connecting.handler" />
    <property role="TrG5h" value="EventHandlerGroupedOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1DRRhzrJ_Rh" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="3fVLq_Ajq6q" role="1TKVEi">
      <property role="IQ2ns" value="3745804846445207962" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="3fVLq_AhNa6" role="1TKVEi">
      <property role="IQ2ns" value="3745804846444786310" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzs480G">
    <property role="EcuMT" value="1907236066055716908" />
    <property role="3GE5qa" value="commandSide.aggregate" />
    <property role="TrG5h" value="AggregateConcreteInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1DRRhzs480K" role="1TKVEi">
      <property role="IQ2ns" value="1907236066055716912" />
      <property role="20kJfa" value="g_aggregate" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4b$xqUBih0T" resolve="AggregateOutput" />
    </node>
    <node concept="PrWs8" id="1DRRhzs480H" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzs4VKw" role="1TKVEi">
      <property role="IQ2ns" value="1907236066055928864" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzt5LHO">
    <property role="EcuMT" value="1907236066072927092" />
    <property role="3GE5qa" value="variable" />
    <property role="TrG5h" value="PropertyOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1DRRhzt5LHP" role="PzmwI">
      <ref role="PrY4T" node="61W7Av0nhkE" resolve="ElementOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzt5LHR" role="1TKVEi">
      <property role="IQ2ns" value="1907236066072927095" />
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p3V6WN" resolve="Property" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzucvKr">
    <property role="EcuMT" value="1907236066091465755" />
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <property role="TrG5h" value="AggregateRepositoryInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1DRRhzucU7F" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzucvKs">
    <property role="EcuMT" value="1907236066091465756" />
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <property role="TrG5h" value="AggregateIdRepositoryInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1DRRhzucU7B" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzucvKt">
    <property role="EcuMT" value="1907236066091465757" />
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <property role="TrG5h" value="AggregateRepositoryOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1DRRhzucU7D" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzuQ6e$" role="1TKVEi">
      <property role="IQ2ns" value="1907236066102371236" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="1TJgyj" id="51Z40VJRXXe" role="1TKVEi">
      <property role="IQ2ns" value="5800372501416501070" />
      <property role="20kJfa" value="repository" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzucvKu">
    <property role="EcuMT" value="1907236066091465758" />
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <property role="TrG5h" value="AggregateConcreteRepositoryInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1DRRhzucU7_" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="1DRRhzut$Pb" role="1TKVEi">
      <property role="IQ2ns" value="1907236066095942987" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="1TJgyj" id="51Z40VJJbDY" role="1TKVEi">
      <property role="IQ2ns" value="5800372501414197886" />
      <property role="20kJfa" value="repository" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p47V6t" resolve="AggregateRootRepository" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_p7pyU">
    <property role="EcuMT" value="3745804846223956154" />
    <property role="3GE5qa" value="commandSide.command.handler" />
    <property role="TrG5h" value="CommandHandlerGroupedOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3fVLq_p7pyV" role="1TKVEi">
      <property role="IQ2ns" value="3745804846223956155" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="1TJgyj" id="3fVLq_srJi7" role="1TKVEi">
      <property role="IQ2ns" value="3745804846279619719" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="PrWs8" id="3fVLq_p7pyX" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="51Z40VIXNN7" role="1TKVEi">
      <property role="IQ2ns" value="5800372501401255111" />
      <property role="20kJfa" value="container" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:awtshkmllB" resolve="CommandContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_pQ_pF">
    <property role="EcuMT" value="3745804846236325483" />
    <property role="3GE5qa" value="commandSide.command.handler" />
    <property role="TrG5h" value="CommandHandlerGroupedInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3fVLq_pQ_pI" role="1TKVEi">
      <property role="IQ2ns" value="3745804846236325486" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="PrWs8" id="3fVLq_pQ_pG" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="51Z40VJ70k3" role="1TKVEi">
      <property role="IQ2ns" value="5800372501403665667" />
      <property role="20kJfa" value="container" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:awtshkmllB" resolve="CommandContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_Ajq0c">
    <property role="EcuMT" value="3745804846445207564" />
    <property role="3GE5qa" value="connecting.handler" />
    <property role="TrG5h" value="EventHandlerGroupedInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3fVLq_Ajq6o" role="1TKVEi">
      <property role="IQ2ns" value="3745804846445207960" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="PrWs8" id="3fVLq_Ajq0d" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_Dpf2z">
    <property role="EcuMT" value="3745804846497067171" />
    <property role="3GE5qa" value="querySide.query.handler" />
    <property role="TrG5h" value="QueryHandlerGroupedOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3fVLq_Dpf2F" role="1TKVEi">
      <property role="IQ2ns" value="3745804846497067179" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4yUYSn0hQGy" resolve="ParameterOutput" />
    </node>
    <node concept="1TJgyj" id="3fVLq_Dpf2D" role="1TKVEi">
      <property role="IQ2ns" value="3745804846497067177" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="PrWs8" id="3fVLq_Dpf2I" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="51Z40VK7C6Y" role="1TKVEi">
      <property role="IQ2ns" value="5800372501420605886" />
      <property role="20kJfa" value="container" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_Dpf2$">
    <property role="EcuMT" value="3745804846497067172" />
    <property role="3GE5qa" value="querySide.query.handler" />
    <property role="TrG5h" value="QueryHandlerGroupedInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3fVLq_Dpf2B" role="1TKVEi">
      <property role="IQ2ns" value="3745804846497067175" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="PrWs8" id="3fVLq_Dpf2K" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="51Z40VK7C76" role="1TKVEi">
      <property role="IQ2ns" value="5800372501420605894" />
      <property role="20kJfa" value="container" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:3DbZR$O1TZO" resolve="QueryContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_LuoUU">
    <property role="EcuMT" value="3745804846632636090" />
    <property role="3GE5qa" value="querySide.dto" />
    <property role="TrG5h" value="DtoRepositoryOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3fVLq_LuoUV" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="3fVLq_LuoV0" role="1TKVEi">
      <property role="IQ2ns" value="3745804846632636096" />
      <property role="20kJfa" value="repository" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
    </node>
    <node concept="1TJgyj" id="3fVLq_LuoV2" role="1TKVEi">
      <property role="IQ2ns" value="3745804846632636098" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_LuoUX">
    <property role="EcuMT" value="3745804846632636093" />
    <property role="3GE5qa" value="querySide.dto" />
    <property role="TrG5h" value="DtoRepositoryInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3fVLq_LuoVc" role="1TKVEi">
      <property role="IQ2ns" value="3745804846632636108" />
      <property role="20kJfa" value="repository" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:1WhJCpUHTrZ" resolve="DtoRepository" />
    </node>
    <node concept="1TJgyj" id="3fVLq_LuoV5" role="1TKVEi">
      <property role="IQ2ns" value="3745804846632636101" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61W7Av0nhk$" resolve="MethodOutput" />
    </node>
    <node concept="PrWs8" id="3fVLq_LuoVf" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x9oRL8JBrw">
    <property role="EcuMT" value="8667568343298766560" />
    <property role="3GE5qa" value="commandSide.command" />
    <property role="TrG5h" value="CommandWrapperInterfaceOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7x9oRL8JBrz" role="1TKVEi">
      <property role="IQ2ns" value="8667568343298766563" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="substitudeCommand" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="3nll:7fqk8p43ygY" resolve="Command" />
    </node>
    <node concept="1TJgyj" id="7x9oRL8JBr$" role="1TKVEi">
      <property role="IQ2ns" value="8667568343298766564" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="wrappedCommands" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4b$xqUBnBBc" resolve="CommandOutput" />
    </node>
    <node concept="PrWs8" id="7x9oRL8JBrx" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x9oRL8NhT2">
    <property role="EcuMT" value="8667568343299726914" />
    <property role="3GE5qa" value="querySide.query.processor" />
    <property role="TrG5h" value="QueryProcessorOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7x9oRL8NhT3" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
    <node concept="1TJgyj" id="7x9oRL8NhTh" role="1TKVEi">
      <property role="IQ2ns" value="8667568343299726929" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="queryReferences" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="3nll:7fqk8p43yh7" resolve="QueryReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x9oRL8NhT6">
    <property role="EcuMT" value="8667568343299726918" />
    <property role="3GE5qa" value="querySide.query.processor" />
    <property role="TrG5h" value="QueryHandlerContainerOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7x9oRL8NhT7" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x9oRL8NhTa">
    <property role="EcuMT" value="8667568343299726922" />
    <property role="3GE5qa" value="querySide.query.processor" />
    <property role="TrG5h" value="QueryHandlerContainerImplOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7x9oRL8NhTb" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x9oRL8NhTd">
    <property role="EcuMT" value="8667568343299726925" />
    <property role="3GE5qa" value="querySide.query.processor" />
    <property role="TrG5h" value="QueryProcessorImplOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7x9oRL8NhTe" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="6ERg2SB5Zc">
    <property role="EcuMT" value="120151335245733836" />
    <property role="TrG5h" value="FileConcept" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6ERg2SB7vp">
    <property role="EcuMT" value="120151335245739993" />
    <property role="TrG5h" value="ClassConcept" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6ERg2T2y_Z">
    <property role="EcuMT" value="120151335252928895" />
    <property role="3GE5qa" value="commandSide.entity" />
    <property role="TrG5h" value="EntityBaseClassOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6ERg2T2yA0" role="PzmwI">
      <ref role="PrY4T" node="4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
</model>

