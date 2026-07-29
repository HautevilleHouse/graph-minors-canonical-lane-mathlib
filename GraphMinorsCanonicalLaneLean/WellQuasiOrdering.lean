import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure WellQuasiOrderPackage where
  graphClass : Type u
  quaziOrder : Type v
  wellQuasiProperty : Prop
  noInfiniteAntichain : Prop

structure WellQuasiOrderEvidence (W : WellQuasiOrderPackage) where
  wellQuasiPropertyClosed : W.wellQuasiProperty
  noInfiniteAntichainClosed : W.noInfiniteAntichain

def WellQuasiOrderClosed (W : WellQuasiOrderPackage) : Prop :=
  W.wellQuasiProperty ∧ W.noInfiniteAntichain

theorem well_quasi_order_closed_from_evidence (W : WellQuasiOrderPackage)
    (E : WellQuasiOrderEvidence W) : WellQuasiOrderClosed W := by
  exact And.intro E.wellQuasiPropertyClosed E.noInfiniteAntichainClosed

end GraphMinorsCanonicalLaneLean
end HautevilleHouse