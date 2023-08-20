package CQRS.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.editor.runtime.deletionApprover.DeletionApproverUtil;
import CQRS.behavior.IDtoDerivation__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import java.util.Objects;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SProperty;

public class IDtoDerivation_DeleteIgnoredVariables_Action_map {

  /*package*/ static AbstractCellAction createAction_DELETE(final SNode node) {
    return new AbstractCellAction() {
      public void execute(EditorContext editorContext) {
        this.execute_internal(editorContext, node);
      }
      public void execute_internal(EditorContext editorContext, SNode node) {
        if (DeletionApproverUtil.approve(editorContext, node, "ignoredVariablesCellId")) {
          return;
        }
        IDtoDerivation__BehaviorDescriptor.resetIgnoredVariables_id3NXs7ypgbbL.invoke(node);

        {
          final SNode dto = node;
          if (SNodeOperations.isInstanceOf(dto, CONCEPTS.Dto$yu)) {
            SelectionUtil.selectLabelCellAnSetCaret(editorContext, dto, "spaceAfterDerivableCellId", 0);
          }
        }

        {
          final SNode flatDerivable = node;
          if (SNodeOperations.isInstanceOf(flatDerivable, CONCEPTS.DtoFlatteningRule$GR)) {
            SelectionUtil.selectLabelCellAnSetCaret(editorContext, flatDerivable, "spaceAfterDerivableCellId", 0);
          }
        }
      }
      @Override
      public boolean canExecute(EditorContext editorContext) {
        return this.canExecute_internal(editorContext, node);
      }
      public boolean canExecute_internal(EditorContext editorContext, SNode node) {
        return SPropertyOperations.getBoolean(node, PROPS.showIgnoredVariables$glFd);
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

  private static final class CONCEPTS {
    /*package*/ static final SConcept Dto$yu = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f903L, "CQRS.structure.Dto");
    /*package*/ static final SConcept DtoFlatteningRule$GR = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f985L, "CQRS.structure.DtoFlatteningRule");
  }

  private static final class PROPS {
    /*package*/ static final SProperty showIgnoredVariables$glFd = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789857e2b7L, 0x3cfd707898583368L, "showIgnoredVariables");
  }
}