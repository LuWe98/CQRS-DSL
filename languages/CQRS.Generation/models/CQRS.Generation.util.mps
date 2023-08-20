<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:05fbaab0-ab1c-4838-90da-9d54e17b6c69(CQRS.Generation.util)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4yUYSn07am5">
    <property role="TrG5h" value="StringUtil" />
    <node concept="2tJIrI" id="4yUYSn07aoC" role="jymVt" />
    <node concept="2YIFZL" id="4p0keayI3IS" role="jymVt">
      <property role="TrG5h" value="firstToUpper" />
      <node concept="3Tm1VV" id="4p0keayI3IV" role="1B3o_S" />
      <node concept="3clFbS" id="4p0keayI3IW" role="3clF47">
        <node concept="3clFbJ" id="4p0keayI6q7" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="4p0keayI6q9" role="3clFbx">
            <node concept="3cpWs6" id="4p0keayI6BA" role="3cqZAp">
              <node concept="10Nm6u" id="4p0keayI6Et" role="3cqZAk" />
            </node>
          </node>
          <node concept="17R0WA" id="4p0keayI6zS" role="3clFbw">
            <node concept="10Nm6u" id="4p0keayI6_v" role="3uHU7w" />
            <node concept="37vLTw" id="4p0keayI6sv" role="3uHU7B">
              <ref role="3cqZAo" node="4p0keayI3Qb" resolve="input" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4p0keayI9AK" role="3cqZAp" />
        <node concept="3clFbJ" id="4p0keayI3Px" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="4p0keayI3Pz" role="3clFbx">
            <node concept="3cpWs6" id="4p0keayI6d1" role="3cqZAp">
              <node concept="Xl_RD" id="4p0keayI6mI" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4p0keayI5DM" role="3clFbw">
            <node concept="3cmrfG" id="4p0keayI6b0" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="4p0keayI4lH" role="3uHU7B">
              <node concept="37vLTw" id="4p0keayI3Rx" role="2Oq$k0">
                <ref role="3cqZAo" node="4p0keayI3Qb" resolve="input" />
              </node>
              <node concept="liA8E" id="4p0keayI4Dr" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4p0keayI6fw" role="3cqZAp" />
        <node concept="3clFbJ" id="4p0keayI6Ig" role="3cqZAp">
          <node concept="3clFbS" id="4p0keayI6Ii" role="3clFbx">
            <node concept="3cpWs6" id="4p0keayI98t" role="3cqZAp">
              <node concept="2OqwBi" id="4p0keayI9eq" role="3cqZAk">
                <node concept="37vLTw" id="4p0keayI9cM" role="2Oq$k0">
                  <ref role="3cqZAo" node="4p0keayI3Qb" resolve="input" />
                </node>
                <node concept="liA8E" id="4p0keayI9hU" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.toUpperCase()" resolve="toUpperCase" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4p0keayI95c" role="3clFbw">
            <node concept="3cmrfG" id="4p0keayI95y" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="4p0keayI7Jl" role="3uHU7B">
              <node concept="37vLTw" id="4p0keayI7go" role="2Oq$k0">
                <ref role="3cqZAo" node="4p0keayI3Qb" resolve="input" />
              </node>
              <node concept="liA8E" id="4p0keayI83Y" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4p0keayI9lp" role="3cqZAp" />
        <node concept="3cpWs6" id="4p0keayHtmX" role="3cqZAp">
          <node concept="3cpWs3" id="4p0keayHtmY" role="3cqZAk">
            <node concept="2OqwBi" id="4p0keayHtmZ" role="3uHU7w">
              <node concept="37vLTw" id="4p0keayHtn0" role="2Oq$k0">
                <ref role="3cqZAo" node="4p0keayI3Qb" resolve="input" />
              </node>
              <node concept="liA8E" id="4p0keayHtn1" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                <node concept="3cmrfG" id="4p0keayHtn2" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4p0keayIbtN" role="3uHU7B">
              <node concept="2YIFZM" id="4p0keayIbtO" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~String.valueOf(char)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="4p0keayIbtP" role="37wK5m">
                  <node concept="37vLTw" id="4p0keayIbtQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4p0keayI3Qb" resolve="input" />
                  </node>
                  <node concept="liA8E" id="4p0keayIbtR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                    <node concept="3cmrfG" id="4p0keayIbtS" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4p0keayIbtT" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.toUpperCase()" resolve="toUpperCase" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4p0keayI3Kl" role="3clF45" />
      <node concept="37vLTG" id="4p0keayI3Qb" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="17QB3L" id="4p0keayI3Qa" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4yUYSn07aoE" role="jymVt" />
    <node concept="2tJIrI" id="3fVLq_sAaO4" role="jymVt" />
    <node concept="2YIFZL" id="3fVLq_sAaSt" role="jymVt">
      <property role="TrG5h" value="firstToLower" />
      <node concept="3Tm1VV" id="3fVLq_sAaSw" role="1B3o_S" />
      <node concept="3clFbS" id="3fVLq_sAaSx" role="3clF47">
        <node concept="3clFbJ" id="3fVLq_sAaZn" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="3fVLq_sAaZo" role="3clFbx">
            <node concept="3cpWs6" id="3fVLq_sAaZp" role="3cqZAp">
              <node concept="10Nm6u" id="3fVLq_sAaZq" role="3cqZAk" />
            </node>
          </node>
          <node concept="17R0WA" id="3fVLq_sAaZr" role="3clFbw">
            <node concept="10Nm6u" id="3fVLq_sAaZs" role="3uHU7w" />
            <node concept="37vLTw" id="3fVLq_sAaZt" role="3uHU7B">
              <ref role="3cqZAo" node="3fVLq_sAaYw" resolve="input" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_sAaZu" role="3cqZAp" />
        <node concept="3clFbJ" id="3fVLq_sAaZv" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="3fVLq_sAaZw" role="3clFbx">
            <node concept="3cpWs6" id="3fVLq_sAaZx" role="3cqZAp">
              <node concept="Xl_RD" id="3fVLq_sAaZy" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3fVLq_sAaZz" role="3clFbw">
            <node concept="3cmrfG" id="3fVLq_sAaZ$" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3fVLq_sAaZ_" role="3uHU7B">
              <node concept="37vLTw" id="3fVLq_sAaZA" role="2Oq$k0">
                <ref role="3cqZAo" node="3fVLq_sAaYw" resolve="input" />
              </node>
              <node concept="liA8E" id="3fVLq_sAaZB" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_sAaZC" role="3cqZAp" />
        <node concept="3clFbJ" id="3fVLq_sAaZD" role="3cqZAp">
          <node concept="3clFbS" id="3fVLq_sAaZE" role="3clFbx">
            <node concept="3cpWs6" id="3fVLq_sAaZF" role="3cqZAp">
              <node concept="2OqwBi" id="3fVLq_sAaZG" role="3cqZAk">
                <node concept="37vLTw" id="3fVLq_sAaZH" role="2Oq$k0">
                  <ref role="3cqZAo" node="3fVLq_sAaYw" resolve="input" />
                </node>
                <node concept="liA8E" id="3fVLq_sAaZI" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3fVLq_sAaZJ" role="3clFbw">
            <node concept="3cmrfG" id="3fVLq_sAaZK" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="3fVLq_sAaZL" role="3uHU7B">
              <node concept="37vLTw" id="3fVLq_sAaZM" role="2Oq$k0">
                <ref role="3cqZAo" node="3fVLq_sAaYw" resolve="input" />
              </node>
              <node concept="liA8E" id="3fVLq_sAaZN" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3fVLq_sAaZO" role="3cqZAp" />
        <node concept="3cpWs6" id="3fVLq_sAaZP" role="3cqZAp">
          <node concept="3cpWs3" id="3fVLq_sAaZQ" role="3cqZAk">
            <node concept="2OqwBi" id="3fVLq_sAaZR" role="3uHU7w">
              <node concept="37vLTw" id="3fVLq_sAaZS" role="2Oq$k0">
                <ref role="3cqZAo" node="3fVLq_sAaYw" resolve="input" />
              </node>
              <node concept="liA8E" id="3fVLq_sAaZT" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                <node concept="3cmrfG" id="3fVLq_sAaZU" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3fVLq_sAaZV" role="3uHU7B">
              <node concept="2YIFZM" id="3fVLq_sAaZW" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~String.valueOf(char)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="3fVLq_sAaZX" role="37wK5m">
                  <node concept="37vLTw" id="3fVLq_sAaZY" role="2Oq$k0">
                    <ref role="3cqZAo" node="3fVLq_sAaYw" resolve="input" />
                  </node>
                  <node concept="liA8E" id="3fVLq_sAaZZ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                    <node concept="3cmrfG" id="3fVLq_sAb00" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3fVLq_sAb01" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3fVLq_sAaWO" role="3clF45" />
      <node concept="37vLTG" id="3fVLq_sAaYw" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="17QB3L" id="3fVLq_sAaYv" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4yUYSn07aoH" role="jymVt" />
    <node concept="3Tm1VV" id="4yUYSn07am6" role="1B3o_S" />
  </node>
</model>

