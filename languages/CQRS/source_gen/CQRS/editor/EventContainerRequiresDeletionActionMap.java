package CQRS.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.editor.runtime.deletionApprover.DeletionApproverUtil;
import CQRS.behavior.IComponentWithRepositoryReferences__BehaviorDescriptor;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import java.util.Objects;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class EventContainerRequiresDeletionActionMap {

  /*package*/ static AbstractCellAction createAction_DELETE(final SNode node) {
    return new AbstractCellAction() {
      public void execute(EditorContext editorContext) {
        this.execute_internal(editorContext, node);
      }
      public void execute_internal(EditorContext editorContext, SNode node) {
        if (DeletionApproverUtil.approve(editorContext, node, "requiresBlockCellId")) {
          return;
        }
        IComponentWithRepositoryReferences__BehaviorDescriptor.resetReferences_id5jZDGTikSOJ.invoke(node);
        SelectionUtil.selectLabelCellAnSetCaret(editorContext, node, "placeholderSpacerCellId", 0);
      }
      @Override
      public boolean canExecute(EditorContext editorContext) {
        return this.canExecute_internal(editorContext, node);
      }
      public boolean canExecute_internal(EditorContext editorContext, SNode node) {
        return SPropertyOperations.getBoolean(node, PROPS.shouldDisplayReferences$PJ7j);
      }

    };
  }

  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    CellAction originalDelete = editorCell.getAction(CellActionType.DELETE);
    CellAction originalBackspace = editorCell.getAction(CellActionType.BACKSPACE);

    // set actions that were actually defined
    setDefinedCellActions(editorCell, node, context);

    // If we set a DELETE action but no BACKSPACE action,
    // use the DELETE action for BACKSPACE as well.
    CellAction delete = editorCell.getAction(CellActionType.DELETE);
    CellAction backspace = editorCell.getAction(CellActionType.BACKSPACE);
    if (delete != originalDelete && backspace == originalBackspace) {
      editorCell.setAction(CellActionType.BACKSPACE, delete);
    }
    if (delete != originalDelete) {
      editorCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET, OB);
    }
    if (backspace != originalBackspace) {
      editorCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_BACKSPACE_SET, OB);
    }
  }

  private static final Object OB = new Object();

  public static void setDefinedCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    // set cell actions from all imported action maps

    // set cell actions defined directly in this action map
    editorCell.setAction(CellActionType.DELETE, createAction_DELETE(node));
  }

  public static void setDefinedCellActionsOfType(EditorCell editorCell, SNode node, EditorContext context, CellActionType actionType) {

    // set cell action(s) of the given type from imported action maps

    // set cell action of the given type defined directly in this action map
    if (Objects.equals(actionType, CellActionType.DELETE)) {
      editorCell.setAction(actionType, createAction_DELETE(node));
    }
  }

  private static final class PROPS {
    /*package*/ static final SProperty shouldDisplayReferences$PJ7j = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323cbL, "shouldDisplayReferences");
  }
}
