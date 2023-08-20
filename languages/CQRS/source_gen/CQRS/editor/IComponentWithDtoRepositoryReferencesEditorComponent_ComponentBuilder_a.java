package CQRS.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.descriptor.AbstractEditorBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import CQRS.editor.BraceLabelStyleSheet_StyleSheet.LeftSquareBraceStyleClass;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandler;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.openapi.editor.menus.transformation.SNodeLocation;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SEmptyContainmentSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SChildSubstituteInfo;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandlerElementKeyMap;
import CQRS.editor.BraceLabelStyleSheet_StyleSheet.RightSquareBraceStyleClass;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;

/*package*/ class IComponentWithDtoRepositoryReferencesEditorComponent_ComponentBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public IComponentWithDtoRepositoryReferencesEditorComponent_ComponentBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
    super(context);
    myNode = node;
  }

  @NotNull
  @Override
  public SNode getNode() {
    return myNode;
  }

  /*package*/ EditorCell createCell() {
    return createCollection_0();
  }

  private EditorCell createCollection_0() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Indent());
    editorCell.setCellId("Collection_x7eq6k_a");
    editorCell.addEditorCell(createConstant_0());
    editorCell.addEditorCell(createRefNodeList_0());
    editorCell.addEditorCell(createConstant_1());
    return editorCell;
  }
  private EditorCell createConstant_0() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "[");
    editorCell.setCellId("repositoryReferenceListStartCellId");
    Style style = new StyleImpl();
    new LeftSquareBraceStyleClass(this).apply(style, editorCell);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, _StyleParameter_QueryFunction_x7eq6k_a0a0());
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private boolean _StyleParameter_QueryFunction_x7eq6k_a0a0() {
    return SPropertyOperations.getBoolean(getNode(), PROPS.hasVerticallyAlignedReferences$POhD);
  }
  private EditorCell createRefNodeList_0() {
    AbstractCellListHandler handler = new repositoryReferencesListHandler_x7eq6k_b0(myNode, getEditorContext());
    EditorCell_Collection editorCell = handler.createCells(new CellLayout_Indent(), false);
    editorCell.setCellId("ICWDRREC_refNodeList_repositoryReferences");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_CHILDREN_NEWLINE, false);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, _StyleParameter_QueryFunction_x7eq6k_a1b0());
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, _StyleParameter_QueryFunction_x7eq6k_a2b0());
    editorCell.getStyle().putAll(style);
    editorCell.setSRole(handler.getElementSRole());
    return editorCell;
  }
  private static class repositoryReferencesListHandler_x7eq6k_b0 extends RefNodeListHandler {
    @NotNull
    private SNode myNode;

    public repositoryReferencesListHandler_x7eq6k_b0(SNode ownerNode, EditorContext context) {
      super(context, false);
      myNode = ownerNode;
    }

    @NotNull
    public SNode getNode() {
      return myNode;
    }
    public SContainmentLink getSLink() {
      return LINKS.repositoryReferences$PHWe;
    }
    public SAbstractConcept getChildSConcept() {
      return CONCEPTS.IRepositoryReference$aQ;
    }

    public EditorCell createNodeCell(SNode elementNode) {
      EditorCell elementCell = getUpdateSession().updateChildNodeCell(elementNode);
      installElementCellActions(elementNode, elementCell, false);
      return elementCell;
    }
    public EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(repositoryReferencesListHandler_x7eq6k_b0.this.getNode(), LINKS.repositoryReferences$PHWe));
      try {
        EditorCell emptyCell = null;
        emptyCell = super.createEmptyCell();
        installElementCellActions(null, emptyCell, true);
        setCellContext(emptyCell);
        return emptyCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }

    private static final Object OBJ = new Object();

    public void installElementCellActions(SNode elementNode, EditorCell elementCell, boolean isEmptyCell) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_COMPLETE_SET) == null) {
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_COMPLETE_SET, OBJ);
          elementCell.setSubstituteInfo((isEmptyCell ? new SEmptyContainmentSubstituteInfo(elementCell) : new SChildSubstituteInfo(elementCell)));
        }
      }
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET, OBJ);
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.FORWARD));
        }
      }
      if (elementCell.getUserObject(ELEMENT_CELL_BACKSPACE_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(ELEMENT_CELL_BACKSPACE_SET, OBJ);
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.BACKWARD));
        }
      }
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, OBJ);
          DtoRepositoryReferenceDeletionActionMap.setCellActions(elementCell, elementNode, getEditorContext());
          elementCell.addKeyMap(new RefNodeListHandlerElementKeyMap(this, ","));
        }
      }
    }
    @Override
    public EditorCell createSeparatorCell(SNode prevNode, SNode nextNode) {
      EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), getNode(), ",");
      editorCell.setSelectable(false);
      Style style = new StyleImpl();
      style.set(StyleAttributes.LAYOUT_CONSTRAINT, "");
      style.set(StyleAttributes.PUNCTUATION_LEFT, true);
      style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, _StyleParameter_QueryFunction_x7eq6k_a0a1a(prevNode, nextNode));
      editorCell.getStyle().putAll(style);
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(prevNode, CellAction_DeleteNode.DeleteDirection.FORWARD));
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(prevNode, CellAction_DeleteNode.DeleteDirection.BACKWARD));
      return editorCell;
    }
    private boolean _StyleParameter_QueryFunction_x7eq6k_a0a1a(SNode prevNode, SNode nextNode) {
      return SPropertyOperations.getBoolean(getNode(), PROPS.hasVerticallyAlignedReferences$POhD);
    }
  }
  private boolean _StyleParameter_QueryFunction_x7eq6k_a1b0() {
    return SPropertyOperations.getBoolean(getNode(), PROPS.hasVerticallyAlignedReferences$POhD);
  }
  private boolean _StyleParameter_QueryFunction_x7eq6k_a2b0() {
    return SPropertyOperations.getBoolean(getNode(), PROPS.hasVerticallyAlignedReferences$POhD);
  }
  private EditorCell createConstant_1() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "]");
    editorCell.setCellId("Constant_x7eq6k_c0");
    Style style = new StyleImpl();
    new RightSquareBraceStyleClass(this).apply(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }

  private static final class PROPS {
    /*package*/ static final SProperty hasVerticallyAlignedReferences$POhD = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323ccL, "hasVerticallyAlignedReferences");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink repositoryReferences$PHWe = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323c6L, "repositoryReferences");
  }

  private static final class CONCEPTS {
    /*package*/ static final SInterfaceConcept IRepositoryReference$aQ = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e177aL, "CQRS.structure.IRepositoryReference");
  }
}
