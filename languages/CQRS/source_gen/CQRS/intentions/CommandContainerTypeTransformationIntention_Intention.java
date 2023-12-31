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
import CQRS.behavior.CommandContainer__BehaviorDescriptor;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public final class CommandContainerTypeTransformationIntention_Intention extends AbstractIntentionDescriptor implements IntentionFactory {

  public CommandContainerTypeTransformationIntention_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "32060296156806741"));
  }

  @Override
  public String getPresentation() {
    return "CommandContainerTypeTransformationIntention";
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
    return SEnumOperations.getMembers(MetaAdapterFactory.getEnumeration(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x71e6ab63d0d881L, "CQRS.structure.CommandContainerType"));
  }
  /*package*/ final class IntentionImplementation extends AbstractIntentionExecutable implements ParameterizedIntentionExecutable {
    private SEnumerationLiteral myParameter;
    public IntentionImplementation(SEnumerationLiteral parameter) {
      myParameter = parameter;
    }

    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Transform to command " + SEnumOperations.getMemberPresentation(myParameter);
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SPropertyOperations.setEnum(node, PROPS.type$SAFo, myParameter);

      if ((boolean) CommandContainer__BehaviorDescriptor.isCommandsBlock_id1LTEHzOe0y.invoke(node)) {
        SelectionUtil.selectCell(editorContext, node, "containerTypeCellId");
        return;
      }

      SelectionUtil.selectCell(editorContext, SLinkOperations.getTarget(node, LINKS.nameWrapper$X65Q), "nameCellId");
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      if (!(isApplicableToNode(node, editorContext))) {
        return false;
      }
      return true;
    }

    private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
      return !(SPropertyOperations.getEnum(node, PROPS.type$SAFo).equals(myParameter));
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return CommandContainerTypeTransformationIntention_Intention.this;
    }

    public Object getParameter() {
      return myParameter;
    }
  }

  private static final class PROPS {
    /*package*/ static final SProperty type$SAFo = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, 0x71e6ab63d0d9fcL, "type");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink nameWrapper$X65Q = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x71e6ab661db3f2L, 0x2dcb7cdd32004e34L, "nameWrapper");
  }
}
