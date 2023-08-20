package CQRS.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.AbstractIntentionDescriptor;
import jetbrains.mps.openapi.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.openapi.intentions.IntentionExecutable;
import jetbrains.mps.openapi.intentions.Kind;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import java.util.Collections;
import jetbrains.mps.intentions.AbstractIntentionExecutable;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import CQRS.behavior.IComponentWithRepositoryReferences__BehaviorDescriptor;
import CQRS.util.EditorContextUtils;
import jetbrains.mps.openapi.editor.selection.SelectionManager;
import CQRS.behavior.Query__BehaviorDescriptor;
import CQRS.behavior.QueryContainer__BehaviorDescriptor;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public final class QueryToggleRequiredRepositoriesIntention_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public QueryToggleRequiredRepositoriesIntention_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "7215197606719940789"));
  }

  @Override
  public String getPresentation() {
    return "QueryToggleRequiredRepositoriesIntention";
  }

  @Override
  public boolean isSurroundWith() {
    return false;
  }

  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends AbstractIntentionExecutable {
    public IntentionImplementation() {
    }

    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return ((SPropertyOperations.getBoolean(node, PROPS.shouldDisplayReferences$PJ7j) ? "Remove" : "Add")) + " 'requires' declaration";
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SPropertyOperations.set(node, PROPS.shouldDisplayReferences$PJ7j, !(SPropertyOperations.getBoolean(node, PROPS.shouldDisplayReferences$PJ7j)));
      if (SPropertyOperations.getBoolean(node, PROPS.shouldDisplayReferences$PJ7j)) {
        SelectionUtil.selectLabelCellAnSetCaret(editorContext, node, "repositoryReferenceListStartCellId", -1);
        return;
      }

      IComponentWithRepositoryReferences__BehaviorDescriptor.clearReferences_id5jZDGTikSO_.invoke(node);

      if (EditorContextUtils.isSelectedCellChildOf(editorContext, "requiresBlockCellId")) {
        SelectionUtil.selectCell(editorContext, node, SelectionManager.LAST_CELL);
      }
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      if (!(isApplicableToNode(node, editorContext))) {
        return false;
      }
      return true;
    }

    private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
      return !((boolean) Query__BehaviorDescriptor.isInsideQueryContainer_id2Bsub$Lr4Li.invoke(node)) || (boolean) QueryContainer__BehaviorDescriptor.isQueriesBlock_id6gxxZVtebNx.invoke(Query__BehaviorDescriptor.getQueryContainer_id6gxxZVrXJ64.invoke(node));
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return QueryToggleRequiredRepositoriesIntention_Intention.this;
    }

  }

  private static final class PROPS {
    /*package*/ static final SProperty shouldDisplayReferences$PJ7j = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323cbL, "shouldDisplayReferences");
  }
}
