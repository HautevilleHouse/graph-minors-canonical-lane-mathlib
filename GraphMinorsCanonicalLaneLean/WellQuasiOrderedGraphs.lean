import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

struct WellQuasiOrderedGraphs (G : Type u) [Graph G] where
  wqoProperty : ∀ (seq : ℕ → Graph G), ∃ i j, i < j ∧ seq i ≤ₘ seq j
  minorIdealFiniteBasis : Prop
  obstructionSet : Finset (Graph G)
  wqoPropertyClosed : wqoProperty
  minorIdealFiniteBasisClosed : minorIdealFiniteBasis

struct WQOEvidence (G : Type u) [Graph G] (W : WellQuasiOrderedGraphs G) where
  wqoPropertyClosed : W.wqoProperty
  minorIdealFiniteBasisClosed : W.minorIdealFiniteBasis

def WellQuasiOrderedClosed (G : Type u) [Graph G] (W : WellQuasiOrderedGraphs G) : Prop :=
  W.wqoProperty ∧ W.minorIdealFiniteBasis

theorem well_quasi_ordered_closed (G : Type u) [Graph G] (W : WellQuasiOrderedGraphs G) (E : WQOEvidence W) : WellQuasiOrderedClosed W := by
  exact And.intro E.wqoPropertyClosed E.minorIdealFiniteBasisClosed

end GraphMinorsCanonicalLaneLean
end HautevilleHouse