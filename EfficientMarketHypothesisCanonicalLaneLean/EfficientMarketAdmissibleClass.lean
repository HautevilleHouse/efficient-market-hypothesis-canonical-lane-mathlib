import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EfficientMarketHypothesisCanonicalLaneLean

structure MarketSpace where
  carrier : Type
  probabilitySpace : Type
  filtration : Type

structure EMHAdmittedObject where
  market : MarketSpace
  weakFormEfficient : Prop
  semiStrongFormEfficient : Prop
  strongFormEfficient : Prop
  martingaleProperty : Prop
  conclusion : weakFormEfficient → semiStrongFormEfficient → strongFormEfficient → martingaleProperty

structure EMHEndgameState where
  object : EMHAdmittedObject

def EMHWitnessClosed (O : EMHAdmittedObject) : Prop :=
  O.weakFormEfficient ∧ O.semiStrongFormEfficient ∧ O.strongFormEfficient ∧ O.martingaleProperty

structure AdmissibleClass where
  object : EMHAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EMHWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EfficientMarketHypothesisCanonicalLaneLean
end HautevilleHouse