import GraphMinorsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure AdmissibleClass where
  object : GraphMinorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphMinorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse