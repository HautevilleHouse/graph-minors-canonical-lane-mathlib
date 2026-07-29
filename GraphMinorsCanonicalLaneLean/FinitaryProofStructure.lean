import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure FinitaryProofStructurePackage where
  graph : Type u
  minorRelation : Prop
  finiteCharacter : Prop
  combinatorialProof : Prop

structure FinitaryProofStructureEvidence (F : FinitaryProofStructurePackage) where
  finiteCharacterClosed : F.finiteCharacter
  combinatorialProofClosed : F.combinatorialProof

def FinitaryProofStructureClosed (F : FinitaryProofStructurePackage) : Prop :=
  F.finiteCharacter ∧ F.combinatorialProof

theorem finitary_proof_structure_closed_from_evidence
    (F : FinitaryProofStructurePackage)
    (E : FinitaryProofStructureEvidence F) : FinitaryProofStructureClosed F := by
  exact And.intro E.finiteCharacterClosed E.combinatorialProofClosed

end GraphMinorsCanonicalLaneLean
end HautevilleHouse