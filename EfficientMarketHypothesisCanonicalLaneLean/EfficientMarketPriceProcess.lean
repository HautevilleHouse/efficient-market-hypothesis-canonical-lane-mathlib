import EfficientMarketHypothesisCanonicalLaneLean.EfficientMarketAdmissibleClass

namespace HautevilleHouse
namespace EfficientMarketHypothesisCanonicalLaneLean

structure PriceProcessPackage (A : EMHAdmittedObject) where
  initialPrice : Prop
  priceIncrement : Prop
  martingaleCondition : Prop
  efficiencyCondition : Prop

structure PriceProcessEvidence {A : EMHAdmittedObject} (P : PriceProcessPackage A) where
  initialPriceClosed : P.initialPrice
  priceIncrementClosed : P.priceIncrement
  martingaleConditionClosed : P.martingaleCondition
  efficiencyConditionClosed : P.efficiencyCondition

def PriceProcessClosed {A : EMHAdmittedObject} (P : PriceProcessPackage A) : Prop :=
  P.initialPrice ∧ P.priceIncrement ∧ P.martingaleCondition ∧ P.efficiencyCondition

theorem price_process_closed_from_evidence {A : EMHAdmittedObject} (P : PriceProcessPackage A) (E : PriceProcessEvidence P) : PriceProcessClosed P := by
  exact And.intro E.initialPriceClosed (And.intro E.priceIncrementClosed (And.intro E.martingaleConditionClosed E.efficiencyConditionClosed))

end EfficientMarketHypothesisCanonicalLaneLean
end HautevilleHouse