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
import CQRS.behavior.IComponentWithRepositoryReferences__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;

public final class MergeRequiredRepositoriesOfChildrenIntoContainer_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public MergeRequiredRepositoriesOfChildrenIntoContainer_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "3650294462803398277"));
  }

  @Override
  public String getPresentation() {
    return "MergeRequiredRepositoriesOfChildrenIntoContainer";
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
      return "Merge required repositories of children into parent";
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      IComponentWithRepositoryReferences__BehaviorDescriptor.resetAndMergeChildRepositoryReferences_idd$u27T68WS.invoke(node);
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      if (!(isApplicableToNode(node, editorContext))) {
        return false;
      }
      return true;
    }

    private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
      return (boolean) IComponentWithRepositoryReferences__BehaviorDescriptor.areReferencesOnChildrenAllowed_idomljbwD$pt.invoke(node) && Sequence.fromIterable(IComponentWithRepositoryReferences__BehaviorDescriptor.findChildComponentsWithRepositoryReferences_idd$u27T6o6s.invoke(node)).any(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return (boolean) IComponentWithRepositoryReferences__BehaviorDescriptor.hasReferences_id5jZDGTikSOr.invoke(it);
        }
      });
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return MergeRequiredRepositoriesOfChildrenIntoContainer_Intention.this;
    }

  }
}