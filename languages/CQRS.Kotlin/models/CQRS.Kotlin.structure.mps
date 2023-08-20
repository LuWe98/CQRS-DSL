<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a27ce5e9-db29-4fc0-925f-cc4b526bab30(CQRS.Kotlin.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="anwi" ref="r:7c81c792-29f8-43b8-86dd-c441406afee9(CQRS.Generation.structure)" />
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
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
  <node concept="1TIwiD" id="CvLt7qMboF">
    <property role="EcuMT" value="729519169766733355" />
    <property role="TrG5h" value="QueryKotlinOutput" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="querySide.query" />
    <ref role="1TJDcQ" to="anwi:CvLt7qMatM" resolve="QueryOutput" />
    <node concept="PrWs8" id="4b$xqUBa6sf" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3jZ1jc09bUm">
    <property role="EcuMT" value="3818776725637349014" />
    <property role="TrG5h" value="BoundedContextWrapper" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="bounded context" />
    <ref role="1TJDcQ" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
  </node>
  <node concept="1TIwiD" id="4p0keayGWr_">
    <property role="EcuMT" value="5062134915486959333" />
    <property role="TrG5h" value="ParameterKotlinOutput" />
    <property role="3GE5qa" value="variable" />
    <ref role="1TJDcQ" to="anwi:4yUYSn0hQGy" resolve="ParameterOutput" />
    <node concept="PrWs8" id="2Np_kya0p_n" role="PzmwI">
      <ref role="PrY4T" node="2Np_kya0mOE" resolve="KotlinElementOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4p0keayHgH6">
    <property role="EcuMT" value="5062134915487042374" />
    <property role="TrG5h" value="IDataTypeKotlinOutput" />
    <property role="3GE5qa" value="typing" />
    <ref role="1TJDcQ" to="anwi:4yUYSn0hQWi" resolve="IDataTypeOutput" />
    <node concept="PrWs8" id="2Np_kya0Nn5" role="PzmwI">
      <ref role="PrY4T" node="2Np_kya0mOE" resolve="KotlinElementOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3GrpC3f1Wim">
    <property role="EcuMT" value="4259110576024175766" />
    <property role="3GE5qa" value="querySide.query" />
    <property role="TrG5h" value="QueryInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:3GrpC3f1RXS" resolve="QueryInterfaceOutput" />
    <node concept="PrWs8" id="4b$xqUBa6Em" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="PlHQZ" id="4b$xqUBa5Fa">
    <property role="EcuMT" value="4820124486368516810" />
    <property role="TrG5h" value="KotlinFileOutput" />
    <property role="3GE5qa" value="base" />
    <node concept="PrWs8" id="4b$xqUBa5Fb" role="PrDN$">
      <ref role="PrY4T" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBhCS1">
    <property role="EcuMT" value="4820124486370496001" />
    <property role="3GE5qa" value="querySide.dto" />
    <property role="TrG5h" value="DtoKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:4b$xqUBgElC" resolve="DtoOutput" />
    <node concept="PrWs8" id="4b$xqUBhCS2" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBkeCY">
    <property role="EcuMT" value="4820124486371174974" />
    <property role="TrG5h" value="ValueObjectKotlinOutput" />
    <property role="3GE5qa" value="commandSide" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:4b$xqUBhZGU" resolve="ValueObjectOutput" />
    <node concept="PrWs8" id="4b$xqUBkeCZ" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBk_kL">
    <property role="EcuMT" value="4820124486371267889" />
    <property role="3GE5qa" value="commandSide.entity" />
    <property role="TrG5h" value="EntitiyKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:4b$xqUBigcZ" resolve="EntityOutput" />
    <node concept="PrWs8" id="4b$xqUBk_kM" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBk_kO">
    <property role="EcuMT" value="4820124486371267892" />
    <property role="3GE5qa" value="commandSide.aggregate" />
    <property role="TrG5h" value="AggregateKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:4b$xqUBih0T" resolve="AggregateOutput" />
    <node concept="PrWs8" id="4b$xqUBk_kP" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUBouBf">
    <property role="EcuMT" value="4820124486372288975" />
    <property role="3GE5qa" value="commandSide.command" />
    <property role="TrG5h" value="CommandKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:4b$xqUBnBBc" resolve="CommandOutput" />
    <node concept="PrWs8" id="4b$xqUBouBg" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="4b$xqUByBWg">
    <property role="EcuMT" value="4820124486374948624" />
    <property role="TrG5h" value="EventKotlinOutput" />
    <property role="3GE5qa" value="connecting" />
    <ref role="1TJDcQ" to="anwi:4b$xqUBsCpa" resolve="EventOutput" />
    <node concept="PrWs8" id="4b$xqUByBWh" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="34BkNnbtXnR">
    <property role="EcuMT" value="3541891122462184951" />
    <property role="3GE5qa" value="commandSide.command" />
    <property role="TrG5h" value="CommandInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:4b$xqUBwbWI" resolve="CommandInterfaceOutput" />
    <node concept="PrWs8" id="34BkNnbtXuP" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="34BkNnbtXnS">
    <property role="EcuMT" value="3541891122462184952" />
    <property role="3GE5qa" value="commandSide.command.handler" />
    <property role="TrG5h" value="CommandHandlerInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:4b$xqUBwbWJ" resolve="CommandHandlerInterfaceOutput" />
    <node concept="PrWs8" id="34BkNnbtXuN" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="Sy32QQYsRc">
    <property role="EcuMT" value="1018389856222039500" />
    <property role="3GE5qa" value="connecting.handler" />
    <property role="TrG5h" value="EventHandlerInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:Sy32QQYi6T" resolve="EventHandlerInterfaceOutput" />
    <node concept="PrWs8" id="Sy32QQYsRd" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="Sy32QQZbqd">
    <property role="EcuMT" value="1018389856222230157" />
    <property role="3GE5qa" value="connecting" />
    <property role="TrG5h" value="EventInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:Sy32QQYi6S" resolve="EventInterfaceOutput" />
    <node concept="PrWs8" id="Sy32QQZbqe" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="Sy32QR0wXm">
    <property role="EcuMT" value="1018389856222580566" />
    <property role="3GE5qa" value="querySide.query.handler" />
    <property role="TrG5h" value="QueryHandlerInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:Sy32QQZtsU" resolve="QueryHandlerInterfaceOutput" />
    <node concept="PrWs8" id="Sy32QR0wXE" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="Sy32QR3Z04">
    <property role="EcuMT" value="1018389856223490052" />
    <property role="3GE5qa" value="commandSide.aggregate" />
    <property role="TrG5h" value="AggregateInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:Sy32QR1NkI" resolve="AggregateInterfaceOutput" />
    <node concept="PrWs8" id="Sy32QR3Z05" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="Sy32QR3Z07">
    <property role="EcuMT" value="1018389856223490055" />
    <property role="3GE5qa" value="commandSide.aggregate" />
    <property role="TrG5h" value="EventAggregateInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:Sy32QR1NkL" resolve="EventAggregateInterfaceOutput" />
    <node concept="PrWs8" id="Sy32QR3Z08" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="61W7Av0ngXN">
    <property role="EcuMT" value="6952465355710992243" />
    <property role="TrG5h" value="MethodKotlinOutput" />
    <property role="3GE5qa" value="method" />
    <ref role="1TJDcQ" to="anwi:61W7Av0nhk$" resolve="MethodOutput" />
    <node concept="PrWs8" id="2Np_kya0p_r" role="PzmwI">
      <ref role="PrY4T" node="2Np_kya0mOE" resolve="KotlinElementOutput" />
    </node>
  </node>
  <node concept="PlHQZ" id="2Np_kya0mOE">
    <property role="EcuMT" value="3231778346400574762" />
    <property role="3GE5qa" value="base" />
    <property role="TrG5h" value="KotlinElementOutput" />
    <node concept="PrWs8" id="2Np_kya0nhZ" role="PrDN$">
      <ref role="PrY4T" to="anwi:61W7Av0nhkE" resolve="ElementOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="2Np_kya3D3X">
    <property role="EcuMT" value="3231778346401435901" />
    <property role="3GE5qa" value="commandSide.aggregate" />
    <property role="TrG5h" value="EventAggregateBaseClassKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:2Np_kya2ntf" resolve="EventAggregateBaseClassOutput" />
    <node concept="PrWs8" id="2Np_kya3DjC" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="2Np_kyaTCyS">
    <property role="EcuMT" value="3231778346415589560" />
    <property role="3GE5qa" value="commandSide.command.handler" />
    <property role="TrG5h" value="CommandHandlerSeparatedKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:2Np_kyaSuJN" resolve="CommandHandlerSeparatedOutput" />
    <node concept="PrWs8" id="2Np_kyaTCyT" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzqWD9_">
    <property role="EcuMT" value="1907236066036978277" />
    <property role="3GE5qa" value="connecting.handler" />
    <property role="TrG5h" value="EventHandlerSeparatedKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:1DRRhzqWCPe" resolve="EventHandlerSeparatedOutput" />
    <node concept="PrWs8" id="1DRRhzqWD9A" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzr7q3S">
    <property role="EcuMT" value="1907236066039800056" />
    <property role="3GE5qa" value="querySide.query.handler" />
    <property role="TrG5h" value="QueryHandlerSeparatedKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:1DRRhzr7q3V" resolve="QueryHandlerSeparatedOutput" />
    <node concept="PrWs8" id="1DRRhzr7q3T" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzrpYig">
    <property role="EcuMT" value="1907236066044667024" />
    <property role="3GE5qa" value="connecting" />
    <property role="TrG5h" value="EventWrapperInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:1DRRhzrpWuH" resolve="EventWrapperInterfaceOutput" />
    <node concept="PrWs8" id="1DRRhzrpYih" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzrJ_Rf">
    <property role="EcuMT" value="1907236066050334159" />
    <property role="3GE5qa" value="connecting.handler" />
    <property role="TrG5h" value="EventHandlerGroupedKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:1DRRhzrJ_Rg" resolve="EventHandlerGroupedOutput" />
    <node concept="PrWs8" id="3fVLq_Aj89C" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzs4VKz">
    <property role="EcuMT" value="1907236066055928867" />
    <property role="3GE5qa" value="commandSide.aggregate" />
    <property role="TrG5h" value="AggregateConcreteInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:1DRRhzs480G" resolve="AggregateConcreteInterfaceOutput" />
    <node concept="PrWs8" id="1DRRhzs4VK$" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzt5LHL">
    <property role="EcuMT" value="1907236066072927089" />
    <property role="3GE5qa" value="variable" />
    <property role="TrG5h" value="PropertyKotlinOutput" />
    <ref role="1TJDcQ" to="anwi:1DRRhzt5LHO" resolve="PropertyOutput" />
    <node concept="PrWs8" id="1DRRhzt5LHM" role="PzmwI">
      <ref role="PrY4T" node="2Np_kya0mOE" resolve="KotlinElementOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzucU7x">
    <property role="EcuMT" value="1907236066091573729" />
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <property role="TrG5h" value="AggregateRepositoryInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:1DRRhzucvKr" resolve="AggregateRepositoryInterfaceOutput" />
    <node concept="PrWs8" id="1DRRhzugaFe" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzucU7y">
    <property role="EcuMT" value="1907236066091573730" />
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <property role="TrG5h" value="AggregateConcreteRepositoryInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:1DRRhzucvKu" resolve="AggregateConcreteRepositoryInterfaceOutput" />
    <node concept="PrWs8" id="1DRRhzugaFk" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzucU7z">
    <property role="EcuMT" value="1907236066091573731" />
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <property role="TrG5h" value="AggregateRepositoryKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:1DRRhzucvKt" resolve="AggregateRepositoryOutput" />
    <node concept="PrWs8" id="1DRRhzugaFg" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="1DRRhzucU7$">
    <property role="EcuMT" value="1907236066091573732" />
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <property role="TrG5h" value="AggregateIdRepositoryInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:1DRRhzucvKs" resolve="AggregateIdRepositoryInterfaceOutput" />
    <node concept="PrWs8" id="1DRRhzugaFi" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_pobny">
    <property role="EcuMT" value="3745804846228354530" />
    <property role="3GE5qa" value="commandSide.command.handler" />
    <property role="TrG5h" value="CommandHandlerGroupedKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:3fVLq_p7pyU" resolve="CommandHandlerGroupedOutput" />
    <node concept="PrWs8" id="3fVLq_pobnz" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_pR_8f">
    <property role="EcuMT" value="3745804846236586511" />
    <property role="3GE5qa" value="commandSide.command.handler" />
    <property role="TrG5h" value="CommandHandlerGroupedInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:3fVLq_pQ_pF" resolve="CommandHandlerGroupedInterfaceOutput" />
    <node concept="PrWs8" id="3fVLq_pR_8g" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_AkU0e">
    <property role="EcuMT" value="3745804846445600782" />
    <property role="3GE5qa" value="connecting.handler" />
    <property role="TrG5h" value="EventHandlerGroupedInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:3fVLq_Ajq0c" resolve="EventHandlerGroupedInterfaceOutput" />
    <node concept="PrWs8" id="3fVLq_AkU0f" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_Dpf2M">
    <property role="EcuMT" value="3745804846497067186" />
    <property role="3GE5qa" value="querySide.query.handler" />
    <property role="TrG5h" value="QueryHandlerGroupedKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:3fVLq_Dpf2z" resolve="QueryHandlerGroupedOutput" />
    <node concept="PrWs8" id="3fVLq_Dpf2N" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_Dpf2P">
    <property role="EcuMT" value="3745804846497067189" />
    <property role="3GE5qa" value="querySide.query.handler" />
    <property role="TrG5h" value="QueryHandlerGroupedInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:3fVLq_Dpf2$" resolve="QueryHandlerGroupedInterfaceOutput" />
    <node concept="PrWs8" id="3fVLq_Dpf2Q" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_LvZRX">
    <property role="EcuMT" value="3745804846633057789" />
    <property role="3GE5qa" value="querySide.dto" />
    <property role="TrG5h" value="DtoRepositoryKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:3fVLq_LuoUU" resolve="DtoRepositoryOutput" />
    <node concept="PrWs8" id="3fVLq_LvZRY" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="3fVLq_LvZS0">
    <property role="EcuMT" value="3745804846633057792" />
    <property role="3GE5qa" value="querySide.dto" />
    <property role="TrG5h" value="DtoRepositoryInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:3fVLq_LuoUX" resolve="DtoRepositoryInterfaceOutput" />
    <node concept="PrWs8" id="3fVLq_LvZS1" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x9oRL8JBrB">
    <property role="EcuMT" value="8667568343298766567" />
    <property role="3GE5qa" value="commandSide.command" />
    <property role="TrG5h" value="CommandWrapperInterfaceKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:7x9oRL8JBrw" resolve="CommandWrapperInterfaceOutput" />
    <node concept="PrWs8" id="7x9oRL8JBrC" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x9oRL9dU8j">
    <property role="EcuMT" value="8667568343306707475" />
    <property role="3GE5qa" value="querySide.query.processor" />
    <property role="TrG5h" value="QueryProcessorKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:7x9oRL8NhT2" resolve="QueryProcessorOutput" />
    <node concept="PrWs8" id="7x9oRL9dU8k" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x9oRL9dU8m">
    <property role="EcuMT" value="8667568343306707478" />
    <property role="3GE5qa" value="querySide.query.processor" />
    <property role="TrG5h" value="QueryProcessorImplKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:7x9oRL8NhTd" resolve="QueryProcessorImplOutput" />
    <node concept="PrWs8" id="7x9oRL9dU8n" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x9oRL9dU8p">
    <property role="EcuMT" value="8667568343306707481" />
    <property role="3GE5qa" value="querySide.query.processor" />
    <property role="TrG5h" value="QueryHandlerContainerKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:7x9oRL8NhT6" resolve="QueryHandlerContainerOutput" />
    <node concept="PrWs8" id="7x9oRL9dU8q" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x9oRL9dU8s">
    <property role="EcuMT" value="8667568343306707484" />
    <property role="3GE5qa" value="querySide.query.processor" />
    <property role="TrG5h" value="QueryHandlerContainerImplKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:7x9oRL8NhTa" resolve="QueryHandlerContainerImplOutput" />
    <node concept="PrWs8" id="7x9oRL9dUX3" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="6ERg2T3Wnp">
    <property role="EcuMT" value="120151335253296601" />
    <property role="3GE5qa" value="commandSide.entity" />
    <property role="TrG5h" value="EntityBaseClassKotlinOutput" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="anwi:6ERg2T2y_Z" resolve="EntityBaseClassOutput" />
    <node concept="PrWs8" id="6ERg2T3Wnq" role="PzmwI">
      <ref role="PrY4T" node="4b$xqUBa5Fa" resolve="KotlinFileOutput" />
    </node>
  </node>
</model>

