<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="zqge" ref="r:59e90602-6655-4552-86eb-441a42a9a0e4(jetbrains.mps.lang.text.structure)" implicit="true" />
    <import index="hcm8" ref="r:72a7bf00-0175-42ca-b99b-fe8519b6a16f(jetbrains.mps.kotlin.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
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
        <property id="1096454100552" name="rootable" index="19KtqR" />
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
  <node concept="1TIwiD" id="4AUvvfz0J$m">
    <property role="EcuMT" value="5312697196876069142" />
    <property role="TrG5h" value="BoundedContext" />
    <property role="34LRSv" value="bounded context" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="boundedContext" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$Dwxw2" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="1TJgyj" id="4NUTY$DwJke" role="1TKVEi">
      <property role="IQ2ns" value="5547000879670031630" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DwDMp">
    <property role="EcuMT" value="5547000879670008985" />
    <property role="TrG5h" value="AggregateRoot" />
    <property role="34LRSv" value="aggregate root" />
    <property role="3GE5qa" value="aggregates" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1pnQbpEjUw$" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="mdpAJLyd6b" role="PzmwI">
      <ref role="PrY4T" node="5jZDGTilOyb" resolve="IRepositorySubstitude" />
    </node>
    <node concept="PrWs8" id="oGImgNUenz" role="PzmwI">
      <ref role="PrY4T" node="oGImgNU0o$" resolve="IComponentWithParameters" />
    </node>
    <node concept="PrWs8" id="oGImgNvVgO" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="4LpUh3T0t$r" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3T0rQI" resolve="IDtoDerivable" />
    </node>
    <node concept="1TJgyj" id="4NUTY$DwDN6" role="1TKVEi">
      <property role="IQ2ns" value="5547000879670009030" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="idType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="1TJgyj" id="7fqk8p40Q$X" role="1TKVEi">
      <property role="IQ2ns" value="8348073396881549629" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="awtshk_L0H" resolve="IAggregateRootComponent" />
    </node>
    <node concept="1TJgyj" id="4LpUh3VO8Mk" role="1TKVEi">
      <property role="IQ2ns" value="5501684678963268756" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="implicitParameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7fqk8p3MBQ4" resolve="Parameter" />
    </node>
  </node>
  <node concept="PlHQZ" id="4NUTY$DwDMt">
    <property role="EcuMT" value="5547000879670008989" />
    <property role="TrG5h" value="IDataType" />
    <property role="3GE5qa" value="typing" />
    <node concept="PrWs8" id="3VGLvhEOAnf" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="4NUTY$DwDMv">
    <property role="EcuMT" value="5547000879670008991" />
    <property role="3GE5qa" value="typing.primitives" />
    <property role="TrG5h" value="IPrimitiveType" />
    <node concept="PrWs8" id="4NUTY$DwDMw" role="PrDN$">
      <ref role="PrY4T" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DwDMy">
    <property role="EcuMT" value="5547000879670008994" />
    <property role="3GE5qa" value="typing.primitives" />
    <property role="TrG5h" value="IntegerType" />
    <property role="34LRSv" value="int" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$DwDMz" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMv" resolve="IPrimitiveType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DwDM_">
    <property role="EcuMT" value="5547000879670008997" />
    <property role="3GE5qa" value="typing.primitives" />
    <property role="TrG5h" value="StringType" />
    <property role="34LRSv" value="string" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$DwDMA" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMv" resolve="IPrimitiveType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DwDMC">
    <property role="EcuMT" value="5547000879670009000" />
    <property role="3GE5qa" value="typing.primitives" />
    <property role="TrG5h" value="FloatType" />
    <property role="34LRSv" value="float" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$DwDMD" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMv" resolve="IPrimitiveType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DwDMF">
    <property role="EcuMT" value="5547000879670009003" />
    <property role="3GE5qa" value="typing.primitives" />
    <property role="TrG5h" value="DoubleType" />
    <property role="34LRSv" value="double" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$DwDMG" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMv" resolve="IPrimitiveType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DwDMI">
    <property role="EcuMT" value="5547000879670009006" />
    <property role="3GE5qa" value="typing.primitives" />
    <property role="TrG5h" value="LongType" />
    <property role="34LRSv" value="long" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$DwDMM" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMv" resolve="IPrimitiveType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DwDMJ">
    <property role="EcuMT" value="5547000879670009007" />
    <property role="3GE5qa" value="typing.primitives" />
    <property role="TrG5h" value="ShortType" />
    <property role="34LRSv" value="short" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$DwDMK" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMv" resolve="IPrimitiveType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DwDMO">
    <property role="EcuMT" value="5547000879670009012" />
    <property role="3GE5qa" value="typing.primitives" />
    <property role="TrG5h" value="BooleanType" />
    <property role="34LRSv" value="boolean" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$DwDMP" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMv" resolve="IPrimitiveType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DwDMR">
    <property role="EcuMT" value="5547000879670009015" />
    <property role="3GE5qa" value="typing.primitives" />
    <property role="TrG5h" value="ByteType" />
    <property role="34LRSv" value="byte" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$DwDMS" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMv" resolve="IPrimitiveType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DwDMU">
    <property role="EcuMT" value="5547000879670009018" />
    <property role="3GE5qa" value="typing.primitives" />
    <property role="TrG5h" value="CharType" />
    <property role="34LRSv" value="char" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$DwDMV" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMv" resolve="IPrimitiveType" />
    </node>
  </node>
  <node concept="PlHQZ" id="4NUTY$DwDMX">
    <property role="EcuMT" value="5547000879670009021" />
    <property role="3GE5qa" value="typing.collections" />
    <property role="TrG5h" value="ICollectionType" />
    <node concept="1TJgyj" id="23PrvZR7WXq" role="1TKVEi">
      <property role="IQ2ns" value="2374925324637949786" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elementType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="PrWs8" id="4NUTY$DwDMY" role="PrDN$">
      <ref role="PrY4T" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NUTY$DxJvp">
    <property role="EcuMT" value="5547000879670294489" />
    <property role="3GE5qa" value="typing.collections" />
    <property role="TrG5h" value="ListType" />
    <property role="34LRSv" value="list" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NUTY$DxJvq" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMX" resolve="ICollectionType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7wXJBPuINt8">
    <property role="EcuMT" value="8664290703800219464" />
    <property role="3GE5qa" value="typing.collections" />
    <property role="TrG5h" value="SetType" />
    <property role="34LRSv" value="set" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7wXJBPuINt9" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMX" resolve="ICollectionType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7wXJBPuINtT">
    <property role="EcuMT" value="8664290703800219513" />
    <property role="3GE5qa" value="typing.maps" />
    <property role="TrG5h" value="MapType" />
    <property role="34LRSv" value="map" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7wXJBPuINtU" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="1TJgyj" id="7wXJBPuINtW" role="1TKVEi">
      <property role="IQ2ns" value="8664290703800219516" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="keyType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="1TJgyj" id="7wXJBPuINtY" role="1TKVEi">
      <property role="IQ2ns" value="8664290703800219518" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="valueType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
  <node concept="1TIwiD" id="6dPLGVFCdDr">
    <property role="EcuMT" value="7166852974048762459" />
    <property role="3GE5qa" value="typing.collections" />
    <property role="TrG5h" value="ArrayType" />
    <property role="34LRSv" value="array" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6dPLGVFCf9C" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMX" resolve="ICollectionType" />
    </node>
  </node>
  <node concept="PlHQZ" id="6dPLGVFESdC">
    <property role="EcuMT" value="7166852974049461096" />
    <property role="TrG5h" value="IBoundedContextComponent" />
    <property role="3GE5qa" value="boundedContext" />
    <node concept="PrWs8" id="2Bsub$LkRNo" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="5eyACQI58pp">
    <property role="EcuMT" value="6026549184676791897" />
    <property role="3GE5qa" value="typing.java" />
    <property role="TrG5h" value="JavaDataType" />
    <property role="34LRSv" value="java type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5eyACQI58pu" role="1TKVEi">
      <property role="IQ2ns" value="6026549184676791902" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actualType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="PrWs8" id="5eyACQI58pq" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Wa3rAG5ICL">
    <property role="EcuMT" value="5695379769870707249" />
    <property role="3GE5qa" value="import" />
    <property role="TrG5h" value="ImportStatement" />
    <property role="34LRSv" value="import" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="awtshkqsHq" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="7fqk8p49GPJ" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="1TJgyj" id="7fqk8p49Gdh" role="1TKVEi">
      <property role="IQ2ns" value="8348073396883866449" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="packages" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="4Wa3rAG5Jzz" resolve="ImportPackage" />
    </node>
    <node concept="1TJgyj" id="5SyewCaZbpa" role="1TKVEi">
      <property role="IQ2ns" value="6783047803581806154" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="genericTypes" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5SyewCaZ9pz" resolve="GenericType" />
    </node>
    <node concept="1TJgyi" id="7fqk8p49Gdj" role="1TKVEl">
      <property role="IQ2nx" value="8348073396883866451" />
      <property role="TrG5h" value="isAliasImport" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Wa3rAG5Jzz">
    <property role="EcuMT" value="5695379769870711011" />
    <property role="3GE5qa" value="import" />
    <property role="TrG5h" value="ImportPackage" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="awtshkqsHu" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Wa3rAG5JzH">
    <property role="EcuMT" value="5695379769870711021" />
    <property role="3GE5qa" value="import" />
    <property role="TrG5h" value="ImportedType" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4Wa3rAG5JzI" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="1TJgyj" id="4Wa3rAG5JzK" role="1TKVEi">
      <property role="IQ2ns" value="5695379769870711024" />
      <property role="20kJfa" value="importStatement" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4Wa3rAG5ICL" resolve="ImportStatement" />
    </node>
    <node concept="1TJgyj" id="5SyewCbB1fd" role="1TKVEi">
      <property role="IQ2ns" value="6783047803592250317" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actualTypes" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Wa3rAG5JzM">
    <property role="EcuMT" value="5695379769870711026" />
    <property role="3GE5qa" value="aggregates" />
    <property role="TrG5h" value="AggregateRootReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4Wa3rAG5JzN" role="1TKVEi">
      <property role="IQ2ns" value="5695379769870711027" />
      <property role="20kJfa" value="aggregate" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMp" resolve="AggregateRoot" />
    </node>
    <node concept="PrWs8" id="7mYw4uWALl8" role="PzmwI">
      <ref role="PrY4T" node="7a9d0UA8o5K" resolve="IReferenceType" />
    </node>
    <node concept="PrWs8" id="4LpUh3SXzl7" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3SXzl5" resolve="IDtoDerivableReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Wa3rAG5JzR">
    <property role="EcuMT" value="5695379769870711031" />
    <property role="TrG5h" value="ValueObject" />
    <property role="34LRSv" value="value object" />
    <property role="3GE5qa" value="valueObjects" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="oGImgN2kvl" role="1TKVEi">
      <property role="IQ2ns" value="444934303206950869" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="oGImgN2ksO" resolve="IValueObjectComponent" />
    </node>
    <node concept="PrWs8" id="4Wa3rAG5JzS" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="3FBObroAn0H" role="PzmwI">
      <ref role="PrY4T" node="3FBObrowvH5" resolve="IComponentWithRequiredParameters" />
    </node>
    <node concept="PrWs8" id="4Wa3rAG5J$q" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="4LpUh3T0zc4" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3T0rQI" resolve="IDtoDerivable" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Wa3rAG5JzU">
    <property role="EcuMT" value="5695379769870711034" />
    <property role="3GE5qa" value="valueObjects" />
    <property role="TrG5h" value="ValueObjectReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4Wa3rAG5JzV" role="1TKVEi">
      <property role="IQ2ns" value="5695379769870711035" />
      <property role="20kJfa" value="valueObject" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4Wa3rAG5JzR" resolve="ValueObject" />
    </node>
    <node concept="PrWs8" id="4Wa3rAG6IO5" role="PzmwI">
      <ref role="PrY4T" node="7a9d0UA8o5K" resolve="IReferenceType" />
    </node>
    <node concept="PrWs8" id="4LpUh3SXzla" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3SXzl5" resolve="IDtoDerivableReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Wa3rAG5JzX">
    <property role="EcuMT" value="5695379769870711037" />
    <property role="TrG5h" value="Entity" />
    <property role="34LRSv" value="entity" />
    <property role="3GE5qa" value="entity" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4Wa3rAG5JzY" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="oGImgNU0oZ" role="PzmwI">
      <ref role="PrY4T" node="oGImgNU0o$" resolve="IComponentWithParameters" />
    </node>
    <node concept="PrWs8" id="7fqk8p3Vsl3" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="4LpUh3T0xpt" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3T0rQI" resolve="IDtoDerivable" />
    </node>
    <node concept="1TJgyj" id="7fqk8p3V868" role="1TKVEi">
      <property role="IQ2ns" value="8348073396880048520" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="idType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="1TJgyj" id="7fqk8p3W56o" role="1TKVEi">
      <property role="IQ2ns" value="8348073396880298392" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7fqk8p3VKtM" resolve="IEntityComponent" />
    </node>
    <node concept="1TJgyj" id="4LpUh3WpMnw" role="1TKVEi">
      <property role="IQ2ns" value="5501684678973138400" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="implicitParameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7fqk8p3MBQ4" resolve="Parameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Wa3rAG5J$0">
    <property role="EcuMT" value="5695379769870711040" />
    <property role="3GE5qa" value="entity" />
    <property role="TrG5h" value="EntityReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4Wa3rAG5J$1" role="1TKVEi">
      <property role="IQ2ns" value="5695379769870711041" />
      <property role="20kJfa" value="entity" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4Wa3rAG5JzX" resolve="Entity" />
    </node>
    <node concept="PrWs8" id="4Wa3rAG5J$b" role="PzmwI">
      <ref role="PrY4T" node="7a9d0UA8o5K" resolve="IReferenceType" />
    </node>
    <node concept="PrWs8" id="4LpUh3SXzld" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3SXzl5" resolve="IDtoDerivableReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Wa3rAG5J$3">
    <property role="EcuMT" value="5695379769870711043" />
    <property role="TrG5h" value="Dto" />
    <property role="34LRSv" value="dto" />
    <property role="3GE5qa" value="dto" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="oGImgMPIQi" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="3FBObroITlE" role="PzmwI">
      <ref role="PrY4T" node="oGImgNU0o$" resolve="IComponentWithParameters" />
    </node>
    <node concept="PrWs8" id="4Wa3rAG5J$d" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="3NXs7yov7W3" role="PzmwI">
      <ref role="PrY4T" node="3NXs7yolYaR" resolve="IDtoDerivation" />
    </node>
    <node concept="1TJgyj" id="oGImgOv72Q" role="1TKVEi">
      <property role="IQ2ns" value="444934303231275190" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="oGImgOv72s" resolve="IDtoComponent" />
    </node>
    <node concept="1TJgyi" id="3NXs7ypj_ap" role="1TKVEl">
      <property role="IQ2nx" value="4394792474653905561" />
      <property role="TrG5h" value="showDerivedFromBlock" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Wa3rAG5J$6">
    <property role="EcuMT" value="5695379769870711046" />
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="DtoReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4Wa3rAG5J$7" role="1TKVEi">
      <property role="IQ2ns" value="5695379769870711047" />
      <property role="20kJfa" value="dto" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4Wa3rAG5J$3" resolve="Dto" />
    </node>
    <node concept="PrWs8" id="4Wa3rAG5J$9" role="PzmwI">
      <ref role="PrY4T" node="7a9d0UA8o5K" resolve="IReferenceType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p3MBQ4">
    <property role="EcuMT" value="8348073396877819268" />
    <property role="TrG5h" value="Parameter" />
    <property role="3GE5qa" value="variable.parameter" />
    <property role="34LRSv" value="parameter" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7fqk8p3MCk5" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3V3H_u" resolve="IVariable" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p3V6WK">
    <property role="EcuMT" value="8348073396880043824" />
    <property role="3GE5qa" value="variable.parameter" />
    <property role="TrG5h" value="ParameterReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7fqk8p3V6WL" role="1TKVEi">
      <property role="IQ2ns" value="8348073396880043825" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7fqk8p3MBQ4" resolve="Parameter" />
    </node>
    <node concept="PrWs8" id="4LpUh3UZaWM" role="PzmwI">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
    <node concept="PrWs8" id="4LpUh3UZaHJ" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3UZauM" resolve="IVariableReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p3V6WN">
    <property role="EcuMT" value="8348073396880043827" />
    <property role="TrG5h" value="Property" />
    <property role="34LRSv" value="property" />
    <property role="3GE5qa" value="variable.property" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7fqk8p3V84X" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3V3H_u" resolve="IVariable" />
    </node>
    <node concept="PrWs8" id="7fqk8p3W562" role="PzmwI">
      <ref role="PrY4T" node="7fqk8p3VKtM" resolve="IEntityComponent" />
    </node>
    <node concept="PrWs8" id="awtshk_Llz" role="PzmwI">
      <ref role="PrY4T" node="awtshk_L0H" resolve="IAggregateRootComponent" />
    </node>
    <node concept="1TJgyi" id="3DbZR$ObFWz" role="1TKVEl">
      <property role="IQ2nx" value="4200731973484724003" />
      <property role="TrG5h" value="hasGetter" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p3V84L">
    <property role="EcuMT" value="8348073396880048433" />
    <property role="3GE5qa" value="variable.property" />
    <property role="TrG5h" value="PropertyReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7fqk8p3V84M" role="1TKVEi">
      <property role="IQ2ns" value="8348073396880048434" />
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7fqk8p3V6WN" resolve="Property" />
    </node>
    <node concept="PrWs8" id="4LpUh3UZaWJ" role="PzmwI">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
    <node concept="PrWs8" id="4LpUh3UZaWH" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3UZauM" resolve="IVariableReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="7fqk8p3VKtM">
    <property role="EcuMT" value="8348073396880213874" />
    <property role="3GE5qa" value="entity" />
    <property role="TrG5h" value="IEntityComponent" />
    <node concept="PrWs8" id="2Bsub$LkRNu" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p3W55Y">
    <property role="EcuMT" value="8348073396880298366" />
    <property role="TrG5h" value="Method" />
    <property role="3GE5qa" value="method" />
    <property role="34LRSv" value="method" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7fqk8p40d8l" role="1TKVEi">
      <property role="IQ2ns" value="8348073396881379861" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="returnTypeWrapper" />
      <ref role="20lvS9" node="6ci4EVj$QUy" resolve="DataTypeWrapper" />
    </node>
    <node concept="1TJgyj" id="1bq_vIpKexX" role="1TKVEi">
      <property role="IQ2ns" value="1358563145454512253" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statementList" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="7fqk8p40d8h" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="oGImgO9bpH" role="PzmwI">
      <ref role="PrY4T" node="oGImgNU0o$" resolve="IComponentWithParameters" />
    </node>
    <node concept="PrWs8" id="oGImgN7PjO" role="PzmwI">
      <ref role="PrY4T" node="oGImgN2ksO" resolve="IValueObjectComponent" />
    </node>
    <node concept="PrWs8" id="7fqk8p40d9B" role="PzmwI">
      <ref role="PrY4T" node="7fqk8p3VKtM" resolve="IEntityComponent" />
    </node>
    <node concept="PrWs8" id="awtshk_Llv" role="PzmwI">
      <ref role="PrY4T" node="awtshk_L0H" resolve="IAggregateRootComponent" />
    </node>
    <node concept="PrWs8" id="7mYw4uWx4U6" role="PzmwI">
      <ref role="PrY4T" node="7mYw4uWx3au" resolve="IAggregateRootRepositoryComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOD0Ri" role="PzmwI">
      <ref role="PrY4T" node="oGImgOv72s" resolve="IDtoComponent" />
    </node>
    <node concept="PrWs8" id="1WhJCpUQqV5" role="PzmwI">
      <ref role="PrY4T" node="1WhJCpUQqV4" resolve="IDtoRepositoryComponent" />
    </node>
    <node concept="1TJgyi" id="awtshksDjo" role="1TKVEl">
      <property role="IQ2nx" value="189280670440395992" />
      <property role="TrG5h" value="modifier" />
      <ref role="AX2Wp" node="awtshksDj1" resolve="MethodModifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p43ygS">
    <property role="EcuMT" value="8348073396882252856" />
    <property role="TrG5h" value="Event" />
    <property role="34LRSv" value="event" />
    <property role="3GE5qa" value="event" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7fqk8p43ygU" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="3FBObroNj9G" role="PzmwI">
      <ref role="PrY4T" node="oGImgNU0o$" resolve="IComponentWithParameters" />
    </node>
    <node concept="PrWs8" id="5jZDGTfVzDv" role="PzmwI">
      <ref role="PrY4T" node="6gxxZVrO$5G" resolve="IComponentWithDtoRepositoryReferences" />
    </node>
    <node concept="PrWs8" id="5jZDGTfXU6s" role="PzmwI">
      <ref role="PrY4T" node="5jZDGTfXM0Y" resolve="IComponentWithToggleableKeyword" />
    </node>
    <node concept="PrWs8" id="7mYw4uW6toZ" role="PzmwI">
      <ref role="PrY4T" node="7mYw4uW6toN" resolve="IEventContainerComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p43ygT">
    <property role="EcuMT" value="8348073396882252857" />
    <property role="3GE5qa" value="event" />
    <property role="TrG5h" value="EventReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7fqk8p43ygW" role="1TKVEi">
      <property role="IQ2ns" value="8348073396882252860" />
      <property role="20kJfa" value="event" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7fqk8p43ygS" resolve="Event" />
    </node>
    <node concept="PrWs8" id="7IRUqbccdrS" role="PzmwI">
      <ref role="PrY4T" node="7a9d0UA8o5K" resolve="IReferenceType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p43ygY">
    <property role="EcuMT" value="8348073396882252862" />
    <property role="TrG5h" value="Command" />
    <property role="34LRSv" value="command" />
    <property role="3GE5qa" value="command" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7fqk8p43ygZ" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="3FBObroQ3$o" role="PzmwI">
      <ref role="PrY4T" node="oGImgNU0o$" resolve="IComponentWithParameters" />
    </node>
    <node concept="PrWs8" id="4REBMItTUX5" role="PzmwI">
      <ref role="PrY4T" node="4REBMItTCF3" resolve="IComponentWithAggregateRootRepositoryReferences" />
    </node>
    <node concept="PrWs8" id="5jZDGTg2hzE" role="PzmwI">
      <ref role="PrY4T" node="5jZDGTfXM0Y" resolve="IComponentWithToggleableKeyword" />
    </node>
    <node concept="PrWs8" id="7mYw4uWwq4p" role="PzmwI">
      <ref role="PrY4T" node="7mYw4uWwq43" resolve="ICommandContainerComponent" />
    </node>
    <node concept="PrWs8" id="1jrq3npvFM9" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p43yh1">
    <property role="EcuMT" value="8348073396882252865" />
    <property role="3GE5qa" value="command" />
    <property role="TrG5h" value="CommandReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7fqk8p43yh2" role="1TKVEi">
      <property role="IQ2ns" value="8348073396882252866" />
      <property role="20kJfa" value="command" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7fqk8p43ygY" resolve="Command" />
    </node>
    <node concept="PrWs8" id="7IRUqbccdrU" role="PzmwI">
      <ref role="PrY4T" node="7a9d0UA8o5K" resolve="IReferenceType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p43yh4">
    <property role="EcuMT" value="8348073396882252868" />
    <property role="TrG5h" value="Query" />
    <property role="34LRSv" value="query" />
    <property role="3GE5qa" value="query" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7fqk8p43yh5" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="2Bsub$LnXvk" role="PzmwI">
      <ref role="PrY4T" node="oGImgNU0o$" resolve="IComponentWithParameters" />
    </node>
    <node concept="PrWs8" id="6gxxZVrXX9J" role="PzmwI">
      <ref role="PrY4T" node="6gxxZVrO$5G" resolve="IComponentWithDtoRepositoryReferences" />
    </node>
    <node concept="PrWs8" id="5jZDGTg03M8" role="PzmwI">
      <ref role="PrY4T" node="5jZDGTfXM0Y" resolve="IComponentWithToggleableKeyword" />
    </node>
    <node concept="PrWs8" id="3DbZR$O1U0d" role="PzmwI">
      <ref role="PrY4T" node="3DbZR$O1TZR" resolve="IQueryContainerComponent" />
    </node>
    <node concept="PrWs8" id="2Bsub$Lr4ty" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="1TJgyj" id="3DbZR$O2F_T" role="1TKVEi">
      <property role="IQ2ns" value="4200731973482363257" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="returnType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p43yh7">
    <property role="EcuMT" value="8348073396882252871" />
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="QueryReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7fqk8p43yh8" role="1TKVEi">
      <property role="IQ2ns" value="8348073396882252872" />
      <property role="20kJfa" value="query" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7fqk8p43yh4" resolve="Query" />
    </node>
    <node concept="PrWs8" id="7IRUqbccdsa" role="PzmwI">
      <ref role="PrY4T" node="7a9d0UA8o5K" resolve="IReferenceType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p44qYv">
    <property role="EcuMT" value="8348073396882485151" />
    <property role="3GE5qa" value="eventContainer" />
    <property role="TrG5h" value="EventContainer" />
    <property role="34LRSv" value="event block" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7fqk8p44qYy" role="1TKVEi">
      <property role="IQ2ns" value="8348073396882485154" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7mYw4uW6toN" resolve="IEventContainerComponent" />
    </node>
    <node concept="1TJgyj" id="1jrq3noTPfl" role="1TKVEi">
      <property role="IQ2ns" value="1502909481139786709" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="aggregateReference" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4Wa3rAG5JzM" resolve="AggregateRootReference" />
    </node>
    <node concept="PrWs8" id="oGImgNwYcZ" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="5jZDGTdvM_J" role="PzmwI">
      <ref role="PrY4T" node="6gxxZVrO$5G" resolve="IComponentWithDtoRepositoryReferences" />
    </node>
    <node concept="PrWs8" id="5jZDGTdiA9y" role="PzmwI">
      <ref role="PrY4T" node="1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
    </node>
    <node concept="PrWs8" id="5jZDGTg8UUH" role="PzmwI">
      <ref role="PrY4T" node="5jZDGTg8Bxu" resolve="IContainsComponentsWithToggleableKeywords" />
    </node>
    <node concept="1TJgyi" id="5jZDGTd5UEc" role="1TKVEl">
      <property role="IQ2nx" value="6124797423234034316" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="3VGLvhFnWd_" resolve="EventContainerType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fqk8p47V6t">
    <property role="EcuMT" value="8348073396883403165" />
    <property role="TrG5h" value="AggregateRootRepository" />
    <property role="3GE5qa" value="aggregateRepository" />
    <property role="34LRSv" value="aggregate repository" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2RbvdOMmJNV" role="PzmwI">
      <ref role="PrY4T" node="1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
    </node>
    <node concept="PrWs8" id="7fqk8p47V6w" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="1TJgyi" id="7fqk8p47V6y" role="1TKVEl">
      <property role="IQ2nx" value="8348073396883403170" />
      <property role="TrG5h" value="isIdRepository" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="awtshkx0ix" role="1TKVEi">
      <property role="IQ2ns" value="189280670441538721" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7mYw4uWx3au" resolve="IAggregateRootRepositoryComponent" />
    </node>
    <node concept="1TJgyj" id="5SyewC9Zz9D" role="1TKVEi">
      <property role="IQ2ns" value="6783047803565126249" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="aggregateReference" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4Wa3rAG5JzM" resolve="AggregateRootReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="awtshkmllB">
    <property role="EcuMT" value="189280670438741351" />
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="CommandContainer" />
    <property role="34LRSv" value="command block" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="awtshkmllE" role="1TKVEi">
      <property role="IQ2ns" value="189280670438741354" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7mYw4uWwq43" resolve="ICommandContainerComponent" />
    </node>
    <node concept="1TJgyj" id="7x9oRL8vqaW" role="1TKVEi">
      <property role="IQ2ns" value="8667568343294517948" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="aggregateReference" />
      <ref role="20lvS9" node="4Wa3rAG5JzM" resolve="AggregateRootReference" />
    </node>
    <node concept="PrWs8" id="51Z40VxoAAb" role="PzmwI">
      <ref role="PrY4T" node="1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
    </node>
    <node concept="PrWs8" id="mdpAJMTlLy" role="PzmwI">
      <ref role="PrY4T" node="4REBMItTCF3" resolve="IComponentWithAggregateRootRepositoryReferences" />
    </node>
    <node concept="PrWs8" id="5jZDGTgkPuW" role="PzmwI">
      <ref role="PrY4T" node="5jZDGTg8Bxu" resolve="IContainsComponentsWithToggleableKeywords" />
    </node>
    <node concept="PrWs8" id="awtshkmln7" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="1TJgyi" id="1LTEHzOdBW" role="1TKVEl">
      <property role="IQ2nx" value="32060296156731900" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="1LTEHzOdy1" resolve="CommandContainerType" />
    </node>
    <node concept="1TJgyi" id="51Z40VwFzV7" role="1TKVEl">
      <property role="IQ2nx" value="5800372501161590471" />
      <property role="TrG5h" value="shouldDisplayAggregate" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="25R3W" id="awtshksDj1">
    <property role="3F6X1D" value="189280670440395969" />
    <property role="3GE5qa" value="method" />
    <property role="TrG5h" value="MethodModifier" />
    <ref role="1H5jkz" node="awtshksDjd" resolve="public" />
    <node concept="25R33" id="awtshksDjd" role="25R1y">
      <property role="3tVfz5" value="189280670440395981" />
      <property role="TrG5h" value="public" />
      <property role="1L1pqM" value="public" />
    </node>
    <node concept="25R33" id="awtshksDjf" role="25R1y">
      <property role="3tVfz5" value="189280670440395983" />
      <property role="TrG5h" value="private" />
      <property role="1L1pqM" value="private" />
    </node>
    <node concept="25R33" id="7IRUqbcjRnj" role="25R1y">
      <property role="3tVfz5" value="8914850872824919507" />
      <property role="TrG5h" value="protected" />
      <property role="1L1pqM" value="protected" />
    </node>
  </node>
  <node concept="PlHQZ" id="awtshk_L0H">
    <property role="EcuMT" value="189280670442786861" />
    <property role="3GE5qa" value="aggregates" />
    <property role="TrG5h" value="IAggregateRootComponent" />
    <node concept="PrWs8" id="2Bsub$LkRNw" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="7mYw4uW6toN">
    <property role="EcuMT" value="8484359793599436339" />
    <property role="3GE5qa" value="eventContainer" />
    <property role="TrG5h" value="IEventContainerComponent" />
    <node concept="PrWs8" id="2Bsub$LkU$$" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="7mYw4uWwq43">
    <property role="EcuMT" value="8484359793606238467" />
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="ICommandContainerComponent" />
    <node concept="PrWs8" id="2Bsub$LkU$y" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="7mYw4uWx3au">
    <property role="EcuMT" value="8484359793606406814" />
    <property role="3GE5qa" value="aggregateRepository" />
    <property role="TrG5h" value="IAggregateRootRepositoryComponent" />
    <node concept="PrWs8" id="2Bsub$LkU$w" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="3DbZR$O1TZO">
    <property role="EcuMT" value="4200731973482160116" />
    <property role="TrG5h" value="QueryContainer" />
    <property role="3GE5qa" value="queryContainer" />
    <property role="34LRSv" value="query block" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3DbZR$O1TZP" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="6gxxZVrP6aH" role="PzmwI">
      <ref role="PrY4T" node="6gxxZVrO$5G" resolve="IComponentWithDtoRepositoryReferences" />
    </node>
    <node concept="PrWs8" id="1LTEHA9GQ8" role="PzmwI">
      <ref role="PrY4T" node="1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
    </node>
    <node concept="PrWs8" id="5jZDGTgkE50" role="PzmwI">
      <ref role="PrY4T" node="5jZDGTg8Bxu" resolve="IContainsComponentsWithToggleableKeywords" />
    </node>
    <node concept="1TJgyj" id="3DbZR$O1U0g" role="1TKVEi">
      <property role="IQ2ns" value="4200731973482160144" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3DbZR$O1TZR" resolve="IQueryContainerComponent" />
    </node>
    <node concept="1TJgyi" id="1WhJCpUOLrJ" role="1TKVEl">
      <property role="IQ2nx" value="2238779974575396591" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="1WhJCpUOLrA" resolve="QueryContainerType" />
    </node>
  </node>
  <node concept="PlHQZ" id="3DbZR$O1TZR">
    <property role="EcuMT" value="4200731973482160119" />
    <property role="3GE5qa" value="queryContainer" />
    <property role="TrG5h" value="IQueryContainerComponent" />
    <node concept="PrWs8" id="2Bsub$LkU$A" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="oGImgMSoXZ">
    <property role="EcuMT" value="444934303204347775" />
    <property role="TrG5h" value="IOptionalValidIdentifier" />
    <property role="3GE5qa" value="general.identifier" />
    <node concept="PrWs8" id="oGImgMSoY0" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="oGImgN2ksO">
    <property role="EcuMT" value="444934303206950708" />
    <property role="3GE5qa" value="valueObjects" />
    <property role="TrG5h" value="IValueObjectComponent" />
    <node concept="PrWs8" id="2Bsub$LkRNq" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="oGImgNU0o$">
    <property role="EcuMT" value="444934303221548580" />
    <property role="3GE5qa" value="variable.parameter" />
    <property role="TrG5h" value="IComponentWithParameters" />
    <node concept="1TJgyi" id="3FBObrouWtv" role="1TKVEl">
      <property role="IQ2nx" value="4244590657554597727" />
      <property role="TrG5h" value="hasVerticallyAlignedParameters" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="oGImgNU0o_" role="1TKVEi">
      <property role="IQ2ns" value="444934303221548581" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7fqk8p3MBQ4" resolve="Parameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="oGImgOh$Ay">
    <property role="EcuMT" value="444934303227726242" />
    <property role="TrG5h" value="EmptyLine" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="oGImgOh$Az" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOkoPo" role="PzmwI">
      <ref role="PrY4T" node="oGImgN2ksO" resolve="IValueObjectComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOkoQk" role="PzmwI">
      <ref role="PrY4T" node="7fqk8p3VKtM" resolve="IEntityComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOh$AC" role="PzmwI">
      <ref role="PrY4T" node="awtshk_L0H" resolve="IAggregateRootComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOkoPE" role="PzmwI">
      <ref role="PrY4T" node="7mYw4uWx3au" resolve="IAggregateRootRepositoryComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOkoPt" role="PzmwI">
      <ref role="PrY4T" node="7mYw4uWwq43" resolve="ICommandContainerComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOh$A_" role="PzmwI">
      <ref role="PrY4T" node="7mYw4uW6toN" resolve="IEventContainerComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOv72u" role="PzmwI">
      <ref role="PrY4T" node="oGImgOv72s" resolve="IDtoComponent" />
    </node>
    <node concept="PrWs8" id="1WhJCpUQsb6" role="PzmwI">
      <ref role="PrY4T" node="1WhJCpUQqV4" resolve="IDtoRepositoryComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOkoPM" role="PzmwI">
      <ref role="PrY4T" node="3DbZR$O1TZR" resolve="IQueryContainerComponent" />
    </node>
    <node concept="PrWs8" id="omljbyVy_d" role="PzmwI">
      <ref role="PrY4T" node="omljbyVy$R" resolve="IGeneratorSettingsComponent" />
    </node>
    <node concept="PrWs8" id="5qxF18EC3$l" role="PzmwI">
      <ref role="PrY4T" node="5qxF18EuQW9" resolve="IEventGenerationSettingsComponent" />
    </node>
    <node concept="PrWs8" id="5qxF18ELq68" role="PzmwI">
      <ref role="PrY4T" node="5qxF18ELp99" resolve="ICommandGenerationSettingsComponent" />
    </node>
    <node concept="PrWs8" id="5qxF18ENHHK" role="PzmwI">
      <ref role="PrY4T" node="5qxF18ELp98" resolve="IQueryGenerationSettingsComponent" />
    </node>
    <node concept="PrWs8" id="E4RYE9akaG" role="PzmwI">
      <ref role="PrY4T" node="E4RYE9aka5" resolve="IDtoFlatteningRuleContainerComponent" />
    </node>
    <node concept="PrWs8" id="E4RYE9akaH" role="PzmwI">
      <ref role="PrY4T" node="E4RYE9aka8" resolve="IDtoDataTypeRuleContainerComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="oGImgOnn6y">
    <property role="EcuMT" value="444934303229243810" />
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="CommentLine" />
    <property role="34LRSv" value="//" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="oGImgOnn6z" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOscJZ" role="PzmwI">
      <ref role="PrY4T" node="oGImgN2ksO" resolve="IValueObjectComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOojvK" role="PzmwI">
      <ref role="PrY4T" node="7fqk8p3VKtM" resolve="IEntityComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOscJV" role="PzmwI">
      <ref role="PrY4T" node="awtshk_L0H" resolve="IAggregateRootComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOscKp" role="PzmwI">
      <ref role="PrY4T" node="7mYw4uWx3au" resolve="IAggregateRootRepositoryComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOscK4" role="PzmwI">
      <ref role="PrY4T" node="7mYw4uW6toN" resolve="IEventContainerComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOscKa" role="PzmwI">
      <ref role="PrY4T" node="7mYw4uWwq43" resolve="ICommandContainerComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOv72C" role="PzmwI">
      <ref role="PrY4T" node="oGImgOv72s" resolve="IDtoComponent" />
    </node>
    <node concept="PrWs8" id="1WhJCpUQsa9" role="PzmwI">
      <ref role="PrY4T" node="1WhJCpUQqV4" resolve="IDtoRepositoryComponent" />
    </node>
    <node concept="PrWs8" id="oGImgOscKh" role="PzmwI">
      <ref role="PrY4T" node="3DbZR$O1TZR" resolve="IQueryContainerComponent" />
    </node>
    <node concept="PrWs8" id="omljbyVy_p" role="PzmwI">
      <ref role="PrY4T" node="omljbyVy$R" resolve="IGeneratorSettingsComponent" />
    </node>
    <node concept="PrWs8" id="5qxF18FKlwB" role="PzmwI">
      <ref role="PrY4T" node="5qxF18EuQW9" resolve="IEventGenerationSettingsComponent" />
    </node>
    <node concept="PrWs8" id="5qxF18FKlwC" role="PzmwI">
      <ref role="PrY4T" node="5qxF18ELp99" resolve="ICommandGenerationSettingsComponent" />
    </node>
    <node concept="PrWs8" id="5qxF18FKlwD" role="PzmwI">
      <ref role="PrY4T" node="5qxF18ELp98" resolve="IQueryGenerationSettingsComponent" />
    </node>
    <node concept="PrWs8" id="E4RYE9akab" role="PzmwI">
      <ref role="PrY4T" node="E4RYE9aka5" resolve="IDtoFlatteningRuleContainerComponent" />
    </node>
    <node concept="PrWs8" id="E4RYE9akar" role="PzmwI">
      <ref role="PrY4T" node="E4RYE9aka8" resolve="IDtoDataTypeRuleContainerComponent" />
    </node>
    <node concept="1TJgyi" id="oGImgOnn6_" role="1TKVEl">
      <property role="IQ2nx" value="444934303229243813" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="PlHQZ" id="oGImgOv72s">
    <property role="EcuMT" value="444934303231275164" />
    <property role="3GE5qa" value="dto" />
    <property role="TrG5h" value="IDtoComponent" />
    <node concept="PrWs8" id="2Bsub$LkRNs" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="5SyewCaZ9pz">
    <property role="EcuMT" value="6783047803581797987" />
    <property role="3GE5qa" value="typing.generic" />
    <property role="TrG5h" value="GenericType" />
    <property role="34LRSv" value="type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5SyewCaZ9pA" role="1TKVEi">
      <property role="IQ2ns" value="6783047803581797990" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="superType" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="PrWs8" id="5SyewCaZ9p$" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="PlHQZ" id="3FBObrowvH5">
    <property role="EcuMT" value="4244590657555004229" />
    <property role="3GE5qa" value="variable.parameter" />
    <property role="TrG5h" value="IComponentWithRequiredParameters" />
    <node concept="PrWs8" id="3FBObrowvH6" role="PrDN$">
      <ref role="PrY4T" node="oGImgNU0o$" resolve="IComponentWithParameters" />
    </node>
  </node>
  <node concept="1TIwiD" id="6ci4EVj$QUy">
    <property role="EcuMT" value="7138788901418921634" />
    <property role="3GE5qa" value="typing" />
    <property role="TrG5h" value="DataTypeWrapper" />
    <property role="34LRSv" value="datatype wrapper" />
    <property role="R4oN_" value="Wraps an IDataType" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6ci4EVj$QUz" role="1TKVEi">
      <property role="IQ2ns" value="7138788901418921635" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="wrappedType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
  <node concept="PlHQZ" id="2Bsub$LkRNn">
    <property role="EcuMT" value="3016418587223227607" />
    <property role="3GE5qa" value="editor" />
    <property role="TrG5h" value="IElementOfBoundedContext" />
  </node>
  <node concept="1TIwiD" id="5$Oa65a7dGq">
    <property role="EcuMT" value="6427806966484884250" />
    <property role="3GE5qa" value="aggregateRepository" />
    <property role="TrG5h" value="AggregateRootRepositoryReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5$Oa65a7pgL" role="1TKVEi">
      <property role="IQ2ns" value="6427806966484931633" />
      <property role="20kJfa" value="aggregate" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMp" resolve="AggregateRoot" />
    </node>
    <node concept="1TJgyj" id="5qxF18FZ9WI" role="1TKVEi">
      <property role="IQ2ns" value="6242459752559583022" />
      <property role="20kJfa" value="aggregateRepository" />
      <ref role="20lvS9" node="7fqk8p47V6t" resolve="AggregateRootRepository" />
    </node>
    <node concept="PrWs8" id="mdpAJLyd64" role="PzmwI">
      <ref role="PrY4T" node="5jZDGTgnxtU" resolve="IRepositoryReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="4REBMItTCF3">
    <property role="EcuMT" value="5614474895152286403" />
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="IComponentWithAggregateRootRepositoryReferences" />
    <node concept="PrWs8" id="omljbwCBpo" role="PrDN$">
      <ref role="PrY4T" node="5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
    </node>
  </node>
  <node concept="1TIwiD" id="1WhJCpUHTrZ">
    <property role="EcuMT" value="2238779974573594367" />
    <property role="TrG5h" value="DtoRepository" />
    <property role="3GE5qa" value="dtoRepository" />
    <property role="34LRSv" value="dto repository" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1WhJCpUQoKb" role="1TKVEi">
      <property role="IQ2ns" value="2238779974575819787" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dtoReference" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4Wa3rAG5J$6" resolve="DtoReference" />
    </node>
    <node concept="1TJgyj" id="1WhJCpUQt0d" role="1TKVEi">
      <property role="IQ2ns" value="2238779974575837197" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1WhJCpUQqV4" resolve="IDtoRepositoryComponent" />
    </node>
    <node concept="PrWs8" id="mdpAJLynS7" role="PzmwI">
      <ref role="PrY4T" node="5jZDGTilvf_" resolve="IRepository" />
    </node>
    <node concept="PrWs8" id="2RbvdOL9AC$" role="PzmwI">
      <ref role="PrY4T" node="1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
    </node>
    <node concept="PrWs8" id="1WhJCpUQoKx" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
  </node>
  <node concept="25R3W" id="1WhJCpUOLrA">
    <property role="3F6X1D" value="2238779974575396582" />
    <property role="3GE5qa" value="queryContainer" />
    <property role="TrG5h" value="QueryContainerType" />
    <ref role="1H5jkz" node="1WhJCpUOLrB" resolve="QueryBlock" />
    <node concept="25R33" id="1WhJCpUOLrB" role="25R1y">
      <property role="3tVfz5" value="2238779974575396583" />
      <property role="TrG5h" value="QueryBlock" />
      <property role="1L1pqM" value="block" />
    </node>
    <node concept="25R33" id="1WhJCpUOLrC" role="25R1y">
      <property role="3tVfz5" value="2238779974575396584" />
      <property role="TrG5h" value="QueryHandler" />
      <property role="1L1pqM" value="handler" />
    </node>
    <node concept="25R33" id="1WhJCpUOLrF" role="25R1y">
      <property role="3tVfz5" value="2238779974575396587" />
      <property role="TrG5h" value="QueryService" />
      <property role="1L1pqM" value="service" />
    </node>
  </node>
  <node concept="PlHQZ" id="1WhJCpUQqV4">
    <property role="EcuMT" value="2238779974575828676" />
    <property role="3GE5qa" value="dtoRepository" />
    <property role="TrG5h" value="IDtoRepositoryComponent" />
    <node concept="PrWs8" id="3VGLvhEO$i8" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="1WhJCpUZu2R">
    <property role="EcuMT" value="2238779974578200759" />
    <property role="3GE5qa" value="dtoRepository.query" />
    <property role="TrG5h" value="QueryMethods" />
    <property role="34LRSv" value="query methods" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1WhJCpUZu2S" role="1TKVEi">
      <property role="IQ2ns" value="2238779974578200760" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="queryRefernces" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7fqk8p43yh7" resolve="QueryReference" />
    </node>
    <node concept="PrWs8" id="1WhJCpUZu3O" role="PzmwI">
      <ref role="PrY4T" node="1WhJCpUQqV4" resolve="IDtoRepositoryComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="6gxxZVrO$5$">
    <property role="EcuMT" value="7215197606703677796" />
    <property role="3GE5qa" value="dtoRepository" />
    <property role="TrG5h" value="DtoRepositoryReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6gxxZVrO$5E" role="1TKVEi">
      <property role="IQ2ns" value="7215197606703677802" />
      <property role="20kJfa" value="dtoRepository" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1WhJCpUHTrZ" resolve="DtoRepository" />
    </node>
    <node concept="PrWs8" id="mdpAJLyphY" role="PzmwI">
      <ref role="PrY4T" node="5jZDGTgnxtU" resolve="IRepositoryReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="6gxxZVrO$5G">
    <property role="EcuMT" value="7215197606703677804" />
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="IComponentWithDtoRepositoryReferences" />
    <node concept="PrWs8" id="5jZDGTgDWlI" role="PrDN$">
      <ref role="PrY4T" node="5jZDGTgnxbG" resolve="IComponentWithRepositoryReferences" />
    </node>
  </node>
  <node concept="1TIwiD" id="6gxxZVsFKM9">
    <property role="EcuMT" value="7215197606718147721" />
    <property role="3GE5qa" value="dtoRepository.query" />
    <property role="TrG5h" value="QueryContainerMethods" />
    <property role="34LRSv" value="queries methods" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6gxxZVsFKMa" role="1TKVEi">
      <property role="IQ2ns" value="7215197606718147722" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="queryContainerReference" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6gxxZVsFKMc" resolve="QueryContainerReference" />
    </node>
    <node concept="PrWs8" id="6gxxZVsFPWx" role="PzmwI">
      <ref role="PrY4T" node="1WhJCpUQqV4" resolve="IDtoRepositoryComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="6gxxZVsFKMc">
    <property role="EcuMT" value="7215197606718147724" />
    <property role="3GE5qa" value="queryContainer" />
    <property role="TrG5h" value="QueryContainerReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6gxxZVsFKMd" role="1TKVEi">
      <property role="IQ2ns" value="7215197606718147725" />
      <property role="20kJfa" value="queryContainer" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3DbZR$O1TZO" resolve="QueryContainer" />
    </node>
  </node>
  <node concept="25R3W" id="1LTEHzOdy1">
    <property role="3F6X1D" value="32060296156731521" />
    <property role="3GE5qa" value="commandContainer" />
    <property role="TrG5h" value="CommandContainerType" />
    <ref role="1H5jkz" node="1LTEHzOdy2" resolve="CommandsBlock" />
    <node concept="25R33" id="1LTEHzOdy2" role="25R1y">
      <property role="3tVfz5" value="32060296156731522" />
      <property role="TrG5h" value="CommandsBlock" />
      <property role="1L1pqM" value="block" />
    </node>
    <node concept="25R33" id="1LTEHzOdy3" role="25R1y">
      <property role="3tVfz5" value="32060296156731523" />
      <property role="TrG5h" value="CommandHandler" />
      <property role="1L1pqM" value="handler" />
    </node>
  </node>
  <node concept="PlHQZ" id="1LTEH$t0xV">
    <property role="EcuMT" value="32060296167426171" />
    <property role="3GE5qa" value="query" />
    <property role="TrG5h" value="IQueryComponent" />
  </node>
  <node concept="PlHQZ" id="1LTEHA7rfM">
    <property role="EcuMT" value="32060296195322866" />
    <property role="TrG5h" value="IComponentWithNamePlaceholder" />
    <property role="3GE5qa" value="general.placeholder" />
    <node concept="1TJgyj" id="2RbvdOM04SO" role="1TKVEi">
      <property role="IQ2ns" value="3299868441447517748" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nameWrapper" />
      <ref role="20lvS9" node="2RbvdOJ2XKf" resolve="IOptionalValidIdentifierWrapper" />
    </node>
  </node>
  <node concept="1TIwiD" id="2RbvdOJ2XKf">
    <property role="EcuMT" value="3299868441397943311" />
    <property role="3GE5qa" value="general.identifier" />
    <property role="TrG5h" value="IOptionalValidIdentifierWrapper" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2RbvdOJ2XKg" role="PzmwI">
      <ref role="PrY4T" node="oGImgMSoXZ" resolve="IOptionalValidIdentifier" />
    </node>
  </node>
  <node concept="25R3W" id="3VGLvhFnWd_">
    <property role="3F6X1D" value="4534216578419376997" />
    <property role="3GE5qa" value="eventContainer" />
    <property role="TrG5h" value="EventContainerType" />
    <ref role="1H5jkz" node="3VGLvhFnWdA" resolve="EventBlock" />
    <node concept="25R33" id="3VGLvhFnWdA" role="25R1y">
      <property role="3tVfz5" value="4534216578419376998" />
      <property role="TrG5h" value="EventBlock" />
      <property role="1L1pqM" value="block" />
    </node>
    <node concept="25R33" id="3VGLvhFnWdB" role="25R1y">
      <property role="3tVfz5" value="4534216578419376999" />
      <property role="TrG5h" value="EventHandler" />
      <property role="1L1pqM" value="handler" />
    </node>
  </node>
  <node concept="1TIwiD" id="5jZDGTdpaEI">
    <property role="EcuMT" value="6124797423239080622" />
    <property role="3GE5qa" value="eventContainer" />
    <property role="TrG5h" value="EventContainerReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5jZDGTdpaEJ" role="1TKVEi">
      <property role="IQ2ns" value="6124797423239080623" />
      <property role="20kJfa" value="eventContainer" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7fqk8p44qYv" resolve="EventContainer" />
    </node>
  </node>
  <node concept="PlHQZ" id="5jZDGTfVyn9">
    <property role="EcuMT" value="6124797423281645001" />
    <property role="3GE5qa" value="event" />
    <property role="TrG5h" value="IEventComponent" />
  </node>
  <node concept="PlHQZ" id="5jZDGTfVyna">
    <property role="EcuMT" value="6124797423281645002" />
    <property role="3GE5qa" value="command" />
    <property role="TrG5h" value="ICommandComponent" />
  </node>
  <node concept="PlHQZ" id="5jZDGTfXM0Y">
    <property role="EcuMT" value="6124797423282233406" />
    <property role="3GE5qa" value="general.keyword" />
    <property role="TrG5h" value="IComponentWithToggleableKeyword" />
    <node concept="1TJgyi" id="5jZDGTfXOm3" role="1TKVEl">
      <property role="IQ2nx" value="6124797423282242947" />
      <property role="TrG5h" value="shouldShowKeyword" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="PlHQZ" id="5jZDGTg8Bxu">
    <property role="EcuMT" value="6124797423285074014" />
    <property role="3GE5qa" value="general.keyword" />
    <property role="TrG5h" value="IContainsComponentsWithToggleableKeywords" />
  </node>
  <node concept="PlHQZ" id="5jZDGTgnxbG">
    <property role="EcuMT" value="6124797423288980204" />
    <property role="TrG5h" value="IComponentWithRepositoryReferences" />
    <property role="3GE5qa" value="repository" />
    <node concept="1TJgyi" id="5jZDGTikMfb" role="1TKVEl">
      <property role="IQ2nx" value="6124797423321818059" />
      <property role="TrG5h" value="shouldDisplayReferences" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="5jZDGTikMfc" role="1TKVEl">
      <property role="IQ2nx" value="6124797423321818060" />
      <property role="TrG5h" value="hasVerticallyAlignedReferences" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="5jZDGTikMf6" role="1TKVEi">
      <property role="IQ2ns" value="6124797423321818054" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="repositoryReferences" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5jZDGTgnxtU" resolve="IRepositoryReference" />
    </node>
    <node concept="PrWs8" id="5jZDGTikMf8" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="5jZDGTgnxtU">
    <property role="EcuMT" value="6124797423288981370" />
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="IRepositoryReference" />
    <node concept="PrWs8" id="1DRRhztqvFd" role="PrDN$">
      <ref role="PrY4T" node="7a9d0UA8o5K" resolve="IReferenceType" />
    </node>
  </node>
  <node concept="PlHQZ" id="5jZDGTilvf_">
    <property role="EcuMT" value="6124797423322002405" />
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="IRepository" />
    <node concept="PrWs8" id="mdpAJLz2J3" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="5jZDGTilOyb">
    <property role="EcuMT" value="6124797423322089611" />
    <property role="3GE5qa" value="repository" />
    <property role="TrG5h" value="IRepositorySubstitude" />
    <node concept="PrWs8" id="5jZDGTilOyc" role="PrDN$">
      <ref role="PrY4T" node="5jZDGTilvf_" resolve="IRepository" />
    </node>
  </node>
  <node concept="1TIwiD" id="mdpAJLpk86">
    <property role="EcuMT" value="400088555703321094" />
    <property role="TrG5h" value="GenerationSettings" />
    <property role="3GE5qa" value="generationSettings" />
    <property role="34LRSv" value="settings" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="mdpAJLpokZ" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="1TJgyj" id="omljbyVy$T" role="1TKVEi">
      <property role="IQ2ns" value="438631690759186745" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="omljbyVy$R" resolve="IGeneratorSettingsComponent" />
    </node>
  </node>
  <node concept="25R3W" id="omljbysWyV">
    <property role="3F6X1D" value="438631690751166651" />
    <property role="3GE5qa" value="generationSettings.event.handling" />
    <property role="TrG5h" value="EventHandlingSettingType" />
    <ref role="1H5jkz" node="omljbysWyW" resolve="Separated" />
    <node concept="25R33" id="omljbysWyW" role="25R1y">
      <property role="3tVfz5" value="438631690751166652" />
      <property role="TrG5h" value="Separated" />
      <property role="1L1pqM" value="separated" />
    </node>
    <node concept="25R33" id="omljbysWyX" role="25R1y">
      <property role="3tVfz5" value="438631690751166653" />
      <property role="TrG5h" value="Grouped" />
      <property role="1L1pqM" value="grouped" />
    </node>
  </node>
  <node concept="25R3W" id="omljbysWz0">
    <property role="3F6X1D" value="438631690751166656" />
    <property role="3GE5qa" value="generationSettings.query.handling" />
    <property role="TrG5h" value="QueryHandlingSettingType" />
    <ref role="1H5jkz" node="omljbysWz1" resolve="Separated" />
    <node concept="25R33" id="omljbysWz1" role="25R1y">
      <property role="3tVfz5" value="438631690751166657" />
      <property role="TrG5h" value="Separated" />
      <property role="1L1pqM" value="separated" />
    </node>
    <node concept="25R33" id="omljbysWz2" role="25R1y">
      <property role="3tVfz5" value="438631690751166658" />
      <property role="TrG5h" value="Grouped" />
      <property role="1L1pqM" value="grouped" />
    </node>
  </node>
  <node concept="25R3W" id="omljbysWz6">
    <property role="3F6X1D" value="438631690751166662" />
    <property role="3GE5qa" value="generationSettings.command.handling" />
    <property role="TrG5h" value="CommandHandlingSettingType" />
    <ref role="1H5jkz" node="omljbysWz7" resolve="Separated" />
    <node concept="25R33" id="omljbysWz7" role="25R1y">
      <property role="3tVfz5" value="438631690751166663" />
      <property role="TrG5h" value="Separated" />
      <property role="1L1pqM" value="separated" />
    </node>
    <node concept="25R33" id="omljbysWz8" role="25R1y">
      <property role="3tVfz5" value="438631690751166664" />
      <property role="TrG5h" value="Grouped" />
      <property role="1L1pqM" value="grouped" />
    </node>
  </node>
  <node concept="PlHQZ" id="omljbyVy$R">
    <property role="EcuMT" value="438631690759186743" />
    <property role="3GE5qa" value="generationSettings" />
    <property role="TrG5h" value="IGeneratorSettingsComponent" />
    <node concept="PrWs8" id="5qxF18ELq6v" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="omljbyVy$V">
    <property role="EcuMT" value="438631690759186747" />
    <property role="3GE5qa" value="generationSettings.command" />
    <property role="TrG5h" value="CommandGenerationSettings" />
    <property role="34LRSv" value="command settings" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="omljbyVy$W" role="PzmwI">
      <ref role="PrY4T" node="omljbyVy$R" resolve="IGeneratorSettingsComponent" />
    </node>
    <node concept="1TJgyj" id="5qxF18ELq3b" role="1TKVEi">
      <property role="IQ2ns" value="6242459752539201739" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5qxF18ELp99" resolve="ICommandGenerationSettingsComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="omljbyVy$Y">
    <property role="EcuMT" value="438631690759186750" />
    <property role="3GE5qa" value="generationSettings.event" />
    <property role="TrG5h" value="EventGenerationSettings" />
    <property role="34LRSv" value="event settings" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="omljbyVy$Z" role="PzmwI">
      <ref role="PrY4T" node="omljbyVy$R" resolve="IGeneratorSettingsComponent" />
    </node>
    <node concept="1TJgyj" id="5qxF18EC3Gr" role="1TKVEi">
      <property role="IQ2ns" value="6242459752536750875" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5qxF18EuQW9" resolve="IEventGenerationSettingsComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="omljbyVy_1">
    <property role="EcuMT" value="438631690759186753" />
    <property role="3GE5qa" value="generationSettings.query" />
    <property role="TrG5h" value="QueryGenerationSettings" />
    <property role="34LRSv" value="query settings" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="omljbyVy_2" role="PzmwI">
      <ref role="PrY4T" node="omljbyVy$R" resolve="IGeneratorSettingsComponent" />
    </node>
    <node concept="1TJgyj" id="5qxF18ENIZu" role="1TKVEi">
      <property role="IQ2ns" value="6242459752539811806" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5qxF18ELp98" resolve="IQueryGenerationSettingsComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="omljbzjybJ">
    <property role="EcuMT" value="438631690765476591" />
    <property role="3GE5qa" value="generationSettings.description" />
    <property role="TrG5h" value="DescriptionLine" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="omljbzjybK" role="1TKVEl">
      <property role="IQ2nx" value="438631690765476592" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="5qxF18DOZbD" role="1TKVEi">
      <property role="IQ2ns" value="6242459752523363049" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="lol" />
      <ref role="20lvS9" to="zqge:WJz9iAWEzU" resolve="BulletLine" />
    </node>
  </node>
  <node concept="1TIwiD" id="omljbzON_X">
    <property role="EcuMT" value="438631690774198653" />
    <property role="3GE5qa" value="generationSettings.description" />
    <property role="TrG5h" value="Description" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="omljbzON_Y" role="1TKVEi">
      <property role="IQ2ns" value="438631690774198654" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="lines" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="omljbzjybJ" resolve="DescriptionLine" />
    </node>
  </node>
  <node concept="PlHQZ" id="5qxF18EuQW9">
    <property role="EcuMT" value="6242459752534339337" />
    <property role="3GE5qa" value="generationSettings.event" />
    <property role="TrG5h" value="IEventGenerationSettingsComponent" />
    <node concept="PrWs8" id="5qxF18ELq6r" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="5qxF18EuQWa">
    <property role="EcuMT" value="6242459752534339338" />
    <property role="3GE5qa" value="generationSettings.event.handling" />
    <property role="TrG5h" value="EventHandlingSetting" />
    <property role="34LRSv" value="handling setting" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5qxF18EC3$h" role="1TKVEl">
      <property role="IQ2nx" value="6242459752536750353" />
      <property role="TrG5h" value="handlingtype" />
      <ref role="AX2Wp" node="omljbysWyV" resolve="EventHandlingSettingType" />
    </node>
    <node concept="PrWs8" id="5qxF18EC3$j" role="PzmwI">
      <ref role="PrY4T" node="5qxF18EuQW9" resolve="IEventGenerationSettingsComponent" />
    </node>
  </node>
  <node concept="PlHQZ" id="5qxF18ELp98">
    <property role="EcuMT" value="6242459752539198024" />
    <property role="3GE5qa" value="generationSettings.query" />
    <property role="TrG5h" value="IQueryGenerationSettingsComponent" />
    <node concept="PrWs8" id="5qxF18ELq6t" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="5qxF18ELp99">
    <property role="EcuMT" value="6242459752539198025" />
    <property role="3GE5qa" value="generationSettings.command" />
    <property role="TrG5h" value="ICommandGenerationSettingsComponent" />
    <node concept="PrWs8" id="5qxF18ELq6p" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="5qxF18ELq1P">
    <property role="EcuMT" value="6242459752539201653" />
    <property role="3GE5qa" value="generationSettings.command.handling" />
    <property role="TrG5h" value="CommandHandlingSetting" />
    <property role="34LRSv" value="handling setting" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5qxF18ELq39" role="1TKVEl">
      <property role="IQ2nx" value="6242459752539201737" />
      <property role="TrG5h" value="handlingType" />
      <ref role="AX2Wp" node="omljbysWz6" resolve="CommandHandlingSettingType" />
    </node>
    <node concept="PrWs8" id="5qxF18ELq6n" role="PzmwI">
      <ref role="PrY4T" node="5qxF18ELp99" resolve="ICommandGenerationSettingsComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="5qxF18ELq1Q">
    <property role="EcuMT" value="6242459752539201654" />
    <property role="3GE5qa" value="generationSettings.query.handling" />
    <property role="TrG5h" value="QueryHandlingSetting" />
    <property role="34LRSv" value="handling setting" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5qxF18ENHSu" role="1TKVEl">
      <property role="IQ2nx" value="6242459752539807262" />
      <property role="TrG5h" value="handlingType" />
      <ref role="AX2Wp" node="omljbysWz0" resolve="QueryHandlingSettingType" />
    </node>
    <node concept="PrWs8" id="5qxF18EQ23d" role="PzmwI">
      <ref role="PrY4T" node="5qxF18ELp98" resolve="IQueryGenerationSettingsComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="5qxF18ENJjm">
    <property role="EcuMT" value="6242459752539813078" />
    <property role="3GE5qa" value="generationSettings.query.processing" />
    <property role="TrG5h" value="QueryProcessingSetting" />
    <property role="34LRSv" value="processor setting" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5qxF18EQ23f" role="PzmwI">
      <ref role="PrY4T" node="5qxF18ELp98" resolve="IQueryGenerationSettingsComponent" />
    </node>
    <node concept="1TJgyi" id="5qxF18EUWOZ" role="1TKVEl">
      <property role="IQ2nx" value="6242459752541703487" />
      <property role="TrG5h" value="useProcessingImplementation" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="PlHQZ" id="1bq_vIpSfA3">
    <property role="EcuMT" value="1358563145456613763" />
    <property role="3GE5qa" value="dtoDerivation.rules" />
    <property role="TrG5h" value="IDtoDerivationRule" />
    <node concept="1TJgyi" id="5QsWOhW3TSQ" role="1TKVEl">
      <property role="IQ2nx" value="6745533817358884406" />
      <property role="TrG5h" value="usage" />
      <ref role="AX2Wp" node="5QsWOhW3TSL" resolve="DtoDerivationRuleUsage" />
    </node>
  </node>
  <node concept="1TIwiD" id="1bq_vIpSfA4">
    <property role="EcuMT" value="1358563145456613764" />
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <property role="TrG5h" value="DtoDataTypeRule" />
    <property role="34LRSv" value="type rule" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4LpUh3XLV8u" role="1TKVEi">
      <property role="IQ2ns" value="5501684678996242974" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="fromType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="1TJgyj" id="4LpUh3XLV8w" role="1TKVEi">
      <property role="IQ2ns" value="5501684678996242976" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="toType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="PrWs8" id="1bq_vIpSfA8" role="PzmwI">
      <ref role="PrY4T" node="1bq_vIpSfA3" resolve="IDtoDerivationRule" />
    </node>
    <node concept="PrWs8" id="E4RYE9eaHR" role="PzmwI">
      <ref role="PrY4T" node="E4RYE9aka8" resolve="IDtoDataTypeRuleContainerComponent" />
    </node>
    <node concept="1TJgyi" id="3L7_qKL5B4u" role="1TKVEl">
      <property role="IQ2nx" value="4343604932412600606" />
      <property role="TrG5h" value="applicability" />
      <ref role="AX2Wp" node="3L7_qKKKeKl" resolve="DtoDataTypeRuleApplicability" />
    </node>
  </node>
  <node concept="1TIwiD" id="1bq_vIpSfA5">
    <property role="EcuMT" value="1358563145456613765" />
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <property role="TrG5h" value="DtoFlatteningRule" />
    <property role="34LRSv" value="flattening rule" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3NXs7yqMd7p" role="PzmwI">
      <ref role="PrY4T" node="1LTEHA7rfM" resolve="IComponentWithNamePlaceholder" />
    </node>
    <node concept="PrWs8" id="1bq_vIpSfA6" role="PzmwI">
      <ref role="PrY4T" node="1bq_vIpSfA3" resolve="IDtoDerivationRule" />
    </node>
    <node concept="PrWs8" id="3NXs7yov5J7" role="PzmwI">
      <ref role="PrY4T" node="3NXs7yolYaR" resolve="IDtoDerivation" />
    </node>
    <node concept="PrWs8" id="E4RYE9eaH6" role="PzmwI">
      <ref role="PrY4T" node="E4RYE9aka5" resolve="IDtoFlatteningRuleContainerComponent" />
    </node>
    <node concept="1TJgyi" id="3NXs7yqZK9u" role="1TKVEl">
      <property role="IQ2nx" value="4394792474682262110" />
      <property role="TrG5h" value="nameConvention" />
      <ref role="AX2Wp" node="3NXs7yqZJYD" resolve="FlatteningRuleNameConvention" />
    </node>
  </node>
  <node concept="PlHQZ" id="4LpUh3SXzl5">
    <property role="TrG5h" value="IDtoDerivableReference" />
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="EcuMT" value="5501684678915405121" />
  </node>
  <node concept="PlHQZ" id="4LpUh3T0rQI">
    <property role="EcuMT" value="5501684678916160942" />
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="IDtoDerivable" />
    <node concept="PrWs8" id="E4RYEauqzO" role="PrDN$">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="1pnQbpEjUvX" role="PrDN$">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="PlHQZ" id="4LpUh3UZauM">
    <property role="EcuMT" value="5501684678949382066" />
    <property role="3GE5qa" value="variable" />
    <property role="TrG5h" value="IVariableReference" />
  </node>
  <node concept="PlHQZ" id="4LpUh3V3H_u">
    <property role="EcuMT" value="5501684678950574430" />
    <property role="3GE5qa" value="variable" />
    <property role="TrG5h" value="IVariable" />
    <node concept="1TJgyj" id="4LpUh3YaKVD" role="1TKVEi">
      <property role="IQ2ns" value="5501684679002754793" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
    <node concept="PrWs8" id="4LpUh3V3HF$" role="PrDN$">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="7z5h98SyxVD" role="PrDN$">
      <ref role="PrY4T" to="tpck:69Qfsw3InJo" resolve="ISmartReferent" />
    </node>
    <node concept="PrWs8" id="4yUYSn0w_ot" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="4LpUh3VYkXq">
    <property role="EcuMT" value="5501684678965940058" />
    <property role="3GE5qa" value="typing" />
    <property role="TrG5h" value="SubstitudeDataType" />
    <property role="R4oN_" value="Substitude IDataType for types which are only resolvable upon generation. " />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4LpUh3VYkXr" role="PzmwI">
      <ref role="PrY4T" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4LpUh3XOknS">
    <property role="EcuMT" value="5501684678996870648" />
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <property role="TrG5h" value="DtoDataTypeRuleContainer" />
    <property role="34LRSv" value="dto type rules" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4LpUh3XOknV" role="1TKVEi">
      <property role="IQ2ns" value="5501684678996870651" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="E4RYE9aka8" resolve="IDtoDataTypeRuleContainerComponent" />
    </node>
    <node concept="PrWs8" id="4LpUh3XOknT" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="E4RYE9lJ_3" role="PzmwI">
      <ref role="PrY4T" node="E4RYE9lJl_" resolve="IDtoDerivationRuleContainer" />
    </node>
  </node>
  <node concept="PlHQZ" id="3NXs7yolYaR">
    <property role="EcuMT" value="4394792474637755063" />
    <property role="3GE5qa" value="dtoDerivation" />
    <property role="TrG5h" value="IDtoDerivation" />
    <node concept="1TJgyj" id="3NXs7yom3d$" role="1TKVEi">
      <property role="IQ2ns" value="4394792474637775716" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="derivableReference" />
      <ref role="20lvS9" node="4LpUh3SXzl5" resolve="IDtoDerivableReference" />
    </node>
    <node concept="1TJgyj" id="3NXs7yom3d_" role="1TKVEi">
      <property role="IQ2ns" value="4394792474637775717" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="ignoredVariableReferences" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4LpUh3UZauM" resolve="IVariableReference" />
    </node>
    <node concept="1TJgyj" id="5QsWOhW8vfl" role="1TKVEi">
      <property role="IQ2ns" value="6745533817360085973" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="derivationRuleReferences" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5YqiGT0mxNQ" resolve="IDtoDerivationRuleReference" />
    </node>
    <node concept="1TJgyi" id="3NXs7yom3dC" role="1TKVEl">
      <property role="IQ2nx" value="4394792474637775720" />
      <property role="TrG5h" value="showIgnoredVariables" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="3NXs7yq2MLp" role="1TKVEl">
      <property role="IQ2nx" value="4394792474666282073" />
      <property role="TrG5h" value="showDerivationRules" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7z5h98TrECo" role="1TKVEl">
      <property role="IQ2nx" value="8702437249782819352" />
      <property role="TrG5h" value="hasVerticallyAlignedIgnoredVariables" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7z5h98TrECr" role="1TKVEl">
      <property role="IQ2nx" value="8702437249782819355" />
      <property role="TrG5h" value="hasVerticallyAlignedRules" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="3NXs7yomcE$" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="3NXs7ypg5id">
    <property role="EcuMT" value="4394792474652988557" />
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <property role="TrG5h" value="DtoFlatteningRuleContainer" />
    <property role="34LRSv" value="dto flattening rules" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="E4RYE8OdJQ" role="PzmwI">
      <ref role="PrY4T" node="6dPLGVFESdC" resolve="IBoundedContextComponent" />
    </node>
    <node concept="PrWs8" id="E4RYE9lL7Y" role="PzmwI">
      <ref role="PrY4T" node="E4RYE9lJl_" resolve="IDtoDerivationRuleContainer" />
    </node>
    <node concept="1TJgyj" id="E4RYE8OeC$" role="1TKVEi">
      <property role="IQ2ns" value="757976835715820068" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="E4RYE9aka5" resolve="IDtoFlatteningRuleContainerComponent" />
    </node>
  </node>
  <node concept="25R3W" id="3NXs7yqZJYD">
    <property role="3F6X1D" value="4394792474682261417" />
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <property role="TrG5h" value="FlatteningRuleNameConvention" />
    <ref role="1H5jkz" node="3NXs7yqZJYE" resolve="None" />
    <node concept="25R33" id="3NXs7yqZJYE" role="25R1y">
      <property role="3tVfz5" value="4394792474682261418" />
      <property role="TrG5h" value="None" />
      <property role="1L1pqM" value="none" />
    </node>
    <node concept="25R33" id="3NXs7yqZJYF" role="25R1y">
      <property role="3tVfz5" value="4394792474682261419" />
      <property role="TrG5h" value="Prefix" />
      <property role="1L1pqM" value="prefix" />
    </node>
    <node concept="25R33" id="3NXs7yqZJYI" role="25R1y">
      <property role="3tVfz5" value="4394792474682261422" />
      <property role="TrG5h" value="Suffix" />
      <property role="1L1pqM" value="suffix" />
    </node>
  </node>
  <node concept="25R3W" id="5QsWOhW3TSL">
    <property role="3F6X1D" value="6745533817358884401" />
    <property role="3GE5qa" value="dtoDerivation.rules" />
    <property role="TrG5h" value="DtoDerivationRuleUsage" />
    <ref role="1H5jkz" node="5QsWOhW3TSN" resolve="Explicit" />
    <node concept="25R33" id="5QsWOhW3TSM" role="25R1y">
      <property role="3tVfz5" value="6745533817358884402" />
      <property role="TrG5h" value="Implicit" />
      <property role="1L1pqM" value="implicit" />
    </node>
    <node concept="25R33" id="5QsWOhW3TSN" role="25R1y">
      <property role="3tVfz5" value="6745533817358884403" />
      <property role="TrG5h" value="Explicit" />
      <property role="1L1pqM" value="explicit" />
    </node>
  </node>
  <node concept="1TIwiD" id="5QsWOhX$0Dm">
    <property role="EcuMT" value="6745533817384077910" />
    <property role="3GE5qa" value="variable" />
    <property role="TrG5h" value="DtoDerivedVariableReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5QsWOhX$0Dp" role="1TKVEi">
      <property role="IQ2ns" value="6745533817384077913" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4LpUh3V3H_u" resolve="IVariable" />
    </node>
    <node concept="PrWs8" id="5QsWOhX$0Dn" role="PzmwI">
      <ref role="PrY4T" node="4LpUh3UZauM" resolve="IVariableReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="7z5h98U71mw">
    <property role="EcuMT" value="8702437249794184608" />
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <property role="TrG5h" value="DtoFlatteningRuleReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7z5h98U71mx" role="1TKVEi">
      <property role="IQ2ns" value="8702437249794184609" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1bq_vIpSfA5" resolve="DtoFlatteningRule" />
    </node>
    <node concept="PrWs8" id="5YqiGT0myHy" role="PzmwI">
      <ref role="PrY4T" node="5YqiGT0mxNQ" resolve="IDtoDerivationRuleReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="7z5h98U71my">
    <property role="EcuMT" value="8702437249794184610" />
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <property role="TrG5h" value="DtoDataTypeRuleReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7z5h98U71mz" role="1TKVEi">
      <property role="IQ2ns" value="8702437249794184611" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1bq_vIpSfA4" resolve="DtoDataTypeRule" />
    </node>
    <node concept="PrWs8" id="5YqiGT0mzfa" role="PzmwI">
      <ref role="PrY4T" node="5YqiGT0mxNQ" resolve="IDtoDerivationRuleReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="5YqiGT0mxNQ">
    <property role="TrG5h" value="IDtoDerivationRuleReference" />
    <property role="3GE5qa" value="dtoDerivation.rules" />
    <property role="EcuMT" value="6745533817365408374" />
  </node>
  <node concept="PlHQZ" id="E4RYE9aka5">
    <property role="EcuMT" value="757976835721609861" />
    <property role="3GE5qa" value="dtoDerivation.rules.flattening" />
    <property role="TrG5h" value="IDtoFlatteningRuleContainerComponent" />
    <node concept="PrWs8" id="E4RYE9aka6" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="E4RYE9aka8">
    <property role="EcuMT" value="757976835721609864" />
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <property role="TrG5h" value="IDtoDataTypeRuleContainerComponent" />
    <node concept="PrWs8" id="E4RYE9aka9" role="PrDN$">
      <ref role="PrY4T" node="2Bsub$LkRNn" resolve="IElementOfBoundedContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="E4RYE9lJl_">
    <property role="EcuMT" value="757976835724604773" />
    <property role="3GE5qa" value="dtoDerivation.rules" />
    <property role="TrG5h" value="IDtoDerivationRuleContainer" />
  </node>
  <node concept="1TIwiD" id="7qLyWzvgcUx">
    <property role="EcuMT" value="8552770862208568993" />
    <property role="3GE5qa" value="generationSettings.general" />
    <property role="TrG5h" value="OutputPathPreference" />
    <property role="34LRSv" value="output path" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7qLyWzvgeqI" role="PzmwI">
      <ref role="PrY4T" node="omljbyVy$R" resolve="IGeneratorSettingsComponent" />
    </node>
    <node concept="1TJgyi" id="7qLyWzvgeqK" role="1TKVEl">
      <property role="IQ2nx" value="8552770862208575152" />
      <property role="TrG5h" value="path" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="25R3W" id="3L7_qKKKeKl">
    <property role="3F6X1D" value="4343604932406995989" />
    <property role="3GE5qa" value="dtoDerivation.rules.types" />
    <property role="TrG5h" value="DtoDataTypeRuleApplicability" />
    <ref role="1H5jkz" node="3L7_qKKKeKm" resolve="Exact" />
    <node concept="25R33" id="3L7_qKKKeKm" role="25R1y">
      <property role="3tVfz5" value="4343604932406995990" />
      <property role="TrG5h" value="Exact" />
      <property role="1L1pqM" value="exact" />
    </node>
    <node concept="25R33" id="3L7_qKKKeKn" role="25R1y">
      <property role="3tVfz5" value="4343604932406995991" />
      <property role="TrG5h" value="Partial" />
      <property role="1L1pqM" value="partial" />
    </node>
  </node>
  <node concept="25R3W" id="p4fyl2V4xf">
    <property role="3F6X1D" value="451554192401385551" />
    <property role="3GE5qa" value="variable" />
    <property role="TrG5h" value="VariableModifier" />
    <ref role="1H5jkz" node="p4fyl2V4xh" resolve="public" />
    <node concept="25R33" id="p4fyl2V4xh" role="25R1y">
      <property role="3tVfz5" value="451554192401385553" />
      <property role="TrG5h" value="public" />
    </node>
    <node concept="25R33" id="p4fyl2V4xg" role="25R1y">
      <property role="3tVfz5" value="451554192401385552" />
      <property role="TrG5h" value="private" />
    </node>
    <node concept="25R33" id="p4fyl2V4xk" role="25R1y">
      <property role="3tVfz5" value="451554192401385556" />
      <property role="TrG5h" value="protected" />
    </node>
  </node>
  <node concept="1TIwiD" id="2QCVoC54a87">
    <property role="EcuMT" value="3290140704840393223" />
    <property role="3GE5qa" value="typing.kotlin" />
    <property role="TrG5h" value="KotlinDataType" />
    <property role="34LRSv" value="kotlin type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2QCVoC6fUaM" role="1TKVEi">
      <property role="IQ2ns" value="3290140704860250802" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actualType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="hcm8:2yYXHtl6Jjv" resolve="ClassType" />
    </node>
  </node>
  <node concept="PlHQZ" id="7a9d0UA8o5K">
    <property role="EcuMT" value="8253185029654544752" />
    <property role="3GE5qa" value="typing.reference" />
    <property role="TrG5h" value="IReferenceType" />
    <node concept="PrWs8" id="7a9d0UA8o5L" role="PrDN$">
      <ref role="PrY4T" node="4NUTY$DwDMt" resolve="IDataType" />
    </node>
  </node>
</model>

