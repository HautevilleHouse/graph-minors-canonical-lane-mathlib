import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphMinorsCanonicalLaneLean.FiniteGraph

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

/-- A graph H is a minor of G if H can be obtained from G by vertex deletions, edge deletions, and edge contractions. -/
structure GraphMinor (G H : FiniteGraph) : Prop where
  deletionSequence : List (FiniteGraph)
  stepsValid : ... 
  finalIsomorphic : ...

/-- The minor relation is transitive. -/
theorem minor_transitive {G H K : FiniteGraph} (hGH : GraphMinor G H) (hHK : GraphMinor H K) : GraphMinor G K := by
  sorry

/-- The minor relation is reflexive. -/
theorem minor_reflexive (G : FiniteGraph) : GraphMinor G G := by
  sorry

end GraphMinorsCanonicalLaneLean
end HautevilleHouse