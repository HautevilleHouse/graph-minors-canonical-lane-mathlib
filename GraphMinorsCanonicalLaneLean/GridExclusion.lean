import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphMinorsCanonicalLaneLean.FiniteGraph
import HautevilleHouse.GraphMinorsCanonicalLaneLean.Treewidth

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

/-- The n×n grid graph. -/
def gridGraph (n : ℕ) : FiniteGraph where
  Vertex := Fin n × Fin n
  Edge := ...
  incidence := ...
  finiteVertices := by
    apply Fintype.ofFinite
  finiteEdges := by
    apply Fintype.ofFinite

/-- The Grid Exclusion Theorem: a graph of large treewidth contains a large grid minor. -/
theorem gridExclusion (G : FiniteGraph) (k : ℕ) (h : treewidth G ≥ k) : 
  ∃ (n : ℕ), n ≥ k ∧ GraphMinor G (gridGraph n) := by
  sorry

/-- The Excluded Grid Theorem (Robertson–Seymour): there exists a function f such that for every graph G, if treewidth(G) ≥ f(k) then G contains the k×k grid as a minor. -/
theorem excludedGridTheorem (k : ℕ) : ∃ (f : ℕ → ℕ), ∀ (G : FiniteGraph), treewidth G ≥ f k → GraphMinor G (gridGraph k) := by
  sorry

end GraphMinorsCanonicalLaneLean
end HautevilleHouse
