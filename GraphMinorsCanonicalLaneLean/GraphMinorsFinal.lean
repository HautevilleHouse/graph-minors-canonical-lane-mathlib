import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

def ConstrainedGraphMinorsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_minors_endgame (A : AdmissibleClass) :
    ConstrainedGraphMinorsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse