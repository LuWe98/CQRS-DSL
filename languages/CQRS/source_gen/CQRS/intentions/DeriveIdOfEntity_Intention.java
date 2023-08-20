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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.behavior.IElementOfBoundedContext__BehaviorDescriptor;
import CQRS.behavior.BoundedContext__BehaviorDescriptor;
import CQRS.behavior.ValueObject__BehaviorDescriptor;
import java.util.Objects;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public final class DeriveIdOfEntity_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public DeriveIdOfEntity_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "8253185029656462294"));
  }

  @Override
  public String getPresentation() {
    return "DeriveIdOfEntity";
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
      return "Create Value Object Identifier";
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode idParameter = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643ca7d84L, "CQRS.structure.Parameter"));
      SPropertyOperations.set(idParameter, PROPS.name$MnvL, "id");

      SNode idValueObject = SNodeFactoryOperations.createNewNode(CONCEPTS.ValueObject$iv, null);
      SPropertyOperations.set(idValueObject, PROPS.name$MnvL, SPropertyOperations.getString(node, PROPS.name$MnvL) + "Id");
      ListSequence.fromList(SLinkOperations.getChildren(idValueObject, LINKS.parameters$t6h4)).addElement(idParameter);

      SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(node);
      int index = (int) BoundedContext__BehaviorDescriptor.indexOf_id3FBObrohI14.invoke(boundedContext, node);
      SLinkOperations.getChildren(boundedContext, LINKS.components$8ymK).add(index, idValueObject);
      SLinkOperations.getChildren(boundedContext, LINKS.components$8ymK).add(index + 1, SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb964344649a2L, "CQRS.structure.EmptyLine")));
      SLinkOperations.setTarget(node, LINKS.idType$P983, ValueObject__BehaviorDescriptor.toReference_id7a9d0UAgg7_.invoke(idValueObject));
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      if (!(isApplicableToNode(node, editorContext))) {
        return false;
      }
      return true;
    }

    private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
      return !(Objects.equals(SPropertyOperations.getString(node, PROPS.name$MnvL), null)) && !(SPropertyOperations.getString(node, PROPS.name$MnvL).isBlank()) && !(Sequence.fromIterable(BoundedContext__BehaviorDescriptor.valueObjects_id7fqk8p3Ma$i.invoke(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(node))).any(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return !(Objects.equals(SPropertyOperations.getString(it, PROPS.name$MnvL), null)) && SPropertyOperations.getString(it, PROPS.name$MnvL).equalsIgnoreCase(SPropertyOperations.getString(node, PROPS.name$MnvL) + "Id");
        }
      }));
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return DeriveIdOfEntity_Intention.this;
    }

  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept ValueObject$iv = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8f7L, "CQRS.structure.ValueObject");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink parameters$t6h4 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb96433e80624L, 0x62cb96433e80625L, "parameters");
    /*package*/ static final SContainmentLink components$8ymK = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x49ba7df3e302f916L, 0x4cfae7e92982f50eL, "components");
    /*package*/ static final SContainmentLink idType$P983 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8fdL, 0x73da508643ec8188L, "idType");
  }
}