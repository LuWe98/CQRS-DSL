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
import jetbrains.mps.lang.editor.menus.transformation.WrapSubstituteMenuTransformationMenuPart;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuLookup;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.editor.menus.substitute.DefaultSubstituteMenuLookup;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.lang.editor.menus.transformation.SubstituteMenuItemAsActionItem;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteCompletionActionItem;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.editor.runtime.menus.SubstituteItemProxy;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuItem;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.openapi.editor.menus.style.EditorMenuItemStyle;
import jetbrains.mps.editor.runtime.menus.EditorMenuItemModifyingCustomizationContext;
import jetbrains.mps.editor.runtime.completion.CompletionItemInformation;
import jetbrains.mps.editor.runtime.menus.EditorMenuItemCompositeCustomizationContext;
import jetbrains.mps.editor.runtime.completion.CompletionMenuItemCustomizationContext;
import jetbrains.mps.openapi.editor.menus.style.EditorMenuItemCustomizer;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.behavior.ImportedType__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class DataTypeTransformationMenu extends TransformationMenuBase {
  private final Set<String> myLocations = SetSequence.fromSetAndArray(new HashSet<String>(), MenuLocations.SUBSTITUTE);
  @Override
  public boolean isApplicableToLocation(@NotNull String location) {
    return SetSequence.fromSet(myLocations).contains(location);
  }

  @NotNull
  @Override
  public List<TransformationMenuItem> createMenuItems(@NotNull TransformationMenuContext context) {
    context.getEditorMenuTrace().pushTraceInfo();
    context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("named transformation menu " + "DataTypeTransformationMenu", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "2485957825795255182")));
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
    if (ListSequence.fromListAndArray(new ArrayList<String>(), MenuLocations.SUBSTITUTE).contains(_context.getMenuLocation())) {
      result.add(new TMP_WrapSM_syodye_a0());
    }
    return result;
  }

  public class TMP_WrapSM_syodye_a0 extends WrapSubstituteMenuTransformationMenuPart {
    @NotNull
    @Override
    public List<TransformationMenuItem> createItems(@NotNull TransformationMenuContext context) {
      context.getEditorMenuTrace().pushTraceInfo();
      context.getEditorMenuTrace().setDescriptor(new EditorMenuDescriptorBase("wrap substitute menu " + "default substitute menu for " + "IDataType", new SNodePointer("r:9b8b8719-a560-486b-9a35-0c285c344856(CQRS.editor)", "2485957825795255192")));
      try {
        return super.createItems(context);
      } finally {
        context.getEditorMenuTrace().popTraceInfo();
      }
    }

    @Nullable
    @Override
    protected SubstituteMenuLookup getSubstituteMenuLookup(TransformationMenuContext _context) {
      final EditorContext editorContext = _context.getEditorContext();
      SAbstractConcept conceptToFindMenuFor = getConceptToFindMenuFor(_context);
      return new DefaultSubstituteMenuLookup(LanguageRegistry.getInstance(editorContext.getRepository()), conceptToFindMenuFor);
    }
    private SAbstractConcept getConceptToFindMenuFor(TransformationMenuContext _context) {
      return CONCEPTS.IDataType$Sx;
    }


    private class SMIasTMI extends SubstituteMenuItemAsActionItem implements SubstituteCompletionActionItem {

      private final SNode targetNode;
      private final TransformationMenuContext _context;
      private final SubstituteItemProxy wrappedItem;

      public SMIasTMI(SubstituteMenuItem substituteItem, SNode targetNode, TransformationMenuContext tctx) {
        super(substituteItem);
        this.targetNode = targetNode;
        this._context = tctx;
        wrappedItem = new SubstituteItemProxy(substituteItem);
      }

      @Override
      public void execute(@NotNull String pattern) {
        SNode createdNode = getSubstituteItem().createNode(pattern);
        {
          final SNode collectionType = createdNode;
          if (SNodeOperations.isInstanceOf(collectionType, CONCEPTS.ICollectionType$rd)) {
            DataTypeTransformationMenu.this._additional_handleCollectionTransformations(_context.getNode(), collectionType);
          }
        }

        {
          final SNode importType = createdNode;
          if (SNodeOperations.isInstanceOf(importType, CONCEPTS.ImportedType$3u)) {
            DataTypeTransformationMenu.this._additional_handleImportTypeTransformations(_context.getNode(), importType);
          }
        }

        {
          final SNode mapType = createdNode;
          if (SNodeOperations.isInstanceOf(mapType, CONCEPTS.MapType$JX)) {
            DataTypeTransformationMenu.this._additional_handleMapTypeTransformations(_context.getNode(), mapType);
          }
        }

        SNodeOperations.replaceWithAnother(_context.getNode(), createdNode);
      }

      @Override
      public void customize(String pattern, EditorMenuItemStyle style) {
        super.customize(pattern, style);
        if (targetNode != null) {
          EditorMenuItemModifyingCustomizationContext context = new EditorMenuItemModifyingCustomizationContext(targetNode, null, null, null);
          CompletionItemInformation completionItemInformation = new CompletionItemInformation(null, null, getMatchingText(pattern), getShortDescriptionText(pattern));
          EditorMenuItemCompositeCustomizationContext compositeContext = new EditorMenuItemCompositeCustomizationContext(context, new CompletionMenuItemCustomizationContext(completionItemInformation));
          for (EditorMenuItemCustomizer customizer : _context.getCustomizers()) {
            customizer.customize(style, compositeContext);
          }

        }
      }

    }


    @Override
    protected TransformationMenuItem createTransformationItem(final SNode targetNode, final SubstituteMenuItem item, final TransformationMenuContext _context) {
      return new SMIasTMI(item, targetNode, _context);
    }
  }
  private void _additional_handleCollectionTransformations(SNode oldNode, SNode newNode) {
    {
      final SNode collectionType = oldNode;
      if (SNodeOperations.isInstanceOf(collectionType, CONCEPTS.ICollectionType$rd)) {
        DataTypeTransformationMenu.this._additional_handleCollectionToCollectionTransformation(collectionType, newNode);
      }
    }

    {
      final SNode importType = oldNode;
      if (SNodeOperations.isInstanceOf(importType, CONCEPTS.ImportedType$3u)) {
        DataTypeTransformationMenu.this._additional_handleImportTypeToCollectionTransformation(importType, newNode);
      }
    }

    {
      final SNode mapType = oldNode;
      if (SNodeOperations.isInstanceOf(mapType, CONCEPTS.MapType$JX)) {
        DataTypeTransformationMenu.this._additional_handleMapTypeToCollectionTypeTransformation(mapType, newNode);
      }
    }
  }
  private void _additional_handleMapTypeToCollectionTypeTransformation(SNode oldNode, SNode newNode) {
    SLinkOperations.setTarget(newNode, LINKS.elementType$AnT5, SLinkOperations.getTarget(oldNode, LINKS.keyType$mrlA));
  }
  private void _additional_handleImportTypeToCollectionTransformation(SNode oldNode, SNode newNode) {
    if ((int) ImportedType__BehaviorDescriptor.typeCount_idSXYyTVHlmk.invoke(oldNode) <= 0) {
      return;
    }
    SLinkOperations.setTarget(newNode, LINKS.elementType$AnT5, ListSequence.fromList(SLinkOperations.getChildren(oldNode, LINKS.actualTypes$o6Gi)).getElement(0));
  }
  private void _additional_handleCollectionToCollectionTransformation(SNode oldNode, SNode newNode) {
    SLinkOperations.setTarget(newNode, LINKS.elementType$AnT5, SLinkOperations.getTarget(oldNode, LINKS.elementType$AnT5));
  }
  private void _additional_handleImportTypeTransformations(SNode oldNode, SNode newNode) {
    {
      final SNode collectionType = oldNode;
      if (SNodeOperations.isInstanceOf(collectionType, CONCEPTS.ICollectionType$rd)) {
        DataTypeTransformationMenu.this._additional_handleCollectionToImportTypeTransformation(collectionType, newNode);
      }
    }

    {
      final SNode importType = oldNode;
      if (SNodeOperations.isInstanceOf(importType, CONCEPTS.ImportedType$3u)) {
        DataTypeTransformationMenu.this._additional_handleImportTypeToImportTypeTransformation(importType, newNode);
      }
    }

    {
      final SNode mapType = oldNode;
      if (SNodeOperations.isInstanceOf(mapType, CONCEPTS.MapType$JX)) {
        DataTypeTransformationMenu.this._additional_handleMapTypeToImportTypeTransformation(mapType, newNode);
      }
    }
  }
  private void _additional_handleMapTypeToImportTypeTransformation(SNode oldNode, SNode newNode) {
    if ((int) ImportedType__BehaviorDescriptor.typeCount_idSXYyTVHlmk.invoke(newNode) >= 1) {
      ListSequence.fromList(SLinkOperations.getChildren(newNode, LINKS.actualTypes$o6Gi)).setElement(0, SLinkOperations.getTarget(oldNode, LINKS.keyType$mrlA));
    }
    if ((int) ImportedType__BehaviorDescriptor.typeCount_idSXYyTVHlmk.invoke(newNode) >= 2) {
      ListSequence.fromList(SLinkOperations.getChildren(newNode, LINKS.actualTypes$o6Gi)).setElement(1, SLinkOperations.getTarget(oldNode, LINKS.valueType$mrNC));
    }
  }
  private void _additional_handleImportTypeToImportTypeTransformation(SNode oldNode, SNode newNode) {
    for (int i = 0; i < (int) ImportedType__BehaviorDescriptor.typeCount_idSXYyTVHlmk.invoke(newNode); i++) {
      if ((int) ImportedType__BehaviorDescriptor.typeCount_idSXYyTVHlmk.invoke(oldNode) < i) {
        return;
      }
      ListSequence.fromList(SLinkOperations.getChildren(newNode, LINKS.actualTypes$o6Gi)).setElement(i, ListSequence.fromList(SLinkOperations.getChildren(oldNode, LINKS.actualTypes$o6Gi)).getElement(i));
    }
  }
  private void _additional_handleCollectionToImportTypeTransformation(SNode oldNode, SNode newNode) {
    if ((int) ImportedType__BehaviorDescriptor.expectedTypeCount_idSXYyTVHqCv.invoke(newNode) == 0 || (int) ImportedType__BehaviorDescriptor.typeCount_idSXYyTVHlmk.invoke(newNode) == 0) {
      return;
    }
    ListSequence.fromList(SLinkOperations.getChildren(newNode, LINKS.actualTypes$o6Gi)).setElement(0, SLinkOperations.getTarget(oldNode, LINKS.elementType$AnT5));
  }
  private void _additional_handleMapTypeTransformations(SNode oldNode, SNode newNode) {
    {
      final SNode mapType = oldNode;
      if (SNodeOperations.isInstanceOf(mapType, CONCEPTS.MapType$JX)) {
        DataTypeTransformationMenu.this._additional_handleMapTypeToMapTypeTransformation(mapType, newNode);
      }
    }

    {
      final SNode collectionType = oldNode;
      if (SNodeOperations.isInstanceOf(collectionType, CONCEPTS.ICollectionType$rd)) {
        DataTypeTransformationMenu.this._additional_handleCollectionTypeToMapTypeTransformation(collectionType, newNode);
      }
    }

    {
      final SNode importType = oldNode;
      if (SNodeOperations.isInstanceOf(importType, CONCEPTS.ImportedType$3u)) {
        DataTypeTransformationMenu.this._additional_handleImportTypeToMapTypeTransformation(importType, newNode);
      }
    }
  }
  private void _additional_handleMapTypeToMapTypeTransformation(SNode oldNode, SNode newNode) {
    SLinkOperations.setTarget(newNode, LINKS.keyType$mrlA, SLinkOperations.getTarget(oldNode, LINKS.keyType$mrlA));
    SLinkOperations.setTarget(newNode, LINKS.valueType$mrNC, SLinkOperations.getTarget(oldNode, LINKS.valueType$mrNC));
  }
  private void _additional_handleCollectionTypeToMapTypeTransformation(SNode oldNode, SNode newNode) {
    SLinkOperations.setTarget(newNode, LINKS.keyType$mrlA, SLinkOperations.getTarget(oldNode, LINKS.elementType$AnT5));
  }
  private void _additional_handleImportTypeToMapTypeTransformation(SNode oldNode, SNode newNode) {
    if ((int) ImportedType__BehaviorDescriptor.typeCount_idSXYyTVHlmk.invoke(oldNode) >= 1) {
      SLinkOperations.setTarget(newNode, LINKS.keyType$mrlA, ListSequence.fromList(SLinkOperations.getChildren(oldNode, LINKS.actualTypes$o6Gi)).getElement(0));
    }
    if ((int) ImportedType__BehaviorDescriptor.typeCount_idSXYyTVHlmk.invoke(oldNode) >= 2) {
      SLinkOperations.setTarget(newNode, LINKS.valueType$mrNC, ListSequence.fromList(SLinkOperations.getChildren(oldNode, LINKS.actualTypes$o6Gi)).getElement(1));
    }
  }

  private static final class CONCEPTS {
    /*package*/ static final SInterfaceConcept IDataType$Sx = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829c9dL, "CQRS.structure.IDataType");
    /*package*/ static final SInterfaceConcept ICollectionType$rd = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829cbdL, "CQRS.structure.ICollectionType");
    /*package*/ static final SConcept ImportedType$3u = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8edL, "CQRS.structure.ImportedType");
    /*package*/ static final SConcept MapType$JX = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x783dbe7d5ebb3779L, "CQRS.structure.MapType");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink elementType$AnT5 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829cbdL, 0x20f56dfff71fcf5aL, "elementType");
    /*package*/ static final SContainmentLink keyType$mrlA = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x783dbe7d5ebb3779L, 0x783dbe7d5ebb377cL, "keyType");
    /*package*/ static final SContainmentLink actualTypes$o6Gi = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8edL, 0x5e223a0a0b9c13cdL, "actualTypes");
    /*package*/ static final SContainmentLink valueType$mrNC = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x783dbe7d5ebb3779L, 0x783dbe7d5ebb377eL, "valueType");
  }
}
