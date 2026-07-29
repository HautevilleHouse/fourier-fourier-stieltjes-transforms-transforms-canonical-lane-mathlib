import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure FourierStieltjesTransform where
  group : Type u
  characterSpace : Type v
  measure : Type w
  complexMeasure : Prop
  fourierStieltjesMap : measure -> characterSpace -> ℂ
  boundedness : Prop
  continuity : Prop

structure FourierStieltjesRepresentationPackage where
  transform : FourierStieltjesTransform
  inversionFormula : Prop
  positivityCondition : Prop
  supportCompactness : Prop

structure FourierStieltjesRepresentationEvidence
    (P : FourierStieltjesRepresentationPackage) where
  inversionFormulaClosed : P.inversionFormula
  positivityConditionClosed : P.positivityCondition
  supportCompactnessClosed : P.supportCompactness

def FourierStieltjesRepresentationClosed
    (P : FourierStieltjesRepresentationPackage) : Prop :=
  P.inversionFormula ∧ P.positivityCondition ∧ P.supportCompactness

theorem fourier_stieltjes_rep_closed_from_evidence
    (P : FourierStieltjesRepresentationPackage)
    (E : FourierStieltjesRepresentationEvidence P) :
    FourierStieltjesRepresentationClosed P := by
  exact And.intro E.inversionFormulaClosed
    (And.intro E.positivityConditionClosed E.supportCompactnessClosed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse
