import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure PositiveDefiniteFunctionsPackage where
  group : Type u
  topology : TopologicalSpace group
  functionSpace : Type v
  positiveDefiniteCondition : Prop
  bochnerTheoremApplicable : Prop
  fourierStieltjesTransformRepresentation : Prop

structure PositiveDefiniteFunctionsEvidence (P : PositiveDefiniteFunctionsPackage) where
  positiveDefiniteConditionClosed : P.positiveDefiniteCondition
  bochnerTheoremApplicableClosed : P.bochnerTheoremApplicable
  fourierStieltjesTransformRepresentationClosed : P.fourierStieltjesTransformRepresentation

def PositiveDefiniteFunctionsClosed (P : PositiveDefiniteFunctionsPackage) : Prop :=
  P.positiveDefiniteCondition ∧ P.bochnerTheoremApplicable ∧ P.fourierStieltjesTransformRepresentation

theorem positive_definite_functions_closed_from_evidence (P : PositiveDefiniteFunctionsPackage)
    (E : PositiveDefiniteFunctionsEvidence P) : PositiveDefiniteFunctionsClosed P := by
  exact And.intro E.positiveDefiniteConditionClosed
    (And.intro E.bochnerTheoremApplicableClosed E.fourierStieltjesTransformRepresentationClosed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse
