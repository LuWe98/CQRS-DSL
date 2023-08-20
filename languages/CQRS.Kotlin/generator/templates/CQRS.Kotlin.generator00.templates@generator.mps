<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:99a850e5-8690-4f00-8639-c20730f5bf81(CQRS.Kotlin.generator00.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="6b3888c1-9802-44d8-8baf-f8e6c33ed689" name="jetbrains.mps.kotlin" version="10" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="0edf22a4-42bc-4e5d-954f-06aaaf51df00" name="jetbrains.mps.lang.makeup" version="0" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="990507d3-3527-4c54-bfe9-0ca3c9c6247a" name="com.dslfoundry.plaintextgen" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="m7gy" ref="r:a27ce5e9-db29-4fc0-925f-cc4b526bab30(CQRS.Kotlin.structure)" />
    <import index="v95s" ref="r:80a70671-192c-4185-9509-8b98e792e24c(CQRS.Kotlin.generation)" />
    <import index="3nll" ref="r:8c31c3a3-db83-4ac9-834b-2cb8f0f4a7eb(CQRS.structure)" />
    <import index="fy23" ref="r:4d7d5410-8d5a-45f2-a2f2-a6b7b42a377e(jetbrains.mps.lang.makeup.structure)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="cpc8" ref="r:c29d26de-4040-4764-ba29-6361cc981593(CQRS.TextGenBased.generation)" />
    <import index="anwi" ref="r:7c81c792-29f8-43b8-86dd-c441406afee9(CQRS.Generation.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="7830515785164762753" name="jetbrains.mps.lang.generator.structure.MappingConfiguration_Condition" flags="in" index="avzCv" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="7830515785164764091" name="condition" index="avys_" />
        <child id="1195502100749" name="preMappingScript" index="1puA0r" />
      </concept>
      <concept id="1195499912406" name="jetbrains.mps.lang.generator.structure.MappingScript" flags="lg" index="1pmfR0">
        <property id="1195595592106" name="scriptKind" index="1v3f2W" />
        <child id="1195501105008" name="codeBlock" index="1pqMTA" />
      </concept>
      <concept id="1195500722856" name="jetbrains.mps.lang.generator.structure.MappingScript_CodeBlock" flags="in" index="1pplIY" />
      <concept id="1195502151594" name="jetbrains.mps.lang.generator.structure.MappingScriptReference" flags="lg" index="1puMqW">
        <reference id="1195502167610" name="mappingScript" index="1puQsG" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
    </language>
  </registry>
  <node concept="bUwia" id="AXWTD2eRMO">
    <property role="TrG5h" value="main" />
    <node concept="avzCv" id="AXWTD2f4wq" role="avys_">
      <node concept="3clFbS" id="AXWTD2f4wr" role="2VODD2">
        <node concept="3clFbF" id="AXWTD2f4_i" role="3cqZAp">
          <node concept="3clFbT" id="CvLt7qN0G8" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1puMqW" id="4p0keayBXmO" role="1puA0r">
      <ref role="1puQsG" node="AXWTD2eVpO" resolve="PreProcessingScript" />
    </node>
  </node>
  <node concept="1pmfR0" id="AXWTD2eVpO">
    <property role="TrG5h" value="PreProcessingScript" />
    <property role="1v3f2W" value="hpv1Zf2/pre_processing" />
    <property role="3GE5qa" value="" />
    <node concept="1pplIY" id="AXWTD2eVpP" role="1pqMTA">
      <node concept="3clFbS" id="AXWTD2eVpQ" role="2VODD2">
        <node concept="3clFbF" id="4yUYSn0jt4v" role="3cqZAp">
          <node concept="2YIFZM" id="4yUYSn0jt6w" role="3clFbG">
            <ref role="37wK5l" to="cpc8:4yUYSn0gM7j" resolve="unregister" />
            <ref role="1Pybhc" to="cpc8:4yUYSn0gIeU" resolve="DependencyResolvers" />
            <node concept="Rm8GO" id="4yUYSn0jt8$" role="37wK5m">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4b$xqUBeYMr" role="3cqZAp">
          <node concept="2YIFZM" id="4b$xqUBeYOV" role="3clFbG">
            <ref role="37wK5l" to="cpc8:4b$xqUBex56" resolve="unregister" />
            <ref role="1Pybhc" to="cpc8:4b$xqUBewzq" resolve="DependencyTextConverters" />
            <node concept="Rm8GO" id="4b$xqUBeYQT" role="37wK5m">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Sy32QQSR7_" role="3cqZAp">
          <node concept="2YIFZM" id="Sy32QQSReT" role="3clFbG">
            <ref role="37wK5l" to="cpc8:Sy32QQSh2N" resolve="unregister" />
            <ref role="1Pybhc" to="cpc8:4yUYSn0hP3Y" resolve="ConceptMappers" />
            <node concept="Rm8GO" id="Sy32QQSRlk" role="37wK5m">
              <ref role="Rm8GQ" to="cpc8:4yUYSn0g4zz" resolve="KOTLIN" />
              <ref role="1Px2BO" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Sy32QQSR5c" role="3cqZAp" />
        <node concept="3cpWs8" id="Sy32QQW1Hq" role="3cqZAp">
          <node concept="3cpWsn" id="Sy32QQW1Hr" role="3cpWs9">
            <property role="TrG5h" value="mapper" />
            <node concept="3uibUv" id="Sy32QQW1Ac" role="1tU5fm">
              <ref role="3uigEE" to="v95s:3JSfbhYdI4F" resolve="KotlinConceptMapper" />
            </node>
            <node concept="2ShNRf" id="Sy32QQW1Hs" role="33vP2m">
              <node concept="1pGfFk" id="Sy32QQW1Ht" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="v95s:3JSfbhYfIFp" resolve="KotlinConceptMapper" />
                <node concept="1Q6Npb" id="Sy32QQW1Hu" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Sy32QQSRFd" role="3cqZAp">
          <node concept="2YIFZM" id="Sy32QQSROv" role="3clFbG">
            <ref role="37wK5l" to="cpc8:Sy32QQSh0L" resolve="register" />
            <ref role="1Pybhc" to="cpc8:4yUYSn0hP3Y" resolve="ConceptMappers" />
            <node concept="37vLTw" id="Sy32QQW2jg" role="37wK5m">
              <ref role="3cqZAo" node="Sy32QQW1Hr" resolve="mapper" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4b$xqUBeYWD" role="3cqZAp">
          <node concept="2YIFZM" id="4b$xqUBeYZr" role="3clFbG">
            <ref role="37wK5l" to="cpc8:4b$xqUBex3x" resolve="register" />
            <ref role="1Pybhc" to="cpc8:4b$xqUBewzq" resolve="DependencyTextConverters" />
            <node concept="2ShNRf" id="4b$xqUBeZ0o" role="37wK5m">
              <node concept="HV5vD" id="4b$xqUBeZ5N" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="HV5vE" to="v95s:4p0keayHgO_" resolve="KoltinDependencyTextConverter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4b$xqUBeYkl" role="3cqZAp" />
        <node concept="3clFbF" id="Sy32QQVHYI" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQVKo9" role="3clFbG">
            <node concept="2OqwBi" id="Sy32QQVHYK" role="2Oq$k0">
              <node concept="1Q6Npb" id="Sy32QQVZWH" role="2Oq$k0" />
              <node concept="2RRcyG" id="Sy32QQXbzu" role="2OqNvi">
                <node concept="chp4Y" id="Sy32QQXbLw" role="3MHsoP">
                  <ref role="cht4Q" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="Sy32QQVNog" role="2OqNvi">
              <node concept="1bVj0M" id="Sy32QQVNoi" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="Sy32QQVNoj" role="1bW5cS">
                  <node concept="3clFbF" id="p4fykHYZps" role="3cqZAp">
                    <node concept="2OqwBi" id="p4fykHYZzy" role="3clFbG">
                      <node concept="1Q6Npb" id="p4fykHYZpr" role="2Oq$k0" />
                      <node concept="3BYIHo" id="p4fykHYZEQ" role="2OqNvi">
                        <node concept="2OqwBi" id="p4fykHYZHE" role="3BYIHq">
                          <node concept="37vLTw" id="p4fykHYZHF" role="2Oq$k0">
                            <ref role="3cqZAo" node="Sy32QQW1Hr" resolve="mapper" />
                          </node>
                          <node concept="liA8E" id="p4fykHYZHG" role="2OqNvi">
                            <ref role="37wK5l" to="cpc8:3JSfbhYdHgW" resolve="map" />
                            <node concept="2OqwBi" id="p4fykIhl$6" role="37wK5m">
                              <node concept="37vLTw" id="p4fykHYZHH" role="2Oq$k0">
                                <ref role="3cqZAo" node="Sy32QQVNok" resolve="fileOutput" />
                              </node>
                              <node concept="1$rogu" id="p4fykIhlN4" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="Sy32QQVNok" role="1bW2Oz">
                  <property role="TrG5h" value="fileOutput" />
                  <node concept="2jxLKc" id="Sy32QQVNol" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3jZ1jc1Ql$H" role="3cqZAp">
          <node concept="2OqwBi" id="3jZ1jc1QqyB" role="3clFbG">
            <node concept="2OqwBi" id="3jZ1jc1QlHf" role="2Oq$k0">
              <node concept="1Q6Npb" id="3jZ1jc1Ql$G" role="2Oq$k0" />
              <node concept="2RRcyG" id="4yUYSn0nBwV" role="2OqNvi">
                <node concept="chp4Y" id="4yUYSn0nBMa" role="3MHsoP">
                  <ref role="cht4Q" to="3nll:4AUvvfz0J$m" resolve="BoundedContext" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="3jZ1jc1QsgI" role="2OqNvi">
              <node concept="1bVj0M" id="3jZ1jc1QsgK" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="3jZ1jc1QsgL" role="1bW5cS">
                  <node concept="3clFbF" id="4yUYSn0gUMR" role="3cqZAp">
                    <node concept="2YIFZM" id="4yUYSn0gUSI" role="3clFbG">
                      <ref role="37wK5l" to="cpc8:4yUYSn0f0_Z" resolve="register" />
                      <ref role="1Pybhc" to="cpc8:4yUYSn0gIeU" resolve="DependencyResolvers" />
                      <node concept="2ShNRf" id="4yUYSn0mw_S" role="37wK5m">
                        <node concept="1pGfFk" id="4yUYSn0mw_T" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="v95s:4yUYSn0f60d" resolve="KotlinDependencyResolver" />
                          <node concept="37vLTw" id="4yUYSn0mw_U" role="37wK5m">
                            <ref role="3cqZAo" node="3jZ1jc1QsgM" resolve="boundedContext" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3jZ1jc1QsgM" role="1bW2Oz">
                  <property role="TrG5h" value="boundedContext" />
                  <node concept="2jxLKc" id="3jZ1jc1QsgN" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

