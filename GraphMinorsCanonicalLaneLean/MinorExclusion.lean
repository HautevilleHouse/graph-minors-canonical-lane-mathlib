import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure MinorExclusionPackage where
  hostGraph : Type u
  excludedMinor : Type v
  embeddingNonExistence : Prop
  obstructionProperty : Prop

structure MinorExclusionEvidence (M : MinorExclusionPackage) where
  embeddingNonExistenceClosed : M.embeddingNonExistence
  obstructionPropertyClosed : M.obstructionProperty

def MinorExclusionClosed (M : MinorExclusionPackage) : Prop :=
  M.embeddingNonExistence ∧ M.obstructionProperty

theorem minor_exclusion_closed_from_evidence (M : MinorExclusionPackage)
    (E : MinorExclusionEvidence M) : MinorExclusionClosed M := by
  exact And.intro E.embeddingNonExistenceClosed E.obstructionPropertyClosed

end GraphMinorsCanonicalLaneLean
end HautevilleHouse