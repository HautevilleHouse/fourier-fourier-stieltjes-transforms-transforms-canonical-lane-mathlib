import canonicalLaneMathlib.AdmissibleClass
import .FourierStieltjesMeasure

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure PositiveDefiniteFunction (G : Type u) [TopologicalSpace G] where
  function : G → ℂ
  positiveDefinite : Prop
  bochnerRepresentation : FourierStieltjesMeasure
  representationMatches : Prop

def PositiveDefiniteClosed {G : Type u} [TopologicalSpace G] (φ : PositiveDefiniteFunction G) : Prop :=
  φ.positiveDefinite ∧ φ.representationMatches ∧ FourierStieltjesMeasureClosed φ.bochnerRepresentation

theorem positive_definite_closed_from_evidence {G : Type u} [TopologicalSpace G] (φ : PositiveDefiniteFunction G) (hp : φ.positiveDefinite) (hr : φ.representationMatches) (hb : FourierStieltjesMeasureClosed φ.bochnerRepresentation) : PositiveDefiniteClosed φ := by
  exact And.intro hp (And.intro hr hb)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse