import GraphMinorsCanonicalLaneLean.GridMinorTheorem

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure GraphMinorStructure {G : GraphMinorPackage} {D : BranchDecompositionPackage G}
    {T : TreeWidthDecompositionPackage D} {Gr : GridMinorPackage T} (M : MinorExclusionPackage Gr) where
  finiteSetObstruction : Prop
  minorClosedClass : Prop
  excludedMinorCharacterization : Prop

structure GraphMinorEvidence {G : GraphMinorPackage} {D : BranchDecompositionPackage G}
    {T : TreeWidthDecompositionPackage D} {Gr : GridMinorPackage T}
    {M : MinorExclusionPackage Gr} (S : GraphMinorStructure M) where
  finiteSetObstructionClosed : S.finiteSetObstruction
  minorClosedClassClosed : S.minorClosedClass
  excludedMinorCharacterizationClosed : S.excludedMinorCharacterization

def GraphMinorClosed {G : GraphMinorPackage} {D : BranchDecompositionPackage G}
    {T : TreeWidthDecompositionPackage D} {Gr : GridMinorPackage T}
    {M : MinorExclusionPackage Gr} (S : GraphMinorStructure M) : Prop :=
  S.finiteSetObstruction ∧ S.minorClosedClass ∧ S.excludedMinorCharacterization

theorem graph_minor_closed_from_evidence
    {G : GraphMinorPackage} {D : BranchDecompositionPackage G}
    {T : TreeWidthDecompositionPackage D} {Gr : GridMinorPackage T}
    {M : MinorExclusionPackage Gr} (S : GraphMinorStructure M)
    (E : GraphMinorEvidence S) : GraphMinorClosed S := by
  exact And.intro E.finiteSetObstructionClosed
    (And.intro E.minorClosedClassClosed E.excludedMinorCharacterizationClosed)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse