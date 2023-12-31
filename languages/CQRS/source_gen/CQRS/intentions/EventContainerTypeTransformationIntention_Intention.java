package CQRS.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.AbstractIntentionDescriptor;
import jetbrains.mps.openapi.intentions.IntentionFactory;
import jetbrains.mps.openapi.intentions.Kind;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collection;
import jetbrains.mps.openapi.intentions.IntentionExecutable;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.language.SEnumerationLiteral;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.intentions.AbstractIntentionExecutable;
import jetbrains.mps.openapi.intentions.ParameterizedIntentionExecutable;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;

public final class EventContainerTypeTransformationIntention_Intention extends AbstractIntentionDescriptor implements IntentionFactory {

  public EventContainerTypeTransformationIntention_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "6124797423236790581"));
  }

  @Override
  public String getPresentation() {
    return "EventContainerTypeTransformationIntention";
  }

  @Override
  public boolean isSurroundWith() {
    return false;
  }

  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    List<IntentionExecutable> list = ListSequence.fromList(new ArrayList<IntentionExecutable>());
    List<SEnumerationLiteral> paramList = parameter(node, context);
    if (paramList != null) {
      for (SEnumerationLiteral param : paramList) {
        ListSequence.fromList(list).addElement(new IntentionImplementation(param));
      }
    }
    return list;
  }
  private List<SEnumerationLiteral> parameter(final SNode node, final EditorContext editorContext) {
    return SEnumOperations.getMembers(MetaAdapterFactory.getEnumeration(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3eecc5f46b5fc365L, "CQRS.structure.EventContainerType"));
  }
  /*package*/ final class IntentionImplementation extends AbstractIntentionExecutable implements ParameterizedIntentionExecutable {
    private SEnumerationLiteral myParameter;
    public IntentionImplementation(SEnumerationLiteral parameter) {
      myParameter = parameter;
    }

    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Transform to event " + SEnumOperations.getMemberPresentation(myParameter);
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SPropertyOperations.setEnum(node, PROPS.type$Ad2l, myParameter);

      if (!(SEnumOperations.isMember(SPropertyOperations.getEnum(node, PROPS.type$Ad2l), 0x3eecc5f46b5fc366L))) {

        return;
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
      return !(SPropertyOperations.getEnum(node, PROPS.type$Ad2l).equals(myParameter));
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return EventContainerTypeTransformationIntention_Intention.this;
    }

    public Object getParameter() {
      return myParameter;
    }
  }

  private static final class PROPS {
    /*package*/ static final SProperty type$Ad2l = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da50864411af9fL, 0x54ffa6ce4d17aa8cL, "type");
  }
}
