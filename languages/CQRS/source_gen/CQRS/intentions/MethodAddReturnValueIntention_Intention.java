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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;

public final class MethodAddReturnValueIntention_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public MethodAddReturnValueIntention_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "4244590657552332128"));
  }

  @Override
  public String getPresentation() {
    return "MethodAddReturnValueIntention";
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
      return (((SLinkOperations.getTarget(node, LINKS.returnTypeWrapper$BjS0) == null) ? "Add" : "Remove")) + " return type";
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      if ((SLinkOperations.getTarget(node, LINKS.returnTypeWrapper$BjS0) == null)) {
        SLinkOperations.setNewChild(node, LINKS.returnTypeWrapper$BjS0, CONCEPTS.DataTypeWrapper$rH);
      } else {
        SLinkOperations.setTarget(node, LINKS.returnTypeWrapper$BjS0, null);
      }
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      return true;
    }



    @Override
    public IntentionDescriptor getDescriptor() {
      return MethodAddReturnValueIntention_Intention.this;
    }

  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink returnTypeWrapper$BjS0 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643f0517eL, 0x73da50864400d215L, "returnTypeWrapper");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept DataTypeWrapper$rH = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x631212aed3936ea2L, "CQRS.structure.DataTypeWrapper");
  }
}