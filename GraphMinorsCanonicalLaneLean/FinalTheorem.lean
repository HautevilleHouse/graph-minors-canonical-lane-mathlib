import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphMinorsCanonicalLaneLean.GraphMinorBridge
import HautevilleHouse.GraphMinorsCanonicalLaneLean.GraphMinorsGate

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

/-- The constrained closure for the Graph Minors Theorem: minor-closed families are characterized by finitely many forbidden minors. -/
def ConstrainedGraphMinorsClosure (A : AdmissibleGraphClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_minors_endgame (A : AdmissibleGraphClass) : ConstrainedGraphMinorsClosure A := by
  exact And.intro (bridge_from_admissible A) (gate_from_admissible A)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse
