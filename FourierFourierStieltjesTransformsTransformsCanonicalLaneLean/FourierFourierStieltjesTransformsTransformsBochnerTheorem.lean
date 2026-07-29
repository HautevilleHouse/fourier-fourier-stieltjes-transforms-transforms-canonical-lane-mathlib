import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure BochnerTransformPackage where
  measureSpace : Type
  sigmaAlgebra : Set (Set measureSpace)
  measure : measureSpace → ℝ
  integrableFunction : (measureSpace → ℂ) → Prop
  fourierStieltjesTransform : (measureSpace → ℂ) → (ℝ → ℂ)
  transformInversion : Prop
  inversionFormula : Prop
  boundedness : Prop

structure BochnerTransformEvidence (B : BochnerTransformPackage) where
  transformInversionClosed : B.transformInversion
  inversionFormulaClosed : B.inversionFormula
  boundednessClosed : B.boundedness

def BochnerTransformClosed (B : BochnerTransformPackage) : Prop :=
  B.transformInversion ∧ B.inversionFormula ∧ B.boundedness

theorem bochner_transform_closed_from_evidence (B : BochnerTransformPackage) (E : BochnerTransformEvidence B) :
  BochnerTransformClosed B := by
  exact And.intro E.transformInversionClosed
    (And.intro E.inversionFormulaClosed E.boundednessClosed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse