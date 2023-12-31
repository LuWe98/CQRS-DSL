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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import CQRS.behavior.Event__BehaviorDescriptor;
import java.util.List;
import CQRS.util.CollectionUtils;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import CQRS.behavior.EventContainer__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import CQRS.behavior.IComponentWithRepositoryReferences__BehaviorDescriptor;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public final class Event_MergeRequiredRepositoriesIntoContainer_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public Event_MergeRequiredRepositoriesIntoContainer_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "3650294462802752381"));
  }

  @Override
  public String getPresentation() {
    return "Event_MergeRequiredRepositoriesIntoContainer";
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
      return "Merge required repositories into parent event " + SEnumOperations.getMemberPresentation(SPropertyOperations.getEnum(Event__BehaviorDescriptor.getEventContainer_id5jZDGTfVx8p.invoke(node), PROPS.type$Ad2l));
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode eventContainer = Event__BehaviorDescriptor.getEventContainer_id5jZDGTfVx8p.invoke(node);

      final List<SNode> mergedReferences = CollectionUtils.merge(SLinkOperations.getChildren(eventContainer, LINKS.repositoryReferences$PHWe), SLinkOperations.getChildren(node, LINKS.repositoryReferences$PHWe));

      Sequence.fromIterable(EventContainer__BehaviorDescriptor.events_idoGImgOKqqA.invoke(eventContainer)).visitAll(new IVisitor<SNode>() {
        public void visit(SNode event) {
          IComponentWithRepositoryReferences__BehaviorDescriptor.removeReferences_id5jZDGTikSQ3.invoke(event, mergedReferences);
          IComponentWithRepositoryReferences__BehaviorDescriptor.resetReferencesIfEmpty_id5jZDGTikSOY.invoke(event);
        }
      });

      IComponentWithRepositoryReferences__BehaviorDescriptor.setReferences_id5jZDGTikSRB.invoke(eventContainer, mergedReferences);
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      if (!(isApplicableToNode(node, editorContext))) {
        return false;
      }
      return true;
    }

    private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
      return (boolean) IComponentWithRepositoryReferences__BehaviorDescriptor.hasReferences_id5jZDGTikSOr.invoke(node);
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return Event_MergeRequiredRepositoriesIntoContainer_Intention.this;
    }

  }

  private static final class PROPS {
    /*package*/ static final SProperty type$Ad2l = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da50864411af9fL, 0x54ffa6ce4d17aa8cL, "type");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink repositoryReferences$PHWe = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323c6L, "repositoryReferences");
  }
}
