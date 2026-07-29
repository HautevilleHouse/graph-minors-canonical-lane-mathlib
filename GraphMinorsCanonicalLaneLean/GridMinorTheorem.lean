import GraphMinorsCanonicalLaneLean.TreeWidthDecomposition

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure GridMinorPackage {G : GraphMinorPackage} {D : BranchDecompositionPackage G} (T : TreeWidthDecompositionPackage D) where
  largeTreeWidthImpliesGrid : Prop
  gridMinorExists : Prop
  gridSizeBound : Nat -> Prop
  exclusionWitness : Prop

structure GridMinorEvidence {G : GraphMinorPackage} {D : BranchDecompositionPackage G}
    {T : TreeWidthDecompositionPackage D} (Gr : GridMinorPackage T) where
  largeTreeWidthImpliesGridClosed : Gr.largeTreeWidthImpliesGrid
  gridMinorExistsClosed : Gr.gridMinorExists
  exclusionWitnessClosed : Gr.exclusionWitness

def GridMinorClosed {G : GraphMinorPackage} {D : BranchDecompositionPackage G}
    {T : TreeWidthDecompositionPackage D} (Gr : GridMinorPackage T) : Prop :=
  Gr.largeTreeWidthImpliesGrid ∧ Gr.gridMinorExists ∧ Gr.exclusionWitness

theorem grid_minor_closed_from_evidence
    {G : GraphMinorPackage} {D : BranchDecompositionPackage G}
    {T : TreeWidthDecompositionPackage D} (Gr : GridMinorPackage T)
    (E : GridMinorEvidence Gr) : GridMinorClosed Gr := by
  exact And.intro E.largeTreeWidthImpliesGridClosed
    (And.intro E.gridMinorExistsClosed E.exclusionWitnessClosed)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse