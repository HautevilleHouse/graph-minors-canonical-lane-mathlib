import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure GraphMinorDecomposition (G : Type u) [Graph G] where
  treeWidth : ℕ
  bagAssignment : V G → Set (V G)
  treeDecomposition : TreeDecomposition G bagAssignment
  adhesion : ℕ
  torsoGraphs : List (Graph (V G))
  decompositionTheorems : Prop
  treewidthBound : Prop
  adhesionBound : Prop

structure GraphMinorEvidence (G : Type u) [Graph G] (D : GraphMinorDecomposition G) where
  decompositionTheoremsClosed : D.decompositionTheorems
  treewidthBoundClosed : D.treewidthBound
  adhesionBoundClosed : D.adhesionBound

def GraphMinorClosed (G : Type u) [Graph G] (D : GraphMinorDecomposition G) : Prop :=
  D.decompositionTheorems ∧ D.treewidthBound ∧ D.adhesionBound

theorem graph_minor_closed_from_evidence (G : Type u) [Graph G] (D : GraphMinorDecomposition G) (E : GraphMinorEvidence D) : GraphMinorClosed D := by
  exact And.intro E.decompositionTheoremsClosed (And.intro E.treewidthBoundClosed E.adhesionBoundClosed)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse