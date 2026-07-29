import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure FourierStieltjesAlgebraPackage where
  group : Type u
  topology : TopologicalSpace group
  algebra : Type v
  fourierStieltjesTransform : Type w
  algebraUnital : Prop
  transformIsHomomorphism : Prop
  closureUnderLimits : Prop

structure FourierStieltjesAlgebraEvidence (F : FourierStieltjesAlgebraPackage) where
  algebraUnitalClosed : F.algebraUnital
  transformIsHomomorphismClosed : F.transformIsHomomorphism
  closureUnderLimitsClosed : F.closureUnderLimits

def FourierStieltjesAlgebraClosed (F : FourierStieltjesAlgebraPackage) : Prop :=
  F.algebraUnital ∧ F.transformIsHomomorphism ∧ F.closureUnderLimits

theorem fourier_stieltjes_algebra_closed_from_evidence (F : FourierStieltjesAlgebraPackage)
    (E : FourierStieltjesAlgebraEvidence F) : FourierStieltjesAlgebraClosed F := by
  exact And.intro E.algebraUnitalClosed
    (And.intro E.transformIsHomomorphismClosed E.closureUnderLimitsClosed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse
