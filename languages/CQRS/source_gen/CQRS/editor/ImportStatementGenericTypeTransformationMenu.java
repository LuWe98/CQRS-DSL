package CQRS.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.menus.transformation.TransformationMenuBase;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.lang.editor.menus.transformation.MenuLocations;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import jetbrains.mps.openapi.editor.menus.transformation.TransformationMenuItem;
import jetbrains.mps.openapi.editor.menus.transformation.TransformationMenuContext;
import jetbrains.mps.lang.editor.menus.EditorMenuDescriptorBase;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.lang.editor.menus.MenuPart;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.editor.menus.ParameterizedMenuPart;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.lang.editor.menus.SingleItemMenuPart;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.openapi.editor.menus.transformation.ActionItemBase;
import jetbrains.mps.nodeEditor.cellMenu.SideTransformCompletionActionItem;
import jetbrains.mps.openapi.editor.menus.EditorMenuTraceInfo;
import CQRS.behavior.ImportStatement__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.openapi.editor.menus.style.EditorMenuItemStyle;
import jetbrains.mps.editor.runtime.menus.EditorMenuItemModifyingCustomizationContext;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.editor.runtime.menus.EditorMenuItemCompositeCustomizationContext;
import jetbrains.mps.editor.runtime.completion.CompletionMenuItemCustomizationContext;
import jetbrains.mps.editor.runtime.completion.CompletionItemInformation;
import jetbrains.mps.openapi.editor.menus.style.EditorMenuItemCustomizer;
import jetbrains.mps.internal.collections.runtime.CollectionSequence;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class ImportStatementGenericTypeTransformationMenu extends TransformationMenuBase {
  private final Set<String> myLocations = SetSequence.fromSetAndArray(new HashSet<String>(), MenuLocations.RIGHT_SIDE_TRANSFORM);
  @Override
  public boolean isApplicableToLocation(@NotNull String location) {
    return SetSequence.fromSet(myLocations).contains(location);
  }

  @NotNull
  @Override
  public List<TransformationMenuItem> createMenuItems(@NotNull TransformationMenuContext context) {
    context.getEditorMenuTrace().pushTraceInfo();
    context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("named transformation menu " + "ImportStatementGenericTypeTransformationMenu", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "6783047803582135081")));
    try {
      return super.createMenuItems(context);
    } finally {
      context.getEditorMenuTrace().popTraceInfo();
    }
  }

  @Override
  @NotNull
  protected List<MenuPart<TransformationMenuItem, TransformationMenuContext>> getParts(TransformationMenuContext _context) {
    List<MenuPart<TransformationMenuItem, TransformationMenuContext>> result = new ArrayList<MenuPart<TransformationMenuItem, TransformationMenuContext>>();
    if (ListSequence.fromListAndArray(new ArrayList<String>(), MenuLocations.RIGHT_SIDE_TRANSFORM).contains(_context.getMenuLocation())) {
      result.add(new TMP_Param_rx0xfr_a0());
    }
    return result;
  }

  private class TMP_Param_rx0xfr_a0 extends ParameterizedMenuPart<String, TransformationMenuItem, TransformationMenuContext> {

    @NotNull
    @Override
    protected List<TransformationMenuItem> createItems(String parameter, TransformationMenuContext context) {
      return new TMP_Action_rx0xfr_a0a(parameter).createItems(context);
    }

    @Nullable
    @Override
    protected Iterable<? extends String> getParameters(TransformationMenuContext _context) {
      return ListSequence.fromListAndArray(new ArrayList<String>(), "<", ">");
    }
    @NotNull
    @Override
    public List<TransformationMenuItem> createItems(@NotNull TransformationMenuContext context) {
      context.getEditorMenuTrace().pushTraceInfo();
      context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("parameterized transformation menu part", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "400088555721654971")));
      try {
        return super.createItems(context);
      } finally {
        context.getEditorMenuTrace().popTraceInfo();
      }
    }

    private class TMP_Action_rx0xfr_a0a extends SingleItemMenuPart<TransformationMenuItem, TransformationMenuContext> {
      private final String myParameterObject;
      public TMP_Action_rx0xfr_a0a(String parameterObject) {
        myParameterObject = parameterObject;
      }
      @Nullable
      protected TransformationMenuItem createItem(TransformationMenuContext context) {
        Item item = new Item(context);
        String description;
        try {
          description = "single item: " + item.getLabelText("");
        } catch (Throwable t) {
          Logger.getLogger(getClass()).error("Exception while executing getText of the item " + item, t);
          return null;
        }
        context.getEditorMenuTrace().pushTraceInfo();
        try {
          context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase(description, new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "400088555721665886")));
          item.setTraceInfo(context.getEditorMenuTrace().getTraceInfo());
        } finally {
          context.getEditorMenuTrace().popTraceInfo();
        }
        return item;
      }

      private class Item extends ActionItemBase implements SideTransformCompletionActionItem {
        private final TransformationMenuContext _context;
        private EditorMenuTraceInfo myEditorMenuTraceInfo;
        private Item(TransformationMenuContext context) {
          _context = context;
        }
        private void setTraceInfo(EditorMenuTraceInfo info) {
          myEditorMenuTraceInfo = info;
        }
        @Nullable
        @Override
        public String getLabelText(String pattern) {
          return myParameterObject;
        }

        @Override
        public void execute(@NotNull String pattern) {
          ImportStatement__BehaviorDescriptor.adjustImportStatementReferenceGenericTypes_idmdpAJMlvHj.invoke(_context.getNode(), ((int) 1));
          SLinkOperations.addNewChild(_context.getNode(), LINKS.genericTypes$ns1R, null);
        }

        @Override
        public boolean canExecute(@NotNull String pattern) {
          return ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), LINKS.genericTypes$ns1R)).isEmpty();
        }



        @Override
        public EditorMenuTraceInfo getTraceInfo() {
          return myEditorMenuTraceInfo;
        }

        public void customize(String pattern, EditorMenuItemStyle style) {
          EditorMenuItemModifyingCustomizationContext modifyingContext = new EditorMenuItemModifyingCustomizationContext(_context.getNode(), null, null, null);
          SAbstractConcept outputConcept = null;
          EditorMenuItemCompositeCustomizationContext compositeContext = new EditorMenuItemCompositeCustomizationContext(modifyingContext, new CompletionMenuItemCustomizationContext(new CompletionItemInformation(myParameterObject, outputConcept, getLabelText(pattern), getShortDescriptionText(pattern))));
          for (EditorMenuItemCustomizer customizer : CollectionSequence.fromCollection(_context.getCustomizers())) {
            customizer.customize(style, compositeContext);
          }
        }
      }

    }
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink genericTypes$ns1R = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16ea31L, 0x5e223a0a0afcb64aL, "genericTypes");
  }
}
