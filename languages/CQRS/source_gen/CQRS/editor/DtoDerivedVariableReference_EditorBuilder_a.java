package CQRS.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.descriptor.AbstractEditorBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.editor.runtime.cells.BigCellUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.lang.editor.cellProviders.SReferenceCellProvider;
import jetbrains.mps.editor.runtime.impl.CellUtil;
import jetbrains.mps.nodeEditor.cells.EditorCell_Error;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.nodeEditor.cellMenu.SReferenceSubstituteInfoSmartReferenceDecorator;
import jetbrains.mps.nodeEditor.cellMenu.SReferenceSubstituteInfo;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.Objects;
import jetbrains.mps.lang.core.behavior.LinkAttribute__BehaviorDescriptor;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.openapi.editor.update.AttributeKind;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.EditorCell_RefPresentation;
import jetbrains.mps.smodel.action.IReferentPresentationProvider;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.lang.editor.menus.transformation.NamedTransformationMenuLookup;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.nodeEditor.cellMenu.SChildSubstituteInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;

/*package*/ class DtoDerivedVariableReference_EditorBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public DtoDerivedVariableReference_EditorBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
    super(context);
    myNode = node;
  }

  @NotNull
  @Override
  public SNode getNode() {
    return myNode;
  }

  /*package*/ EditorCell createCell() {
    return createAlternation_0();
  }

  private EditorCell createAlternation_0() {
    boolean alternationCondition = true;
    alternationCondition = nodeCondition_jcp18t_a0();
    EditorCell editorCell = null;
    if (alternationCondition) {
      editorCell = createRefCell_0();
    } else {
      editorCell = createConstant_0();
    }
    EditorCell bigCell = BigCellUtil.findBigCell(editorCell, getNode());
    if (bigCell != null) {
      bigCell.setBig(true);
      setCellContext(bigCell);
    }
    return editorCell;
  }
  private boolean nodeCondition_jcp18t_a0() {
    return !(SNodeOperations.getConcept(myNode).isAbstract());
  }
  private EditorCell createRefCell_0() {
    final SReferenceLink referenceLink = LINKS.variable$633A;
    SReferenceCellProvider provider = new SReferenceCellProvider(getNode(), referenceLink, getEditorContext()) {
      protected EditorCell createReferenceCell(final SNode targetNode) {
        EditorCell cell = getUpdateSession().updateReferencedNodeCell(() -> new Inline_Builder0(getEditorContext(), getNode(), targetNode).createCell(), targetNode, LINKS.variable$633A);
        CellUtil.setupIDeprecatableStyles(targetNode, cell);
        setSemanticNodeToCells(cell, getNode());
        installDeleteActions_notnull_smartReference(cell);
        return cell;
      }
      @Override
      protected EditorCell createErrorCell(String error) {
        EditorCell_Error cell = new EditorCell_Error(getEditorContext(), getNode(), error, true);
        cell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(getNode(), CellAction_DeleteNode.DeleteDirection.FORWARD));
        cell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(getNode(), CellAction_DeleteNode.DeleteDirection.BACKWARD));
        return cell;
      }
    };

    provider.setNoTargetText("<no variable>");
    EditorCell editorCell = provider.createCell();

    if (editorCell.getSRole() == null) {
      editorCell.setReferenceCell(true);
      editorCell.setSRole(LINKS.variable$633A);
    }
    editorCell.setSubstituteInfo(new SReferenceSubstituteInfoSmartReferenceDecorator(new SReferenceSubstituteInfo(editorCell, referenceLink)));
    Iterable<SNode> referenceAttributes = SNodeOperations.ofConcept(new IAttributeDescriptor.AllAttributes().list(myNode), CONCEPTS.LinkAttribute$v_);
    Iterable<SNode> currentReferenceAttributes = Sequence.fromIterable(referenceAttributes).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return Objects.equals(LinkAttribute__BehaviorDescriptor.getLink_id1avfQ4BEFo6.invoke(it), referenceLink);
      }
    });
    if (Sequence.fromIterable(currentReferenceAttributes).isNotEmpty()) {
      EditorManager manager = EditorManager.getInstanceFromContext(getEditorContext());
      return manager.createNodeRoleAttributeCell(Sequence.fromIterable(currentReferenceAttributes).first(), AttributeKind.REFERENCE, editorCell);
    } else
    return editorCell;
  }
  /*package*/ static class Inline_Builder0 extends AbstractEditorBuilder {
    @NotNull
    private SNode myNode;
    private SNode myReferencingNode;

    /*package*/ Inline_Builder0(@NotNull EditorContext context, SNode referencingNode, @NotNull SNode node) {
      super(context);
      myReferencingNode = referencingNode;
      myNode = node;
    }

    /*package*/ EditorCell createCell() {
      return createReferencePresentation_0();
    }

    @NotNull
    @Override
    public SNode getNode() {
      return myNode;
    }

    private EditorCell createReferencePresentation_0() {
      EditorCell_Property editorCell = EditorCell_RefPresentation.create(getEditorContext(), myNode, myReferencingNode, IReferentPresentationProvider.getDefaultPresentation(LINKS.variable$633A));
      editorCell.setCellId("ReferencePresentation_jcp18t_a0a0");
      Style style = new StyleImpl();
      style.set(StyleAttributes.EDITABLE, false);
      style.set(StyleAttributes.AUTO_DELETABLE, true);
      editorCell.getStyle().putAll(style);
      GenericDataTypeDeletion_ActionMap.setCellActions(editorCell, myNode, getEditorContext());
      editorCell.setTransformationMenuLookup(new NamedTransformationMenuLookup(LanguageRegistry.getInstance(getEditorContext().getRepository()), CONCEPTS.IVariableReference$9a, "CQRS.editor.IVariableReference_IgnoredVariables_TransformationMenu"));
      editorCell.setSubstituteInfo(new SChildSubstituteInfo(editorCell));
      return editorCell;
    }
  }
  private EditorCell createConstant_0() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "");
    editorCell.setCellId("Constant_jcp18t_a0");
    editorCell.setTransformationMenuLookup(new NamedTransformationMenuLookup(LanguageRegistry.getInstance(getEditorContext().getRepository()), CONCEPTS.IVariableReference$9a, "CQRS.editor.IVariableReference_IgnoredVariables_TransformationMenu"));
    editorCell.setDefaultText("<variable>");
    editorCell.setSubstituteInfo(new SChildSubstituteInfo(editorCell));
    return editorCell;
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink variable$633A = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x5d9cf3447d900a56L, 0x5d9cf3447d900a59L, "variable");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept LinkAttribute$v_ = MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da51L, "jetbrains.mps.lang.core.structure.LinkAttribute");
    /*package*/ static final SInterfaceConcept IVariableReference$9a = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4c59e910fafca7b2L, "CQRS.structure.IVariableReference");
  }
}
