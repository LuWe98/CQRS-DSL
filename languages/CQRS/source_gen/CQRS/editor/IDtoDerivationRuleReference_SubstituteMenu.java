package CQRS.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.menus.substitute.SubstituteMenuBase;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import jetbrains.mps.lang.editor.menus.MenuPart;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuItem;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuContext;
import java.util.ArrayList;
import jetbrains.mps.lang.editor.menus.substitute.ConstraintsFilteringSubstituteMenuPartDecorator;
import jetbrains.mps.lang.editor.menus.EditorMenuDescriptorBase;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.lang.editor.menus.ParameterizedMenuPart;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import java.util.Collections;
import CQRS.behavior.BoundedContext__BehaviorDescriptor;
import CQRS.behavior.IElementOfBoundedContext__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ISelector;
import CQRS.behavior.IDtoDerivationRuleReference__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.editor.menus.substitute.SingleItemSubstituteMenuPart;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.lang.editor.menus.substitute.DefaultSubstituteMenuItem;
import jetbrains.mps.openapi.editor.menus.EditorMenuTraceInfo;
import CQRS.behavior.IDtoDerivationRule__BehaviorDescriptor;
import jetbrains.mps.editor.runtime.completion.CompletionItemInformation;
import jetbrains.mps.smodel.runtime.IconResource;
import jetbrains.mps.smodel.runtime.IconResourceUtil;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.smodel.ConceptSwitchIndex;
import jetbrains.mps.lang.smodel.ConceptSwitchIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class IDtoDerivationRuleReference_SubstituteMenu extends SubstituteMenuBase {
  @NotNull
  @Override
  protected List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> getParts(final SubstituteMenuContext _context) {
    List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> result = new ArrayList<MenuPart<SubstituteMenuItem, SubstituteMenuContext>>();
    result.add(new ConstraintsFilteringSubstituteMenuPartDecorator(new SMP_Param_k13n0r_a(), CONCEPTS.IDtoDerivationRuleReference$eE));
    return result;
  }

  @NotNull
  @Override
  public List<SubstituteMenuItem> createMenuItems(@NotNull SubstituteMenuContext context) {
    context.getEditorMenuTrace().pushTraceInfo();
    context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("default substitute menu for " + "IDtoDerivationRuleReference", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "757976835705493648")));
    try {
      return super.createMenuItems(context);
    } finally {
      context.getEditorMenuTrace().popTraceInfo();
    }
  }


  private class SMP_Param_k13n0r_a extends ParameterizedMenuPart<SNode, SubstituteMenuItem, SubstituteMenuContext> {
    @NotNull
    @Override
    protected List<SubstituteMenuItem> createItems(SNode parameter, SubstituteMenuContext context) {
      return new SMP_Action_k13n0r_a0(parameter).createItems(context);
    }
    @NotNull
    @Override
    public List<SubstituteMenuItem> createItems(@NotNull SubstituteMenuContext context) {
      context.getEditorMenuTrace().pushTraceInfo();
      context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("parameterized substitute menu part", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "757976835707412945")));
      try {
        return super.createItems(context);
      } finally {
        context.getEditorMenuTrace().popTraceInfo();
      }
    }
    @Nullable
    @Override
    protected Iterable<? extends SNode> getParameters(SubstituteMenuContext _context) {
      SNode derivation = SNodeOperations.getNodeAncestor(_context.getParentNode(), CONCEPTS.IDtoDerivation$Yg, true, false);
      if ((derivation == null)) {
        return Sequence.fromIterable(Collections.<SNode>emptyList());
      }

      Iterable<SNode> dtoDerivationRules = BoundedContext__BehaviorDescriptor.dtoExplicitDerivationRules_idE4RYE8KbDb.invoke(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(derivation));
      final Iterable<SNode> referencedRules = ListSequence.fromList(SLinkOperations.getChildren(derivation, LINKS.derivationRuleReferences$YFqo)).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode it) {
          return (SNode) IDtoDerivationRuleReference__BehaviorDescriptor.getReferencedRule_id5YqiGT0mxXR.invoke(it);
        }
      });
      return Sequence.fromIterable(dtoDerivationRules).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return !(Sequence.fromIterable(referencedRules).contains(it));
        }
      });
    }
    private class SMP_Action_k13n0r_a0 extends SingleItemSubstituteMenuPart {
      private final SNode myParameterObject;
      public SMP_Action_k13n0r_a0(SNode parameterObject) {
        myParameterObject = parameterObject;
      }

      @Nullable
      @Override
      protected SubstituteMenuItem createItem(SubstituteMenuContext _context) {
        Item item = new Item(_context);
        String description;
        try {
          description = "Substitute item: " + item.getMatchingText("");
          description += ". Parameter object: " + myParameterObject;
        } catch (Throwable t) {
          Logger.getLogger(getClass()).error("Exception while executing getMatchingText() of the item " + item, t);
          return null;
        }

        _context.getEditorMenuTrace().pushTraceInfo();
        try {
          _context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase(description, new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "757976835707412946")));
          item.setTraceInfo(_context.getEditorMenuTrace().getTraceInfo());
        } finally {
          _context.getEditorMenuTrace().popTraceInfo();
        }

        return item;
      }
      private class Item extends DefaultSubstituteMenuItem {
        private final SubstituteMenuContext _context;
        private EditorMenuTraceInfo myTraceInfo;
        public Item(SubstituteMenuContext context) {
          super(CONCEPTS.IDtoDerivationRuleReference$eE, context);
          _context = context;
        }

        private void setTraceInfo(EditorMenuTraceInfo traceInfo) {
          myTraceInfo = traceInfo;
        }

        @Nullable
        @Override
        public SNode createNode(@NotNull String pattern) {
          return (SNode) IDtoDerivationRule__BehaviorDescriptor.toReference_id7z5h98TrJPJ.invoke(myParameterObject);
        }

        @Override
        public EditorMenuTraceInfo getTraceInfo() {
          return myTraceInfo;
        }
        @NotNull
        protected CompletionItemInformation createInformation(String pattern) {
          return new CompletionItemInformation(myParameterObject, CONCEPTS.IDtoDerivationRuleReference$eE, getMatchingText(pattern), getDescriptionText(pattern));
        }
        @Nullable
        @Override
        public IconResource getIcon(@NotNull String pattern) {
          if (myParameterObject instanceof SNode) {
            return IconResourceUtil.getIconResourceForNode(((SNode) myParameterObject));
          }
          return null;
        }
        @Nullable
        @Override
        public String getDescriptionText(@NotNull String pattern) {
          SAbstractConcept cncpt = SNodeOperations.getConcept(myParameterObject);
          switch (conceptIndex.index(cncpt)) {
            case 0:
              return "type rule";
            case 1:
              return "flattening rule";
            default:
              return "";
          }
        }
        @Nullable
        @Override
        public String getMatchingText(@NotNull String pattern) {
          return (String) IDtoDerivationRule__BehaviorDescriptor.getReferenceName_id1pnQbpD$lGH.invoke(myParameterObject, _context.getEditorContext());
        }
      }
    }

  }
  private static final ConceptSwitchIndex conceptIndex = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f984L), MetaIdFactory.conceptId(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f985L)).seal();

  private static final class CONCEPTS {
    /*package*/ static final SInterfaceConcept IDtoDerivationRuleReference$eE = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x5d9cf3447c732a76L, "CQRS.structure.IDtoDerivationRuleReference");
    /*package*/ static final SInterfaceConcept IDtoDerivation$Yg = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789857e2b7L, "CQRS.structure.IDtoDerivation");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink derivationRuleReferences$YFqo = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789857e2b7L, 0x5d9cf3447c21f3d5L, "derivationRuleReferences");
  }
}
