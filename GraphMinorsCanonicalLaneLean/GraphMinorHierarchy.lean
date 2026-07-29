import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

struct GraphMinorHierarchy (G : Type u) [Graph G] (H : Type v) [Graph H] where
  minorRelation : H ≤ₘ G
  minorGeneration : List (GraphMinorStep G H)
  minorDepth : ℕ
  minorRelationClosed : minorRelation
  minorGenerationClosed : minorGeneration ≠ []
  minorDepthClosed : minorDepth > 0

struct MinorHierarchyEvidence (G : Type u) [Graph G] (H : Type v) [Graph H] (M : GraphMinorHierarchy G H) where
  minorRelationClosed : M.minorRelation
  minorGenerationClosed : M.minorGenerationClosed
  minorDepthClosed : M.minorDepthClosed

def GraphMinorHierarchyClosed (G : Type u) [Graph G] (H : Type v) [Graph H] (M : GraphMinorHierarchy G H) : Prop :=
  M.minorRelation ∧ M.minorGenerationClosed ∧ M.minorDepthClosed

theorem graph_minor_hierarchy_closed (G : Type u) [Graph G] (H : Type v) [Graph H] (M : GraphMinorHierarchy G H) (E : MinorHierarchyEvidence M) : GraphMinorHierarchyClosed M := by
  exact And.intro E.minorRelationClosed (And.intro E.minorGenerationClosed E.minorDepthClosed)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse