import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphMinorsCanonicalLaneLean.FiniteGraph
import HautevilleHouse.GraphMinorsCanonicalLaneLean.GraphMinor
import HautevilleHouse.GraphMinorsCanonicalLaneLean.Treewidth

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

/-- The admissible class in the graph minors context. -/
structure AdmissibleGraphClass where
  G : FiniteGraph
  minorClosedFamily : Set (FiniteGraph)
  containsAllGraphs : ∀ H : FiniteGraph, H ∈ minorClosedFamily
  upwardClosed : ∀ (H K : FiniteGraph), H ∈ minorClosedFamily → GraphMinor H K → K ∈ minorClosedFamily

/-- The bridge condition: the class is closed under taking minors. -/
def bridgeClosed (A : AdmissibleGraphClass) : Prop :=
  ∀ (H : FiniteGraph), H ∈ A.minorClosedFamily → ∀ (K : FiniteGraph), GraphMinor H K → K ∈ A.minorClosedFamily

theorem bridge_from_admissible (A : AdmissibleGraphClass) : bridgeClosed A := by
  intro H hH K hMinor
  exact A.upwardClosed H K hH hMinor

end GraphMinorsCanonicalLaneLean
end HautevilleHouse
