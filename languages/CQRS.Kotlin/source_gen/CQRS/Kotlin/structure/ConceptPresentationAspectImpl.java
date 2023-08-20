package CQRS.Kotlin.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptPresentationAspectBase;
import jetbrains.mps.smodel.runtime.ConceptPresentation;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.ConceptPresentationBuilder;

public class ConceptPresentationAspectImpl extends ConceptPresentationAspectBase {
  private ConceptPresentation props_AggregateConcreteInterfaceKotlinOutput;
  private ConceptPresentation props_AggregateConcreteRepositoryInterfaceKotlinOutput;
  private ConceptPresentation props_AggregateIdRepositoryInterfaceKotlinOutput;
  private ConceptPresentation props_AggregateInterfaceKotlinOutput;
  private ConceptPresentation props_AggregateKotlinOutput;
  private ConceptPresentation props_AggregateRepositoryInterfaceKotlinOutput;
  private ConceptPresentation props_AggregateRepositoryKotlinOutput;
  private ConceptPresentation props_BoundedContextWrapper;
  private ConceptPresentation props_CommandHandlerGroupedInterfaceKotlinOutput;
  private ConceptPresentation props_CommandHandlerGroupedKotlinOutput;
  private ConceptPresentation props_CommandHandlerInterfaceKotlinOutput;
  private ConceptPresentation props_CommandHandlerSeparatedKotlinOutput;
  private ConceptPresentation props_CommandInterfaceKotlinOutput;
  private ConceptPresentation props_CommandKotlinOutput;
  private ConceptPresentation props_CommandWrapperInterfaceKotlinOutput;
  private ConceptPresentation props_DtoKotlinOutput;
  private ConceptPresentation props_DtoRepositoryInterfaceKotlinOutput;
  private ConceptPresentation props_DtoRepositoryKotlinOutput;
  private ConceptPresentation props_EntitiyKotlinOutput;
  private ConceptPresentation props_EntityBaseClassKotlinOutput;
  private ConceptPresentation props_EventAggregateBaseClassKotlinOutput;
  private ConceptPresentation props_EventAggregateInterfaceKotlinOutput;
  private ConceptPresentation props_EventHandlerGroupedInterfaceKotlinOutput;
  private ConceptPresentation props_EventHandlerGroupedKotlinOutput;
  private ConceptPresentation props_EventHandlerInterfaceKotlinOutput;
  private ConceptPresentation props_EventHandlerSeparatedKotlinOutput;
  private ConceptPresentation props_EventInterfaceKotlinOutput;
  private ConceptPresentation props_EventKotlinOutput;
  private ConceptPresentation props_EventWrapperInterfaceKotlinOutput;
  private ConceptPresentation props_IDataTypeKotlinOutput;
  private ConceptPresentation props_KotlinElementOutput;
  private ConceptPresentation props_KotlinFileOutput;
  private ConceptPresentation props_MethodKotlinOutput;
  private ConceptPresentation props_ParameterKotlinOutput;
  private ConceptPresentation props_PropertyKotlinOutput;
  private ConceptPresentation props_QueryHandlerContainerImplKotlinOutput;
  private ConceptPresentation props_QueryHandlerContainerKotlinOutput;
  private ConceptPresentation props_QueryHandlerGroupedInterfaceKotlinOutput;
  private ConceptPresentation props_QueryHandlerGroupedKotlinOutput;
  private ConceptPresentation props_QueryHandlerInterfaceKotlinOutput;
  private ConceptPresentation props_QueryHandlerSeparatedKotlinOutput;
  private ConceptPresentation props_QueryInterfaceKotlinOutput;
  private ConceptPresentation props_QueryKotlinOutput;
  private ConceptPresentation props_QueryProcessorImplKotlinOutput;
  private ConceptPresentation props_QueryProcessorKotlinOutput;
  private ConceptPresentation props_ValueObjectKotlinOutput;

  @Override
  @Nullable
  public ConceptPresentation getDescriptor(SAbstractConcept c) {
    StructureAspectDescriptor structureDescriptor = (StructureAspectDescriptor) myLanguageRuntime.getAspect(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.class);
    switch (structureDescriptor.internalIndex(c)) {
      case LanguageConceptSwitch.AggregateConcreteInterfaceKotlinOutput:
        if (props_AggregateConcreteInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("AggregateConcreteInterfaceKotlinOutput");
          props_AggregateConcreteInterfaceKotlinOutput = cpb.create();
        }
        return props_AggregateConcreteInterfaceKotlinOutput;
      case LanguageConceptSwitch.AggregateConcreteRepositoryInterfaceKotlinOutput:
        if (props_AggregateConcreteRepositoryInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("AggregateConcreteRepositoryInterfaceKotlinOutput");
          props_AggregateConcreteRepositoryInterfaceKotlinOutput = cpb.create();
        }
        return props_AggregateConcreteRepositoryInterfaceKotlinOutput;
      case LanguageConceptSwitch.AggregateIdRepositoryInterfaceKotlinOutput:
        if (props_AggregateIdRepositoryInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_AggregateIdRepositoryInterfaceKotlinOutput = cpb.create();
        }
        return props_AggregateIdRepositoryInterfaceKotlinOutput;
      case LanguageConceptSwitch.AggregateInterfaceKotlinOutput:
        if (props_AggregateInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_AggregateInterfaceKotlinOutput = cpb.create();
        }
        return props_AggregateInterfaceKotlinOutput;
      case LanguageConceptSwitch.AggregateKotlinOutput:
        if (props_AggregateKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("AggregateKotlinOutput");
          props_AggregateKotlinOutput = cpb.create();
        }
        return props_AggregateKotlinOutput;
      case LanguageConceptSwitch.AggregateRepositoryInterfaceKotlinOutput:
        if (props_AggregateRepositoryInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_AggregateRepositoryInterfaceKotlinOutput = cpb.create();
        }
        return props_AggregateRepositoryInterfaceKotlinOutput;
      case LanguageConceptSwitch.AggregateRepositoryKotlinOutput:
        if (props_AggregateRepositoryKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("AggregateRepositoryKotlinOutput");
          props_AggregateRepositoryKotlinOutput = cpb.create();
        }
        return props_AggregateRepositoryKotlinOutput;
      case LanguageConceptSwitch.BoundedContextWrapper:
        if (props_BoundedContextWrapper == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_BoundedContextWrapper = cpb.create();
        }
        return props_BoundedContextWrapper;
      case LanguageConceptSwitch.CommandHandlerGroupedInterfaceKotlinOutput:
        if (props_CommandHandlerGroupedInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("CommandHandlerGroupedInterfaceKotlinOutput");
          props_CommandHandlerGroupedInterfaceKotlinOutput = cpb.create();
        }
        return props_CommandHandlerGroupedInterfaceKotlinOutput;
      case LanguageConceptSwitch.CommandHandlerGroupedKotlinOutput:
        if (props_CommandHandlerGroupedKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("CommandHandlerGroupedKotlinOutput");
          props_CommandHandlerGroupedKotlinOutput = cpb.create();
        }
        return props_CommandHandlerGroupedKotlinOutput;
      case LanguageConceptSwitch.CommandHandlerInterfaceKotlinOutput:
        if (props_CommandHandlerInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_CommandHandlerInterfaceKotlinOutput = cpb.create();
        }
        return props_CommandHandlerInterfaceKotlinOutput;
      case LanguageConceptSwitch.CommandHandlerSeparatedKotlinOutput:
        if (props_CommandHandlerSeparatedKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("CommandHandlerSeparatedKotlinOutput");
          props_CommandHandlerSeparatedKotlinOutput = cpb.create();
        }
        return props_CommandHandlerSeparatedKotlinOutput;
      case LanguageConceptSwitch.CommandInterfaceKotlinOutput:
        if (props_CommandInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_CommandInterfaceKotlinOutput = cpb.create();
        }
        return props_CommandInterfaceKotlinOutput;
      case LanguageConceptSwitch.CommandKotlinOutput:
        if (props_CommandKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("CommandKotlinOutput");
          props_CommandKotlinOutput = cpb.create();
        }
        return props_CommandKotlinOutput;
      case LanguageConceptSwitch.CommandWrapperInterfaceKotlinOutput:
        if (props_CommandWrapperInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_CommandWrapperInterfaceKotlinOutput = cpb.create();
        }
        return props_CommandWrapperInterfaceKotlinOutput;
      case LanguageConceptSwitch.DtoKotlinOutput:
        if (props_DtoKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("DtoKotlinOutput");
          props_DtoKotlinOutput = cpb.create();
        }
        return props_DtoKotlinOutput;
      case LanguageConceptSwitch.DtoRepositoryInterfaceKotlinOutput:
        if (props_DtoRepositoryInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("DtoRepositoryInterfaceKotlinOutput");
          props_DtoRepositoryInterfaceKotlinOutput = cpb.create();
        }
        return props_DtoRepositoryInterfaceKotlinOutput;
      case LanguageConceptSwitch.DtoRepositoryKotlinOutput:
        if (props_DtoRepositoryKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("DtoRepositoryKotlinOutput");
          props_DtoRepositoryKotlinOutput = cpb.create();
        }
        return props_DtoRepositoryKotlinOutput;
      case LanguageConceptSwitch.EntitiyKotlinOutput:
        if (props_EntitiyKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("EntitiyKotlinOutput");
          props_EntitiyKotlinOutput = cpb.create();
        }
        return props_EntitiyKotlinOutput;
      case LanguageConceptSwitch.EntityBaseClassKotlinOutput:
        if (props_EntityBaseClassKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_EntityBaseClassKotlinOutput = cpb.create();
        }
        return props_EntityBaseClassKotlinOutput;
      case LanguageConceptSwitch.EventAggregateBaseClassKotlinOutput:
        if (props_EventAggregateBaseClassKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_EventAggregateBaseClassKotlinOutput = cpb.create();
        }
        return props_EventAggregateBaseClassKotlinOutput;
      case LanguageConceptSwitch.EventAggregateInterfaceKotlinOutput:
        if (props_EventAggregateInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_EventAggregateInterfaceKotlinOutput = cpb.create();
        }
        return props_EventAggregateInterfaceKotlinOutput;
      case LanguageConceptSwitch.EventHandlerGroupedInterfaceKotlinOutput:
        if (props_EventHandlerGroupedInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_EventHandlerGroupedInterfaceKotlinOutput = cpb.create();
        }
        return props_EventHandlerGroupedInterfaceKotlinOutput;
      case LanguageConceptSwitch.EventHandlerGroupedKotlinOutput:
        if (props_EventHandlerGroupedKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_EventHandlerGroupedKotlinOutput = cpb.create();
        }
        return props_EventHandlerGroupedKotlinOutput;
      case LanguageConceptSwitch.EventHandlerInterfaceKotlinOutput:
        if (props_EventHandlerInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_EventHandlerInterfaceKotlinOutput = cpb.create();
        }
        return props_EventHandlerInterfaceKotlinOutput;
      case LanguageConceptSwitch.EventHandlerSeparatedKotlinOutput:
        if (props_EventHandlerSeparatedKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("EventHandlerSeparatedKotlinOutput");
          props_EventHandlerSeparatedKotlinOutput = cpb.create();
        }
        return props_EventHandlerSeparatedKotlinOutput;
      case LanguageConceptSwitch.EventInterfaceKotlinOutput:
        if (props_EventInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_EventInterfaceKotlinOutput = cpb.create();
        }
        return props_EventInterfaceKotlinOutput;
      case LanguageConceptSwitch.EventKotlinOutput:
        if (props_EventKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("EventKotlinOutput");
          props_EventKotlinOutput = cpb.create();
        }
        return props_EventKotlinOutput;
      case LanguageConceptSwitch.EventWrapperInterfaceKotlinOutput:
        if (props_EventWrapperInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_EventWrapperInterfaceKotlinOutput = cpb.create();
        }
        return props_EventWrapperInterfaceKotlinOutput;
      case LanguageConceptSwitch.IDataTypeKotlinOutput:
        if (props_IDataTypeKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("IDataTypeKotlinOutput");
          props_IDataTypeKotlinOutput = cpb.create();
        }
        return props_IDataTypeKotlinOutput;
      case LanguageConceptSwitch.KotlinElementOutput:
        if (props_KotlinElementOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_KotlinElementOutput = cpb.create();
        }
        return props_KotlinElementOutput;
      case LanguageConceptSwitch.KotlinFileOutput:
        if (props_KotlinFileOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_KotlinFileOutput = cpb.create();
        }
        return props_KotlinFileOutput;
      case LanguageConceptSwitch.MethodKotlinOutput:
        if (props_MethodKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("MethodKotlinOutput");
          props_MethodKotlinOutput = cpb.create();
        }
        return props_MethodKotlinOutput;
      case LanguageConceptSwitch.ParameterKotlinOutput:
        if (props_ParameterKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ParameterKotlinOutput");
          props_ParameterKotlinOutput = cpb.create();
        }
        return props_ParameterKotlinOutput;
      case LanguageConceptSwitch.PropertyKotlinOutput:
        if (props_PropertyKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("PropertyKotlinOutput");
          props_PropertyKotlinOutput = cpb.create();
        }
        return props_PropertyKotlinOutput;
      case LanguageConceptSwitch.QueryHandlerContainerImplKotlinOutput:
        if (props_QueryHandlerContainerImplKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_QueryHandlerContainerImplKotlinOutput = cpb.create();
        }
        return props_QueryHandlerContainerImplKotlinOutput;
      case LanguageConceptSwitch.QueryHandlerContainerKotlinOutput:
        if (props_QueryHandlerContainerKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_QueryHandlerContainerKotlinOutput = cpb.create();
        }
        return props_QueryHandlerContainerKotlinOutput;
      case LanguageConceptSwitch.QueryHandlerGroupedInterfaceKotlinOutput:
        if (props_QueryHandlerGroupedInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("QueryHandlerGroupedInterfaceKotlinOutput");
          props_QueryHandlerGroupedInterfaceKotlinOutput = cpb.create();
        }
        return props_QueryHandlerGroupedInterfaceKotlinOutput;
      case LanguageConceptSwitch.QueryHandlerGroupedKotlinOutput:
        if (props_QueryHandlerGroupedKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("QueryHandlerGroupedKotlinOutput");
          props_QueryHandlerGroupedKotlinOutput = cpb.create();
        }
        return props_QueryHandlerGroupedKotlinOutput;
      case LanguageConceptSwitch.QueryHandlerInterfaceKotlinOutput:
        if (props_QueryHandlerInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_QueryHandlerInterfaceKotlinOutput = cpb.create();
        }
        return props_QueryHandlerInterfaceKotlinOutput;
      case LanguageConceptSwitch.QueryHandlerSeparatedKotlinOutput:
        if (props_QueryHandlerSeparatedKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("QueryHandlerSeparatedKotlinOutput");
          props_QueryHandlerSeparatedKotlinOutput = cpb.create();
        }
        return props_QueryHandlerSeparatedKotlinOutput;
      case LanguageConceptSwitch.QueryInterfaceKotlinOutput:
        if (props_QueryInterfaceKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_QueryInterfaceKotlinOutput = cpb.create();
        }
        return props_QueryInterfaceKotlinOutput;
      case LanguageConceptSwitch.QueryKotlinOutput:
        if (props_QueryKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("QueryKotlinOutput");
          props_QueryKotlinOutput = cpb.create();
        }
        return props_QueryKotlinOutput;
      case LanguageConceptSwitch.QueryProcessorImplKotlinOutput:
        if (props_QueryProcessorImplKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_QueryProcessorImplKotlinOutput = cpb.create();
        }
        return props_QueryProcessorImplKotlinOutput;
      case LanguageConceptSwitch.QueryProcessorKotlinOutput:
        if (props_QueryProcessorKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext", "", "");
          props_QueryProcessorKotlinOutput = cpb.create();
        }
        return props_QueryProcessorKotlinOutput;
      case LanguageConceptSwitch.ValueObjectKotlinOutput:
        if (props_ValueObjectKotlinOutput == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ValueObjectKotlinOutput");
          props_ValueObjectKotlinOutput = cpb.create();
        }
        return props_ValueObjectKotlinOutput;
    }
    return null;
  }
}
