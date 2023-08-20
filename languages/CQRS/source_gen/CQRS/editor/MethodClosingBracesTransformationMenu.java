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
import jetbrains.mps.lang.editor.menus.SingleItemMenuPart;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.openapi.editor.menus.transformation.ActionItemBase;
import jetbrains.mps.nodeEditor.cellMenu.SideTransformCompletionActionItem;
import jetbrains.mps.openapi.editor.menus.EditorMenuTraceInfo;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.openapi.editor.menus.style.EditorMenuItemStyle;
import jetbrains.mps.editor.runtime.menus.EditorMenuItemModifyingCustomizationContext;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.editor.runtime.menus.EditorMenuItemCompositeCustomizationContext;
import jetbrains.mps.editor.runtime.completion.CompletionMenuItemCustomizationContext;
import jetbrains.mps.editor.runtime.completion.CompletionItemInformation;
import jetbrains.mps.openapi.editor.menus.style.EditorMenuItemCustomizer;
import jetbrains.mps.internal.collections.runtime.CollectionSequence;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SProperty;

public class MethodClosingBracesTransformationMenu extends TransformationMenuBase {
  private final Set<String> myLocations = SetSequence.fromSetAndArray(new HashSet<String>(), MenuLocations.RIGHT_SIDE_TRANSFORM, MenuLocations.LEFT_SIDE_TRANSFORM);
  @Override
  public boolean isApplicableToLocation(@NotNull String location) {
    return SetSequence.fromSet(myLocations).contains(location);
  }

  @NotNull
  @Override
  public List<TransformationMenuItem> createMenuItems(@NotNull TransformationMenuContext context) {
    context.getEditorMenuTrace().pushTraceInfo();
    context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("named transformation menu " + "MethodClosingBracesTransformationMenu", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "444934303206480290")));
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
      result.add(new TMP_Action_ajsomm_a0());
    }
    if (ListSequence.fromListAndArray(new ArrayList<String>(), MenuLocations.LEFT_SIDE_TRANSFORM).contains(_context.getMenuLocation())) {
      result.add(new TMP_Action_ajsomm_a1());
    }
    return result;
  }

  private class TMP_Action_ajsomm_a0 extends SingleItemMenuPart<TransformationMenuItem, TransformationMenuContext> {
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
        context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase(description, new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "444934303206480305")));
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
        return ":";
      }

      @Override
      public void execute(@NotNull String pattern) {
        SLinkOperations.setNewChild(_context.getNode(), LINKS.returnTypeWrapper$BjS0, CONCEPTS.DataTypeWrapper$rH);
      }

      @Override
      public boolean canExecute(@NotNull String pattern) {
        return (SLinkOperations.getTarget(_context.getNode(), LINKS.returnTypeWrapper$BjS0) == null);
      }



      @Override
      public EditorMenuTraceInfo getTraceInfo() {
        return myEditorMenuTraceInfo;
      }

      public void customize(String pattern, EditorMenuItemStyle style) {
        EditorMenuItemModifyingCustomizationContext modifyingContext = new EditorMenuItemModifyingCustomizationContext(_context.getNode(), null, null, null);
        SAbstractConcept outputConcept = null;
        EditorMenuItemCompositeCustomizationContext compositeContext = new EditorMenuItemCompositeCustomizationContext(modifyingContext, new CompletionMenuItemCustomizationContext(new CompletionItemInformation(null, outputConcept, getLabelText(pattern), getShortDescriptionText(pattern))));
        for (EditorMenuItemCustomizer customizer : CollectionSequence.fromCollection(_context.getCustomizers())) {
          customizer.customize(style, compositeContext);
        }
      }
    }

  }
  private class TMP_Action_ajsomm_a1 extends SingleItemMenuPart<TransformationMenuItem, TransformationMenuContext> {
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
        context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase(description, new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "6783047803578062742")));
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
        return pattern;
      }

      @Override
      public void execute(@NotNull String pattern) {
        SNode parameter = SNodeFactoryOperations.createNewNode(CONCEPTS.Parameter$as, null);
        SPropertyOperations.set(parameter, PROPS.name$MnvL, pattern);
        ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), LINKS.parameters$t6h4)).addElement(parameter);
        SelectionUtil.selectLabelCellAnSetCaret(_context.getEditorContext(), parameter, "parameterNameCellId", -1);
      }

      @Override
      public boolean canExecute(@NotNull String pattern) {
        return ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), LINKS.parameters$t6h4)).isEmpty();
      }



      @Override
      public EditorMenuTraceInfo getTraceInfo() {
        return myEditorMenuTraceInfo;
      }

      public void customize(String pattern, EditorMenuItemStyle style) {
        EditorMenuItemModifyingCustomizationContext modifyingContext = new EditorMenuItemModifyingCustomizationContext(_context.getNode(), null, null, null);
        SAbstractConcept outputConcept = null;
        EditorMenuItemCompositeCustomizationContext compositeContext = new EditorMenuItemCompositeCustomizationContext(modifyingContext, new CompletionMenuItemCustomizationContext(new CompletionItemInformation(null, outputConcept, getLabelText(pattern), getShortDescriptionText(pattern))));
        for (EditorMenuItemCustomizer customizer : CollectionSequence.fromCollection(_context.getCustomizers())) {
          customizer.customize(style, compositeContext);
        }
      }
    }

  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink returnTypeWrapper$BjS0 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643f0517eL, 0x73da50864400d215L, "returnTypeWrapper");
    /*package*/ static final SContainmentLink parameters$t6h4 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb96433e80624L, 0x62cb96433e80625L, "parameters");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept DataTypeWrapper$rH = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x631212aed3936ea2L, "CQRS.structure.DataTypeWrapper");
    /*package*/ static final SConcept Parameter$as = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643ca7d84L, "CQRS.structure.Parameter");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}
