import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure StieltjesTransformPackage where
  spectralMeasure : Type u
  resolutionOfIdentity : Prop
  transformFromMeasure : Prop
  continuityProperty : Prop
  inversionFromStieltjes : Prop

structure StieltjesTransformEvidence (S : StieltjesTransformPackage) where
  resolutionOfIdentityClosed : S.resolutionOfIdentity
  transformFromMeasureClosed : S.transformFromMeasure
  continuityPropertyClosed : S.continuityProperty
  inversionFromStieltjesClosed : S.inversionFromStieltjes

def StieltjesTransformClosed (S : StieltjesTransformPackage) : Prop :=
  S.resolutionOfIdentity ∧ S.transformFromMeasure ∧ S.continuityProperty ∧ S.inversionFromStieltjes

theorem stieltjes_transform_closed_from_evidence (S : StieltjesTransformPackage) (E : StieltjesTransformEvidence S) :
    StieltjesTransformClosed S := by
  exact And.intro E.resolutionOfIdentityClosed (And.intro E.transformFromMeasureClosed (And.intro E.continuityPropertyClosed E.inversionFromStieltjesClosed))

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse
