import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphMinorsCanonicalLaneLean.FiniteGraph

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

/-- A tree decomposition of a graph G. -/
structure TreeDecomposition (G : FiniteGraph) where
  Tree : Type
  bags : Tree → Set G.Vertex
  treeConnected : ∀ v : G.Vertex, { t : Tree | v ∈ bags t }.Nonempty
  edgeCondition : ∀ (e : G.Edge), ∃ t : Tree, (G.incidence e).1 ∈ bags t ∧ (G.incidence e).2 ∈ bags t
  continuity : ∀ (t1 t2 t3 : Tree), t2 ∈ pathBetween t1 t3 → bags t1 ∩ bags t3 ⊆ bags t2

/-- The width of a tree decomposition. -/
def width {G : FiniteGraph} (TD : TreeDecomposition G) : ℕ := 
  Finset.sup' (Finset.image (λ t => Finset.card (bags t)) Finset.univ) (by
    apply Finset.Nonempty.image; exact Finset.univ_nonempty)

/-- The treewidth of a graph G. -/
def treewidth (G : FiniteGraph) : ℕ :=
  Finset.inf' (Finset.image (λ (TD : TreeDecomposition G) => width TD) Finset.univ) (by
    apply Finset.Nonempty.image; exact Finset.univ_nonempty)

/-- Treewidth is monotone under taking minors. -/
theorem treewidth_minor_monotone {G H : FiniteGraph} (h : GraphMinor G H) : treewidth H ≤ treewidth G := by
  sorry

end GraphMinorsCanonicalLaneLean
end HautevilleHouse
