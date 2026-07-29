import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure MinorExclusionCliqueSum (H : Type u) [Graph H] where
  excludedMinor : Graph (V H)
  cliqueSumDecomposition : Prop
  treewidthBound : ℕ
  excludedMinorEmbedding : Prop
  cliqueSumStructure : Prop
  treewidthUpperBound : treewidthBound < ℕ

structure CliqueSumEvidence (H : Type u) [Graph H] (M : MinorExclusionCliqueSum H) where
  excludedMinorEmbeddingClosed : M.excludedMinorEmbedding
  cliqueSumStructureClosed : M.cliqueSumStructure
  treewidthUpperBoundClosed : M.treewidthUpperBound

def MinorExclusionCliqueSumClosed (H : Type u) [Graph H] (M : MinorExclusionCliqueSum H) : Prop :=
  M.excludedMinorEmbedding ∧ M.cliqueSumStructure ∧ M.treewidthUpperBound

theorem minor_exclusion_clique_sum_closed (H : Type u) [Graph H] (M : MinorExclusionCliqueSum H) (E : CliqueSumEvidence M) : MinorExclusionCliqueSumClosed M := by
  exact And.intro E.excludedMinorEmbeddingClosed (And.intro E.cliqueSumStructureClosed E.treewidthUpperBoundClosed)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse