import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FourierFourierStieltjesTransformsTransformsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (by
    match A with
    | ⟨object, _, _, _⟩ => exact object.conclusion
  )

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  exact (by
    match A with
    | ⟨object, _, _, _⟩ => exact object.conclusion
  )

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse