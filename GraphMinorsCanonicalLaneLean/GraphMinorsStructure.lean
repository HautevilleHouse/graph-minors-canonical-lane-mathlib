import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure AdmissibleClass where
  object : GraphMinorObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TreeDecompositionClosed A.object.minorRelation ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse