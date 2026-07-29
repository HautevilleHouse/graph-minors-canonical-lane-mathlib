import GraphMinorsCanonicalLaneLean.BranchDecomposition

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure TreeWidthDecompositionPackage {G : GraphMinorPackage} (D : BranchDecompositionPackage G) where
  treeDecomposition : Prop
  widthBound : Nat
  bagStructure : Prop
  separationProperties : Prop

structure TreeWidthDecompositionEvidence {G : GraphMinorPackage} {D : BranchDecompositionPackage G} (T : TreeWidthDecompositionPackage D) where
  treeDecompositionClosed : T.treeDecomposition
  bagStructureClosed : T.bagStructure
  separationPropertiesClosed : T.separationProperties

def TreeWidthDecompositionClosed {G : GraphMinorPackage} {D : BranchDecompositionPackage G} (T : TreeWidthDecompositionPackage D) : Prop :=
  T.treeDecomposition ∧ T.bagStructure ∧ T.separationProperties

theorem tree_width_decomposition_closed_from_evidence
    {G : GraphMinorPackage} {D : BranchDecompositionPackage G}
    (T : TreeWidthDecompositionPackage D) (E : TreeWidthDecompositionEvidence T) :
    TreeWidthDecompositionClosed T := by
  exact And.intro E.treeDecompositionClosed
    (And.intro E.bagStructureClosed E.separationPropertiesClosed)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse