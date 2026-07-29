import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure FourierStieltjesMeasure where
  group : Type u
  topology : TopologicalSpace group
  borelSigmaAlgebra : Prop
  measure : Set group → ℝ
  totalVariationFinite : Prop
  regularityProperties : Prop
  totalVariationFiniteTerm : totalVariationFinite
  regularityPropertiesTerm : regularityProperties

structure FourierStieltjesMeasureEvidence (μ : FourierStieltjesMeasure) where
  totalVariationFiniteClosed : μ.totalVariationFinite
  regularityPropertiesClosed : μ.regularityProperties

def FourierStieltjesMeasureClosed (μ : FourierStieltjesMeasure) : Prop :=
  μ.totalVariationFinite ∧ μ.regularityProperties

theorem fourier_stieltjes_measure_closed_from_evidence
    (μ : FourierStieltjesMeasure) (E : FourierStieltjesMeasureEvidence μ) :
    FourierStieltjesMeasureClosed μ := by
  exact And.intro E.totalVariationFiniteClosed E.regularityPropertiesClosed

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse