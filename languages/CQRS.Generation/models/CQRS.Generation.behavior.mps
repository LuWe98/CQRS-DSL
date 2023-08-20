<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8d786322-2f08-42c3-9ea9-879537c9f53d(CQRS.Generation.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="cpc8" ref="r:c29d26de-4040-4764-ba29-6361cc981593(CQRS.Generation.generation)" />
    <import index="anwi" ref="r:7c81c792-29f8-43b8-86dd-c441406afee9(CQRS.Generation.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="4yUYSn0sW9t">
    <property role="3GE5qa" value="base" />
    <ref role="13h7C2" to="anwi:4yUYSn08Edi" resolve="FileOutput" />
    <node concept="13i0hz" id="Sy32QQYkNm" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <property role="13i0it" value="true" />
      <node concept="37vLTG" id="Sy32QQYmCq" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYmCr" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3Tm1VV" id="Sy32QQYkNn" role="1B3o_S" />
      <node concept="3uibUv" id="Sy32QQYkSh" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
      <node concept="3clFbS" id="Sy32QQYkNp" role="3clF47">
        <node concept="YS8fn" id="Sy32QQYt17" role="3cqZAp">
          <node concept="2ShNRf" id="Sy32QQYt37" role="YScLw">
            <node concept="1pGfFk" id="Sy32QQYtkb" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="Sy32QQYvK9" role="37wK5m">
                <node concept="37vLTw" id="Sy32QQYw1_" role="3uHU7w">
                  <ref role="3cqZAo" node="Sy32QQYmCq" resolve="target" />
                </node>
                <node concept="3cpWs3" id="Sy32QQYu$o" role="3uHU7B">
                  <node concept="3cpWs3" id="Sy32QQYuc_" role="3uHU7B">
                    <node concept="Xl_RD" id="Sy32QQYtoS" role="3uHU7B">
                      <property role="Xl_RC" value="Could not get import for: " />
                    </node>
                    <node concept="13iPFW" id="Sy32QQYuf4" role="3uHU7w" />
                  </node>
                  <node concept="Xl_RD" id="Sy32QQYuH0" role="3uHU7w">
                    <property role="Xl_RC" value=" - For target: " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4b$xqUB5Cbg" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getPackage" />
      <node concept="37vLTG" id="4b$xqUB5Ckw" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="4b$xqUB5CkR" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4b$xqUB5Cbh" role="1B3o_S" />
      <node concept="17QB3L" id="4b$xqUB5Cbi" role="3clF45" />
      <node concept="3clFbS" id="4b$xqUB5Cbj" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYlbi" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYljT" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYlbh" role="2Oq$k0">
              <ref role="37wK5l" node="Sy32QQYkNm" resolve="getImport" />
              <node concept="37vLTw" id="Sy32QQYmEt" role="37wK5m">
                <ref role="3cqZAo" node="4b$xqUB5Ckw" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYlqO" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUAIuAg" resolve="getPackage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4b$xqUB5Cbo" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getPath" />
      <node concept="37vLTG" id="4b$xqUB5ClK" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="4b$xqUB5ClL" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4b$xqUB5Cbp" role="1B3o_S" />
      <node concept="17QB3L" id="4b$xqUB5Cbq" role="3clF45" />
      <node concept="3clFbS" id="4b$xqUB5Cbr" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYlyz" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYlFV" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYlyy" role="2Oq$k0">
              <ref role="37wK5l" node="Sy32QQYkNm" resolve="getImport" />
              <node concept="37vLTw" id="Sy32QQYmFh" role="37wK5m">
                <ref role="3cqZAo" node="4b$xqUB5ClK" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYlN6" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUAIsIY" resolve="getPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4yUYSn0sW9u" role="13h7CW">
      <node concept="3clFbS" id="4yUYSn0sW9v" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4b$xqUB5LbS">
    <property role="3GE5qa" value="querySide.query" />
    <ref role="13h7C2" to="anwi:CvLt7qMatM" resolve="QueryOutput" />
    <node concept="13hLZK" id="4b$xqUB5LbT" role="13h7CW">
      <node concept="3clFbS" id="4b$xqUB5LbU" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQYreQ" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQYreT" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQYreW" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYrm1" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYrm3" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYrm4" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYrm5" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQYreX" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYrm6" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUAHNNV" resolve="resolveQuery" />
              <node concept="2OqwBi" id="Sy32QQYrm7" role="37wK5m">
                <node concept="13iPFW" id="Sy32QQYrm8" role="2Oq$k0" />
                <node concept="3TrEf2" id="Sy32QQYrm9" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:CvLt7qMbhv" resolve="query" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQYreX" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYreY" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQYreZ" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4b$xqUB67xN">
    <property role="3GE5qa" value="querySide.query" />
    <ref role="13h7C2" to="anwi:3GrpC3f1RXS" resolve="QueryInterfaceOutput" />
    <node concept="13hLZK" id="4b$xqUB67xO" role="13h7CW">
      <node concept="3clFbS" id="4b$xqUB67xP" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQYr_h" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQYr_k" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQYr_n" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYrE$" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYrEA" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYrEB" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYrEC" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQYr_o" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYrED" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUAI29I" resolve="resolveQueryInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQYr_o" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYr_p" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQYr_q" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4b$xqUBgEtv">
    <property role="3GE5qa" value="querySide.dto" />
    <ref role="13h7C2" to="anwi:4b$xqUBgElC" resolve="DtoOutput" />
    <node concept="13hLZK" id="4b$xqUBgEtw" role="13h7CW">
      <node concept="3clFbS" id="4b$xqUBgEtx" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQYqPR" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQYqPU" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQYqPX" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYqX2" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYqX4" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYqX5" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYqX6" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQYqPY" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYqX7" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4yUYSn07In4" resolve="resolveDto" />
              <node concept="2OqwBi" id="Sy32QQYqX8" role="37wK5m">
                <node concept="13iPFW" id="Sy32QQYqX9" role="2Oq$k0" />
                <node concept="3TrEf2" id="Sy32QQYqXa" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:4b$xqUBgElD" resolve="dto" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQYqPY" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYqPZ" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQYqQ0" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4b$xqUBhZRr">
    <property role="3GE5qa" value="commandSide" />
    <ref role="13h7C2" to="anwi:4b$xqUBhZGU" resolve="ValueObjectOutput" />
    <node concept="13hLZK" id="4b$xqUBhZRs" role="13h7CW">
      <node concept="3clFbS" id="4b$xqUBhZRt" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQYoit" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQYoiw" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQYoiz" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYopC" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYopE" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYopF" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYopG" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQYoi$" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYopH" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4yUYSn07FVf" resolve="resolveValueObject" />
              <node concept="2OqwBi" id="Sy32QQYopI" role="37wK5m">
                <node concept="13iPFW" id="Sy32QQYopJ" role="2Oq$k0" />
                <node concept="3TrEf2" id="Sy32QQYopK" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:4b$xqUBi0l8" resolve="valueObject" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQYoi$" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYoi_" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQYoiA" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4b$xqUBigkS">
    <property role="3GE5qa" value="commandSide.entity" />
    <ref role="13h7C2" to="anwi:4b$xqUBigcZ" resolve="EntityOutput" />
    <node concept="13hLZK" id="4b$xqUBigkT" role="13h7CW">
      <node concept="3clFbS" id="4b$xqUBigkU" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQYoKr" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQYoKu" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQYoKx" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYoRQ" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYoRS" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYoRT" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYoRU" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQYoKy" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYoRV" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4yUYSn07FJR" resolve="resolveEntity" />
              <node concept="2OqwBi" id="Sy32QQYoRW" role="37wK5m">
                <node concept="13iPFW" id="Sy32QQYoRX" role="2Oq$k0" />
                <node concept="3TrEf2" id="Sy32QQYoRY" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:4b$xqUBigd2" resolve="entity" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQYoKy" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYoKz" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQYoK$" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4b$xqUBih0Y">
    <property role="3GE5qa" value="commandSide.aggregate" />
    <ref role="13h7C2" to="anwi:4b$xqUBih0T" resolve="AggregateOutput" />
    <node concept="13hLZK" id="4b$xqUBih0Z" role="13h7CW">
      <node concept="3clFbS" id="4b$xqUBih10" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQYpcF" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQYpcI" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQYpcL" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYpjQ" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYpjS" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYpjT" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYpjU" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQYpcM" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYpjV" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4yUYSn07Frw" resolve="resolveAggregate" />
              <node concept="2OqwBi" id="Sy32QQYpjW" role="37wK5m">
                <node concept="13iPFW" id="Sy32QQYpjX" role="2Oq$k0" />
                <node concept="3TrEf2" id="Sy32QQYpjY" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:4b$xqUBih0W" resolve="aggregate" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQYpcM" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYpcN" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQYpcO" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4b$xqUBoctb">
    <property role="3GE5qa" value="commandSide.command" />
    <ref role="13h7C2" to="anwi:4b$xqUBnBBc" resolve="CommandOutput" />
    <node concept="13hLZK" id="4b$xqUBoctc" role="13h7CW">
      <node concept="3clFbS" id="4b$xqUBoctd" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQYqnQ" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQYqnT" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQYqnW" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYqv1" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYqv3" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYqv4" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYqv5" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQYqnX" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYqv6" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUAIiX5" resolve="resolveCommand" />
              <node concept="2OqwBi" id="Sy32QQYqv7" role="37wK5m">
                <node concept="13iPFW" id="Sy32QQYqv8" role="2Oq$k0" />
                <node concept="3TrEf2" id="Sy32QQYqv9" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:4b$xqUBnBBf" resolve="command" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQYqnX" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYqnY" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQYqnZ" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
    <node concept="13i0hz" id="51Z40VBuhV2" role="13h7CS">
      <property role="TrG5h" value="getParentCommandWrapper" />
      <node concept="3Tm1VV" id="51Z40VBuhV3" role="1B3o_S" />
      <node concept="3Tqbb2" id="51Z40VBuhV4" role="3clF45">
        <ref role="ehGHo" to="anwi:7x9oRL8JBrw" resolve="CommandWrapperInterfaceOutput" />
      </node>
      <node concept="3clFbS" id="51Z40VBuhV5" role="3clF47">
        <node concept="3clFbF" id="51Z40VBuhV6" role="3cqZAp">
          <node concept="1PxgMI" id="51Z40VBuhV7" role="3clFbG">
            <property role="1BlNFB" value="true" />
            <node concept="chp4Y" id="51Z40VBuhV8" role="3oSUPX">
              <ref role="cht4Q" to="anwi:7x9oRL8JBrw" resolve="CommandWrapperInterfaceOutput" />
            </node>
            <node concept="2OqwBi" id="51Z40VBuhV9" role="1m5AlR">
              <node concept="13iPFW" id="51Z40VBuhVa" role="2Oq$k0" />
              <node concept="1mfA1w" id="51Z40VBuhVb" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4b$xqUBwc4K">
    <property role="3GE5qa" value="commandSide.command.handler" />
    <ref role="13h7C2" to="anwi:4b$xqUBwbWJ" resolve="CommandHandlerInterfaceOutput" />
    <node concept="13hLZK" id="4b$xqUBwc4L" role="13h7CW">
      <node concept="3clFbS" id="4b$xqUBwc4M" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQYpYP" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQYpYS" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQYpYV" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYq48" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYq4a" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYq4b" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYq4c" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQYpYW" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYq4d" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUBrnXV" resolve="resolveCommandHandlerInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQYpYW" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYpYX" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQYpYY" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4b$xqUBwdNC">
    <property role="3GE5qa" value="commandSide.command" />
    <ref role="13h7C2" to="anwi:4b$xqUBwbWI" resolve="CommandInterfaceOutput" />
    <node concept="13hLZK" id="4b$xqUBwdND" role="13h7CW">
      <node concept="3clFbS" id="4b$xqUBwdNE" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQYpC8" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQYpCb" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQYpCe" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYpHF" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYpHH" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYpHI" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYpHJ" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQYpCf" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYpHK" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUBqEje" resolve="resolveCommandInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQYpCf" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYpCg" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQYpCh" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4b$xqUBwfFQ">
    <property role="3GE5qa" value="connecting" />
    <ref role="13h7C2" to="anwi:4b$xqUBsCpa" resolve="EventOutput" />
    <node concept="13hLZK" id="4b$xqUBwfFR" role="13h7CW">
      <node concept="3clFbS" id="4b$xqUBwfFS" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQZko9" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQZkoc" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQZkop" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYnta" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYntc" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYntd" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYnte" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQZkoq" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYntf" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUBsXuC" resolve="resolveEvent" />
              <node concept="2OqwBi" id="Sy32QQYntg" role="37wK5m">
                <node concept="13iPFW" id="Sy32QQYnth" role="2Oq$k0" />
                <node concept="3TrEf2" id="Sy32QQYnti" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:4b$xqUBsCpd" resolve="event" />
                </node>
              </node>
              <node concept="2OqwBi" id="Sy32QQYntj" role="37wK5m">
                <node concept="13iPFW" id="Sy32QQYntk" role="2Oq$k0" />
                <node concept="3TrcHB" id="Sy32QQYntl" role="2OqNvi">
                  <ref role="3TsBF5" to="anwi:4b$xqUBwhsQ" resolve="applicationSide" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQZkoq" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQZkor" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQZkos" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
    <node concept="13i0hz" id="1DRRhzrq_wB" role="13h7CS">
      <property role="TrG5h" value="parentEventWrapper" />
      <node concept="3Tm1VV" id="1DRRhzrq_wC" role="1B3o_S" />
      <node concept="3Tqbb2" id="1DRRhzrq__V" role="3clF45">
        <ref role="ehGHo" to="anwi:1DRRhzrpWuH" resolve="EventWrapperInterfaceOutput" />
      </node>
      <node concept="3clFbS" id="1DRRhzrq_wE" role="3clF47">
        <node concept="3clFbF" id="1DRRhzrq_BJ" role="3cqZAp">
          <node concept="1PxgMI" id="1DRRhzrqAzu" role="3clFbG">
            <property role="1BlNFB" value="true" />
            <node concept="chp4Y" id="1DRRhzrqA$m" role="3oSUPX">
              <ref role="cht4Q" to="anwi:1DRRhzrpWuH" resolve="EventWrapperInterfaceOutput" />
            </node>
            <node concept="2OqwBi" id="1DRRhzrq_Os" role="1m5AlR">
              <node concept="13iPFW" id="1DRRhzrq_BI" role="2Oq$k0" />
              <node concept="1mfA1w" id="1DRRhzrq_Y_" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="Sy32QQYifM">
    <property role="3GE5qa" value="connecting" />
    <ref role="13h7C2" to="anwi:Sy32QQYi6S" resolve="EventInterfaceOutput" />
    <node concept="13hLZK" id="Sy32QQYifN" role="13h7CW">
      <node concept="3clFbS" id="Sy32QQYifO" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQYmSu" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQYmSx" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQYmS$" role="3clF47">
        <node concept="3clFbF" id="Sy32QQYmZD" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQYmZF" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQYmZG" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQYmZH" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQYmS_" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQYmZI" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUBxgR4" resolve="resolveEventInterface" />
              <node concept="2OqwBi" id="Sy32QQYmZJ" role="37wK5m">
                <node concept="13iPFW" id="Sy32QQYmZK" role="2Oq$k0" />
                <node concept="3TrcHB" id="Sy32QQYmZL" role="2OqNvi">
                  <ref role="3TsBF5" to="anwi:Sy32QQYi6U" resolve="applicationSide" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQYmS_" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQYmSA" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQYmSB" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="Sy32QQZkzT">
    <property role="3GE5qa" value="connecting.handler" />
    <ref role="13h7C2" to="anwi:Sy32QQYi6T" resolve="EventHandlerInterfaceOutput" />
    <node concept="13hLZK" id="Sy32QQZkzU" role="13h7CW">
      <node concept="3clFbS" id="Sy32QQZkzV" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQZk$c" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQZk$f" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQZk$s" role="3clF47">
        <node concept="3clFbF" id="Sy32QQZkDM" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQZkLO" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQZkDL" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQZkEg" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQZk$t" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQZkV2" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:Sy32QQYCzH" resolve="resolveEventHandlerInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQZk$t" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQZk$u" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQZk$v" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="Sy32QQZtsX">
    <property role="3GE5qa" value="querySide.query.handler" />
    <ref role="13h7C2" to="anwi:Sy32QQZtsU" resolve="QueryHandlerInterfaceOutput" />
    <node concept="13hLZK" id="Sy32QQZtsY" role="13h7CW">
      <node concept="3clFbS" id="Sy32QQZtsZ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="Sy32QQZttg" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QQZttj" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QQZttw" role="3clF47">
        <node concept="3clFbF" id="Sy32QQZv10" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QQZv92" role="3clFbG">
            <node concept="BsUDl" id="Sy32QQZv0Z" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QQZv1u" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QQZttx" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QQZvig" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUATNO$" resolve="resolveQueryHandlerInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QQZttx" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QQZtty" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QQZttz" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="Sy32QR1Npd">
    <property role="3GE5qa" value="commandSide.aggregate" />
    <ref role="13h7C2" to="anwi:Sy32QR1NkI" resolve="AggregateInterfaceOutput" />
    <node concept="13i0hz" id="Sy32QR1Npw" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QR1Npx" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QR1Npy" role="3clF47">
        <node concept="3clFbF" id="Sy32QR1Npz" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QR1Np$" role="3clFbG">
            <node concept="BsUDl" id="Sy32QR1Np_" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QR1NpA" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QR1NpF" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QR3YGn" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:Sy32QR2vvV" resolve="resolveAggregateInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QR1NpF" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QR1NpG" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QR1NpH" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
    <node concept="13hLZK" id="Sy32QR1Npe" role="13h7CW">
      <node concept="3clFbS" id="Sy32QR1Npf" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="Sy32QR3YK$">
    <property role="3GE5qa" value="commandSide.aggregate" />
    <ref role="13h7C2" to="anwi:Sy32QR1NkL" resolve="EventAggregateInterfaceOutput" />
    <node concept="13i0hz" id="Sy32QR3YKR" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="Sy32QR3YKS" role="1B3o_S" />
      <node concept="3clFbS" id="Sy32QR3YKT" role="3clF47">
        <node concept="3clFbF" id="Sy32QR3YKU" role="3cqZAp">
          <node concept="2OqwBi" id="Sy32QR3YKV" role="3clFbG">
            <node concept="BsUDl" id="Sy32QR3YKW" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="Sy32QR3YKX" role="37wK5m">
                <ref role="3cqZAo" node="Sy32QR3YKZ" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="Sy32QR3YKY" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:Sy32QR2Ygr" resolve="resolveEventAggregateInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QR3YKZ" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="Sy32QR3YL0" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="Sy32QR3YL1" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
    <node concept="13hLZK" id="Sy32QR3YK_" role="13h7CW">
      <node concept="3clFbS" id="Sy32QR3YKA" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2Np_kya0ni1">
    <property role="3GE5qa" value="base" />
    <ref role="13h7C2" to="anwi:61W7Av0nhkE" resolve="ElementOutput" />
    <node concept="13hLZK" id="2Np_kya0ni2" role="13h7CW">
      <node concept="3clFbS" id="2Np_kya0ni3" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2Np_kya0nY0">
    <property role="3GE5qa" value="base" />
    <ref role="13h7C2" to="anwi:2Np_kya0nuJ" resolve="ComponentOutput" />
    <node concept="13i0hz" id="4yUYSn0sW9K" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getImports" />
      <node concept="3Tm1VV" id="4yUYSn0sW9L" role="1B3o_S" />
      <node concept="2hMVRd" id="4yUYSn0sWao" role="3clF45">
        <node concept="3uibUv" id="4yUYSn0sWaI" role="2hN53Y">
          <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
        </node>
      </node>
      <node concept="3clFbS" id="4yUYSn0sW9N" role="3clF47">
        <node concept="3clFbF" id="4yUYSn0sWbN" role="3cqZAp">
          <node concept="2ShNRf" id="4yUYSn0sWbL" role="3clFbG">
            <node concept="2i4dXS" id="4yUYSn0sWr3" role="2ShVmc">
              <node concept="3uibUv" id="4yUYSn0sX3B" role="HW$YZ">
                <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2Np_kya0nik" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="converter" />
      <node concept="37vLTG" id="2Np_kya0nil" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="2Np_kya0nim" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2Np_kya0nin" role="1B3o_S" />
      <node concept="3uibUv" id="2Np_kya0nio" role="3clF45">
        <ref role="3uigEE" to="cpc8:4p0keayIwoL" resolve="DependencyTextConverter" />
      </node>
      <node concept="3clFbS" id="2Np_kya0nip" role="3clF47">
        <node concept="3clFbF" id="2Np_kya0niq" role="3cqZAp">
          <node concept="2YIFZM" id="2Np_kya0nir" role="3clFbG">
            <ref role="37wK5l" to="cpc8:4b$xqUBex2I" resolve="get" />
            <ref role="1Pybhc" to="cpc8:4b$xqUBewzq" resolve="DependencyTextConverters" />
            <node concept="37vLTw" id="2Np_kya0nis" role="37wK5m">
              <ref role="3cqZAo" node="2Np_kya0nil" resolve="target" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2Np_kya0nit" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="mapper" />
      <node concept="3Tm1VV" id="2Np_kya0niu" role="1B3o_S" />
      <node concept="3uibUv" id="2Np_kya0niv" role="3clF45">
        <ref role="3uigEE" to="cpc8:3JSfbhYdlGO" resolve="ConceptMapper" />
      </node>
      <node concept="3clFbS" id="2Np_kya0niw" role="3clF47">
        <node concept="3clFbF" id="2Np_kya0nix" role="3cqZAp">
          <node concept="2YIFZM" id="2Np_kya0niy" role="3clFbG">
            <ref role="37wK5l" to="cpc8:Sy32QQSgZL" resolve="get" />
            <ref role="1Pybhc" to="cpc8:4yUYSn0hP3Y" resolve="ConceptMappers" />
            <node concept="37vLTw" id="2Np_kya0niz" role="37wK5m">
              <ref role="3cqZAo" node="2Np_kya0ni$" resolve="target" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2Np_kya0ni$" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="2Np_kya0ni_" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4b$xqUBa0Kt" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="resolver" />
      <node concept="37vLTG" id="4b$xqUBa0O9" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="4b$xqUBa0Ov" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4b$xqUBa0Ku" role="1B3o_S" />
      <node concept="3uibUv" id="4b$xqUBa0MQ" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jek" resolve="DependencyResolver" />
      </node>
      <node concept="3clFbS" id="4b$xqUBa0Kw" role="3clF47">
        <node concept="3clFbF" id="4b$xqUBa0PG" role="3cqZAp">
          <node concept="2YIFZM" id="4b$xqUBa0QL" role="3clFbG">
            <ref role="37wK5l" to="cpc8:4yUYSn0eX55" resolve="get" />
            <ref role="1Pybhc" to="cpc8:4yUYSn0gIeU" resolve="DependencyResolvers" />
            <node concept="37vLTw" id="4b$xqUBa0Rn" role="37wK5m">
              <ref role="3cqZAo" node="4b$xqUBa0O9" resolve="target" />
            </node>
            <node concept="2OqwBi" id="4b$xqUBa13E" role="37wK5m">
              <node concept="13iPFW" id="4b$xqUBa0Up" role="2Oq$k0" />
              <node concept="3TrEf2" id="4b$xqUBa1b8" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:2Np_kyauRrT" resolve="boundedContext" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2Np_kya0nY1" role="13h7CW">
      <node concept="3clFbS" id="2Np_kya0nY2" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2Np_kya3_fK">
    <property role="3GE5qa" value="commandSide.aggregate" />
    <ref role="13h7C2" to="anwi:2Np_kya2ntf" resolve="EventAggregateBaseClassOutput" />
    <node concept="13i0hz" id="2Np_kya3_g3" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="2Np_kya3_g4" role="1B3o_S" />
      <node concept="3clFbS" id="2Np_kya3_g5" role="3clF47">
        <node concept="3clFbF" id="2Np_kya3_g6" role="3cqZAp">
          <node concept="2OqwBi" id="2Np_kya3_g7" role="3clFbG">
            <node concept="BsUDl" id="2Np_kya3_g8" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="2Np_kya3_g9" role="37wK5m">
                <ref role="3cqZAo" node="2Np_kya3_gb" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="2Np_kya3_ga" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:2Np_kya32kH" resolve="resolveBaseEventAggregate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2Np_kya3_gb" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="2Np_kya3_gc" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="2Np_kya3_gd" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
    <node concept="13hLZK" id="2Np_kya3_fL" role="13h7CW">
      <node concept="3clFbS" id="2Np_kya3_fM" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2Np_kyaSyx3">
    <property role="3GE5qa" value="commandSide.command.handler" />
    <ref role="13h7C2" to="anwi:2Np_kyaSuJN" resolve="CommandHandlerSeparatedOutput" />
    <node concept="13i0hz" id="2Np_kyaSzsU" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="2Np_kyaSzsV" role="1B3o_S" />
      <node concept="3clFbS" id="2Np_kyaSzsW" role="3clF47">
        <node concept="3clFbF" id="2Np_kyaSzsX" role="3cqZAp">
          <node concept="2OqwBi" id="2Np_kyaSzsY" role="3clFbG">
            <node concept="BsUDl" id="2Np_kyaSzsZ" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="2Np_kyaSzt0" role="37wK5m">
                <ref role="3cqZAo" node="2Np_kyaSzt5" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="2Np_kyaSzt1" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUBs5hR" resolve="resolveCommandHandlerSpecific" />
              <node concept="2OqwBi" id="2Np_kyaSzt2" role="37wK5m">
                <node concept="13iPFW" id="2Np_kyaSzt3" role="2Oq$k0" />
                <node concept="3TrEf2" id="2Np_kyaSzt4" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:2Np_kyaSuJQ" resolve="command" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2Np_kyaSzt5" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="2Np_kyaSzt6" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="2Np_kyaSzt7" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
    <node concept="13hLZK" id="2Np_kyaSyx4" role="13h7CW">
      <node concept="3clFbS" id="2Np_kyaSyx5" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1DRRhzqWD9C">
    <property role="3GE5qa" value="connecting.handler" />
    <ref role="13h7C2" to="anwi:1DRRhzqWCPe" resolve="EventHandlerSeparatedOutput" />
    <node concept="13hLZK" id="1DRRhzqWD9D" role="13h7CW">
      <node concept="3clFbS" id="1DRRhzqWD9E" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1DRRhzqWDad" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="1DRRhzqWDag" role="1B3o_S" />
      <node concept="3clFbS" id="1DRRhzqWDat" role="3clF47">
        <node concept="3clFbF" id="1DRRhzqWDoA" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzqWDoB" role="3clFbG">
            <node concept="BsUDl" id="1DRRhzqWDoC" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="1DRRhzqWDoD" role="37wK5m">
                <ref role="3cqZAo" node="1DRRhzqWDau" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="1DRRhzqWDoE" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:1DRRhzqXAIn" resolve="resolveEventHandlerSpecific" />
              <node concept="2OqwBi" id="1DRRhzqWDoF" role="37wK5m">
                <node concept="13iPFW" id="1DRRhzqWDoG" role="2Oq$k0" />
                <node concept="3TrEf2" id="1DRRhzqWDoH" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:1DRRhzqYTMq" resolve="event" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DRRhzqWDau" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="1DRRhzqWDav" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="1DRRhzqWDaw" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1DRRhzr7q43">
    <property role="3GE5qa" value="querySide.query.handler" />
    <ref role="13h7C2" to="anwi:1DRRhzr7q3V" resolve="QueryHandlerSeparatedOutput" />
    <node concept="13hLZK" id="1DRRhzr7q44" role="13h7CW">
      <node concept="3clFbS" id="1DRRhzr7q45" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1DRRhzr7q4m" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="1DRRhzr7q4p" role="1B3o_S" />
      <node concept="3clFbS" id="1DRRhzr7q4A" role="3clF47">
        <node concept="3clFbF" id="1DRRhzr7qaz" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzr7qi_" role="3clFbG">
            <node concept="BsUDl" id="1DRRhzr7qat" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="1DRRhzr7qb1" role="37wK5m">
                <ref role="3cqZAo" node="1DRRhzr7q4B" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="1DRRhzr7qsu" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUAHWRs" resolve="resolveQueryHandlerSpecific" />
              <node concept="2OqwBi" id="1DRRhzr7rVf" role="37wK5m">
                <node concept="13iPFW" id="1DRRhzr7rGl" role="2Oq$k0" />
                <node concept="3TrEf2" id="1DRRhzr7s7k" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:1DRRhzr7q3Y" resolve="query" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DRRhzr7q4B" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="1DRRhzr7q4C" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="1DRRhzr7q4D" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1DRRhzrpWuM">
    <property role="3GE5qa" value="connecting" />
    <ref role="13h7C2" to="anwi:1DRRhzrpWuH" resolve="EventWrapperInterfaceOutput" />
    <node concept="13hLZK" id="1DRRhzrpWuN" role="13h7CW">
      <node concept="3clFbS" id="1DRRhzrpWuO" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1DRRhzrpWv5" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="1DRRhzrpWv8" role="1B3o_S" />
      <node concept="3clFbS" id="1DRRhzrpWvl" role="3clF47">
        <node concept="3clFbF" id="1DRRhzrpWEE" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzrpWMG" role="3clFbG">
            <node concept="BsUDl" id="1DRRhzrpWED" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="1DRRhzrpWF8" role="37wK5m">
                <ref role="3cqZAo" node="1DRRhzrpWvm" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="1DRRhzrpWW_" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:1DRRhzrz91t" resolve="resolveEventWrapperInterface" />
              <node concept="13iPFW" id="1DRRhzrpWYO" role="37wK5m" />
              <node concept="2OqwBi" id="1DRRhzrpXQ$" role="37wK5m">
                <node concept="13iPFW" id="1DRRhzrpXDR" role="2Oq$k0" />
                <node concept="3TrcHB" id="1DRRhzrpY2Q" role="2OqNvi">
                  <ref role="3TsBF5" to="anwi:1DRRhzrpXxL" resolve="appicationSide" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DRRhzrpWvm" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="1DRRhzrpWvn" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="1DRRhzrpWvo" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1DRRhzs4Ug7">
    <property role="3GE5qa" value="commandSide.aggregate" />
    <ref role="13h7C2" to="anwi:1DRRhzs480G" resolve="AggregateConcreteInterfaceOutput" />
    <node concept="13hLZK" id="1DRRhzs4Ug8" role="13h7CW">
      <node concept="3clFbS" id="1DRRhzs4Ug9" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1DRRhzs4UgE" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="1DRRhzs4UgH" role="1B3o_S" />
      <node concept="3clFbS" id="1DRRhzs4UgU" role="3clF47">
        <node concept="3clFbF" id="1DRRhzsHjin" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzsHjip" role="3clFbG">
            <node concept="BsUDl" id="1DRRhzsHjiq" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="1DRRhzsHjir" role="37wK5m">
                <ref role="3cqZAo" node="1DRRhzs4UgV" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="1DRRhzsHjis" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:1DRRhzs4rCv" resolve="resolveConcreteAggregateInterface" />
              <node concept="2OqwBi" id="1DRRhzsHjit" role="37wK5m">
                <node concept="2OqwBi" id="1DRRhzsHjiu" role="2Oq$k0">
                  <node concept="13iPFW" id="1DRRhzsHjiv" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1DRRhzsHjiw" role="2OqNvi">
                    <ref role="3Tt5mk" to="anwi:1DRRhzs480K" resolve="g_aggregate" />
                  </node>
                </node>
                <node concept="3TrEf2" id="1DRRhzsHjix" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:4b$xqUBih0W" resolve="aggregate" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DRRhzs4UgV" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="1DRRhzs4UgW" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="1DRRhzs4UgX" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1DRRhzucU7H">
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <ref role="13h7C2" to="anwi:1DRRhzucvKr" resolve="AggregateRepositoryInterfaceOutput" />
    <node concept="13hLZK" id="1DRRhzucU7I" role="13h7CW">
      <node concept="3clFbS" id="1DRRhzucU7J" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1DRRhzucU80" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="1DRRhzucU83" role="1B3o_S" />
      <node concept="3clFbS" id="1DRRhzucU8g" role="3clF47">
        <node concept="3clFbF" id="1DRRhzucUed" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzucUmf" role="3clFbG">
            <node concept="BsUDl" id="1DRRhzucUe7" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="1DRRhzucUeF" role="37wK5m">
                <ref role="3cqZAo" node="1DRRhzucU8h" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="1DRRhzucUwx" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:1DRRhzudxUX" resolve="resolveAggregateRepositoryInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DRRhzucU8h" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="1DRRhzucU8i" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="1DRRhzucU8j" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1DRRhzue4Hn">
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <ref role="13h7C2" to="anwi:1DRRhzucvKs" resolve="AggregateIdRepositoryInterfaceOutput" />
    <node concept="13hLZK" id="1DRRhzue4Ho" role="13h7CW">
      <node concept="3clFbS" id="1DRRhzue4Hp" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1DRRhzue4HE" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="1DRRhzue4HH" role="1B3o_S" />
      <node concept="3clFbS" id="1DRRhzue4HU" role="3clF47">
        <node concept="3clFbF" id="1DRRhzue4NR" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzue4VT" role="3clFbG">
            <node concept="BsUDl" id="1DRRhzue4NL" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="1DRRhzue4Ol" role="37wK5m">
                <ref role="3cqZAo" node="1DRRhzue4HV" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="1DRRhzue56b" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:1DRRhzudOQK" resolve="resolveAggregateIdRepositoryInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DRRhzue4HV" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="1DRRhzue4HW" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="1DRRhzue4HX" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1DRRhzug7b2">
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <ref role="13h7C2" to="anwi:1DRRhzucvKt" resolve="AggregateRepositoryOutput" />
    <node concept="13hLZK" id="1DRRhzug7b3" role="13h7CW">
      <node concept="3clFbS" id="1DRRhzug7b4" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1DRRhzug7bl" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="1DRRhzug7bo" role="1B3o_S" />
      <node concept="3clFbS" id="1DRRhzug7b_" role="3clF47">
        <node concept="3clFbF" id="1DRRhzug7hy" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzug7pk" role="3clFbG">
            <node concept="BsUDl" id="1DRRhzug7hs" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="1DRRhzug7i0" role="37wK5m">
                <ref role="3cqZAo" node="1DRRhzug7bA" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="1DRRhzug7zK" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:1DRRhzuehwA" resolve="resolveAggregateRepository" />
              <node concept="2OqwBi" id="1DRRhzug7Nv" role="37wK5m">
                <node concept="13iPFW" id="1DRRhzug7Ad" role="2Oq$k0" />
                <node concept="3TrEf2" id="1DRRhzug89f" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VJRXXe" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DRRhzug7bA" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="1DRRhzug7bB" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="1DRRhzug7bC" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1DRRhzug8uo">
    <property role="3GE5qa" value="commandSide.aggregate.repository" />
    <ref role="13h7C2" to="anwi:1DRRhzucvKu" resolve="AggregateConcreteRepositoryInterfaceOutput" />
    <node concept="13hLZK" id="1DRRhzug8up" role="13h7CW">
      <node concept="3clFbS" id="1DRRhzug8uq" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1DRRhzug8uF" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="1DRRhzug8uI" role="1B3o_S" />
      <node concept="3clFbS" id="1DRRhzug8uV" role="3clF47">
        <node concept="3clFbF" id="1DRRhzug8$S" role="3cqZAp">
          <node concept="2OqwBi" id="1DRRhzug8GU" role="3clFbG">
            <node concept="BsUDl" id="1DRRhzug8$M" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="1DRRhzug8_m" role="37wK5m">
                <ref role="3cqZAo" node="1DRRhzug8uW" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="1DRRhzug9aP" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:1DRRhzufjkd" resolve="resolveAggregateConcreteRepositoryInterface" />
              <node concept="2OqwBi" id="1DRRhzug9q$" role="37wK5m">
                <node concept="13iPFW" id="1DRRhzug9di" role="2Oq$k0" />
                <node concept="3TrEf2" id="1DRRhzug9AR" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VJJbDY" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DRRhzug8uW" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="1DRRhzug8uX" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="1DRRhzug8uY" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3fVLq_pPABX">
    <property role="3GE5qa" value="commandSide.command.handler" />
    <ref role="13h7C2" to="anwi:3fVLq_p7pyU" resolve="CommandHandlerGroupedOutput" />
    <node concept="13hLZK" id="3fVLq_pPABY" role="13h7CW">
      <node concept="3clFbS" id="3fVLq_pPABZ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3fVLq_pPACg" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="3fVLq_pPACj" role="1B3o_S" />
      <node concept="3clFbS" id="3fVLq_pPACw" role="3clF47">
        <node concept="3clFbF" id="3fVLq_pPAIt" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_pPAQv" role="3clFbG">
            <node concept="BsUDl" id="3fVLq_pPAIn" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="3fVLq_pPAIV" role="37wK5m">
                <ref role="3cqZAo" node="3fVLq_pPACx" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="3fVLq_pPB10" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:3fVLq_pOnQt" resolve="resolveCommandHandlerGrouped" />
              <node concept="2OqwBi" id="3fVLq_pPBiI" role="37wK5m">
                <node concept="13iPFW" id="3fVLq_pPB3v" role="2Oq$k0" />
                <node concept="3TrEf2" id="3fVLq_pPBv3" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VIXNN7" resolve="container" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3fVLq_pPACx" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="3fVLq_pPACy" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="3fVLq_pPACz" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3fVLq_pQ_pN">
    <property role="3GE5qa" value="commandSide.command.handler" />
    <ref role="13h7C2" to="anwi:3fVLq_pQ_pF" resolve="CommandHandlerGroupedInterfaceOutput" />
    <node concept="13hLZK" id="3fVLq_pQ_pO" role="13h7CW">
      <node concept="3clFbS" id="3fVLq_pQ_pP" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3fVLq_pQ_qu" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="3fVLq_pQ_qx" role="1B3o_S" />
      <node concept="3clFbS" id="3fVLq_pQ_qI" role="3clF47">
        <node concept="3clFbF" id="3fVLq_pQ_wF" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_pQ_CH" role="3clFbG">
            <node concept="BsUDl" id="3fVLq_pQ_w_" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="3fVLq_pQ_x9" role="37wK5m">
                <ref role="3cqZAo" node="3fVLq_pQ_qJ" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="3fVLq_pQ_Ne" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:3fVLq_pQUHb" resolve="resolveCommandHandlerGroupedInterface" />
              <node concept="2OqwBi" id="3fVLq_pR$Q7" role="37wK5m">
                <node concept="13iPFW" id="3fVLq_pR$CN" role="2Oq$k0" />
                <node concept="3TrEf2" id="3fVLq_pR_2u" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VJ70k3" resolve="container" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3fVLq_pQ_qJ" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="3fVLq_pQ_qK" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="3fVLq_pQ_qL" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3fVLq_AhNa8">
    <property role="3GE5qa" value="connecting.handler" />
    <ref role="13h7C2" to="anwi:1DRRhzrJ_Rg" resolve="EventHandlerGroupedOutput" />
    <node concept="13hLZK" id="3fVLq_AhNa9" role="13h7CW">
      <node concept="3clFbS" id="3fVLq_AhNaa" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3fVLq_AiNKo" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="3fVLq_AiNKr" role="1B3o_S" />
      <node concept="3clFbS" id="3fVLq_AiNKC" role="3clF47">
        <node concept="3clFbF" id="3fVLq_AiNQ_" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_AiNYB" role="3clFbG">
            <node concept="BsUDl" id="3fVLq_AiNQv" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="3fVLq_AiNR3" role="37wK5m">
                <ref role="3cqZAo" node="3fVLq_AiNKD" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="3fVLq_AiO9d" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:3fVLq_Ai718" resolve="resolveEventHandlerGrouped" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3fVLq_AiNKD" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="3fVLq_AiNKE" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="3fVLq_AiNKF" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3fVLq_AkTsY">
    <property role="3GE5qa" value="connecting.handler" />
    <ref role="13h7C2" to="anwi:3fVLq_Ajq0c" resolve="EventHandlerGroupedInterfaceOutput" />
    <node concept="13hLZK" id="3fVLq_AkTsZ" role="13h7CW">
      <node concept="3clFbS" id="3fVLq_AkTt0" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3fVLq_AkTth" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="3fVLq_AkTtk" role="1B3o_S" />
      <node concept="3clFbS" id="3fVLq_AkTtx" role="3clF47">
        <node concept="3clFbF" id="3fVLq_AkT$8" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_AkTGa" role="3clFbG">
            <node concept="BsUDl" id="3fVLq_AkT$2" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="3fVLq_AkT$A" role="37wK5m">
                <ref role="3cqZAo" node="3fVLq_AkTty" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="3fVLq_AkTQK" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:3fVLq_AjCEw" resolve="resolveEventHandlerGroupedInterface" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3fVLq_AkTty" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="3fVLq_AkTtz" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="3fVLq_AkTt$" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3fVLq_K3Qcd">
    <property role="3GE5qa" value="querySide.query.handler" />
    <ref role="13h7C2" to="anwi:3fVLq_Dpf2z" resolve="QueryHandlerGroupedOutput" />
    <node concept="13hLZK" id="3fVLq_K3Qce" role="13h7CW">
      <node concept="3clFbS" id="3fVLq_K3Qcf" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3fVLq_K3Qcw" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="3fVLq_K3Qcz" role="1B3o_S" />
      <node concept="3clFbS" id="3fVLq_K3QcK" role="3clF47">
        <node concept="3clFbF" id="3fVLq_K3QiH" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_K3QUG" role="3clFbG">
            <node concept="BsUDl" id="3fVLq_K3QiB" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="3fVLq_K3Qjb" role="37wK5m">
                <ref role="3cqZAo" node="3fVLq_K3QcL" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="3fVLq_K3R5x" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:3fVLq_DpIyB" resolve="resolveQueryHandlerGrouped" />
              <node concept="2OqwBi" id="3fVLq_K3Rlv" role="37wK5m">
                <node concept="13iPFW" id="3fVLq_K3R88" role="2Oq$k0" />
                <node concept="3TrEf2" id="3fVLq_K3RxW" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VK7C6Y" resolve="container" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3fVLq_K3QcL" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="3fVLq_K3QcM" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="3fVLq_K3QcN" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3fVLq_K3R_R">
    <property role="3GE5qa" value="querySide.query.handler" />
    <ref role="13h7C2" to="anwi:3fVLq_Dpf2$" resolve="QueryHandlerGroupedInterfaceOutput" />
    <node concept="13hLZK" id="3fVLq_K3R_S" role="13h7CW">
      <node concept="3clFbS" id="3fVLq_K3R_T" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3fVLq_K3RAa" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="3fVLq_K3RAd" role="1B3o_S" />
      <node concept="3clFbS" id="3fVLq_K3RAq" role="3clF47">
        <node concept="3clFbF" id="3fVLq_K3RHf" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_K3RPh" role="3clFbG">
            <node concept="BsUDl" id="3fVLq_K3RH9" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="3fVLq_K3RHH" role="37wK5m">
                <ref role="3cqZAo" node="3fVLq_K3RAr" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="3fVLq_K3S06" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:3fVLq_DpXWr" resolve="resolveQueryHandlerGroupedInterface" />
              <node concept="2OqwBi" id="3fVLq_K3Sg4" role="37wK5m">
                <node concept="13iPFW" id="3fVLq_K3S2H" role="2Oq$k0" />
                <node concept="3TrEf2" id="3fVLq_K3Ssx" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:51Z40VK7C76" resolve="container" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3fVLq_K3RAr" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="3fVLq_K3RAs" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="3fVLq_K3RAt" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3fVLq_LuoVh">
    <property role="3GE5qa" value="querySide.dto" />
    <ref role="13h7C2" to="anwi:3fVLq_LuoUU" resolve="DtoRepositoryOutput" />
    <node concept="13hLZK" id="3fVLq_LuoVi" role="13h7CW">
      <node concept="3clFbS" id="3fVLq_LuoVj" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3fVLq_LuoV$" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="3fVLq_LuoVB" role="1B3o_S" />
      <node concept="3clFbS" id="3fVLq_LuoVO" role="3clF47">
        <node concept="3clFbF" id="3fVLq_Lup1L" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_Lup9N" role="3clFbG">
            <node concept="BsUDl" id="3fVLq_Lup1F" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="3fVLq_Lup2f" role="37wK5m">
                <ref role="3cqZAo" node="3fVLq_LuoVP" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="3fVLq_LupkC" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:3fVLq_C5AAN" resolve="resolveDtoRepository" />
              <node concept="2OqwBi" id="3fVLq_Lup$A" role="37wK5m">
                <node concept="13iPFW" id="3fVLq_Lupnf" role="2Oq$k0" />
                <node concept="3TrEf2" id="3fVLq_LupL3" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:3fVLq_LuoV0" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3fVLq_LuoVP" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="3fVLq_LuoVQ" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="3fVLq_LuoVR" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3fVLq_LvYY5">
    <property role="3GE5qa" value="querySide.dto" />
    <ref role="13h7C2" to="anwi:3fVLq_LuoUX" resolve="DtoRepositoryInterfaceOutput" />
    <node concept="13hLZK" id="3fVLq_LvYY6" role="13h7CW">
      <node concept="3clFbS" id="3fVLq_LvYY7" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3fVLq_LvYYo" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="3fVLq_LvYYr" role="1B3o_S" />
      <node concept="3clFbS" id="3fVLq_LvYYC" role="3clF47">
        <node concept="3clFbF" id="3fVLq_LvZ4_" role="3cqZAp">
          <node concept="2OqwBi" id="3fVLq_LvZcB" role="3clFbG">
            <node concept="BsUDl" id="3fVLq_LvZ4v" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="3fVLq_LvZ53" role="37wK5m">
                <ref role="3cqZAo" node="3fVLq_LvYYD" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="3fVLq_LvZnx" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:3fVLq_LuLiE" resolve="resolveDtoRepositoryInterface" />
              <node concept="2OqwBi" id="3fVLq_LvZBy" role="37wK5m">
                <node concept="13iPFW" id="3fVLq_LvZqa" role="2Oq$k0" />
                <node concept="3TrEf2" id="3fVLq_LvZO1" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:3fVLq_LuoVc" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3fVLq_LvYYD" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="3fVLq_LvYYE" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="3fVLq_LvYYF" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7x9oRL8NhTj">
    <property role="3GE5qa" value="querySide.query.processor" />
    <ref role="13h7C2" to="anwi:7x9oRL8NhT2" resolve="QueryProcessorOutput" />
    <node concept="13hLZK" id="7x9oRL8NhTk" role="13h7CW">
      <node concept="3clFbS" id="7x9oRL8NhTl" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7x9oRL8NhTA" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="7x9oRL8NhTD" role="1B3o_S" />
      <node concept="3clFbS" id="7x9oRL8NhTQ" role="3clF47">
        <node concept="3clFbF" id="7x9oRL8SUdd" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL8SUde" role="3clFbG">
            <node concept="BsUDl" id="7x9oRL8SUdf" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="7x9oRL8SUdg" role="37wK5m">
                <ref role="3cqZAo" node="7x9oRL8NhTR" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="7x9oRL8SUdh" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:7x9oRL8NOQL" resolve="resolveQueryProcessor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7x9oRL8NhTR" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="7x9oRL8NhTS" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="7x9oRL8NhTT" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7x9oRL8SSSS">
    <property role="3GE5qa" value="querySide.query.processor" />
    <ref role="13h7C2" to="anwi:7x9oRL8NhT6" resolve="QueryHandlerContainerOutput" />
    <node concept="13hLZK" id="7x9oRL8SSST" role="13h7CW">
      <node concept="3clFbS" id="7x9oRL8SSSU" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7x9oRL8SSTz" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="7x9oRL8SSTA" role="1B3o_S" />
      <node concept="3clFbS" id="7x9oRL8SSTN" role="3clF47">
        <node concept="3clFbF" id="7x9oRL8SSZK" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL8ST7M" role="3clFbG">
            <node concept="BsUDl" id="7x9oRL8SSZE" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="7x9oRL8ST0e" role="37wK5m">
                <ref role="3cqZAo" node="7x9oRL8SSTO" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="7x9oRL8STiG" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:7x9oRL8Ot11" resolve="resolveQueryHandlerContainer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7x9oRL8SSTO" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="7x9oRL8SSTP" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="7x9oRL8SSTQ" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7x9oRL8STEN">
    <property role="3GE5qa" value="querySide.query.processor" />
    <ref role="13h7C2" to="anwi:7x9oRL8NhTa" resolve="QueryHandlerContainerImplOutput" />
    <node concept="13hLZK" id="7x9oRL8STEO" role="13h7CW">
      <node concept="3clFbS" id="7x9oRL8STEP" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7x9oRL8STF6" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="7x9oRL8STF9" role="1B3o_S" />
      <node concept="3clFbS" id="7x9oRL8STFm" role="3clF47">
        <node concept="3clFbF" id="7x9oRL8STKV" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL8STKW" role="3clFbG">
            <node concept="BsUDl" id="7x9oRL8STKX" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="7x9oRL8STKY" role="37wK5m">
                <ref role="3cqZAo" node="7x9oRL8STFn" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="7x9oRL8STKZ" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:7x9oRL8OMHI" resolve="resolveQueryHandlerContainerImpl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7x9oRL8STFn" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="7x9oRL8STFo" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="7x9oRL8STFp" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7x9oRL8SY1p">
    <property role="3GE5qa" value="querySide.query.processor" />
    <ref role="13h7C2" to="anwi:7x9oRL8NhTd" resolve="QueryProcessorImplOutput" />
    <node concept="13hLZK" id="7x9oRL8SY1q" role="13h7CW">
      <node concept="3clFbS" id="7x9oRL8SY1r" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7x9oRL8SY1G" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="7x9oRL8SY1J" role="1B3o_S" />
      <node concept="3clFbS" id="7x9oRL8SY1W" role="3clF47">
        <node concept="3clFbF" id="7x9oRL8SY7x" role="3cqZAp">
          <node concept="2OqwBi" id="7x9oRL8SY7y" role="3clFbG">
            <node concept="BsUDl" id="7x9oRL8SY7z" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="7x9oRL8SY7$" role="37wK5m">
                <ref role="3cqZAo" node="7x9oRL8SY1X" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="7x9oRL8SY7_" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:7x9oRL8Oa7E" resolve="resolveQueryProcessorImpl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7x9oRL8SY1X" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="7x9oRL8SY1Y" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="7x9oRL8SY1Z" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="51Z40V$xSAA">
    <property role="3GE5qa" value="commandSide.command" />
    <ref role="13h7C2" to="anwi:7x9oRL8JBrw" resolve="CommandWrapperInterfaceOutput" />
    <node concept="13hLZK" id="51Z40V$xSAB" role="13h7CW">
      <node concept="3clFbS" id="51Z40V$xSAC" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="51Z40V$xSAT" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="51Z40V$xSAW" role="1B3o_S" />
      <node concept="3clFbS" id="51Z40V$xSB9" role="3clF47">
        <node concept="3clFbF" id="51Z40V$xSH2" role="3cqZAp">
          <node concept="2OqwBi" id="51Z40V$xSP4" role="3clFbG">
            <node concept="BsUDl" id="51Z40V$xSGW" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="51Z40V$xSHw" role="37wK5m">
                <ref role="3cqZAo" node="51Z40V$xSBa" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="51Z40V$xSZY" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:4b$xqUAIiX5" resolve="resolveCommand" />
              <node concept="2OqwBi" id="51Z40V$xUvN" role="37wK5m">
                <node concept="13iPFW" id="51Z40V$xUjL" role="2Oq$k0" />
                <node concept="3TrEf2" id="51Z40V$xUGi" role="2OqNvi">
                  <ref role="3Tt5mk" to="anwi:7x9oRL8JBrz" resolve="substitudeCommand" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="51Z40V$xSBa" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="51Z40V$xSBb" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="51Z40V$xSBc" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="p4fykJ0jW0">
    <property role="3GE5qa" value="method" />
    <ref role="13h7C2" to="anwi:61W7Av0nhk$" resolve="MethodOutput" />
    <node concept="13i0hz" id="p4fykJ0jWj" role="13h7CS">
      <property role="TrG5h" value="hasReturnValue" />
      <node concept="3Tm1VV" id="p4fykJ0jWk" role="1B3o_S" />
      <node concept="10P_77" id="p4fykJ0jWF" role="3clF45" />
      <node concept="3clFbS" id="p4fykJ0jWm" role="3clF47">
        <node concept="3clFbF" id="p4fykJ0jXZ" role="3cqZAp">
          <node concept="2OqwBi" id="p4fykJ0kx8" role="3clFbG">
            <node concept="2OqwBi" id="p4fykJ0kaG" role="2Oq$k0">
              <node concept="13iPFW" id="p4fykJ0jXY" role="2Oq$k0" />
              <node concept="3TrEf2" id="p4fykJ0kkP" role="2OqNvi">
                <ref role="3Tt5mk" to="anwi:1DRRhzqKHGT" resolve="returnType" />
              </node>
            </node>
            <node concept="3x8VRR" id="p4fykJ0kHA" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="p4fykJ0jW1" role="13h7CW">
      <node concept="3clFbS" id="p4fykJ0jW2" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6ERg2T2yA2">
    <property role="3GE5qa" value="commandSide.entity" />
    <ref role="13h7C2" to="anwi:6ERg2T2y_Z" resolve="EntityBaseClassOutput" />
    <node concept="13hLZK" id="6ERg2T2yA3" role="13h7CW">
      <node concept="3clFbS" id="6ERg2T2yA4" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6ERg2T2yAl" role="13h7CS">
      <property role="TrG5h" value="getImport" />
      <ref role="13i0hy" node="Sy32QQYkNm" resolve="getImport" />
      <node concept="3Tm1VV" id="6ERg2T2yAo" role="1B3o_S" />
      <node concept="3clFbS" id="6ERg2T2yA_" role="3clF47">
        <node concept="3clFbF" id="6ERg2T2yGy" role="3cqZAp">
          <node concept="2OqwBi" id="6ERg2T2yO$" role="3clFbG">
            <node concept="BsUDl" id="6ERg2T2yGs" role="2Oq$k0">
              <ref role="37wK5l" node="4b$xqUBa0Kt" resolve="resolver" />
              <node concept="37vLTw" id="6ERg2T2yH0" role="37wK5m">
                <ref role="3cqZAo" node="6ERg2T2yAA" resolve="target" />
              </node>
            </node>
            <node concept="liA8E" id="6ERg2T2yZu" role="2OqNvi">
              <ref role="37wK5l" to="cpc8:6ERg2T2VDb" resolve="resolveEntityBaseClass" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ERg2T2yAA" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="6ERg2T2yAB" role="1tU5fm">
          <ref role="3uigEE" to="cpc8:4yUYSn0g4wP" resolve="GenerationTarget" />
        </node>
      </node>
      <node concept="3uibUv" id="6ERg2T2yAC" role="3clF45">
        <ref role="3uigEE" to="cpc8:4yUYSn06Jxx" resolve="DependencyImport" />
      </node>
    </node>
  </node>
</model>

