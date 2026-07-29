import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure FourierTransformPackage where
  measure : Type u
  measureSpace : MeasureTheory.MeasureSpace measure
  integrableCondition : Prop
  transformDefined : Prop
  inversionFormula : Prop
  positivityPreservation : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  integrableConditionClosed : F.integrableCondition
  transformDefinedClosed : F.transformDefined
  inversionFormulaClosed : F.inversionFormula
  positivityPreservationClosed : F.positivityPreservation

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.integrableCondition ∧ F.transformDefined ∧ F.inversionFormula ∧ F.positivityPreservation

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.integrableConditionClosed (And.intro E.transformDefinedClosed (And.intro E.inversionFormulaClosed E.positivityPreservationClosed))

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse
