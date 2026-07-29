import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure L1FourierAlgebraPackage where
  group : Type u
  topology : TopologicalSpace group
  haarMeasure : Type v
  fourierAlgebra : Type w
  algebraComplete : Prop
  fourierTransformIsIsometric : Prop
  pointwiseMultiplicationClosed : Prop

structure L1FourierAlgebraEvidence (L : L1FourierAlgebraPackage) where
  algebraCompleteClosed : L.algebraComplete
  fourierTransformIsIsometricClosed : L.fourierTransformIsIsometric
  pointwiseMultiplicationClosedClosed : L.pointwiseMultiplicationClosed

def L1FourierAlgebraClosed (L : L1FourierAlgebraPackage) : Prop :=
  L.algebraComplete ∧ L.fourierTransformIsIsometric ∧ L.pointwiseMultiplicationClosed

theorem l1_fourier_algebra_closed_from_evidence (L : L1FourierAlgebraPackage)
    (E : L1FourierAlgebraEvidence L) : L1FourierAlgebraClosed L := by
  exact And.intro E.algebraCompleteClosed
    (And.intro E.fourierTransformIsIsometricClosed E.pointwiseMultiplicationClosedClosed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse
