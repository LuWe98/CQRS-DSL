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
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public final class EventContainerToggleRequiresRepositoryReferencesIntention_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public EventContainerToggleRequiresRepositoryReferencesIntention_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "6124797423252589929"));
  }

  @Override
  public String getPresentation() {
    return "EventContainerToggleRequiresRepositoryReferencesIntention";
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
        SelectionUtil.selectLabelCellAnSetCaret(editorContext, node, "placeholderSpacerCellId", 0);
      }
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      return true;
    }



    @Override
    public IntentionDescriptor getDescriptor() {
      return EventContainerToggleRequiresRepositoryReferencesIntention_Intention.this;
    }

  }

  private static final class PROPS {
    /*package*/ static final SProperty shouldDisplayReferences$PJ7j = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323cbL, "shouldDisplayReferences");
  }
}