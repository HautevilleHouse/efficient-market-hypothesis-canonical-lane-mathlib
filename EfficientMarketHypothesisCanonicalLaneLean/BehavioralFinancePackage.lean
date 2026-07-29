import HautevilleHouse.EfficientMarketHypothesisCanonicalLaneLean.EmpiricalEvidencePackage

namespace HautevilleHouse
namespace EfficientMarketHypothesisCanonicalLaneLean

structure BehavioralFinancePackage {M : MarketEfficiencyPackage}
    {E : EmpiricalEvidencePackage M} where
  prospectTheory : Prop
  overconfidence : Prop
  herding : Prop
  limitsToArbitrage : Prop

structure BehavioralFinanceEvidence {M : MarketEfficiencyPackage}
    {E : EmpiricalEvidencePackage M} (B : BehavioralFinancePackage M E) where
  prospectTheoryClosed : B.prospectTheory
  overconfidenceClosed : B.overconfidence
  herdingClosed : B.herding
  limitsToArbitrageClosed : B.limitsToArbitrage

def BehavioralFinanceClosed {M : MarketEfficiencyPackage}
    {E : EmpiricalEvidencePackage M} (B : BehavioralFinancePackage M E) : Prop :=
  B.prospectTheory ∧ B.overconfidence ∧ B.herding ∧ B.limitsToArbitrage

theorem behavioral_finance_closed_from_evidence {M : MarketEfficiencyPackage}
    {E : EmpiricalEvidencePackage M} (B : BehavioralFinancePackage M E)
    (Ev : BehavioralFinanceEvidence B) : BehavioralFinanceClosed B := by
  exact And.intro Ev.prospectTheoryClosed
    (And.intro Ev.overconfidenceClosed
      (And.intro Ev.herdingClosed Ev.limitsToArbitrageClosed))

end EfficientMarketHypothesisCanonicalLaneLean
end HautevilleHouse