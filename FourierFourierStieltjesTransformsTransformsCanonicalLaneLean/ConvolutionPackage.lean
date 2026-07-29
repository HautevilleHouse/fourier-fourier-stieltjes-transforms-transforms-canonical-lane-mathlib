import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure ConvolutionPackage where
  group : Type u
  topology : TopologicalSpace group
  haarMeasure : FourierStieltjesMeasure
  convolutionDefined : Prop
  convolutionIdentity : Prop
  fourierConvolutionIdentity : Prop
  convolutionDefinedTerm : convolutionDefined
  convolutionIdentityTerm : convolutionIdentity
  fourierConvolutionIdentityTerm : fourierConvolutionIdentity

structure ConvolutionEvidence (C : ConvolutionPackage) where
  convolutionDefinedClosed : C.convolutionDefined
  convolutionIdentityClosed : C.convolutionIdentity
  fourierConvolutionIdentityClosed : C.fourierConvolutionIdentity

def ConvolutionClosed (C : ConvolutionPackage) : Prop :=
  C.convolutionDefined ∧ C.convolutionIdentity ∧ C.fourierConvolutionIdentity

theorem convolution_closed_from_evidence
    (C : ConvolutionPackage) (E : ConvolutionEvidence C) :
    ConvolutionClosed C := by
  exact And.intro E.convolutionDefinedClosed
    (And.intro E.convolutionIdentityClosed E.fourierConvolutionIdentityClosed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse