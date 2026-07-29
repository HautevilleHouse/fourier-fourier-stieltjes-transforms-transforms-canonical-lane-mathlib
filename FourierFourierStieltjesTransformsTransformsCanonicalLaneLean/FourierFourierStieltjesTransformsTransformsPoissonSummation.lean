import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FourierFourierStieltjesTransformsTransformsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure PoissonSummationPackage where
  lattice : Set ℝ
  s : ℝ
  series : (ℤ → ℝ) → ℝ
  transform : ℝ → ℂ
  poissonFormula : Prop
  absoluteConvergence : Prop
  holomorphicContinuation : Prop

structure PoissonSummationEvidence (P : PoissonSummationPackage) where
  poissonFormulaClosed : P.poissonFormula
  absoluteConvergenceClosed : P.absoluteConvergence
  holomorphicContinuationClosed : P.holomorphicContinuation

def PoissonSummationClosed (P : PoissonSummationPackage) : Prop :=
  P.poissonFormula ∧ P.absoluteConvergence ∧ P.holomorphicContinuation

theorem poisson_summation_closed_from_evidence (P : PoissonSummationPackage) (E : PoissonSummationEvidence P) :
  PoissonSummationClosed P := by
  exact And.intro E.poissonFormulaClosed
    (And.intro E.absoluteConvergenceClosed E.holomorphicContinuationClosed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse