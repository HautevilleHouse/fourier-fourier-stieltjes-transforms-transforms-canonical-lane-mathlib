import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FourierSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  linearStructure : AddCommGroup carrier
  vectorSpace : Module ℝ carrier

structure FourierStieltjesAlgebra where
  space : FourierSpace
  algebraMultiplication : carrier → carrier → carrier
  norm : carrier → ℝ
  banachAlgebra : Prop
  spec : carrier → Set ℝ
  transformObject : Type
  transformTopology : TopologicalSpace transformObject
  transformDomain : carrier → transformObject
  transformContinuous : Prop
  conclusion : transformContinuous

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse