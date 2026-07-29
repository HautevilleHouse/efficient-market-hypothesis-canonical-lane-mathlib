import EfficientMarketHypothesisCanonicalLaneLean.EfficientMarketAdmissibleClass

namespace HautevilleHouse
namespace EfficientMarketHypothesisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EMHWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion A.object.weakFormEfficient A.object.semiStrongFormEfficient A.object.strongFormEfficient

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EfficientMarketHypothesisCanonicalLaneLean
end HautevilleHouse