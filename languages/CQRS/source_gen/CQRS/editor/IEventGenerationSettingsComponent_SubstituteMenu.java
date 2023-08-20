package CQRS.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.menus.substitute.SubstituteMenuBase;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import jetbrains.mps.lang.editor.menus.MenuPart;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuItem;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuContext;
import java.util.ArrayList;
import jetbrains.mps.lang.editor.menus.EditorMenuDescriptorBase;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.lang.editor.menus.ConceptMenusPart;
import java.util.Collection;
import jetbrains.mps.smodel.ConceptDescendantsCache;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.stream.Collectors;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import CQRS.behavior.EventGenerationSettings__BehaviorDescriptor;
import jetbrains.mps.lang.editor.menus.substitute.DefaultSubstituteMenuLookup;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.lang.smodel.ConceptSwitchIndex;
import jetbrains.mps.lang.smodel.ConceptSwitchIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;

public class IEventGenerationSettingsComponent_SubstituteMenu extends SubstituteMenuBase {
  @NotNull
  @Override
  protected List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> getParts(final SubstituteMenuContext _context) {
    List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> result = new ArrayList<MenuPart<SubstituteMenuItem, SubstituteMenuContext>>();
    result.add(new SMP_Subconcepts_t9u0oj_a());
    return result;
  }

  @NotNull
  @Override
  public List<SubstituteMenuItem> createMenuItems(@NotNull SubstituteMenuContext context) {
    context.getEditorMenuTrace().pushTraceInfo();
    context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("default substitute menu for " + "IEventGenerationSettingsComponent", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "6242459752536750370")));
    try {
      return super.createMenuItems(context);
    } finally {
      context.getEditorMenuTrace().popTraceInfo();
    }
  }


  public class SMP_Subconcepts_t9u0oj_a extends ConceptMenusPart<SubstituteMenuItem, SubstituteMenuContext> {
    protected Collection getConcepts(final SubstituteMenuContext _context) {
      return ConceptDescendantsCache.getInstance().getDirectDescendants(CONCEPTS.IEventGenerationSettingsComponent$97).stream().filter((SAbstractConcept concept) -> filterConcept(_context, concept)).collect(Collectors.toList());
    }
    private boolean filterConcept(SubstituteMenuContext _context, SAbstractConcept concept) {
      SNode settings = SNodeOperations.getNodeAncestor(_context.getParentNode(), CONCEPTS.EventGenerationSettings$CT, true, false);

      SAbstractConcept cncpt = concept;
      switch (conceptIndex.index(cncpt)) {
        case 0:
          return !((boolean) EventGenerationSettings__BehaviorDescriptor.isEventHandlingSettingDefined_id5qxF18ESmSC.invoke(settings));
        default:
          return true;
      }
    }
    @NotNull
    @Override
    public List<SubstituteMenuItem> createItems(SubstituteMenuContext context) {
      context.getEditorMenuTrace().pushTraceInfo();
      context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("include menus for all the direct subconcepts of " + "IEventGenerationSettingsComponent", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "6242459752537992341")));
      try {
        return super.createItems(context);
      } finally {
        context.getEditorMenuTrace().popTraceInfo();
      }
    }

    @Override
    protected Collection<SubstituteMenuItem> createItemsForConcept(SubstituteMenuContext context, SAbstractConcept concept) {
      return context.createItems(new DefaultSubstituteMenuLookup(LanguageRegistry.getInstance(context.getEditorContext().getRepository()), concept));
    }
  }
  private static final ConceptSwitchIndex conceptIndex = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x56a1ac122a7b6f0aL)).seal();

  private static final class CONCEPTS {
    /*package*/ static final SInterfaceConcept IEventGenerationSettingsComponent$97 = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x56a1ac122a7b6f09L, "CQRS.structure.IEventGenerationSettingsComponent");
    /*package*/ static final SConcept EventGenerationSettings$CT = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x6165532e2ee293eL, "CQRS.structure.EventGenerationSettings");
  }
}
