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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.behavior.IComponentWithRepositoryReferences__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import CQRS.behavior.IElementOfBoundedContext__BehaviorDescriptor;
import CQRS.behavior.BoundedContext__BehaviorDescriptor;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;

public final class AggregateRootCommandContainerCreationIntention_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public AggregateRootCommandContainerCreationIntention_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "4244590657551061422"));
  }

  @Override
  public String getPresentation() {
    return "AggregateRootCommandContainerCreationIntention";
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
      return "Create command block";
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode repositoryReference = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x593428614a1cdb1aL, "CQRS.structure.AggregateRootRepositoryReference"));
      SLinkOperations.setTarget(repositoryReference, LINKS.aggregate$rv49, node);

      // TODO - Potentiell entfernen

      SNode commandContainer = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, "CQRS.structure.CommandContainer"));
      IComponentWithRepositoryReferences__BehaviorDescriptor.addReference_id5jZDGTikSQy.invoke(commandContainer, repositoryReference);
      SPropertyOperations.set(commandContainer, PROPS.shouldDisplayReferences$PJ7j, true);

      SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(node);
      int index = (int) BoundedContext__BehaviorDescriptor.indexOf_id3FBObrohI14.invoke(boundedContext, node);
      SLinkOperations.getChildren(boundedContext, LINKS.components$8ymK).add(index + 1, SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb964344649a2L, "CQRS.structure.EmptyLine")));
      SLinkOperations.getChildren(boundedContext, LINKS.components$8ymK).add(index + 2, commandContainer);
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      if (!(isApplicableToNode(node, editorContext))) {
        return false;
      }
      return true;
    }

    private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
      return true;
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return AggregateRootCommandContainerCreationIntention_Intention.this;
    }

  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink aggregate$rv49 = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x593428614a1cdb1aL, 0x593428614a1d9431L, "aggregate");
    /*package*/ static final SContainmentLink components$8ymK = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x49ba7df3e302f916L, 0x4cfae7e92982f50eL, "components");
  }

  private static final class PROPS {
    /*package*/ static final SProperty shouldDisplayReferences$PJ7j = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323cbL, "shouldDisplayReferences");
  }
}
