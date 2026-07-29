import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure InversionPackage where
  functionClass : Type
  transform : (functionClass → ℝ) → (ℝ → ℂ)
  inversionOperator : (ℝ → ℂ) → (functionClass → ℝ)
  inversionTheorem : Prop
  pointwiseConvergence : Prop
  uniformConvergence : Prop

structure InversionEvidence (I : InversionPackage) where
  inversionTheoremClosed : I.inversionTheorem
  pointwiseConvergenceClosed : I.pointwiseConvergence
  uniformConvergenceClosed : I.uniformConvergence

def InversionClosed (I : InversionPackage) : Prop :=
  I.inversionTheorem ∧ I.pointwiseConvergence ∧ I.uniformConvergence

theorem inversion_closed_from_evidence (I : InversionPackage) (E : InversionEvidence I) :
  InversionClosed I := by
  exact And.intro E.inversionTheoremClosed
    (And.intro E.pointwiseConvergenceClosed E.uniformConvergenceClosed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse