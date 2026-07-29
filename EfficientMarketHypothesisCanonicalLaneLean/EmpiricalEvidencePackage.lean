import HautevilleHouse.EfficientMarketHypothesisCanonicalLaneLean.MarketEfficiencyFoundation

namespace HautevilleHouse
namespace EfficientMarketHypothesisCanonicalLaneLean

structure EmpiricalEvidencePackage {M : MarketEfficiencyPackage} where
  eventStudy : Prop
  crossSectionalTest : Prop
  timeSeriesTest : Prop
  anomalyEvidence : Prop

structure EmpiricalEvidenceEvidence {M : MarketEfficiencyPackage}
    (E : EmpiricalEvidencePackage M) where
  eventStudyClosed : E.eventStudy
  crossSectionalTestClosed : E.crossSectionalTest
  timeSeriesTestClosed : E.timeSeriesTest
  anomalyEvidenceClosed : E.anomalyEvidence

def EmpiricalEvidenceClosed {M : MarketEfficiencyPackage}
    (E : EmpiricalEvidencePackage M) : Prop :=
  E.eventStudy ∧ E.crossSectionalTest ∧ E.timeSeriesTest ∧ E.anomalyEvidence

theorem empirical_evidence_closed_from_evidence {M : MarketEfficiencyPackage}
    (E : EmpiricalEvidencePackage M) (Ev : EmpiricalEvidenceEvidence E) :
    EmpiricalEvidenceClosed E := by
  exact And.intro Ev.eventStudyClosed
    (And.intro Ev.crossSectionalTestClosed
      (And.intro Ev.timeSeriesTestClosed Ev.anomalyEvidenceClosed))

end EfficientMarketHypothesisCanonicalLaneLean
end HautevilleHouse