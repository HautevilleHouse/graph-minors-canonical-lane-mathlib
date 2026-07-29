import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure GraphMinorObject where
  graph : Type u
  edgeRelation : graph → graph → Prop
  finite : Prop
  minorRelation : Prop
  excludedMinor : Prop

structure TreeDecomposition (G : GraphMinorObject) where
  bags : G.graph → Type v
  tree : Type w
  treeGraph : tree → tree → Prop
  covering : ∀ v : G.graph, True
  connectedness : Prop
  adhesion : Prop

structure TreeDecompositionEvidence {G : GraphMinorObject} (T : TreeDecomposition G) where
  coveringClosed : T.covering
  connectednessClosed : T.connectedness
  adhesionClosed : T.adhesion

def TreeDecompositionClosed {G : GraphMinorObject} (T : TreeDecomposition G) : Prop :=
  T.covering ∧ T.connectedness ∧ T.adhesion

theorem tree_decomposition_closed_from_evidence {G : GraphMinorObject}
    (T : TreeDecomposition G) (E : TreeDecompositionEvidence T) :
    TreeDecompositionClosed T := by
  exact And.intro E.coveringClosed (And.intro E.connectednessClosed E.adhesionClosed)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse