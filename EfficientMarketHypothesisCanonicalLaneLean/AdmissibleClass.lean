import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EfficientMarketHypothesisCanonicalLaneLean

structure AdmissibleClass where
  object : EfficiencyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EfficiencyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EfficientMarketHypothesisCanonicalLaneLean
end HautevilleHouse