import canonicalLaneMathlib.AdmissibleClass
import .FourierStieltjesMeasure

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure FourierTransformInversion (μ : FourierStieltjesMeasure) where
  transformInverts : Prop
  absoluteContinuity : Prop
  radonNikodymDerivative : μ.group → ℂ

def FourierTransformInversionClosed (μ : FourierStieltjesMeasure) (I : FourierTransformInversion μ) : Prop :=
  I.transformInverts ∧ I.absoluteContinuity

theorem fourier_transform_inversion_closed_from_evidence (μ : FourierStieltjesMeasure) (I : FourierTransformInversion μ) (ht : I.transformInverts) (ha : I.absoluteContinuity) : FourierTransformInversionClosed μ I := by
  exact And.intro ht ha

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse