package CQRS.actions;

/*Generated by MPS */

import jetbrains.mps.actions.descriptor.BaseActionAspectDescriptor;
import jetbrains.mps.openapi.actions.descriptor.ActionAspectDescriptor;
import java.util.Collection;
import jetbrains.mps.openapi.actions.descriptor.NodeFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Collections;
import jetbrains.mps.openapi.actions.descriptor.CopyPreProcessor;
import java.util.Arrays;
import jetbrains.mps.openapi.actions.descriptor.PastePostProcessor;
import jetbrains.mps.openapi.actions.descriptor.PasteWrapper;

public class ActionAspectDescriptorImpl extends BaseActionAspectDescriptor implements ActionAspectDescriptor {
  private static final String LANGUAGE_FQ_NAME = "CQRS";

  @Override
  public Collection<NodeFactory> getFactories(SAbstractConcept concept) {
    if (LANGUAGE_FQ_NAME.equals(concept.getLanguage().getQualifiedName())) {
      switch (concept.getName()) {
        case "AggregateRoot":
          return Collections.<NodeFactory>singletonList(new AggregateRootFactory.NodeFactory_4244590657561719403());
        default:
      }
    }
    return Collections.<NodeFactory>emptyList();
  }

  @Override
  public Collection<CopyPreProcessor> getCopyPreProcessors() {
    return Arrays.asList(new CopyPreProcessor[]{new CopyPasteHandlers_CopyPreProcessor_0()});
  }
  @Override
  public Collection<PastePostProcessor> getPastePostProcessors() {
    return Arrays.asList(new PastePostProcessor[]{new CopyPasteHandlers_PastePostProcessor_0(), new CopyPasteHandlers_PastePostProcessor_1(), new CopyPasteHandlers_PastePostProcessor_2(), new CopyPasteHandlers_PastePostProcessor_3(), new CopyPasteHandlers_PastePostProcessor_4(), new CopyPasteHandlers_PastePostProcessor_5(), new CopyPasteHandlers_PastePostProcessor_6(), new CopyPasteHandlers_PastePostProcessor_7(), new CopyPasteHandlers_PastePostProcessor_8()});
  }
  @Override
  public Collection<PasteWrapper> getPasteWrappers() {
    return Arrays.asList(new PasteWrapper[]{new PasteWrappers_PasteWrapper_0(), new PasteWrappers_PasteWrapper_1(), new PasteWrappers_PasteWrapper_2(), new PasteWrappers_PasteWrapper_3(), new PasteWrappers_PasteWrapper_4()});
  }
}
