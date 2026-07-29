import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EfficientMarketHypothesisCanonicalLaneLean

structure MarketEfficiencyPackage where
  weakForm : Prop
  semiStrongForm : Prop
  strongForm : Prop
  informationSet : Type u
  priceReaction : informationSet → Prop

structure MarketEfficiencyEvidence (M : MarketEfficiencyPackage) where
  weakFormClosed : M.weakForm
  semiStrongFormClosed : M.semiStrongForm
  strongFormClosed : M.strongForm

def MarketEfficiencyClosed (M : MarketEfficiencyPackage) : Prop :=
  M.weakForm ∧ M.semiStrongForm ∧ M.strongForm

theorem market_efficiency_closed_from_evidence (M : MarketEfficiencyPackage)
    (E : MarketEfficiencyEvidence M) : MarketEfficiencyClosed M := by
  exact And.intro E.weakFormClosed (And.intro E.semiStrongFormClosed E.strongFormClosed)

end EfficientMarketHypothesisCanonicalLaneLean
end HautevilleHouse