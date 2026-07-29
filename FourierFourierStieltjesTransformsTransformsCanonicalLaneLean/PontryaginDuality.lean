import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure PontryaginDualityPackage where
  group : Type u
  topology : TopologicalSpace group
  dualGroup : Type v
  bidualIsomorphism : Prop
  fourierTransformOnDual : Prop
  pontryaginDualityHolds : Prop

structure PontryaginDualityEvidence (P : PontryaginDualityPackage) where
  bidualIsomorphismClosed : P.bidualIsomorphism
  fourierTransformOnDualClosed : P.fourierTransformOnDual
  pontryaginDualityHoldsClosed : P.pontryaginDualityHolds

def PontryaginDualityClosed (P : PontryaginDualityPackage) : Prop :=
  P.bidualIsomorphism ∧ P.fourierTransformOnDual ∧ P.pontryaginDualityHolds

theorem pontryagin_duality_closed_from_evidence (P : PontryaginDualityPackage)
    (E : PontryaginDualityEvidence P) : PontryaginDualityClosed P := by
  exact And.intro E.bidualIsomorphismClosed
    (And.intro E.fourierTransformOnDualClosed E.pontryaginDualityHoldsClosed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse
