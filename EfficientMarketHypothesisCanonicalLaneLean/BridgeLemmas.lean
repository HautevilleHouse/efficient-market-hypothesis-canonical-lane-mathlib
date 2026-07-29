import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EfficientMarketHypothesisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EfficiencyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EfficientMarketHypothesisCanonicalLaneLean
end HautevilleHouse