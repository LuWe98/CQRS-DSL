<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c034ca1e-7133-4d1d-b432-5a86b3fc75cd(CQRS.sandbox_kotlin)">
  <persistence version="9" />
  <languages>
    <use id="21c0c49f-06c0-45cb-990e-6280d48112f6" name="CQRS.Kotlin" version="0" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="7bjp" ref="b50d89c0-0fb9-4105-b652-222148c26a9b/kotlin:kotlin.jvm(jetbrains.mps.kotlin.stdlib/)" />
    <import index="0" ref="b50d89c0-0fb9-4105-b652-222148c26a9b/kotlin:kotlin(jetbrains.mps.kotlin.stdlib/)" />
  </imports>
  <registry>
    <language id="fe04f903-cef2-451d-9401-426cad0a8857" name="CQRS">
      <concept id="3299868441397943311" name="CQRS.structure.IOptionalValidIdentifierWrapper" flags="ng" index="2Ka3i" />
      <concept id="6124797423288980204" name="CQRS.structure.IComponentWithRepositoryReferences" flags="ng" index="4Crgy">
        <property id="6124797423321818060" name="hasVerticallyAlignedReferences" index="6F8k2" />
        <property id="6124797423321818059" name="shouldDisplayReferences" index="6F8k5" />
        <child id="6124797423321818054" name="repositoryReferences" index="6F8k8" />
      </concept>
      <concept id="7166852974048762459" name="CQRS.structure.ArrayType" flags="ng" index="28PhMl" />
      <concept id="1358563145456613763" name="CQRS.structure.IDtoDerivationRule" flags="ng" index="2beALS">
        <property id="6745533817358884406" name="usage" index="x$QPM" />
      </concept>
      <concept id="1358563145456613765" name="CQRS.structure.DtoFlatteningRule" flags="ng" index="2beALY">
        <property id="4394792474682262110" name="nameConvention" index="2A0B8A" />
      </concept>
      <concept id="1358563145456613764" name="CQRS.structure.DtoDataTypeRule" flags="ng" index="2beALZ">
        <property id="4343604932412600606" name="applicability" index="dkuiM" />
        <child id="5501684678996242974" name="fromType" index="2LB_Ge" />
        <child id="5501684678996242976" name="toType" index="2LB_GK" />
      </concept>
      <concept id="4200731973482160116" name="CQRS.structure.QueryContainer" flags="ng" index="ej62d">
        <property id="2238779974575396591" name="type" index="1_KExD" />
        <child id="4200731973482160144" name="components" index="ej5XD" />
      </concept>
      <concept id="6427806966484884250" name="CQRS.structure.AggregateRootRepositoryReference" flags="ng" index="jafdV">
        <reference id="6427806966484931633" name="aggregate" index="jarLg" />
      </concept>
      <concept id="6745533817384077910" name="CQRS.structure.DtoDerivedVariableReference" flags="ng" index="w3f$i">
        <reference id="6745533817384077913" name="variable" index="w3f$t" />
      </concept>
      <concept id="4394792474637755063" name="CQRS.structure.IDtoDerivation" flags="ng" index="2$EDbf">
        <property id="4394792474637775720" name="showIgnoredVariables" index="2$Dkcg" />
        <property id="4394792474666282073" name="showDerivationRules" index="2AX_Kx" />
        <child id="6745533817360085973" name="derivationRuleReferences" index="xJg2h" />
        <child id="4394792474637775716" name="derivableReference" index="2$Dkcs" />
        <child id="4394792474637775717" name="ignoredVariableReferences" index="2$Dkct" />
      </concept>
      <concept id="4394792474652988557" name="CQRS.structure.DtoFlatteningRuleContainer" flags="ng" index="2_JijP">
        <child id="757976835715820068" name="components" index="22l3ne" />
      </concept>
      <concept id="8664290703800219513" name="CQRS.structure.MapType" flags="ng" index="AxC$4">
        <child id="8664290703800219516" name="keyType" index="AxC$1" />
        <child id="8664290703800219518" name="valueType" index="AxC$3" />
      </concept>
      <concept id="8664290703800219464" name="CQRS.structure.SetType" flags="ng" index="AxC$P" />
      <concept id="5312697196876069142" name="CQRS.structure.BoundedContext" flags="ng" index="2EI8j_">
        <child id="5547000879670031630" name="components" index="1_u1bB" />
      </concept>
      <concept id="8348073396877819268" name="CQRS.structure.Parameter" flags="ng" index="K42O2" />
      <concept id="8348073396880298366" name="CQRS.structure.Method" flags="ng" index="Kaw7S">
        <property id="189280670440395992" name="modifier" index="1mOI4s" />
        <child id="8348073396881379861" name="returnTypeWrapper" index="RQCaj" />
      </concept>
      <concept id="8348073396880043827" name="CQRS.structure.Property" flags="ng" index="KdzYP">
        <property id="4200731973484724003" name="hasGetter" index="epk1q" />
      </concept>
      <concept id="7138788901418921634" name="CQRS.structure.DataTypeWrapper" flags="ng" index="2KwnKc">
        <child id="7138788901418921635" name="wrappedType" index="2KwnKd" />
      </concept>
      <concept id="5501684678996870648" name="CQRS.structure.DtoDataTypeRuleContainer" flags="ng" index="2LyaNC">
        <child id="5501684678996870651" name="components" index="2LyaNF" />
      </concept>
      <concept id="444934303227726242" name="CQRS.structure.EmptyLine" flags="ng" index="MqJ36" />
      <concept id="444934303229243810" name="CQRS.structure.CommentLine" flags="ng" index="Mssz6">
        <property id="444934303229243813" name="text" index="Mssz1" />
      </concept>
      <concept id="444934303221548580" name="CQRS.structure.IComponentWithParameters" flags="ng" index="PLbX0">
        <property id="4244590657554597727" name="hasVerticallyAlignedParameters" index="3yB1vD" />
        <child id="444934303221548581" name="parameters" index="PLbX1" />
      </concept>
      <concept id="5501684678950574430" name="CQRS.structure.IVariable" flags="ng" index="2RlN1e">
        <child id="5501684679002754793" name="type" index="2MsIvT" />
      </concept>
      <concept id="5501684678965940058" name="CQRS.structure.SubstitudeDataType" flags="ng" index="2RCapa" />
      <concept id="8348073396883403165" name="CQRS.structure.AggregateRootRepository" flags="ng" index="RLu4r">
        <property id="8348073396883403170" name="isIdRepository" index="RLu4$" />
        <child id="189280670441538721" name="components" index="1m975_" />
        <child id="6783047803565126249" name="aggregateReference" index="1nR0xz" />
      </concept>
      <concept id="8348073396882485151" name="CQRS.structure.EventContainer" flags="ng" index="RMZWp">
        <property id="6124797423234034316" name="type" index="pU0L2" />
        <child id="8348073396882485154" name="components" index="RMZW$" />
        <child id="1502909481139786709" name="aggregateReference" index="3cf3Jw" />
      </concept>
      <concept id="8348073396882252862" name="CQRS.structure.Command" flags="ng" index="RP7iS" />
      <concept id="8348073396882252856" name="CQRS.structure.Event" flags="ng" index="RP7iY" />
      <concept id="8348073396882252871" name="CQRS.structure.QueryReference" flags="ng" index="RP7j1">
        <reference id="8348073396882252872" name="query" index="RP7je" />
      </concept>
      <concept id="8348073396882252868" name="CQRS.structure.Query" flags="ng" index="RP7j2">
        <child id="4200731973482363257" name="returnType" index="egko0" />
      </concept>
      <concept id="8348073396882252865" name="CQRS.structure.CommandReference" flags="ng" index="RP7j7">
        <reference id="8348073396882252866" name="command" index="RP7j4" />
      </concept>
      <concept id="7215197606718147724" name="CQRS.structure.QueryContainerReference" flags="ng" index="2SzCHM">
        <reference id="7215197606718147725" name="queryContainer" index="2SzCHN" />
      </concept>
      <concept id="7215197606718147721" name="CQRS.structure.QueryContainerMethods" flags="ng" index="2SzCHR">
        <child id="7215197606718147722" name="queryContainerReference" index="2SzCHO" />
      </concept>
      <concept id="7215197606703677796" name="CQRS.structure.DtoRepositoryReference" flags="ng" index="2ZWWqq">
        <reference id="7215197606703677802" name="dtoRepository" index="2ZWWqk" />
      </concept>
      <concept id="8702437249794184610" name="CQRS.structure.DtoDataTypeRuleReference" flags="ng" index="12Ql4K">
        <reference id="8702437249794184611" name="rule" index="12Ql4L" />
      </concept>
      <concept id="6783047803581797987" name="CQRS.structure.GenericType" flags="ng" index="1kRELD" />
      <concept id="189280670438741351" name="CQRS.structure.CommandContainer" flags="ng" index="1mYi2z">
        <property id="5800372501161590471" name="shouldDisplayAggregate" index="2KOiV9" />
        <property id="32060296156731900" name="type" index="1zCjXn" />
        <child id="8667568343294517948" name="aggregateReference" index="Kdc70" />
        <child id="189280670438741354" name="components" index="1mYi2I" />
      </concept>
      <concept id="5695379769870707249" name="CQRS.structure.ImportStatement" flags="ng" index="3z7eu8">
        <child id="8348073396883866449" name="packages" index="RZ9fn" />
        <child id="6783047803581806154" name="genericTypes" index="1kRCL0" />
      </concept>
      <concept id="5695379769870711043" name="CQRS.structure.Dto" flags="ng" index="3z7fiU">
        <property id="4394792474653905561" name="showDerivedFromBlock" index="2_GMbx" />
      </concept>
      <concept id="5695379769870711046" name="CQRS.structure.DtoReference" flags="ng" index="3z7fiZ">
        <reference id="5695379769870711047" name="dto" index="3z7fiY" />
      </concept>
      <concept id="5695379769870711034" name="CQRS.structure.ValueObjectReference" flags="ng" index="3z7fl3">
        <reference id="5695379769870711035" name="valueObject" index="3z7fl2" />
      </concept>
      <concept id="5695379769870711037" name="CQRS.structure.Entity" flags="ng" index="3z7fl4">
        <child id="8348073396880298392" name="components" index="Kaw4u" />
        <child id="8348073396880048520" name="idType" index="KdH4e" />
        <child id="5501684678973138400" name="implicitParameters" index="2KfGNK" />
      </concept>
      <concept id="5695379769870711026" name="CQRS.structure.AggregateRootReference" flags="ng" index="3z7flb">
        <reference id="5695379769870711027" name="aggregate" index="3z7fla" />
      </concept>
      <concept id="5695379769870711031" name="CQRS.structure.ValueObject" flags="ng" index="3z7fle">
        <child id="444934303206950869" name="components" index="P9vUL" />
      </concept>
      <concept id="5695379769870711021" name="CQRS.structure.ImportedType" flags="ng" index="3z7flk">
        <reference id="5695379769870711024" name="importStatement" index="3z7fl9" />
      </concept>
      <concept id="5695379769870711011" name="CQRS.structure.ImportPackage" flags="ng" index="3z7flq" />
      <concept id="438631690759186747" name="CQRS.structure.CommandGenerationSettings" flags="ng" index="3$Y7K9">
        <child id="6242459752539201739" name="components" index="1Wp0Np" />
      </concept>
      <concept id="438631690759186750" name="CQRS.structure.EventGenerationSettings" flags="ng" index="3$Y7Kc">
        <child id="6242459752536750875" name="components" index="1W0ps9" />
      </concept>
      <concept id="438631690759186753" name="CQRS.structure.QueryGenerationSettings" flags="ng" index="3$Y7LN">
        <child id="6242459752539811806" name="components" index="1WrOfc" />
      </concept>
      <concept id="5547000879670009003" name="CQRS.structure.DoubleType" flags="ng" index="1_u7H2" />
      <concept id="5547000879670009007" name="CQRS.structure.ShortType" flags="ng" index="1_u7H6" />
      <concept id="5547000879670009006" name="CQRS.structure.LongType" flags="ng" index="1_u7H7" />
      <concept id="5547000879670008994" name="CQRS.structure.IntegerType" flags="ng" index="1_u7Hb" />
      <concept id="5547000879670008997" name="CQRS.structure.StringType" flags="ng" index="1_u7Hc" />
      <concept id="5547000879670009021" name="CQRS.structure.ICollectionType" flags="ng" index="1_u7Hk">
        <child id="2374925324637949786" name="elementType" index="3nUEa_" />
      </concept>
      <concept id="5547000879670009012" name="CQRS.structure.BooleanType" flags="ng" index="1_u7Ht" />
      <concept id="5547000879670009015" name="CQRS.structure.ByteType" flags="ng" index="1_u7Hu" />
      <concept id="5547000879670008985" name="CQRS.structure.AggregateRoot" flags="ng" index="1_u7HK">
        <child id="5501684678963268756" name="implicitParameters" index="2Rymm4" />
        <child id="8348073396881549629" name="components" index="RQjAV" />
        <child id="5547000879670009030" name="idType" index="1_u7GJ" />
      </concept>
      <concept id="5547000879670294489" name="CQRS.structure.ListType" flags="ng" index="1_v10K" />
      <concept id="2238779974573594367" name="CQRS.structure.DtoRepository" flags="ng" index="1_DyxT">
        <child id="2238779974575819787" name="dtoReference" index="1_M3ad" />
        <child id="2238779974575837197" name="components" index="1_M6Ub" />
      </concept>
      <concept id="2238779974578200759" name="CQRS.structure.QueryMethods" flags="ng" index="1_V5SL">
        <child id="2238779974578200760" name="queryRefernces" index="1_V5SY" />
      </concept>
      <concept id="32060296195322866" name="CQRS.structure.IComponentWithNamePlaceholder" flags="ng" index="1Ar5lp">
        <child id="3299868441447517748" name="nameWrapper" index="vMNbD" />
      </concept>
      <concept id="400088555703321094" name="CQRS.structure.GenerationSettings" flags="ng" index="3OU2hH">
        <child id="438631690759186745" name="components" index="3$Y7Kb" />
      </concept>
      <concept id="6242459752539201654" name="CQRS.structure.QueryHandlingSetting" flags="ng" index="1Wp0L$">
        <property id="6242459752539807262" name="handlingType" index="1WrR8c" />
      </concept>
      <concept id="6242459752539201653" name="CQRS.structure.CommandHandlingSetting" flags="ng" index="1Wp0LB" />
      <concept id="6242459752539813078" name="CQRS.structure.QueryProcessingSetting" flags="ng" index="1WrPz4">
        <property id="6242459752541703487" name="useProcessingImplementation" index="1WiA4H" />
      </concept>
      <concept id="6242459752534339338" name="CQRS.structure.EventHandlingSetting" flags="ng" index="1WQGco" />
      <concept id="6026549184676791897" name="CQRS.structure.JavaDataType" flags="ng" index="3XHxNk">
        <child id="6026549184676791902" name="actualType" index="3XHxNj" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="21c0c49f-06c0-45cb-990e-6280d48112f6" name="CQRS.Kotlin">
      <concept id="3818776725637349014" name="CQRS.Kotlin.structure.BoundedContextWrapper" flags="ng" index="OQVI_" />
    </language>
  </registry>
  <node concept="OQVI_" id="4p0keayCEP4">
    <property role="TrG5h" value="Billing" />
    <node concept="MqJ36" id="1aRcFPNzIM0" role="1_u1bB" />
    <node concept="MqJ36" id="1aRcFPNzIQL" role="1_u1bB" />
    <node concept="3OU2hH" id="3PtG$LIALOk" role="1_u1bB">
      <node concept="3$Y7K9" id="3PtG$LIALOl" role="3$Y7Kb">
        <node concept="1Wp0LB" id="3PtG$LIALOm" role="1Wp0Np" />
      </node>
      <node concept="MqJ36" id="3PtG$LIALOn" role="3$Y7Kb" />
      <node concept="3$Y7Kc" id="3PtG$LIALOo" role="3$Y7Kb">
        <node concept="1WQGco" id="3PtG$LIALOp" role="1W0ps9" />
      </node>
      <node concept="MqJ36" id="3PtG$LIALOq" role="3$Y7Kb" />
      <node concept="3$Y7LN" id="3fVLq_K3PsC" role="3$Y7Kb">
        <node concept="1Wp0L$" id="3fVLq_K3PsL" role="1WrOfc">
          <property role="1WrR8c" value="omljbysWz2/Grouped" />
        </node>
        <node concept="MqJ36" id="7x9oRL9n5gD" role="1WrOfc" />
        <node concept="1WrPz4" id="7x9oRL9n5gK" role="1WrOfc" />
      </node>
    </node>
    <node concept="MqJ36" id="3PtG$LIALeQ" role="1_u1bB" />
    <node concept="3z7eu8" id="3GrpC3f11cG" role="1_u1bB">
      <property role="TrG5h" value="UUID" />
      <node concept="3z7flq" id="3GrpC3f11cI" role="RZ9fn">
        <property role="TrG5h" value="java" />
      </node>
      <node concept="3z7flq" id="3GrpC3f11d2" role="RZ9fn">
        <property role="TrG5h" value="util" />
      </node>
    </node>
    <node concept="3z7eu8" id="2QCVoC3$JHF" role="1_u1bB">
      <property role="TrG5h" value="List" />
      <node concept="3z7flq" id="2QCVoC3$JHH" role="RZ9fn">
        <property role="TrG5h" value="test" />
      </node>
      <node concept="3z7flq" id="2QCVoC3$JLN" role="RZ9fn">
        <property role="TrG5h" value="hallo" />
      </node>
      <node concept="1kRELD" id="2QCVoC3$JLR" role="1kRCL0">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3z7eu8" id="1Dsqoc5gbhb" role="1_u1bB">
      <property role="TrG5h" value="Exe" />
      <node concept="3z7flq" id="1Dsqoc5gbhd" role="RZ9fn">
        <property role="TrG5h" value="john" />
      </node>
      <node concept="3z7flq" id="1Dsqoc5gblY" role="RZ9fn">
        <property role="TrG5h" value="budnik" />
      </node>
      <node concept="1kRELD" id="1Dsqoc5gbm5" role="1kRCL0">
        <property role="TrG5h" value="Popo" />
      </node>
      <node concept="1kRELD" id="1Dsqoc5gbm7" role="1kRCL0">
        <property role="TrG5h" value="LinkerArm" />
      </node>
    </node>
    <node concept="MqJ36" id="1Dsqoc5gbqY" role="1_u1bB" />
    <node concept="3z7fle" id="4yIxVQzuRwX" role="1_u1bB">
      <property role="TrG5h" value="OtherValueObject" />
      <property role="3yB1vD" value="true" />
      <node concept="K42O2" id="4yIxVQzuRzn" role="PLbX1">
        <property role="TrG5h" value="age" />
        <node concept="1_u7Hb" id="4yIxVQzuRzp" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="4yIxVQC96hV" role="PLbX1">
        <property role="TrG5h" value="circle" />
        <node concept="3z7fl3" id="4yIxVQC96i1" role="2MsIvT">
          <ref role="3z7fl2" node="4b$xqUBlubN" resolve="OriginalValueObject" />
        </node>
      </node>
      <node concept="K42O2" id="2QCVoC4Ev0V" role="PLbX1">
        <property role="TrG5h" value="list" />
        <node concept="1_v10K" id="2QCVoC4Ev1c" role="2MsIvT">
          <node concept="1_u7Hc" id="2QCVoC4Ev1h" role="3nUEa_" />
        </node>
      </node>
      <node concept="K42O2" id="3L7_qKNLbZs" role="PLbX1">
        <property role="TrG5h" value="specialIds" />
        <node concept="AxC$4" id="3L7_qKTB0kg" role="2MsIvT">
          <node concept="3XHxNk" id="6ERg2SCKEU" role="AxC$1">
            <node concept="3uibUv" id="6ERg2SCKF0" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~AbstractList" resolve="AbstractList" />
              <node concept="3uibUv" id="6ERg2SCKF8" role="11_B2D">
                <ref role="3uigEE" to="33ny:~AbstractMap" resolve="AbstractMap" />
                <node concept="17QB3L" id="6ERg2SEwKS" role="11_B2D" />
                <node concept="17QB3L" id="6ERg2SEwLt" role="11_B2D" />
              </node>
            </node>
          </node>
          <node concept="3XHxNk" id="6ERg2SCKEL" role="AxC$3">
            <node concept="3uibUv" id="6ERg2SCKER" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
      </node>
      <node concept="Kaw7S" id="61W7Av0ngXF" role="P9vUL">
        <property role="TrG5h" value="hallo" />
        <node concept="2KwnKc" id="61W7Av0ngXJ" role="RQCaj">
          <node concept="1_u7H2" id="2QCVoC4pgDO" role="2KwnKd" />
        </node>
        <node concept="K42O2" id="2Np_kyai8Va" role="PLbX1">
          <property role="TrG5h" value="name" />
          <node concept="1_u7Hc" id="2Np_kyai8Vc" role="2MsIvT" />
        </node>
        <node concept="K42O2" id="2Np_kyal9lW" role="PLbX1">
          <property role="TrG5h" value="age" />
          <node concept="1_u7Hb" id="2Np_kyal9m2" role="2MsIvT" />
        </node>
      </node>
      <node concept="Kaw7S" id="2Np_kyal4Uw" role="P9vUL">
        <property role="TrG5h" value="test" />
        <property role="1mOI4s" value="awtshksDjf/private" />
        <node concept="K42O2" id="2Np_kyal4UD" role="PLbX1">
          <property role="TrG5h" value="id" />
          <node concept="1_u7Hc" id="2QCVoC549ZT" role="2MsIvT" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4yIxVQzuRuB" role="1_u1bB" />
    <node concept="MqJ36" id="4b$xqUBlubo" role="1_u1bB" />
    <node concept="3z7fl4" id="6ERg2Ttvo0" role="1_u1bB">
      <property role="TrG5h" value="TestEntity" />
      <node concept="KdzYP" id="6ERg2TvO_N" role="Kaw4u">
        <property role="TrG5h" value="property" />
        <property role="epk1q" value="true" />
        <node concept="3z7fl3" id="6ERg2TvO_V" role="2MsIvT">
          <ref role="3z7fl2" node="4yIxVQzuRwX" resolve="OtherValueObject" />
        </node>
      </node>
      <node concept="K42O2" id="6ERg2Ttvo1" role="2KfGNK">
        <property role="TrG5h" value="id" />
        <node concept="2RCapa" id="6ERg2Ttvo3" role="2MsIvT" />
      </node>
      <node concept="1_u7Hc" id="6ERg2Ttvri" role="KdH4e" />
      <node concept="Kaw7S" id="6ERg2Ttvrl" role="Kaw4u">
        <property role="1mOI4s" value="awtshksDjf/private" />
        <property role="TrG5h" value="testMethodWithSpecialName" />
        <node concept="K42O2" id="6ERg2Ttvro" role="PLbX1">
          <property role="TrG5h" value="name" />
          <node concept="1_u7Hc" id="6ERg2Ttvrq" role="2MsIvT" />
        </node>
        <node concept="2KwnKc" id="6ERg2Ttvrt" role="RQCaj">
          <node concept="3z7flk" id="6ERg2Ttvrv" role="2KwnKd">
            <ref role="3z7fl9" node="3GrpC3f11cG" resolve="UUID" />
          </node>
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="2QCVoC60MHm" role="1_u1bB" />
    <node concept="3z7fiU" id="2QCVoC60MPz" role="1_u1bB">
      <property role="TrG5h" value="Custom" />
      <node concept="K42O2" id="2QCVoC69umy" role="PLbX1">
        <property role="TrG5h" value="id" />
        <node concept="AxC$P" id="2QCVoC6oY78" role="2MsIvT">
          <node concept="1_u7Hc" id="2QCVoC6oY7d" role="3nUEa_" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="6ERg2TtvkQ" role="1_u1bB" />
    <node concept="3z7fiU" id="4p0keayCEP$" role="1_u1bB">
      <property role="TrG5h" value="CustomDto" />
      <property role="3yB1vD" value="true" />
      <node concept="K42O2" id="4p0keayCEPH" role="PLbX1">
        <property role="TrG5h" value="id" />
        <node concept="1_u7Hc" id="4p0keayCEPJ" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="4b$xqUBk9OV" role="PLbX1">
        <property role="TrG5h" value="name" />
        <node concept="1_u7Hc" id="4b$xqUBk9P1" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="4b$xqUBk9P3" role="PLbX1">
        <property role="TrG5h" value="hallo" />
        <node concept="1_v10K" id="4b$xqUBk9Pb" role="2MsIvT">
          <node concept="1_u7Ht" id="4b$xqUBk9Pg" role="3nUEa_" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="3L7_qKVrWJu" role="1_u1bB" />
    <node concept="3z7fiU" id="3L7_qKVrWP1" role="1_u1bB">
      <property role="TrG5h" value="JavaDto" />
      <property role="3yB1vD" value="true" />
      <node concept="K42O2" id="3L7_qKVrWRP" role="PLbX1">
        <property role="TrG5h" value="java" />
        <node concept="3XHxNk" id="3L7_qKVrWRR" role="2MsIvT">
          <node concept="3uibUv" id="3L7_qKVrWRV" role="3XHxNj">
            <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
          </node>
        </node>
      </node>
      <node concept="K42O2" id="13eBkswCRxR" role="PLbX1">
        <property role="TrG5h" value="javaOther" />
        <node concept="3XHxNk" id="13eBkswCRxY" role="2MsIvT">
          <node concept="3uibUv" id="13eBkswCRy4" role="3XHxNj">
            <ref role="3uigEE" to="33ny:~AbstractList" resolve="AbstractList" />
            <node concept="3uibUv" id="13eBkswZlQa" role="11_B2D">
              <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
              <node concept="17QB3L" id="13eBkswZlR3" role="11_B2D" />
              <node concept="3qTvmN" id="p4fyl2V4Cg" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="sPJqcqllOi" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqllRZ" role="1_u1bB" />
    <node concept="3z7fle" id="4b$xqUBlubN" role="1_u1bB">
      <property role="TrG5h" value="OriginalValueObject" />
      <property role="3yB1vD" value="true" />
      <node concept="K42O2" id="4b$xqUBlubO" role="PLbX1">
        <property role="TrG5h" value="id" />
        <node concept="1_u7Hc" id="4b$xqUBluch" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="2Np_kyaNE1W" role="PLbX1">
        <property role="TrG5h" value="name" />
        <node concept="1_u7Hc" id="2Np_kyaNE22" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="4yIxVQzuRzz" role="PLbX1">
        <property role="TrG5h" value="otherValueObject" />
        <node concept="3z7fl3" id="4yIxVQC95te" role="2MsIvT">
          <ref role="3z7fl2" node="4yIxVQzuRwX" resolve="OtherValueObject" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4yIxVQyFSv4" role="1_u1bB" />
    <node concept="3z7fiU" id="4yIxVQyFSzx" role="1_u1bB">
      <property role="TrG5h" value="DerivedDto" />
      <property role="2_GMbx" value="true" />
      <node concept="3z7fl3" id="4yIxVQyFS_P" role="2$Dkcs">
        <ref role="3z7fl2" node="4b$xqUBlubN" resolve="OriginalValueObject" />
      </node>
    </node>
    <node concept="MqJ36" id="4p0keayCEPt" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqlm7V" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqlmbW" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqllfm" role="1_u1bB" />
    <node concept="Mssz6" id="2QCVoC6AdMv" role="1_u1bB">
      <property role="Mssz1" value="TODO Es wird noch nicht der Type der Typerules aktuallisiert." />
    </node>
    <node concept="Mssz6" id="2QCVoC6AdUR" role="1_u1bB">
      <property role="Mssz1" value="Der Type wird nur initial aktuallisiert, wenn der Type gesetzt wird." />
    </node>
    <node concept="Mssz6" id="2QCVoC6Ae3h" role="1_u1bB">
      <property role="Mssz1" value="Jegliche Subtypes werden aber ignoriert." />
    </node>
    <node concept="3z7fiU" id="4yIxVQzuRAh" role="1_u1bB">
      <property role="TrG5h" value="OtherDerivedDto" />
      <property role="2_GMbx" value="true" />
      <property role="2AX_Kx" value="true" />
      <node concept="3z7fl3" id="4yIxVQzuRCL" role="2$Dkcs">
        <ref role="3z7fl2" node="4yIxVQzuRwX" resolve="OtherValueObject" />
      </node>
      <node concept="K42O2" id="6ERg2SCMl9" role="PLbX1">
        <property role="TrG5h" value="john" />
        <node concept="1_u7Hc" id="6ERg2SCMlb" role="2MsIvT" />
      </node>
      <node concept="12Ql4K" id="2QCVoC6xAzC" role="xJg2h">
        <ref role="12Ql4L" node="3L7_qKKKcBn" />
      </node>
    </node>
    <node concept="MqJ36" id="6ERg2SCL1L" role="1_u1bB" />
    <node concept="MqJ36" id="6ERg2SCL4T" role="1_u1bB" />
    <node concept="MqJ36" id="4yIxVQzuRpY" role="1_u1bB" />
    <node concept="2_JijP" id="4yIxVQC95Ld" role="1_u1bB">
      <node concept="2beALY" id="4yIxVQC95NF" role="22l3ne">
        <property role="2A0B8A" value="3NXs7yqZJYI/Suffix" />
        <node concept="3z7fl3" id="4yIxVQC95NH" role="2$Dkcs">
          <ref role="3z7fl2" node="4yIxVQzuRwX" resolve="OtherValueObject" />
        </node>
        <node concept="2Ka3i" id="3L7_qKKKQG_" role="vMNbD">
          <property role="TrG5h" value="test" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="3L7_qKKKcvC" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LIAKRz" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LIAKWb" role="1_u1bB" />
    <node concept="2LyaNC" id="3L7_qKKKc$L" role="1_u1bB">
      <node concept="Mssz6" id="3L7_qKLqIRR" role="2LyaNF">
        <property role="Mssz1" value="TODO Hier sollte man eigentlich auch Dtos verwenden können." />
      </node>
      <node concept="2beALZ" id="3L7_qKKKcBn" role="2LyaNF">
        <property role="dkuiM" value="3L7_qKKKeKn/Partial" />
        <node concept="3z7flk" id="3L7_qKKKcBt" role="2LB_Ge">
          <ref role="3z7fl9" node="3GrpC3f11cG" resolve="UUID" />
        </node>
        <node concept="AxC$P" id="2QCVoC6Adi3" role="2LB_GK">
          <node concept="1_u7Hc" id="2QCVoC6Adi8" role="3nUEa_" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="3PtG$LIAKDL" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LIAKIm" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LIAKMW" role="1_u1bB" />
    <node concept="MqJ36" id="4yIxVQC95IK" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcpYEcU" role="1_u1bB" />
    <node concept="3z7fiU" id="sPJqcpYEjD" role="1_u1bB">
      <property role="TrG5h" value="User" />
      <node concept="K42O2" id="sPJqcpYEn2" role="PLbX1">
        <property role="TrG5h" value="id" />
        <node concept="1_u7Hc" id="sPJqcpYEn6" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="sPJqcpYEn8" role="PLbX1">
        <property role="TrG5h" value="name" />
        <node concept="1_u7Hc" id="sPJqcpYEne" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="sPJqcpYEng" role="PLbX1">
        <property role="TrG5h" value="age" />
        <node concept="1_u7Hb" id="sPJqcpYEno" role="2MsIvT" />
      </node>
    </node>
    <node concept="MqJ36" id="sPJqcpYEOf" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb0Mf" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1vJ" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1zC" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1Ft" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1Jp" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1Nm" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1By" role="1_u1bB" />
    <node concept="RP7j2" id="sPJqcpYExU" role="1_u1bB">
      <property role="TrG5h" value="GetUser" />
      <property role="3yB1vD" value="true" />
      <node concept="K42O2" id="sPJqcpYE_u" role="PLbX1">
        <property role="TrG5h" value="id" />
        <node concept="1_u7Hc" id="sPJqcpYE_y" role="2MsIvT" />
      </node>
      <node concept="3z7fiZ" id="sPJqcpYERV" role="egko0">
        <ref role="3z7fiY" node="sPJqcpYEjD" resolve="User" />
      </node>
    </node>
    <node concept="MqJ36" id="sPJqcpYEup" role="1_u1bB" />
    <node concept="RP7iS" id="sPJqcpYEGM" role="1_u1bB">
      <property role="TrG5h" value="UpdateUserName" />
      <property role="3yB1vD" value="true" />
      <node concept="K42O2" id="sPJqcpYEKp" role="PLbX1">
        <property role="TrG5h" value="id" />
        <node concept="1_u7Hc" id="sPJqcpYEKt" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="sPJqcpYEKv" role="PLbX1">
        <property role="TrG5h" value="newName" />
        <node concept="1_u7Hc" id="sPJqcqb1Rk" role="2MsIvT" />
      </node>
    </node>
    <node concept="MqJ36" id="sPJqcpYEDc" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcpYEqT" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb0PY" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb0TG" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb0Xr" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb11b" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb14W" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb18I" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1cx" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1gl" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1ka" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1o0" role="1_u1bB" />
    <node concept="MqJ36" id="sPJqcqb1rR" role="1_u1bB" />
    <node concept="RP7j2" id="3fVLq_OtsxJ" role="1_u1bB">
      <property role="TrG5h" value="SingleQuery" />
      <node concept="28PhMl" id="3fVLq_OtszU" role="egko0">
        <node concept="1_u7Hc" id="3fVLq_OtszZ" role="3nUEa_" />
      </node>
    </node>
    <node concept="MqJ36" id="3fVLq_OtsvB" role="1_u1bB" />
    <node concept="ej62d" id="3fVLq_K3PwS" role="1_u1bB">
      <property role="6F8k5" value="true" />
      <property role="1_KExD" value="1WhJCpUOLrF/QueryService" />
      <node concept="RP7j2" id="4p0keayCEPa" role="ej5XD">
        <property role="TrG5h" value="QueryOne" />
        <node concept="K42O2" id="4p0keayCSTG" role="PLbX1">
          <property role="TrG5h" value="id" />
          <node concept="3z7flk" id="3GrpC3f11df" role="2MsIvT">
            <ref role="3z7fl9" node="3GrpC3f11cG" resolve="UUID" />
          </node>
        </node>
        <node concept="1_u7Hc" id="4p0keayH_rO" role="egko0" />
      </node>
      <node concept="RP7j2" id="4p0keayCIiu" role="ej5XD">
        <property role="TrG5h" value="QueryTwo" />
        <node concept="3z7fiZ" id="4b$xqUBgCwD" role="egko0">
          <ref role="3z7fiY" node="4p0keayCEP$" resolve="CustomDto" />
        </node>
      </node>
      <node concept="2ZWWqq" id="51Z40VxlaEL" role="6F8k8">
        <ref role="2ZWWqk" node="7IRUqbcjRlV" />
      </node>
      <node concept="2Ka3i" id="3PtG$LIyVUc" role="vMNbD">
        <property role="TrG5h" value="TestService" />
      </node>
    </node>
    <node concept="MqJ36" id="3PtG$LHEaiG" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LIyCzx" role="1_u1bB" />
    <node concept="MqJ36" id="3fVLq_K3PuP" role="1_u1bB" />
    <node concept="MqJ36" id="Sy32QR1Njx" role="1_u1bB" />
    <node concept="RP7iS" id="7IRUqbcguWD" role="1_u1bB">
      <property role="TrG5h" value="Test" />
      <property role="6F8k5" value="true" />
      <node concept="K42O2" id="7IRUqbcguXo" role="PLbX1">
        <property role="TrG5h" value="id" />
        <node concept="1_u7H6" id="7IRUqbcjRn5" role="2MsIvT" />
      </node>
      <node concept="jafdV" id="3fVLq_wW56b" role="6F8k8">
        <ref role="jarLg" node="3fVLq_uaGAT" resolve="TestRoot" />
      </node>
    </node>
    <node concept="MqJ36" id="3fVLq_pO4gR" role="1_u1bB" />
    <node concept="1mYi2z" id="3fVLq_pO4kT" role="1_u1bB">
      <property role="6F8k5" value="true" />
      <property role="2KOiV9" value="true" />
      <property role="1zCjXn" value="1LTEHzOdy3/CommandHandler" />
      <node concept="RP7iS" id="3fVLq_pO4mg" role="1mYi2I">
        <property role="TrG5h" value="CommandOne" />
        <node concept="K42O2" id="51Z40VHS974" role="PLbX1">
          <property role="TrG5h" value="age" />
          <node concept="1_u7Hb" id="51Z40VHS976" role="2MsIvT" />
        </node>
        <node concept="K42O2" id="51Z40VHS978" role="PLbX1">
          <property role="TrG5h" value="names" />
          <node concept="1_v10K" id="51Z40VHS97e" role="2MsIvT">
            <node concept="1_u7Hc" id="51Z40VHS97j" role="3nUEa_" />
          </node>
        </node>
      </node>
      <node concept="RP7iS" id="3fVLq_pO4mp" role="1mYi2I">
        <property role="TrG5h" value="CommandTwo" />
      </node>
      <node concept="jafdV" id="3PtG$LH2h_c" role="6F8k8">
        <ref role="jarLg" node="Sy32QR1Nid" resolve="ExampleAggregateRoot" />
      </node>
      <node concept="jafdV" id="3PtG$LHuAGd" role="6F8k8">
        <ref role="jarLg" node="3fVLq_uaGAT" resolve="TestRoot" />
      </node>
      <node concept="jafdV" id="3PtG$LHuAGk" role="6F8k8">
        <ref role="jarLg" node="3fVLq_uaGFV" resolve="TestOtherRoot" />
      </node>
      <node concept="3z7flb" id="3PtG$LHyJhi" role="Kdc70">
        <ref role="3z7fla" node="Sy32QR1Nid" resolve="ExampleAggregateRoot" />
      </node>
    </node>
    <node concept="MqJ36" id="3PtG$LGYHlt" role="1_u1bB" />
    <node concept="MqJ36" id="2QCVoC6Ae94" role="1_u1bB" />
    <node concept="1mYi2z" id="2QCVoC6Aehx" role="1_u1bB">
      <property role="1zCjXn" value="1LTEHzOdy3/CommandHandler" />
      <property role="2KOiV9" value="true" />
      <property role="6F8k5" value="true" />
      <node concept="2Ka3i" id="2QCVoC6Aehy" role="vMNbD">
        <property role="TrG5h" value="Test" />
      </node>
      <node concept="jafdV" id="3PtG$LHk7f0" role="6F8k8">
        <ref role="jarLg" node="Sy32QR1Nid" resolve="ExampleAggregateRoot" />
      </node>
      <node concept="jafdV" id="3PtG$LHy_Qw" role="6F8k8">
        <ref role="jarLg" node="3fVLq_uaGFV" resolve="TestOtherRoot" />
      </node>
      <node concept="jafdV" id="3PtG$LHy_QB" role="6F8k8">
        <ref role="jarLg" node="3fVLq_uaGAT" resolve="TestRoot" />
      </node>
      <node concept="3z7flb" id="3PtG$LHy_Qo" role="Kdc70">
        <ref role="3z7fla" node="3fVLq_uaGFV" resolve="TestOtherRoot" />
      </node>
    </node>
    <node concept="MqJ36" id="2QCVoC6AgRB" role="1_u1bB" />
    <node concept="1mYi2z" id="2QCVoC6Ah8M" role="1_u1bB">
      <property role="1zCjXn" value="1LTEHzOdy3/CommandHandler" />
      <property role="2KOiV9" value="true" />
      <node concept="3z7flb" id="3PtG$LHL9Yy" role="Kdc70">
        <ref role="3z7fla" node="3fVLq_uaGAT" resolve="TestRoot" />
      </node>
    </node>
    <node concept="MqJ36" id="3fVLq_pO4jy" role="1_u1bB" />
    <node concept="1_u7HK" id="3fVLq_uaGAT" role="1_u1bB">
      <property role="TrG5h" value="TestRoot" />
      <property role="3yB1vD" value="true" />
      <node concept="KdzYP" id="p4fyl78NZQ" role="RQjAV">
        <property role="TrG5h" value="one" />
        <property role="epk1q" value="true" />
        <node concept="1_u7Hc" id="p4fyl78NZS" role="2MsIvT" />
      </node>
      <node concept="KdzYP" id="p4fyl78O01" role="RQjAV">
        <property role="TrG5h" value="two" />
        <node concept="1_u7Hc" id="p4fyl78O05" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="3fVLq_uaGAU" role="2Rymm4">
        <property role="TrG5h" value="id" />
        <node concept="2RCapa" id="3fVLq_uaGAW" role="2MsIvT" />
      </node>
      <node concept="1_u7Hc" id="3fVLq_uaGCC" role="1_u7GJ" />
      <node concept="K42O2" id="p4fyl5OUSG" role="PLbX1">
        <property role="TrG5h" value="name" />
        <node concept="1_u7Hc" id="p4fyl5OUSI" role="2MsIvT" />
      </node>
    </node>
    <node concept="MqJ36" id="3fVLq_xsVDF" role="1_u1bB" />
    <node concept="RLu4r" id="3fVLq_xsVDE" role="1_u1bB">
      <property role="RLu4$" value="true" />
      <node concept="3z7flb" id="3fVLq_xsVDD" role="1nR0xz">
        <ref role="3z7fla" node="3fVLq_uaGAT" resolve="TestRoot" />
      </node>
    </node>
    <node concept="MqJ36" id="3PtG$LHSDmV" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LHSDrp" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LHLa32" role="1_u1bB" />
    <node concept="RMZWp" id="3fVLq_uaGAZ" role="1_u1bB">
      <property role="6F8k5" value="true" />
      <property role="pU0L2" value="3VGLvhFnWdB/EventHandler" />
      <property role="6F8k2" value="true" />
      <node concept="RP7iY" id="3fVLq_AKYOu" role="RMZW$">
        <property role="TrG5h" value="SeparateEventOne" />
      </node>
      <node concept="RP7iY" id="3fVLq_AKYOz" role="RMZW$">
        <property role="TrG5h" value="SeparateEventTwo" />
      </node>
      <node concept="2ZWWqq" id="51Z40VxlbDz" role="6F8k8">
        <ref role="2ZWWqk" node="7IRUqbcjRlV" />
      </node>
      <node concept="3z7flb" id="3PtG$LHHFL8" role="3cf3Jw">
        <ref role="3z7fla" node="3fVLq_uaGAT" resolve="TestRoot" />
      </node>
    </node>
    <node concept="MqJ36" id="3PtG$LHLayp" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LIuLEO" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LIuLJo" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LHEaCL" role="1_u1bB" />
    <node concept="MqJ36" id="3fVLq_uaGCE" role="1_u1bB" />
    <node concept="1_u7HK" id="3fVLq_uaGFV" role="1_u1bB">
      <property role="TrG5h" value="TestOtherRoot" />
      <node concept="K42O2" id="3fVLq_uaGFW" role="2Rymm4">
        <property role="TrG5h" value="id" />
        <node concept="2RCapa" id="3fVLq_uaGFY" role="2MsIvT" />
      </node>
      <node concept="3z7flk" id="3fVLq_uaGHM" role="1_u7GJ">
        <ref role="3z7fl9" node="3GrpC3f11cG" resolve="UUID" />
      </node>
    </node>
    <node concept="MqJ36" id="393vmqSPwxw" role="1_u1bB" />
    <node concept="RLu4r" id="393vmqSPwxv" role="1_u1bB">
      <property role="RLu4$" value="true" />
      <node concept="3z7flb" id="393vmqSPwxu" role="1nR0xz">
        <ref role="3z7fla" node="3fVLq_uaGFV" resolve="TestOtherRoot" />
      </node>
    </node>
    <node concept="MqJ36" id="3fVLq_uaGG2" role="1_u1bB" />
    <node concept="RMZWp" id="3fVLq_uaGG1" role="1_u1bB">
      <node concept="3z7flb" id="3fVLq_uaGG0" role="3cf3Jw">
        <ref role="3z7fla" node="3fVLq_uaGFV" resolve="TestOtherRoot" />
      </node>
    </node>
    <node concept="MqJ36" id="3fVLq_uaG_o" role="1_u1bB" />
    <node concept="MqJ36" id="7IRUqbcguVV" role="1_u1bB" />
    <node concept="1_u7HK" id="Sy32QR1Nid" role="1_u1bB">
      <property role="TrG5h" value="ExampleAggregateRoot" />
      <node concept="KdzYP" id="1DRRhzt56xq" role="RQjAV">
        <property role="TrG5h" value="name" />
        <property role="epk1q" value="true" />
        <node concept="1_u7Hc" id="1DRRhzt56xz" role="2MsIvT" />
      </node>
      <node concept="MqJ36" id="6oGYBRiy$iK" role="RQjAV" />
      <node concept="K42O2" id="Sy32QR1Nie" role="2Rymm4">
        <property role="TrG5h" value="id" />
        <node concept="2RCapa" id="Sy32QR1Nig" role="2MsIvT" />
      </node>
      <node concept="1_u7Hu" id="Sy32QR1NiV" role="1_u7GJ" />
      <node concept="Kaw7S" id="1DRRhzsRtW7" role="RQjAV">
        <property role="TrG5h" value="testMethod" />
        <property role="1mOI4s" value="awtshksDjf/private" />
        <node concept="K42O2" id="1DRRhzsRtWf" role="PLbX1">
          <property role="TrG5h" value="id" />
          <node concept="1_u7Hc" id="1DRRhzsRtWn" role="2MsIvT" />
        </node>
        <node concept="2KwnKc" id="1DRRhzsRu0m" role="RQCaj">
          <node concept="1_u7Hu" id="1DRRhzsRu0o" role="2KwnKd" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="1DRRhzwYQjl" role="1_u1bB" />
    <node concept="RLu4r" id="1DRRhzwYQjk" role="1_u1bB">
      <property role="RLu4$" value="true" />
      <node concept="3z7flb" id="1DRRhzwYQjj" role="1nR0xz">
        <ref role="3z7fla" node="Sy32QR1Nid" resolve="ExampleAggregateRoot" />
      </node>
      <node concept="Kaw7S" id="1DRRhzwYQkB" role="1m975_">
        <property role="TrG5h" value="testMethod" />
        <node concept="2KwnKc" id="1DRRhzwYQkE" role="RQCaj">
          <node concept="3z7fl3" id="3fVLq_nLK1P" role="2KwnKd">
            <ref role="3z7fl2" node="4b$xqUBlubN" resolve="OriginalValueObject" />
          </node>
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="3PtG$LInaf4" role="1_u1bB" />
    <node concept="MqJ36" id="1Dsqoc5gayM" role="1_u1bB" />
    <node concept="MqJ36" id="1Dsqoc5gaGf" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LIfGU1" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LIfGKU" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LIfGPt" role="1_u1bB" />
    <node concept="RMZWp" id="Sy32QR1Nij" role="1_u1bB">
      <property role="pU0L2" value="3VGLvhFnWdB/EventHandler" />
      <property role="6F8k5" value="true" />
      <node concept="3z7flb" id="Sy32QR1Nii" role="3cf3Jw">
        <ref role="3z7fla" node="Sy32QR1Nid" resolve="ExampleAggregateRoot" />
      </node>
      <node concept="RP7iY" id="7IRUqbcguVh" role="RMZW$">
        <property role="TrG5h" value="TestEvent" />
        <property role="3yB1vD" value="true" />
        <node concept="K42O2" id="7IRUqbcguVj" role="PLbX1">
          <property role="TrG5h" value="id" />
          <node concept="1_u7H7" id="7IRUqbcjRn7" role="2MsIvT" />
        </node>
      </node>
      <node concept="MqJ36" id="1DRRhzrHjp5" role="RMZW$" />
      <node concept="RP7iY" id="1DRRhzrHjpg" role="RMZW$">
        <property role="TrG5h" value="TestEventTwo" />
        <property role="3yB1vD" value="true" />
        <node concept="K42O2" id="1DRRhzrHjph" role="PLbX1">
          <property role="TrG5h" value="name" />
          <node concept="3z7flk" id="1DRRhzrHjpy" role="2MsIvT">
            <ref role="3z7fl9" node="3GrpC3f11cG" resolve="UUID" />
          </node>
        </node>
      </node>
      <node concept="2ZWWqq" id="3fVLq_CT4jW" role="6F8k8">
        <ref role="2ZWWqk" node="7IRUqbcjRlV" />
      </node>
      <node concept="2Ka3i" id="3PtG$LIAK_7" role="vMNbD">
        <property role="TrG5h" value="TestOtherRootEventHandler" />
      </node>
    </node>
    <node concept="MqJ36" id="3PtG$LHZPTM" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LHZPYh" role="1_u1bB" />
    <node concept="1_DyxT" id="7IRUqbcjRlV" role="1_u1bB">
      <node concept="Kaw7S" id="3fVLq_OhRQK" role="1_M6Ub">
        <property role="TrG5h" value="testMethod" />
        <node concept="K42O2" id="3fVLq_OhRQR" role="PLbX1">
          <property role="TrG5h" value="id" />
          <node concept="3z7flk" id="3fVLq_OhRQT" role="2MsIvT">
            <ref role="3z7fl9" node="3GrpC3f11cG" resolve="UUID" />
          </node>
        </node>
      </node>
      <node concept="2SzCHR" id="6ERg2SCOr6" role="1_M6Ub">
        <node concept="2SzCHM" id="6ERg2SCOrc" role="2SzCHO">
          <ref role="2SzCHN" node="3fVLq_K3PwS" />
        </node>
      </node>
      <node concept="3z7fiZ" id="7IRUqbcjRlX" role="1_M3ad">
        <ref role="3z7fiY" node="4p0keayCEP$" resolve="CustomDto" />
      </node>
    </node>
    <node concept="MqJ36" id="3PtG$LHZTPM" role="1_u1bB" />
    <node concept="MqJ36" id="3PtG$LHZTUk" role="1_u1bB" />
  </node>
  <node concept="OQVI_" id="4yUYSn0mF52">
    <property role="TrG5h" value="OtherBoundedContext" />
    <node concept="MqJ36" id="4yUYSn0mF53" role="1_u1bB" />
    <node concept="RP7j2" id="4yUYSn0oumU" role="1_u1bB">
      <property role="TrG5h" value="OtherContextTestQuery" />
      <node concept="1_u7Hc" id="4yUYSn0oun0" role="egko0" />
    </node>
  </node>
  <node concept="OQVI_" id="1aRcFPNzJeF">
    <property role="TrG5h" value="ExampleContext" />
    <node concept="3OU2hH" id="4Bg9wDF_Lb7" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_L5I" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_L8q" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_KHF" role="1_u1bB" />
    <node concept="1_u7HK" id="4Bg9wDF_KYJ" role="1_u1bB">
      <property role="TrG5h" value="Test" />
      <node concept="MqJ36" id="4Bg9wDF_L1v" role="RQjAV" />
      <node concept="KdzYP" id="4Bg9wDF_L2b" role="RQjAV">
        <property role="TrG5h" value="nameList" />
        <node concept="1_v10K" id="4Bg9wDF_L2n" role="2MsIvT">
          <node concept="1_u7Hc" id="4Bg9wDF_L2s" role="3nUEa_" />
        </node>
      </node>
      <node concept="KdzYP" id="4Bg9wDF_L2E" role="RQjAV">
        <property role="TrG5h" value="nameCountMap" />
        <node concept="AxC$4" id="4Bg9wDF_L2T" role="2MsIvT">
          <node concept="1_u7Hc" id="4Bg9wDF_L30" role="AxC$1" />
          <node concept="1_u7Hb" id="4Bg9wDF_L32" role="AxC$3" />
        </node>
      </node>
      <node concept="MqJ36" id="4Bg9wDF_L22" role="RQjAV" />
      <node concept="MqJ36" id="4Bg9wDF_L1$" role="RQjAV" />
      <node concept="MqJ36" id="4Bg9wDF_L1C" role="RQjAV" />
      <node concept="MqJ36" id="4Bg9wDF_L1H" role="RQjAV" />
      <node concept="MqJ36" id="4Bg9wDF_L1N" role="RQjAV" />
      <node concept="MqJ36" id="4Bg9wDF_L1U" role="RQjAV" />
      <node concept="K42O2" id="4Bg9wDF_KYK" role="2Rymm4">
        <property role="TrG5h" value="id" />
        <node concept="2RCapa" id="4Bg9wDF_KYM" role="2MsIvT" />
      </node>
      <node concept="3z7fl3" id="4Bg9wDF_L1s" role="1_u7GJ">
        <ref role="3z7fl2" node="7a9d0UAvJwR" resolve="UserId" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDF_KYQ" role="1_u1bB" />
    <node concept="RMZWp" id="4Bg9wDF_KYP" role="1_u1bB">
      <node concept="3z7flb" id="4Bg9wDF_KYO" role="3cf3Jw">
        <ref role="3z7fla" node="4Bg9wDF_KYJ" resolve="Test" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDF_KMu" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_KOT" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_KRl" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_KTM" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_KWg" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFlxwq" role="1_u1bB" />
    <node concept="3z7fle" id="4Bg9wDFlxJp" role="1_u1bB">
      <property role="TrG5h" value="Currency" />
      <node concept="K42O2" id="4Bg9wDFlxJq" role="PLbX1">
        <property role="TrG5h" value="name" />
        <node concept="1_u7Hc" id="4Bg9wDFlxLC" role="2MsIvT" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDF_LwD" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_LyV" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_L_e" role="1_u1bB" />
    <node concept="3z7eu8" id="4Bg9wDF_LDR" role="1_u1bB">
      <property role="TrG5h" value="AbstractList" />
      <node concept="3z7flq" id="4Bg9wDF_LDT" role="RZ9fn">
        <property role="TrG5h" value="java" />
      </node>
      <node concept="3z7flq" id="4Bg9wDF_LGg" role="RZ9fn">
        <property role="TrG5h" value="util" />
      </node>
      <node concept="1kRELD" id="4Bg9wDF_LGk" role="1kRCL0">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3z7fle" id="4Bg9wDFlxNT" role="1_u1bB">
      <property role="TrG5h" value="Money" />
      <node concept="K42O2" id="4Bg9wDFlxNU" role="PLbX1">
        <property role="TrG5h" value="amount" />
        <node concept="1_u7H2" id="4Bg9wDFlxQb" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="4Bg9wDFlxQd" role="PLbX1">
        <property role="TrG5h" value="currency" />
        <node concept="3z7fl3" id="4Bg9wDFlxQj" role="2MsIvT">
          <ref role="3z7fl2" node="4Bg9wDFlxJp" resolve="Currency" />
        </node>
      </node>
      <node concept="Kaw7S" id="4Bg9wDFlxQp" role="P9vUL">
        <property role="TrG5h" value="plus" />
        <node concept="K42O2" id="4Bg9wDFlxQs" role="PLbX1">
          <property role="TrG5h" value="other" />
          <node concept="3z7fl3" id="4Bg9wDFlxQw" role="2MsIvT">
            <ref role="3z7fl2" node="4Bg9wDFlxNT" resolve="Money" />
          </node>
        </node>
        <node concept="2KwnKc" id="4Bg9wDFlxQ$" role="RQCaj">
          <node concept="3z7fl3" id="4Bg9wDFlxQA" role="2KwnKd">
            <ref role="3z7fl2" node="4Bg9wDFlxNT" resolve="Money" />
          </node>
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFlxyw" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFlx$B" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFlxAJ" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFlxCS" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFlxF2" role="1_u1bB" />
    <node concept="3z7fle" id="7a9d0UAvJwR" role="1_u1bB">
      <property role="TrG5h" value="UserId" />
      <node concept="K42O2" id="7a9d0UAvJxg" role="PLbX1">
        <property role="TrG5h" value="id" />
        <node concept="3XHxNk" id="7a9d0UAvJxq" role="2MsIvT">
          <node concept="3uibUv" id="7a9d0UAvJxw" role="3XHxNj">
            <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
          </node>
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDF_LdP" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_Lgz" role="1_u1bB" />
    <node concept="1_u7HK" id="7a9d0UAvJw6" role="1_u1bB">
      <property role="TrG5h" value="User" />
      <node concept="K42O2" id="7a9d0UAvJw7" role="2Rymm4">
        <property role="TrG5h" value="id" />
        <node concept="2RCapa" id="7a9d0UAvJw9" role="2MsIvT" />
      </node>
      <node concept="KdzYP" id="4Bg9wDF_LpP" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="userName" />
        <node concept="1_u7Hc" id="4Bg9wDF_LpR" role="2MsIvT" />
      </node>
      <node concept="KdzYP" id="2qn8C8ElCUy" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="dateOfBirth" />
        <node concept="3XHxNk" id="2qn8C8ElCUA" role="2MsIvT">
          <node concept="3uibUv" id="2qn8C8ElD1m" role="3XHxNj">
            <ref role="3uigEE" to="33ny:~Date" resolve="Date" />
          </node>
        </node>
      </node>
      <node concept="KdzYP" id="2qn8C8ElD1z" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="address" />
        <node concept="3z7fl3" id="2qn8C8ElD1E" role="2MsIvT">
          <ref role="3z7fl2" node="7a9d0UAvK4a" resolve="Address" />
        </node>
      </node>
      <node concept="1_u7Hc" id="4Bg9wDGG8Tp" role="1_u7GJ" />
    </node>
    <node concept="MqJ36" id="4Bg9wDFeiqE" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_LpT" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_Ls8" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_Luo" role="1_u1bB" />
    <node concept="RMZWp" id="4Bg9wDFeiqD" role="1_u1bB">
      <property role="pU0L2" value="3VGLvhFnWdB/EventHandler" />
      <node concept="3z7flb" id="4Bg9wDFeiqC" role="3cf3Jw">
        <ref role="3z7fla" node="7a9d0UAvJw6" resolve="User" />
      </node>
    </node>
    <node concept="MqJ36" id="7a9d0UAvJwd" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJKK" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJOO" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJLi" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJLP" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJMp" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJye" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJ$D" role="1_u1bB" />
    <node concept="3z7fle" id="7a9d0UAvK4a" role="1_u1bB">
      <property role="TrG5h" value="Address" />
      <property role="3yB1vD" value="true" />
      <node concept="K42O2" id="7a9d0UAvK5l" role="PLbX1">
        <property role="TrG5h" value="city" />
        <node concept="1_u7Hc" id="7a9d0UAvK5m" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="7a9d0UAvK5n" role="PLbX1">
        <property role="TrG5h" value="postalCode" />
        <node concept="1_u7Hb" id="7a9d0UAvK5o" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="7a9d0UAvK5p" role="PLbX1">
        <property role="TrG5h" value="street" />
        <node concept="1_u7Hc" id="7a9d0UAvK5q" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="7a9d0UAvK5r" role="PLbX1">
        <property role="TrG5h" value="houseNumber" />
        <node concept="1_u7Hc" id="7a9d0UAvK5s" role="2MsIvT" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDF92oY" role="1_u1bB" />
    <node concept="3z7fiU" id="4Bg9wDF92oW" role="1_u1bB">
      <property role="2_GMbx" value="true" />
      <property role="TrG5h" value="AddressDto" />
      <node concept="3z7fl3" id="4Bg9wDF92oX" role="2$Dkcs">
        <ref role="3z7fl2" node="7a9d0UAvK4a" resolve="Address" />
      </node>
    </node>
    <node concept="MqJ36" id="7a9d0UAvK32" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFeiuF" role="1_u1bB" />
    <node concept="2LyaNC" id="4Bg9wDFeiwG" role="1_u1bB">
      <node concept="2beALZ" id="4Bg9wDFeixI" role="2LyaNF">
        <node concept="3XHxNk" id="4Bg9wDFeixK" role="2LB_Ge">
          <node concept="3uibUv" id="4Bg9wDFeixO" role="3XHxNj">
            <ref role="3uigEE" to="33ny:~Date" resolve="Date" />
          </node>
        </node>
        <node concept="1_u7Hc" id="4Bg9wDFeixR" role="2LB_GK" />
      </node>
      <node concept="2beALZ" id="4Bg9wDFeixZ" role="2LyaNF">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <property role="dkuiM" value="3L7_qKKKeKn/Partial" />
        <node concept="3XHxNk" id="4Bg9wDFeiy5" role="2LB_Ge">
          <node concept="3uibUv" id="4Bg9wDFeiy9" role="3XHxNj">
            <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
          </node>
        </node>
        <node concept="1_u7Hc" id="4Bg9wDFeiyc" role="2LB_GK" />
      </node>
    </node>
    <node concept="MqJ36" id="2qn8C8ElD1G" role="1_u1bB" />
    <node concept="MqJ36" id="2qn8C8ElD4a" role="1_u1bB" />
    <node concept="2_JijP" id="4Bg9wDF92r2" role="1_u1bB">
      <node concept="2beALY" id="4Bg9wDF92s5" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDF92s9" role="2$Dkcs">
          <ref role="3z7fl2" node="7a9d0UAvK4a" resolve="Address" />
        </node>
      </node>
      <node concept="2beALY" id="4Bg9wDFeijM" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDFeijS" role="2$Dkcs">
          <ref role="3z7fl2" node="7a9d0UAvJwR" resolve="UserId" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="2qn8C8ElD6D" role="1_u1bB" />
    <node concept="3z7fiU" id="7a9d0UAvJJb" role="1_u1bB">
      <property role="TrG5h" value="UserDto" />
      <property role="2_GMbx" value="true" />
      <property role="2$Dkcg" value="true" />
      <node concept="3z7flb" id="7a9d0UAvK5S" role="2$Dkcs">
        <ref role="3z7fla" node="7a9d0UAvJw6" resolve="User" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFellb" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFelmm" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFelpX" role="1_u1bB" />
    <node concept="MqJ36" id="2qn8C8ElDlS" role="1_u1bB" />
    <node concept="MqJ36" id="2qn8C8ElDou" role="1_u1bB" />
    <node concept="MqJ36" id="2qn8C8ElDr5" role="1_u1bB" />
    <node concept="MqJ36" id="2qn8C8ElDtH" role="1_u1bB" />
    <node concept="MqJ36" id="2qn8C8ElDwm" role="1_u1bB" />
    <node concept="MqJ36" id="2qn8C8ElDz0" role="1_u1bB" />
    <node concept="MqJ36" id="2qn8C8ElD_F" role="1_u1bB" />
    <node concept="MqJ36" id="2qn8C8ElDCn" role="1_u1bB" />
    <node concept="MqJ36" id="2qn8C8ElDF4" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFelrc" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFelss" role="1_u1bB" />
    <node concept="RP7j2" id="4Bg9wDFeltH" role="1_u1bB">
      <property role="TrG5h" value="GetUserById" />
      <node concept="3z7fiZ" id="4Bg9wDFelv6" role="egko0">
        <ref role="3z7fiY" node="7a9d0UAvJJb" resolve="UserDto" />
      </node>
      <node concept="K42O2" id="4Bg9wDFelv2" role="PLbX1">
        <property role="TrG5h" value="id" />
        <node concept="1_u7Hc" id="4Bg9wDFelv4" role="2MsIvT" />
      </node>
    </node>
    <node concept="ej62d" id="4Bg9wDFelxO" role="1_u1bB">
      <property role="1_KExD" value="1WhJCpUOLrC/QueryHandler" />
      <node concept="2Ka3i" id="4Bg9wDFelxP" role="vMNbD">
        <property role="TrG5h" value="UserQueryHandler" />
      </node>
      <node concept="RP7j2" id="4Bg9wDFel_P" role="ej5XD">
        <property role="TrG5h" value="GetUserByName" />
        <node concept="3z7fiZ" id="4Bg9wDFel_Y" role="egko0">
          <ref role="3z7fiY" node="7a9d0UAvJJb" resolve="UserDto" />
        </node>
        <node concept="K42O2" id="4Bg9wDFel_U" role="PLbX1">
          <property role="TrG5h" value="name" />
          <node concept="1_u7Hc" id="4Bg9wDFel_W" role="2MsIvT" />
        </node>
      </node>
    </node>
    <node concept="1_DyxT" id="4Bg9wDFella" role="1_u1bB">
      <node concept="3z7fiZ" id="4Bg9wDFell9" role="1_M3ad">
        <ref role="3z7fiY" node="7a9d0UAvJJb" resolve="UserDto" />
      </node>
      <node concept="Kaw7S" id="4Bg9wDFelA1" role="1_M6Ub">
        <property role="TrG5h" value="getAllUsers" />
        <node concept="2KwnKc" id="4Bg9wDFelA4" role="RQCaj">
          <node concept="1_v10K" id="4Bg9wDFelA6" role="2KwnKd">
            <node concept="3z7fiZ" id="4Bg9wDFelAa" role="3nUEa_">
              <ref role="3z7fiY" node="7a9d0UAvJJb" resolve="UserDto" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1_V5SL" id="4Bg9wDFelAj" role="1_M6Ub">
        <node concept="RP7j1" id="4Bg9wDFelAq" role="1_V5SY">
          <ref role="RP7je" node="4Bg9wDFeltH" resolve="GetUserById" />
        </node>
      </node>
      <node concept="2SzCHR" id="4Bg9wDFelA$" role="1_M6Ub">
        <node concept="2SzCHM" id="4Bg9wDFelAH" role="2SzCHO">
          <ref role="2SzCHN" node="4Bg9wDFelxO" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFeitE" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFelCU" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJQH" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJJI" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJWz" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJXv" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvK9F" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvKaB" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFeil6" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFeimj" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvKb$" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJYs" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJHq" role="1_u1bB" />
    <node concept="MqJ36" id="7a9d0UAvJHK" role="1_u1bB" />
  </node>
  <node concept="OQVI_" id="4Bg9wDFnGKu">
    <property role="TrG5h" value="Catalog" />
    <node concept="MqJ36" id="4Bg9wDFnGVg" role="1_u1bB" />
    <node concept="3OU2hH" id="4Bg9wDGJpkY" role="1_u1bB">
      <node concept="3$Y7LN" id="4Bg9wDGJpp_" role="3$Y7Kb">
        <node concept="1WrPz4" id="4Bg9wDGJppB" role="1WrOfc">
          <property role="1WiA4H" value="true" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDGHRr5" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDGJpT2" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDGJpXw" role="1_u1bB" />
    <node concept="3z7fle" id="4Bg9wDFnGKv" role="1_u1bB">
      <property role="TrG5h" value="BookId" />
      <node concept="K42O2" id="4Bg9wDFnGKw" role="PLbX1">
        <property role="TrG5h" value="bookId" />
        <node concept="3XHxNk" id="4Bg9wDFnGKB" role="2MsIvT">
          <node concept="3uibUv" id="4Bg9wDFnGKF" role="3XHxNj">
            <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3z7fle" id="4Bg9wDFnGKP" role="1_u1bB">
      <property role="TrG5h" value="Signature" />
      <node concept="K42O2" id="4Bg9wDFnGKQ" role="PLbX1">
        <property role="TrG5h" value="signature" />
        <node concept="1_u7Hc" id="4Bg9wDFnGKZ" role="2MsIvT" />
      </node>
    </node>
    <node concept="3z7fle" id="4Bg9wDFnGLb" role="1_u1bB">
      <property role="TrG5h" value="CampusId" />
      <node concept="K42O2" id="4Bg9wDFnGLc" role="PLbX1">
        <property role="TrG5h" value="campusId" />
        <node concept="3XHxNk" id="4Bg9wDFnGLG" role="2MsIvT">
          <node concept="3uibUv" id="4Bg9wDFnGLK" role="3XHxNj">
            <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3z7fle" id="4Bg9wDFnGM1" role="1_u1bB">
      <property role="TrG5h" value="CampusLocation" />
      <node concept="K42O2" id="4Bg9wDFnGM2" role="PLbX1">
        <property role="TrG5h" value="loacation" />
        <node concept="1_u7Hc" id="4Bg9wDFnGMi" role="2MsIvT" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnGT5" role="1_u1bB" />
    <node concept="3z7fle" id="4Bg9wDFnGMZ" role="1_u1bB">
      <property role="TrG5h" value="MetadataId" />
      <node concept="K42O2" id="4Bg9wDFnGN0" role="PLbX1">
        <property role="TrG5h" value="metadataId" />
        <node concept="3XHxNk" id="4Bg9wDFnGNk" role="2MsIvT">
          <node concept="3uibUv" id="4Bg9wDFnGNo" role="3XHxNj">
            <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3z7fle" id="4Bg9wDFnGNL" role="1_u1bB">
      <property role="TrG5h" value="ISBN" />
      <node concept="K42O2" id="4Bg9wDFnGNM" role="PLbX1">
        <property role="TrG5h" value="isbn" />
        <node concept="1_u7Hc" id="4Bg9wDFnGOa" role="2MsIvT" />
      </node>
    </node>
    <node concept="3z7fle" id="4Bg9wDFnGO_" role="1_u1bB">
      <property role="TrG5h" value="Author" />
      <node concept="K42O2" id="4Bg9wDFnGOA" role="PLbX1">
        <property role="TrG5h" value="fullName" />
        <node concept="1_u7Hc" id="4Bg9wDFnGP1" role="2MsIvT" />
      </node>
    </node>
    <node concept="3z7fle" id="4Bg9wDFnGPv" role="1_u1bB">
      <property role="TrG5h" value="Title" />
      <node concept="K42O2" id="4Bg9wDFnGPw" role="PLbX1">
        <property role="TrG5h" value="title" />
        <node concept="1_u7Hc" id="4Bg9wDFnGPY" role="2MsIvT" />
      </node>
    </node>
    <node concept="3z7fle" id="4Bg9wDFnGQv" role="1_u1bB">
      <property role="TrG5h" value="Publisher" />
      <node concept="K42O2" id="4Bg9wDFnGQw" role="PLbX1">
        <property role="TrG5h" value="name" />
        <node concept="1_u7Hc" id="4Bg9wDFnGR1" role="2MsIvT" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnGTB" role="1_u1bB" />
    <node concept="1_u7HK" id="4Bg9wDFnH4z" role="1_u1bB">
      <property role="TrG5h" value="Book" />
      <node concept="K42O2" id="4Bg9wDFnH4$" role="2Rymm4">
        <property role="TrG5h" value="id" />
        <node concept="2RCapa" id="4Bg9wDFnH4A" role="2MsIvT" />
      </node>
      <node concept="KdzYP" id="4Bg9wDFnHlh" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="metadataId" />
        <node concept="3z7fl3" id="4Bg9wDFnHlj" role="2MsIvT">
          <ref role="3z7fl2" node="4Bg9wDFnGMZ" resolve="MetadataId" />
        </node>
      </node>
      <node concept="KdzYP" id="4Bg9wDFnHls" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="campusId" />
        <node concept="3z7fl3" id="4Bg9wDFnHlw" role="2MsIvT">
          <ref role="3z7fl2" node="4Bg9wDFnGLb" resolve="CampusId" />
        </node>
      </node>
      <node concept="KdzYP" id="4Bg9wDFnHlF" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="signature" />
        <node concept="3z7fl3" id="4Bg9wDFnHlL" role="2MsIvT">
          <ref role="3z7fl2" node="4Bg9wDFnGKP" resolve="Signature" />
        </node>
      </node>
      <node concept="Kaw7S" id="4Bg9wDFnIzT" role="RQjAV">
        <property role="TrG5h" value="execute" />
        <node concept="K42O2" id="4Bg9wDFnI$3" role="PLbX1">
          <property role="TrG5h" value="command" />
          <node concept="RP7j7" id="4Bg9wDFsnKS" role="2MsIvT">
            <ref role="RP7j4" node="4Bg9wDFnHZf" resolve="UpdateBookSignature" />
          </node>
        </node>
      </node>
      <node concept="1_u7Hc" id="4Bg9wDGG86g" role="1_u7GJ" />
    </node>
    <node concept="1_u7HK" id="4Bg9wDFnHe1" role="1_u1bB">
      <property role="TrG5h" value="Campus" />
      <node concept="K42O2" id="4Bg9wDFnHe2" role="2Rymm4">
        <property role="TrG5h" value="id" />
        <node concept="2RCapa" id="4Bg9wDFnHe4" role="2MsIvT" />
      </node>
      <node concept="KdzYP" id="4Bg9wDFnHlP" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="campusLocation" />
        <node concept="3z7fl3" id="4Bg9wDFnHlR" role="2MsIvT">
          <ref role="3z7fl2" node="4Bg9wDFnGM1" resolve="CampusLocation" />
        </node>
      </node>
      <node concept="1_u7Hc" id="4Bg9wDGG86e" role="1_u7GJ" />
    </node>
    <node concept="1_u7HK" id="4Bg9wDFnHjO" role="1_u1bB">
      <property role="TrG5h" value="Metadata" />
      <node concept="K42O2" id="4Bg9wDFnHjP" role="2Rymm4">
        <property role="TrG5h" value="id" />
        <node concept="2RCapa" id="4Bg9wDFnHjR" role="2MsIvT" />
      </node>
      <node concept="1_u7Hc" id="4Bg9wDGG86c" role="1_u7GJ" />
      <node concept="KdzYP" id="4Bg9wDFnHlV" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="title" />
        <node concept="3z7fl3" id="4Bg9wDFnHlX" role="2MsIvT">
          <ref role="3z7fl2" node="4Bg9wDFnGPv" resolve="Title" />
        </node>
      </node>
      <node concept="KdzYP" id="4Bg9wDFnHm6" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="author" />
        <node concept="3z7fl3" id="4Bg9wDFnHma" role="2MsIvT">
          <ref role="3z7fl2" node="4Bg9wDFnGO_" resolve="Author" />
        </node>
      </node>
      <node concept="KdzYP" id="4Bg9wDFnHpv" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="isbn" />
        <node concept="3z7fl3" id="4Bg9wDFnHpB" role="2MsIvT">
          <ref role="3z7fl2" node="4Bg9wDFnGNL" resolve="ISBN" />
        </node>
      </node>
      <node concept="KdzYP" id="4Bg9wDFnHml" role="RQjAV">
        <property role="epk1q" value="true" />
        <property role="TrG5h" value="publisher" />
        <node concept="3z7fl3" id="4Bg9wDFnHmr" role="2MsIvT">
          <ref role="3z7fl2" node="4Bg9wDFnGQv" resolve="Publisher" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnHjV" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFnHr4" role="1_u1bB" />
    <node concept="RMZWp" id="4Bg9wDFnH4D" role="1_u1bB">
      <node concept="3z7flb" id="4Bg9wDFnH4C" role="3cf3Jw">
        <ref role="3z7fla" node="4Bg9wDFnH4z" resolve="Book" />
      </node>
      <node concept="RP7iY" id="4Bg9wDFnHDz" role="RMZW$">
        <property role="TrG5h" value="BookAddedToCatalogue" />
        <property role="3yB1vD" value="true" />
        <node concept="K42O2" id="4Bg9wDFnHD_" role="PLbX1">
          <property role="TrG5h" value="bookId" />
          <node concept="3XHxNk" id="4Bg9wDFnHDD" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHDJ" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHDM" role="PLbX1">
          <property role="TrG5h" value="metadataId" />
          <node concept="3XHxNk" id="4Bg9wDFnHDT" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHDZ" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHE2" role="PLbX1">
          <property role="TrG5h" value="campusId" />
          <node concept="3XHxNk" id="4Bg9wDFnHEc" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHEi" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHEl" role="PLbX1">
          <property role="TrG5h" value="signature" />
          <node concept="1_u7Hc" id="4Bg9wDFnHEy" role="2MsIvT" />
        </node>
      </node>
      <node concept="RP7iY" id="4Bg9wDFnHE$" role="RMZW$">
        <property role="TrG5h" value="BookSignatureUpdated" />
        <property role="3yB1vD" value="true" />
        <node concept="K42O2" id="4Bg9wDFnHE_" role="PLbX1">
          <property role="TrG5h" value="bookId" />
          <node concept="3XHxNk" id="4Bg9wDFnHEA" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHEB" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHEC" role="PLbX1">
          <property role="TrG5h" value="campusId" />
          <node concept="3XHxNk" id="4Bg9wDFnHED" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHEE" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHF8" role="PLbX1">
          <property role="TrG5h" value="oldSignature" />
          <node concept="1_u7Hc" id="4Bg9wDFnHF9" role="2MsIvT" />
        </node>
        <node concept="K42O2" id="4Bg9wDFnHEI" role="PLbX1">
          <property role="TrG5h" value="newSignature" />
          <node concept="1_u7Hc" id="4Bg9wDFnHEJ" role="2MsIvT" />
        </node>
      </node>
    </node>
    <node concept="RMZWp" id="4Bg9wDFnHjU" role="1_u1bB">
      <node concept="3z7flb" id="4Bg9wDFnHjT" role="3cf3Jw">
        <ref role="3z7fla" node="4Bg9wDFnHjO" resolve="Metadata" />
      </node>
      <node concept="RP7iY" id="4Bg9wDFnHFk" role="RMZW$">
        <property role="TrG5h" value="CampusOpened" />
        <property role="3yB1vD" value="true" />
        <node concept="K42O2" id="4Bg9wDFnHFm" role="PLbX1">
          <property role="TrG5h" value="campusId" />
          <node concept="3XHxNk" id="4Bg9wDFnHFq" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHFw" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHFz" role="PLbX1">
          <property role="TrG5h" value="campusLocation" />
          <node concept="1_u7Hc" id="4Bg9wDFnHFE" role="2MsIvT" />
        </node>
      </node>
    </node>
    <node concept="RMZWp" id="4Bg9wDFnHe7" role="1_u1bB">
      <node concept="3z7flb" id="4Bg9wDFnHe6" role="3cf3Jw">
        <ref role="3z7fla" node="4Bg9wDFnHe1" resolve="Campus" />
      </node>
      <node concept="RP7iY" id="4Bg9wDFnHFG" role="RMZW$">
        <property role="TrG5h" value="MetadataAdded" />
        <property role="3yB1vD" value="true" />
        <node concept="K42O2" id="4Bg9wDFnHFI" role="PLbX1">
          <property role="TrG5h" value="metadataId" />
          <node concept="3XHxNk" id="4Bg9wDFnHFM" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHFS" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHFV" role="PLbX1">
          <property role="TrG5h" value="title" />
          <node concept="1_u7Hc" id="4Bg9wDFnHG2" role="2MsIvT" />
        </node>
        <node concept="K42O2" id="4Bg9wDFnHG4" role="PLbX1">
          <property role="TrG5h" value="authorName" />
          <node concept="1_u7Hc" id="4Bg9wDFnHGd" role="2MsIvT" />
        </node>
        <node concept="K42O2" id="4Bg9wDFnHGf" role="PLbX1">
          <property role="TrG5h" value="isbn" />
          <node concept="1_u7Hc" id="4Bg9wDFnHGB" role="2MsIvT" />
        </node>
        <node concept="K42O2" id="4Bg9wDFnHGq" role="PLbX1">
          <property role="TrG5h" value="publisher" />
          <node concept="1_u7Hc" id="4Bg9wDFnHGD" role="2MsIvT" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnH6q" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFnHAE" role="1_u1bB" />
    <node concept="1mYi2z" id="4Bg9wDFnHKP" role="1_u1bB">
      <property role="2KOiV9" value="true" />
      <node concept="3z7flb" id="4Bg9wDFnHMY" role="Kdc70">
        <ref role="3z7fla" node="4Bg9wDFnH4z" resolve="Book" />
      </node>
      <node concept="RP7iS" id="4Bg9wDFnHXZ" role="1mYi2I">
        <property role="TrG5h" value="AddBook" />
        <property role="3yB1vD" value="true" />
        <node concept="K42O2" id="4Bg9wDFnHY2" role="PLbX1">
          <property role="TrG5h" value="bookId" />
          <node concept="3XHxNk" id="4Bg9wDFnHY6" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHYc" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHYf" role="PLbX1">
          <property role="TrG5h" value="metadataId" />
          <node concept="3XHxNk" id="4Bg9wDFnHYm" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHYs" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHYv" role="PLbX1">
          <property role="TrG5h" value="campusId" />
          <node concept="3XHxNk" id="4Bg9wDFnHYD" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHYJ" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHYM" role="PLbX1">
          <property role="TrG5h" value="signature" />
          <node concept="1_u7Hc" id="4Bg9wDFnHYZ" role="2MsIvT" />
        </node>
      </node>
      <node concept="RP7iS" id="4Bg9wDFnHZf" role="1mYi2I">
        <property role="TrG5h" value="UpdateBookSignature" />
        <property role="3yB1vD" value="true" />
        <node concept="K42O2" id="4Bg9wDFnHZu" role="PLbX1">
          <property role="TrG5h" value="bookId" />
          <node concept="3XHxNk" id="4Bg9wDFnHZy" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnHZC" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnHZF" role="PLbX1">
          <property role="TrG5h" value="newSignature" />
          <node concept="1_u7Hc" id="4Bg9wDFnHZM" role="2MsIvT" />
        </node>
      </node>
    </node>
    <node concept="1mYi2z" id="4Bg9wDFnHN0" role="1_u1bB">
      <property role="2KOiV9" value="true" />
      <node concept="3z7flb" id="4Bg9wDFnHN1" role="Kdc70">
        <ref role="3z7fla" node="4Bg9wDFnHe1" resolve="Campus" />
      </node>
      <node concept="RP7iS" id="4Bg9wDFnHZO" role="1mYi2I">
        <property role="TrG5h" value="CreateCampus" />
        <property role="3yB1vD" value="true" />
        <node concept="K42O2" id="4Bg9wDFnHZQ" role="PLbX1">
          <property role="TrG5h" value="campusId" />
          <node concept="3XHxNk" id="4Bg9wDFnHZU" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnI00" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnI03" role="PLbX1">
          <property role="TrG5h" value="campusLocation" />
          <node concept="1_u7Hc" id="4Bg9wDFnI0a" role="2MsIvT" />
        </node>
      </node>
    </node>
    <node concept="1mYi2z" id="4Bg9wDFnHRk" role="1_u1bB">
      <property role="2KOiV9" value="true" />
      <node concept="3z7flb" id="4Bg9wDFnHRl" role="Kdc70">
        <ref role="3z7fla" node="4Bg9wDFnHjO" resolve="Metadata" />
      </node>
      <node concept="RP7iS" id="4Bg9wDFnI0c" role="1mYi2I">
        <property role="TrG5h" value="AddMetadata" />
        <property role="3yB1vD" value="true" />
        <node concept="K42O2" id="4Bg9wDFnI0e" role="PLbX1">
          <property role="TrG5h" value="metadataId" />
          <node concept="3XHxNk" id="4Bg9wDFnI0i" role="2MsIvT">
            <node concept="3uibUv" id="4Bg9wDFnI0o" role="3XHxNj">
              <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
            </node>
          </node>
        </node>
        <node concept="K42O2" id="4Bg9wDFnI0r" role="PLbX1">
          <property role="TrG5h" value="title" />
          <node concept="1_u7Hc" id="4Bg9wDFnI0y" role="2MsIvT" />
        </node>
        <node concept="K42O2" id="4Bg9wDFnI0$" role="PLbX1">
          <property role="TrG5h" value="authorName" />
          <node concept="1_u7Hc" id="4Bg9wDFnI0H" role="2MsIvT" />
        </node>
        <node concept="K42O2" id="4Bg9wDFnI0J" role="PLbX1">
          <property role="TrG5h" value="isbn" />
          <node concept="1_u7Hc" id="4Bg9wDFnI0U" role="2MsIvT" />
        </node>
        <node concept="K42O2" id="4Bg9wDFnI0W" role="PLbX1">
          <property role="TrG5h" value="publisher" />
          <node concept="1_u7Hc" id="4Bg9wDFnI19" role="2MsIvT" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnHPa" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFnHC6" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFnH98" role="1_u1bB" />
    <node concept="3z7fiU" id="4Bg9wDFsnKX" role="1_u1bB">
      <property role="TrG5h" value="BookDocument" />
      <property role="3yB1vD" value="true" />
      <node concept="K42O2" id="4Bg9wDF_zte" role="PLbX1">
        <property role="TrG5h" value="bookId" />
        <node concept="1_u7Hc" id="4Bg9wDF_ztk" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="4Bg9wDF_ztm" role="PLbX1">
        <property role="TrG5h" value="metadataId" />
        <node concept="1_u7Hc" id="4Bg9wDF_ztu" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="4Bg9wDF_ztw" role="PLbX1">
        <property role="TrG5h" value="campusId" />
        <node concept="1_u7Hc" id="4Bg9wDF_ztE" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="4Bg9wDFsnO0" role="PLbX1">
        <property role="TrG5h" value="location" />
        <node concept="1_u7Hc" id="4Bg9wDFsnO2" role="2MsIvT" />
      </node>
      <node concept="K42O2" id="4Bg9wDF_zu0" role="PLbX1">
        <property role="TrG5h" value="signature" />
        <node concept="1_u7Hc" id="4Bg9wDF_zuc" role="2MsIvT" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnHb1" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_yKk" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_yNY" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_yRD" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_yVl" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_yZ2" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_z2K" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_z6v" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_zaf" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_ze0" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_zhM" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_zl_" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_zpp" role="1_u1bB" />
    <node concept="3z7fiU" id="4Bg9wDFsnRf" role="1_u1bB">
      <property role="TrG5h" value="BookCopy" />
      <property role="2_GMbx" value="true" />
      <property role="2$Dkcg" value="true" />
      <node concept="K42O2" id="4Bg9wDFsnUm" role="PLbX1">
        <property role="TrG5h" value="location" />
        <node concept="1_u7Hc" id="4Bg9wDFsnUo" role="2MsIvT" />
      </node>
      <node concept="3z7flb" id="4Bg9wDFwZyE" role="2$Dkcs">
        <ref role="3z7fla" node="4Bg9wDFnH4z" resolve="Book" />
      </node>
      <node concept="w3f$i" id="4Bg9wDF_yCW" role="2$Dkct">
        <ref role="w3f$t" node="4Bg9wDFnGN0" resolve="metadataId" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnH4E" role="1_u1bB" />
    <node concept="3z7fiU" id="4Bg9wDF_yoj" role="1_u1bB">
      <property role="TrG5h" value="MetadataDocument" />
      <property role="2_GMbx" value="true" />
      <node concept="K42O2" id="4Bg9wDF_yrx" role="PLbX1">
        <property role="TrG5h" value="copies" />
        <node concept="1_v10K" id="4Bg9wDF_yrz" role="2MsIvT">
          <node concept="3z7fiZ" id="4Bg9wDF_yrB" role="3nUEa_">
            <ref role="3z7fiY" node="4Bg9wDFsnRf" resolve="BookCopy" />
          </node>
        </node>
      </node>
      <node concept="3z7flb" id="4Bg9wDF_yrI" role="2$Dkcs">
        <ref role="3z7fla" node="4Bg9wDFnHjO" resolve="Metadata" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnHbZ" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDGHRG2" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDGHRKj" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDGHRO_" role="1_u1bB" />
    <node concept="3z7fiU" id="4Bg9wDF_yhQ" role="1_u1bB">
      <property role="TrG5h" value="CampusDocument" />
      <property role="2_GMbx" value="true" />
      <node concept="3z7flb" id="4Bg9wDF_yl5" role="2$Dkcs">
        <ref role="3z7fla" node="4Bg9wDFnHe1" resolve="Campus" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnGWp" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDF_yrK" role="1_u1bB" />
    <node concept="2_JijP" id="4Bg9wDF_yyj" role="1_u1bB">
      <node concept="2beALY" id="4Bg9wDF_y_A" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDF_y_E" role="2$Dkcs">
          <ref role="3z7fl2" node="4Bg9wDFnGMZ" resolve="MetadataId" />
        </node>
      </node>
      <node concept="2beALY" id="4Bg9wDF_y_K" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDF_y_Q" role="2$Dkcs">
          <ref role="3z7fl2" node="4Bg9wDFnGKv" resolve="BookId" />
        </node>
      </node>
      <node concept="2beALY" id="4Bg9wDF_y_Y" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDF_yA6" role="2$Dkcs">
          <ref role="3z7fl2" node="4Bg9wDFnGLb" resolve="CampusId" />
        </node>
      </node>
      <node concept="2beALY" id="4Bg9wDF_yAg" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDF_yAq" role="2$Dkcs">
          <ref role="3z7fl2" node="4Bg9wDFnGM1" resolve="CampusLocation" />
        </node>
      </node>
      <node concept="2beALY" id="4Bg9wDF_yAA" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDF_yAM" role="2$Dkcs">
          <ref role="3z7fl2" node="4Bg9wDFnGKP" resolve="Signature" />
        </node>
      </node>
      <node concept="2beALY" id="4Bg9wDF_yB0" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDF_yBe" role="2$Dkcs">
          <ref role="3z7fl2" node="4Bg9wDFnGPv" resolve="Title" />
        </node>
      </node>
      <node concept="2beALY" id="4Bg9wDF_yBu" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDF_yBI" role="2$Dkcs">
          <ref role="3z7fl2" node="4Bg9wDFnGO_" resolve="Author" />
        </node>
      </node>
      <node concept="2beALY" id="4Bg9wDF_yC0" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDF_yCi" role="2$Dkcs">
          <ref role="3z7fl2" node="4Bg9wDFnGNL" resolve="ISBN" />
        </node>
      </node>
      <node concept="2beALY" id="4Bg9wDF_yCA" role="22l3ne">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3z7fl3" id="4Bg9wDF_yCU" role="2$Dkcs">
          <ref role="3z7fl2" node="4Bg9wDFnGQv" resolve="Publisher" />
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnGWZ" role="1_u1bB" />
    <node concept="2LyaNC" id="4Bg9wDF_yGz" role="1_u1bB">
      <node concept="2beALZ" id="4Bg9wDF_yK9" role="2LyaNF">
        <property role="x$QPM" value="5QsWOhW3TSM/Implicit" />
        <node concept="3XHxNk" id="4Bg9wDF_yKb" role="2LB_Ge">
          <node concept="3uibUv" id="4Bg9wDF_yKf" role="3XHxNj">
            <ref role="3uigEE" to="33ny:~UUID" resolve="UUID" />
          </node>
        </node>
        <node concept="1_u7Hc" id="4Bg9wDF_yKi" role="2LB_GK" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnGXA" role="1_u1bB" />
    <node concept="3z7fiU" id="4Bg9wDGHSiY" role="1_u1bB">
      <property role="TrG5h" value="UserDto" />
      <node concept="K42O2" id="4Bg9wDGHSno" role="PLbX1">
        <property role="TrG5h" value="id" />
        <node concept="1_u7Hc" id="4Bg9wDGHSnq" role="2MsIvT" />
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDGHSaf" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDGHSeA" role="1_u1bB" />
    <node concept="ej62d" id="4Bg9wDGHS1x" role="1_u1bB">
      <node concept="RP7j2" id="4Bg9wDGHSnu" role="ej5XD">
        <property role="TrG5h" value="GetUserById" />
        <node concept="K42O2" id="4Bg9wDGHSnz" role="PLbX1">
          <property role="TrG5h" value="id" />
          <node concept="1_u7Hc" id="4Bg9wDGHSnB" role="2MsIvT" />
        </node>
        <node concept="3z7fiZ" id="4Bg9wDGHSnD" role="egko0">
          <ref role="3z7fiY" node="4Bg9wDGHSiY" resolve="UserDto" />
        </node>
      </node>
      <node concept="RP7j2" id="4Bg9wDGHSnM" role="ej5XD">
        <property role="TrG5h" value="GetUserByName" />
        <node concept="3z7fiZ" id="4Bg9wDGHSo0" role="egko0">
          <ref role="3z7fiY" node="4Bg9wDGHSiY" resolve="UserDto" />
        </node>
        <node concept="K42O2" id="4Bg9wDGHSnW" role="PLbX1">
          <property role="TrG5h" value="name" />
          <node concept="1_u7Hc" id="4Bg9wDGHSnY" role="2MsIvT" />
        </node>
      </node>
      <node concept="RP7j2" id="4Bg9wDGHSod" role="ej5XD">
        <property role="TrG5h" value="GetAllUsers" />
        <node concept="1_v10K" id="4Bg9wDGHSoq" role="egko0">
          <node concept="3z7fiZ" id="4Bg9wDGHSov" role="3nUEa_">
            <ref role="3z7fiY" node="4Bg9wDGHSiY" resolve="UserDto" />
          </node>
        </node>
      </node>
    </node>
    <node concept="MqJ36" id="4Bg9wDFnH2j" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFnH32" role="1_u1bB" />
    <node concept="MqJ36" id="4Bg9wDFnGUa" role="1_u1bB" />
  </node>
</model>

