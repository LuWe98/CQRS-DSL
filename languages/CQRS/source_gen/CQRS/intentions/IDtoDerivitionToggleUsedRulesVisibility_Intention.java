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
import CQRS.behavior.IDtoDerivation__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SConcept;

public final class IDtoDerivitionToggleUsedRulesVisibility_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public IDtoDerivitionToggleUsedRulesVisibility_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "757976835736438769"));
  }

  @Override
  public String getPresentation() {
    return "IDtoDerivitionToggleUsedRulesVisibility";
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
      return ((SPropertyOperations.getBoolean(node, PROPS.showDerivationRules$QFN9) ? "Remove" : "Add")) + " 'use rules' declaration";
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SPropertyOperations.set(node, PROPS.showDerivationRules$QFN9, !(SPropertyOperations.getBoolean(node, PROPS.showDerivationRules$QFN9)));

      if (SPropertyOperations.getBoolean(node, PROPS.showDerivationRules$QFN9)) {
        SelectionUtil.selectLabelCellAnSetCaret(editorContext, node, "derivationRulesLeftBraceCellId", -1);
        return;
      }

      IDtoDerivation__BehaviorDescriptor.clearUsedDerivationRules_id1pnQbpDKcyV.invoke(node);

      if (ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.ignoredVariableReferences$gg2P)).isNotEmpty()) {
        SelectionUtil.selectLabelCellAnSetCaret(editorContext, node, "ignoredVariablesRightBraceCellId", -1);
        return;
      }

      {
        final SNode dto = node;
        if (SNodeOperations.isInstanceOf(dto, CONCEPTS.Dto$yu)) {
          SelectionUtil.selectCell(editorContext, dto, "spaceAfterDerivableCellId");
          return;
        }
      }

      {
        final SNode flatteningRule = node;
        if (SNodeOperations.isInstanceOf(flatteningRule, CONCEPTS.DtoFlatteningRule$GR)) {
          SelectionUtil.selectCell(editorContext, flatteningRule, "spaceAfterDerivableCellId");
        }
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
      return (SNodeOperations.isInstanceOf(node, CONCEPTS.Dto$yu) ? (boolean) IDtoDerivation__BehaviorDescriptor.isDerived_id3NXs7yomeLh.invoke(node) : true);
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return IDtoDerivitionToggleUsedRulesVisibility_Intention.this;
    }

  }

  private static final class PROPS {
    /*package*/ static final SProperty showDerivationRules$QFN9 = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789857e2b7L, 0x3cfd70789a0b2c59L, "showDerivationRules");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink ignoredVariableReferences$gg2P = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789857e2b7L, 0x3cfd707898583365L, "ignoredVariableReferences");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Dto$yu = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f903L, "CQRS.structure.Dto");
    /*package*/ static final SConcept DtoFlatteningRule$GR = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f985L, "CQRS.structure.DtoFlatteningRule");
  }
}
