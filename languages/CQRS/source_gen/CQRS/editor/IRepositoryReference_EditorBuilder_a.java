package CQRS.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.descriptor.AbstractEditorBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Error;

/*package*/ class IRepositoryReference_EditorBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public IRepositoryReference_EditorBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
    super(context);
    myNode = node;
  }

  @NotNull
  @Override
  public SNode getNode() {
    return myNode;
  }

  /*package*/ EditorCell createCell() {
    return createError_0();
  }

  private EditorCell createError_0() {
    EditorCell_Error editorCell = new EditorCell_Error(getEditorContext(), myNode, "<repository>");
    editorCell.setCellId("Error_9nym6i_a");
    editorCell.setBig(true);
    setCellContext(editorCell);
    return editorCell;
  }
}
