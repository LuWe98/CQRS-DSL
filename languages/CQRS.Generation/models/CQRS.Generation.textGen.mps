<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8452578d-f002-4957-95e6-a141b8af5326(CQRS.Generation.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="cpc8" ref="r:c29d26de-4040-4764-ba29-6361cc981593(CQRS.Generation.generation)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="4357423944233036906" name="jetbrains.mps.lang.textGen.structure.IndentPart" flags="ng" index="2BGw6n" />
      <concept id="1233921373471" name="jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration" flags="ig" index="1bsvg0">
        <child id="1233922432965" name="operation" index="1bwxVq" />
      </concept>
      <concept id="1233922353619" name="jetbrains.mps.lang.textGen.structure.OperationDeclaration" flags="sg" stub="3147100357551177019" index="1bwezc" />
      <concept id="1233924848298" name="jetbrains.mps.lang.textGen.structure.OperationCall" flags="ng" index="1bDJIP">
        <reference id="1234190664409" name="function" index="1rvKf6" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1bsvg0" id="CvLt7q$9sh">
    <property role="TrG5h" value="CqrsTextGenComponents" />
    <node concept="1bwezc" id="4Wa3rAG8c8d" role="1bwxVq">
      <property role="TrG5h" value="onNewLine" />
      <node concept="37vLTG" id="4Wa3rAG8c9z" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="4Wa3rAG8ciE" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4Wa3rAG8c8e" role="3clF45" />
      <node concept="3clFbS" id="4Wa3rAG8c8f" role="3clF47">
        <node concept="lc7rE" id="4Wa3rAG8cjh" role="3cqZAp">
          <node concept="l9hG8" id="4Wa3rAG8ckx" role="lcghm">
            <node concept="37vLTw" id="4Wa3rAG8clo" role="lb14g">
              <ref role="3cqZAo" node="4Wa3rAG8c9z" resolve="text" />
            </node>
          </node>
          <node concept="l8MVK" id="4Wa3rAG8cmk" role="lcghm" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="Sy32QR5Q7R" role="1bwxVq">
      <property role="TrG5h" value="indent" />
      <node concept="3cqZAl" id="Sy32QR5Q7S" role="3clF45" />
      <node concept="3clFbS" id="Sy32QR5Q7T" role="3clF47">
        <node concept="1Dw8fO" id="Sy32QR5QeB" role="3cqZAp">
          <node concept="3cpWsn" id="Sy32QR5QeC" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="Sy32QR5QeD" role="1tU5fm" />
            <node concept="3cmrfG" id="Sy32QR5QeE" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="Sy32QR5QeF" role="2LFqv$">
            <node concept="lc7rE" id="Sy32QR5QeG" role="3cqZAp">
              <node concept="2BGw6n" id="Sy32QR5QmZ" role="lcghm" />
            </node>
          </node>
          <node concept="3eOVzh" id="Sy32QR5QeI" role="1Dwp0S">
            <node concept="37vLTw" id="Sy32QR5QeJ" role="3uHU7w">
              <ref role="3cqZAo" node="Sy32QR5QdH" resolve="count" />
            </node>
            <node concept="37vLTw" id="Sy32QR5QeK" role="3uHU7B">
              <ref role="3cqZAo" node="Sy32QR5QeC" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="Sy32QR5QeL" role="1Dwrff">
            <node concept="37vLTw" id="Sy32QR5QeM" role="2$L3a6">
              <ref role="3cqZAo" node="Sy32QR5QeC" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Sy32QR5QdH" role="3clF46">
        <property role="TrG5h" value="count" />
        <node concept="10Oyi0" id="Sy32QR5QdG" role="1tU5fm" />
      </node>
    </node>
    <node concept="1bwezc" id="4Wa3rAGb1FE" role="1bwxVq">
      <property role="TrG5h" value="newLine" />
      <node concept="3cqZAl" id="4Wa3rAGb1FF" role="3clF45" />
      <node concept="3clFbS" id="4Wa3rAGb1FG" role="3clF47">
        <node concept="lc7rE" id="4Wa3rAGb1IO" role="3cqZAp">
          <node concept="l8MVK" id="4Wa3rAGb1JP" role="lcghm" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="4Wa3rAGb1Tk" role="1bwxVq">
      <property role="TrG5h" value="newLines" />
      <node concept="37vLTG" id="4Wa3rAGb1WN" role="3clF46">
        <property role="TrG5h" value="count" />
        <node concept="10Oyi0" id="4Wa3rAGb1X9" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4Wa3rAGb1Tl" role="3clF45" />
      <node concept="3clFbS" id="4Wa3rAGb1Tm" role="3clF47">
        <node concept="1Dw8fO" id="4Wa3rAGb1Yk" role="3cqZAp">
          <node concept="3cpWsn" id="4Wa3rAGb1Yl" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="4Wa3rAGb1YH" role="1tU5fm" />
            <node concept="3cmrfG" id="4Wa3rAGb395" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="4Wa3rAGb1Ym" role="2LFqv$">
            <node concept="lc7rE" id="4Wa3rAGb47J" role="3cqZAp">
              <node concept="1bDJIP" id="4Wa3rAGb486" role="lcghm">
                <ref role="1rvKf6" node="4Wa3rAGb1FE" resolve="newLine" />
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="4Wa3rAGb2Zb" role="1Dwp0S">
            <node concept="37vLTw" id="4Wa3rAGb2ZG" role="3uHU7w">
              <ref role="3cqZAo" node="4Wa3rAGb1WN" resolve="count" />
            </node>
            <node concept="37vLTw" id="4Wa3rAGb1Zj" role="3uHU7B">
              <ref role="3cqZAo" node="4Wa3rAGb1Yl" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="4Wa3rAGb46Z" role="1Dwrff">
            <node concept="37vLTw" id="4Wa3rAGb471" role="2$L3a6">
              <ref role="3cqZAo" node="4Wa3rAGb1Yl" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

