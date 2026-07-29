import GraphMinorsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphMinorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphMinorsCanonicalLaneLean
end HautevilleHouse