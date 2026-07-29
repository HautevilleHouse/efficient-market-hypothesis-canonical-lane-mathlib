import HautevilleHouse.EfficientMarketHypothesisCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EfficientMarketHypothesisCanonicalLaneLean

def ConstrainedEMHClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_emh_endgame (A : AdmissibleClass) :
    ConstrainedEMHClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EfficientMarketHypothesisCanonicalLaneLean
end HautevilleHouse