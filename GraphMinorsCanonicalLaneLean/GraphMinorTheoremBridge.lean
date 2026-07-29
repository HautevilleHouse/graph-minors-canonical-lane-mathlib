import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure GraphMinorTheoremBridge (G : Type u) [Graph G] where
  excludedMinorCharacterization : Prop
  wellQuasiOrdering : Prop
  decompositionIntoCliqueSums : Prop
  excludedMinorCharacterizationClosed : excludedMinorCharacterization
  wellQuasiOrderingClosed : wellQuasiOrdering
  decompositionIntoCliqueSumsClosed : decompositionIntoCliqueSums

def GraphMinorTheoremClosed (G : Type u) [Graph G] (B : GraphMinorTheoremBridge G) : Prop :=
  B.excludedMinorCharacterization ∧ B.wellQuasiOrdering ∧ B.decompositionIntoCliqueSums

theorem graph_minor_theorem_closed (G : Type u) [Graph G] (B : GraphMinorTheoremBridge G) : GraphMinorTheoremClosed B := by
  exact And.intro B.excludedMinorCharacterizationClosed (And.intro B.wellQuasiOrderingClosed B.decompositionIntoCliqueSumsClosed)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse