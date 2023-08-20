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
import CQRS.behavior.Command__BehaviorDescriptor;
import java.util.List;
import CQRS.util.CollectionUtils;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import CQRS.behavior.CommandContainer__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import CQRS.behavior.IComponentWithRepositoryReferences__BehaviorDescriptor;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public final class Command_MergeRequiredRepositoriesIntoContainer_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public Command_MergeRequiredRepositoriesIntoContainer_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "3650294462802724671"));
  }

  @Override
  public String getPresentation() {
    return "Command_MergeRequiredRepositoriesIntoContainer";
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
      return "Merge required repositories into parent command " + SEnumOperations.getMemberPresentation(SPropertyOperations.getEnum(Command__BehaviorDescriptor.getCommandContainer_id5$Oa659Yq3n.invoke(node), PROPS.type$SAFo));
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode commandContainer = Command__BehaviorDescriptor.getCommandContainer_id5$Oa659Yq3n.invoke(node);
      final List<SNode> mergedReferences = CollectionUtils.merge(SLinkOperations.getChildren(commandContainer, LINKS.repositoryReferences$PHWe), SLinkOperations.getChildren(node, LINKS.repositoryReferences$PHWe));

      Sequence.fromIterable(CommandContainer__BehaviorDescriptor.commands_idoGImgOKxc1.invoke(commandContainer)).visitAll(new IVisitor<SNode>() {
        public void visit(SNode command) {
          IComponentWithRepositoryReferences__BehaviorDescriptor.removeReferences_id5jZDGTikSQ3.invoke(command, mergedReferences);
          IComponentWithRepositoryReferences__BehaviorDescriptor.resetReferencesIfEmpty_id5jZDGTikSOY.invoke(command);
        }
      });

      IComponentWithRepositoryReferences__BehaviorDescriptor.setReferences_id5jZDGTikSRB.invoke(commandContainer, mergedReferences);
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      if (!(isApplicableToNode(node, editorContext))) {
        return false;
      }
      return true;
    }

    private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
      return (boolean) Command__BehaviorDescriptor.isInsideCommandContainer_id1jrq3npy$dZ.invoke(node) && (boolean) IComponentWithRepositoryReferences__BehaviorDescriptor.hasReferences_id5jZDGTikSOr.invoke(node);
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return Command_MergeRequiredRepositoriesIntoContainer_Intention.this;
    }

  }

  private static final class PROPS {
    /*package*/ static final SProperty type$SAFo = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, 0x71e6ab63d0d9fcL, "type");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink repositoryReferences$PHWe = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323c6L, "repositoryReferences");
  }
}