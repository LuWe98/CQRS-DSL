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
import jetbrains.mps.lang.editor.menus.ConceptMenusPart;
import java.util.Collection;
import jetbrains.mps.smodel.ConceptDescendantsCache;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.editor.menus.substitute.DefaultSubstituteMenuLookup;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.lang.editor.menus.ParameterizedMenuPart;
import org.jetbrains.mps.openapi.language.SEnumerationLiteral;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.editor.menus.substitute.SingleItemSubstituteMenuPart;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.lang.editor.menus.substitute.DefaultSubstituteMenuItem;
import jetbrains.mps.openapi.editor.menus.EditorMenuTraceInfo;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.editor.runtime.completion.CompletionItemInformation;
import jetbrains.mps.smodel.runtime.IconResource;
import jetbrains.mps.lang.smodel.EnumerationLiteralsIndex;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import org.jetbrains.mps.openapi.language.SProperty;

public class IDtoDataTypeRuleContainerComponent_SubstituteMenu extends SubstituteMenuBase {
  @NotNull
  @Override
  protected List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> getParts(final SubstituteMenuContext _context) {
    List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> result = new ArrayList<MenuPart<SubstituteMenuItem, SubstituteMenuContext>>();
    result.add(new SMP_Subconcepts_3ewu7n_a());
    result.add(new ConstraintsFilteringSubstituteMenuPartDecorator(new SMP_Param_3ewu7n_b(), CONCEPTS.IDtoDataTypeRuleContainerComponent$5N));
    return result;
  }

  @NotNull
  @Override
  public List<SubstituteMenuItem> createMenuItems(@NotNull SubstituteMenuContext context) {
    context.getEditorMenuTrace().pushTraceInfo();
    context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("default substitute menu for " + "IDtoDataTypeRuleContainerComponent", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "5677076387050513806")));
    try {
      return super.createMenuItems(context);
    } finally {
      context.getEditorMenuTrace().popTraceInfo();
    }
  }


  public class SMP_Subconcepts_3ewu7n_a extends ConceptMenusPart<SubstituteMenuItem, SubstituteMenuContext> {
    protected Collection getConcepts(final SubstituteMenuContext _context) {
      return ConceptDescendantsCache.getInstance().getDirectDescendants(CONCEPTS.IDtoDataTypeRuleContainerComponent$5N);
    }
    @NotNull
    @Override
    public List<SubstituteMenuItem> createItems(SubstituteMenuContext context) {
      context.getEditorMenuTrace().pushTraceInfo();
      context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("include menus for all the direct subconcepts of " + "IDtoDataTypeRuleContainerComponent", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "5677076387050513811")));
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
  private class SMP_Param_3ewu7n_b extends ParameterizedMenuPart<SEnumerationLiteral, SubstituteMenuItem, SubstituteMenuContext> {
    @NotNull
    @Override
    protected List<SubstituteMenuItem> createItems(SEnumerationLiteral parameter, SubstituteMenuContext context) {
      return new SMP_Action_3ewu7n_a1(parameter).createItems(context);
    }
    @NotNull
    @Override
    public List<SubstituteMenuItem> createItems(@NotNull SubstituteMenuContext context) {
      context.getEditorMenuTrace().pushTraceInfo();
      context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("parameterized substitute menu part", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "5677076387050522522")));
      try {
        return super.createItems(context);
      } finally {
        context.getEditorMenuTrace().popTraceInfo();
      }
    }
    @Nullable
    @Override
    protected Iterable<? extends SEnumerationLiteral> getParameters(SubstituteMenuContext _context) {
      return SEnumOperations.getMembers(MetaAdapterFactory.getEnumeration(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x5d9cf3447c0f9e31L, "CQRS.structure.DtoDerivationRuleUsage"));
    }
    private class SMP_Action_3ewu7n_a1 extends SingleItemSubstituteMenuPart {
      private final SEnumerationLiteral myParameterObject;
      public SMP_Action_3ewu7n_a1(SEnumerationLiteral parameterObject) {
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
          _context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase(description, new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "5677076387050539760")));
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
          super(CONCEPTS.IDtoDataTypeRuleContainerComponent$5N, context);
          _context = context;
        }

        private void setTraceInfo(EditorMenuTraceInfo traceInfo) {
          myTraceInfo = traceInfo;
        }

        @Nullable
        @Override
        public SNode createNode(@NotNull String pattern) {
          SNode dataTypeRule = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f984L, "CQRS.structure.DtoDataTypeRule"));
          SPropertyOperations.setEnum(dataTypeRule, PROPS.usage$2GTC, myParameterObject);
          return dataTypeRule;
        }

        @Override
        public EditorMenuTraceInfo getTraceInfo() {
          return myTraceInfo;
        }
        @NotNull
        protected CompletionItemInformation createInformation(String pattern) {
          return new CompletionItemInformation(myParameterObject, CONCEPTS.IDtoDataTypeRuleContainerComponent$5N, getMatchingText(pattern), getDescriptionText(pattern));
        }
        @Nullable
        @Override
        public String getDescriptionText(@NotNull String pattern) {
          return "";
        }
        @Nullable
        @Override
        public IconResource getIcon(@NotNull String pattern) {
          return null;
        }
        @Override
        public boolean canExecute(@NotNull String pattern) {
          return canExecute_internal(pattern, false);
        }
        @Override
        public boolean canExecuteStrictly(@NotNull String pattern) {
          return canExecute_internal(pattern, true);
        }
        public boolean canExecute_internal(@NotNull String pattern, boolean strictly) {
          switch (enumSwitchIndex.indexNullable(myParameterObject)) {
            case 0:
              return pattern.toLowerCase().startsWith("ex");
            case 1:
              return pattern.toLowerCase().startsWith("im");
            default:
              return false;
          }
        }
        @Nullable
        @Override
        public String getMatchingText(@NotNull String pattern) {
          return SEnumOperations.getMemberPresentation(myParameterObject);
        }
      }
    }

  }
  private static final EnumerationLiteralsIndex enumSwitchIndex = EnumerationLiteralsIndex.build(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x5d9cf3447c0f9e31L, 0x5d9cf3447c0f9e33L, 0x5d9cf3447c0f9e32L);

  private static final class CONCEPTS {
    /*package*/ static final SInterfaceConcept IDtoDataTypeRuleContainerComponent$5N = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0xa84dfea89294288L, "CQRS.structure.IDtoDataTypeRuleContainerComponent");
  }

  private static final class PROPS {
    /*package*/ static final SProperty usage$2GTC = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f983L, 0x5d9cf3447c0f9e36L, "usage");
  }
}