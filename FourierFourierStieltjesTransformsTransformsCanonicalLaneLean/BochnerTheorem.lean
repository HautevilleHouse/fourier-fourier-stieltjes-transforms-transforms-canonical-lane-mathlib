import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure BochnerTheoremPackage where
  locallyCompactAbelianGroup : Type u
  dualGroup : Type v
  fourierStieltjesTransform : FourierStieltjesTransform
  positiveDefiniteFunction : Prop
  uniquenessRepresentation : Prop
  inversionHolds : Prop

structure BochnerTheoremEvidence (B : BochnerTheoremPackage) where
  positiveDefiniteFunctionClosed : B.positiveDefiniteFunction
  uniquenessRepresentationClosed : B.uniquenessRepresentation
  inversionHoldsClosed : B.inversionHolds

def BochnerTheoremClosed (B : BochnerTheoremPackage) : Prop :=
  B.positiveDefiniteFunction ∧ B.uniquenessRepresentation ∧ B.inversionHolds

theorem bochner_theorem_closed_from_evidence (B : BochnerTheoremPackage)
    (E : BochnerTheoremEvidence B) : BochnerTheoremClosed B := by
  exact And.intro E.positiveDefiniteFunctionClosed
    (And.intro E.uniquenessRepresentationClosed E.inversionHoldsClosed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse
