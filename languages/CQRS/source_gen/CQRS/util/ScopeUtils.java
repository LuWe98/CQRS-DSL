package CQRS.util;

/*Generated by MPS */

import jetbrains.mps.scope.Scope;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.scope.ListScope;
import jetbrains.mps.internal.collections.runtime.Sequence;

public class ScopeUtils {

  public static Scope ofElements(SNode... nodes) {
    return ListScope.forNamedElements(Sequence.fromArray(nodes));
  }

  public static Scope ofElements(Iterable<SNode>... nodeSequences) {
    return ListScope.forNamedElements(CollectionUtils.listOf(nodeSequences));
  }

}
