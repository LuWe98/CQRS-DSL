package CQRS.structure;

/*Generated by MPS */

import jetbrains.mps.lang.smodel.LanguageConceptIndex;
import jetbrains.mps.lang.smodel.LanguageConceptIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public final class LanguageConceptSwitch {
  private final LanguageConceptIndex myIndex;
  public static final int AggregateRoot = 0;
  public static final int AggregateRootReference = 1;
  public static final int AggregateRootRepository = 2;
  public static final int AggregateRootRepositoryReference = 3;
  public static final int ArrayType = 4;
  public static final int BooleanType = 5;
  public static final int BoundedContext = 6;
  public static final int ByteType = 7;
  public static final int CharType = 8;
  public static final int Command = 9;
  public static final int CommandContainer = 10;
  public static final int CommandGenerationSettings = 11;
  public static final int CommandHandlingSetting = 12;
  public static final int CommandReference = 13;
  public static final int CommentLine = 14;
  public static final int DataTypeWrapper = 15;
  public static final int Description = 16;
  public static final int DescriptionLine = 17;
  public static final int DoubleType = 18;
  public static final int Dto = 19;
  public static final int DtoDataTypeRule = 20;
  public static final int DtoDataTypeRuleContainer = 21;
  public static final int DtoDataTypeRuleReference = 22;
  public static final int DtoDerivedVariableReference = 23;
  public static final int DtoFlatteningRule = 24;
  public static final int DtoFlatteningRuleContainer = 25;
  public static final int DtoFlatteningRuleReference = 26;
  public static final int DtoReference = 27;
  public static final int DtoRepository = 28;
  public static final int DtoRepositoryReference = 29;
  public static final int EmptyLine = 30;
  public static final int Entity = 31;
  public static final int EntityReference = 32;
  public static final int Event = 33;
  public static final int EventContainer = 34;
  public static final int EventContainerReference = 35;
  public static final int EventGenerationSettings = 36;
  public static final int EventHandlingSetting = 37;
  public static final int EventReference = 38;
  public static final int FloatType = 39;
  public static final int GenerationSettings = 40;
  public static final int GenericType = 41;
  public static final int IAggregateRootComponent = 42;
  public static final int IAggregateRootRepositoryComponent = 43;
  public static final int IBoundedContextComponent = 44;
  public static final int ICollectionType = 45;
  public static final int ICommandComponent = 46;
  public static final int ICommandContainerComponent = 47;
  public static final int ICommandGenerationSettingsComponent = 48;
  public static final int IComponentWithAggregateRootRepositoryReferences = 49;
  public static final int IComponentWithDtoRepositoryReferences = 50;
  public static final int IComponentWithNamePlaceholder = 51;
  public static final int IComponentWithParameters = 52;
  public static final int IComponentWithRepositoryReferences = 53;
  public static final int IComponentWithRequiredParameters = 54;
  public static final int IComponentWithToggleableKeyword = 55;
  public static final int IContainsComponentsWithToggleableKeywords = 56;
  public static final int IDataType = 57;
  public static final int IDtoComponent = 58;
  public static final int IDtoDataTypeRuleContainerComponent = 59;
  public static final int IDtoDerivable = 60;
  public static final int IDtoDerivableReference = 61;
  public static final int IDtoDerivation = 62;
  public static final int IDtoDerivationRule = 63;
  public static final int IDtoDerivationRuleContainer = 64;
  public static final int IDtoDerivationRuleReference = 65;
  public static final int IDtoFlatteningRuleContainerComponent = 66;
  public static final int IDtoRepositoryComponent = 67;
  public static final int IElementOfBoundedContext = 68;
  public static final int IEntityComponent = 69;
  public static final int IEventComponent = 70;
  public static final int IEventContainerComponent = 71;
  public static final int IEventGenerationSettingsComponent = 72;
  public static final int IGeneratorSettingsComponent = 73;
  public static final int IOptionalValidIdentifier = 74;
  public static final int IOptionalValidIdentifierWrapper = 75;
  public static final int IPrimitiveType = 76;
  public static final int IQueryComponent = 77;
  public static final int IQueryContainerComponent = 78;
  public static final int IQueryGenerationSettingsComponent = 79;
  public static final int IReferenceType = 80;
  public static final int IRepository = 81;
  public static final int IRepositoryReference = 82;
  public static final int IRepositorySubstitude = 83;
  public static final int IValueObjectComponent = 84;
  public static final int IVariable = 85;
  public static final int IVariableReference = 86;
  public static final int ImportPackage = 87;
  public static final int ImportStatement = 88;
  public static final int ImportedType = 89;
  public static final int IntegerType = 90;
  public static final int JavaDataType = 91;
  public static final int KotlinDataType = 92;
  public static final int ListType = 93;
  public static final int LongType = 94;
  public static final int MapType = 95;
  public static final int Method = 96;
  public static final int OutputPathPreference = 97;
  public static final int Parameter = 98;
  public static final int ParameterReference = 99;
  public static final int Property = 100;
  public static final int PropertyReference = 101;
  public static final int Query = 102;
  public static final int QueryContainer = 103;
  public static final int QueryContainerMethods = 104;
  public static final int QueryContainerReference = 105;
  public static final int QueryGenerationSettings = 106;
  public static final int QueryHandlingSetting = 107;
  public static final int QueryMethods = 108;
  public static final int QueryProcessingSetting = 109;
  public static final int QueryReference = 110;
  public static final int SetType = 111;
  public static final int ShortType = 112;
  public static final int StringType = 113;
  public static final int SubstitudeDataType = 114;
  public static final int ValueObject = 115;
  public static final int ValueObjectReference = 116;

  public LanguageConceptSwitch() {
    LanguageConceptIndexBuilder builder = new LanguageConceptIndexBuilder(0xfe04f903cef2451dL, 0x9401426cad0a8857L);
    builder.put(0x4cfae7e929829c99L, AggregateRoot);
    builder.put(0x4f0a0db9ac16f8f2L, AggregateRootReference);
    builder.put(0x73da5086441fb19dL, AggregateRootRepository);
    builder.put(0x593428614a1cdb1aL, AggregateRootRepositoryReference);
    builder.put(0x6375c6ceeba0da5bL, ArrayType);
    builder.put(0x4cfae7e929829cb4L, BooleanType);
    builder.put(0x49ba7df3e302f916L, BoundedContext);
    builder.put(0x4cfae7e929829cb7L, ByteType);
    builder.put(0x4cfae7e929829cbaL, CharType);
    builder.put(0x73da5086440e243eL, Command);
    builder.put(0x2a075c454595567L, CommandContainer);
    builder.put(0x6165532e2ee293bL, CommandGenerationSettings);
    builder.put(0x56a1ac122ac5a075L, CommandHandlingSetting);
    builder.put(0x73da5086440e2441L, CommandReference);
    builder.put(0x62cb964345d71a2L, CommentLine);
    builder.put(0x631212aed3936ea2L, DataTypeWrapper);
    builder.put(0x6165532e3d3397dL, Description);
    builder.put(0x6165532e34e22efL, DescriptionLine);
    builder.put(0x4cfae7e929829cabL, DoubleType);
    builder.put(0x4f0a0db9ac16f903L, Dto);
    builder.put(0x12da95fb99e0f984L, DtoDataTypeRule);
    builder.put(0x4c59e910fdd145f8L, DtoDataTypeRuleContainer);
    builder.put(0x78c544923a1c15a2L, DtoDataTypeRuleReference);
    builder.put(0x5d9cf3447d900a56L, DtoDerivedVariableReference);
    builder.put(0x12da95fb99e0f985L, DtoFlatteningRule);
    builder.put(0x3cfd70789940548dL, DtoFlatteningRuleContainer);
    builder.put(0x78c544923a1c15a0L, DtoFlatteningRuleReference);
    builder.put(0x4f0a0db9ac16f906L, DtoReference);
    builder.put(0x1f11be867ab796ffL, DtoRepository);
    builder.put(0x642187fedbd24164L, DtoRepositoryReference);
    builder.put(0x62cb964344649a2L, EmptyLine);
    builder.put(0x4f0a0db9ac16f8fdL, Entity);
    builder.put(0x4f0a0db9ac16f900L, EntityReference);
    builder.put(0x73da5086440e2438L, Event);
    builder.put(0x73da50864411af9fL, EventContainer);
    builder.put(0x54ffa6ce4d64aaaeL, EventContainerReference);
    builder.put(0x6165532e2ee293eL, EventGenerationSettings);
    builder.put(0x56a1ac122a7b6f0aL, EventHandlingSetting);
    builder.put(0x73da5086440e2439L, EventReference);
    builder.put(0x4cfae7e929829ca8L, FloatType);
    builder.put(0x58d666bf1654206L, GenerationSettings);
    builder.put(0x5e223a0a0afc9663L, GenericType);
    builder.put(0x2a075c45497102dL, IAggregateRootComponent);
    builder.put(0x75be8047bc84329eL, IAggregateRootRepositoryComponent);
    builder.put(0x6375c6ceebab8368L, IBoundedContextComponent);
    builder.put(0x4cfae7e929829cbdL, ICollectionType);
    builder.put(0x54ffa6ce4fee25caL, ICommandComponent);
    builder.put(0x75be8047bc81a103L, ICommandContainerComponent);
    builder.put(0x56a1ac122ac59249L, ICommandGenerationSettingsComponent);
    builder.put(0x4dea9f2b9de68ac3L, IComponentWithAggregateRootRepositoryReferences);
    builder.put(0x642187fedbd2416cL, IComponentWithDtoRepositoryReferences);
    builder.put(0x71e6ab661db3f2L, IComponentWithNamePlaceholder);
    builder.put(0x62cb96433e80624L, IComponentWithParameters);
    builder.put(0x54ffa6ce505e12ecL, IComponentWithRepositoryReferences);
    builder.put(0x3ae7d0b6d881fb45L, IComponentWithRequiredParameters);
    builder.put(0x54ffa6ce4ff7203eL, IComponentWithToggleableKeyword);
    builder.put(0x54ffa6ce5022785eL, IContainsComponentsWithToggleableKeywords);
    builder.put(0x4cfae7e929829c9dL, IDataType);
    builder.put(0x62cb964347c709cL, IDtoComponent);
    builder.put(0xa84dfea89294288L, IDtoDataTypeRuleContainerComponent);
    builder.put(0x4c59e910f901bdaeL, IDtoDerivable);
    builder.put(0x4c59e910f8f63541L, IDtoDerivableReference);
    builder.put(0x3cfd70789857e2b7L, IDtoDerivation);
    builder.put(0x12da95fb99e0f983L, IDtoDerivationRule);
    builder.put(0xa84dfea8956f565L, IDtoDerivationRuleContainer);
    builder.put(0x5d9cf3447c732a76L, IDtoDerivationRuleReference);
    builder.put(0xa84dfea89294285L, IDtoFlatteningRuleContainerComponent);
    builder.put(0x1f11be867ad9aec4L, IDtoRepositoryComponent);
    builder.put(0x29dc78b931537cd7L, IElementOfBoundedContext);
    builder.put(0x73da508643ef0772L, IEntityComponent);
    builder.put(0x54ffa6ce4fee25c9L, IEventComponent);
    builder.put(0x75be8047bc19d633L, IEventContainerComponent);
    builder.put(0x56a1ac122a7b6f09L, IEventGenerationSettingsComponent);
    builder.put(0x6165532e2ee2937L, IGeneratorSettingsComponent);
    builder.put(0x62cb96432e18f7fL, IOptionalValidIdentifier);
    builder.put(0x2dcb7cdd2f0bdc0fL, IOptionalValidIdentifierWrapper);
    builder.put(0x4cfae7e929829c9fL, IPrimitiveType);
    builder.put(0x71e6ab6474087bL, IQueryComponent);
    builder.put(0x3a4bff7934079ff7L, IQueryContainerComponent);
    builder.put(0x56a1ac122ac59248L, IQueryGenerationSettingsComponent);
    builder.put(0x7289340ea6218170L, IReferenceType);
    builder.put(0x54ffa6ce5255f3e5L, IRepository);
    builder.put(0x54ffa6ce505e177aL, IRepositoryReference);
    builder.put(0x54ffa6ce5257488bL, IRepositorySubstitude);
    builder.put(0x62cb96433094734L, IValueObjectComponent);
    builder.put(0x4c59e910fb0ed95eL, IVariable);
    builder.put(0x4c59e910fafca7b2L, IVariableReference);
    builder.put(0x4f0a0db9ac16f8e3L, ImportPackage);
    builder.put(0x4f0a0db9ac16ea31L, ImportStatement);
    builder.put(0x4f0a0db9ac16f8edL, ImportedType);
    builder.put(0x4cfae7e929829ca2L, IntegerType);
    builder.put(0x53a29a8dae148659L, JavaDataType);
    builder.put(0x2da8ed8a0510a207L, KotlinDataType);
    builder.put(0x4cfae7e92986f7d9L, ListType);
    builder.put(0x4cfae7e929829caeL, LongType);
    builder.put(0x783dbe7d5ebb3779L, MapType);
    builder.put(0x73da508643f0517eL, Method);
    builder.put(0x76b18bc8df40cea1L, OutputPathPreference);
    builder.put(0x73da508643ca7d84L, Parameter);
    builder.put(0x73da508643ec6f30L, ParameterReference);
    builder.put(0x73da508643ec6f33L, Property);
    builder.put(0x73da508643ec8131L, PropertyReference);
    builder.put(0x73da5086440e2444L, Query);
    builder.put(0x3a4bff7934079ff4L, QueryContainer);
    builder.put(0x642187fedcaf0c89L, QueryContainerMethods);
    builder.put(0x642187fedcaf0c8cL, QueryContainerReference);
    builder.put(0x6165532e2ee2941L, QueryGenerationSettings);
    builder.put(0x56a1ac122ac5a076L, QueryHandlingSetting);
    builder.put(0x1f11be867afde0b7L, QueryMethods);
    builder.put(0x56a1ac122acef4d6L, QueryProcessingSetting);
    builder.put(0x73da5086440e2447L, QueryReference);
    builder.put(0x783dbe7d5ebb3748L, SetType);
    builder.put(0x4cfae7e929829cafL, ShortType);
    builder.put(0x4cfae7e929829ca5L, StringType);
    builder.put(0x4c59e910fbf94f5aL, SubstitudeDataType);
    builder.put(0x4f0a0db9ac16f8f7L, ValueObject);
    builder.put(0x4f0a0db9ac16f8faL, ValueObjectReference);
    myIndex = builder.seal();
  }

  /*package*/ int index(SConceptId cid) {
    return myIndex.index(cid);
  }

  public int index(SAbstractConcept concept) {
    return myIndex.index(concept);
  }
}
