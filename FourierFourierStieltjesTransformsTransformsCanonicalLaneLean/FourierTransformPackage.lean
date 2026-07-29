import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure FourierTransformPackage where
  group : Type u
  topology : TopologicalSpace group
  dualGroup : Type v
  dualTopology : TopologicalSpace dualGroup
  forMeasure : FourierStieltjesMeasure
  evaluatedAt : dualGroup → ℂ
  translationInvariant : Prop
  transformInversion : Prop
  translationInvariantTerm : translationInvariant
  transformInversionTerm : transformInversion

structure FourierTransformEvidence (F : FourierTransformPackage) where
  translationInvariantClosed : F.translationInvariant
  transformInversionClosed : F.transformInversion

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.translationInvariant ∧ F.transformInversion

theorem fourier_transform_closed_from_evidence
    (F : FourierTransformPackage) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.translationInvariantClosed E.transformInversionClosed

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse