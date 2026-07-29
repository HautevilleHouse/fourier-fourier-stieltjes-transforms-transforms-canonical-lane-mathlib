import canonicalLaneMathlib.AdmissibleClass
import FourierFourierStieltjesTransformsTransformsCanonicalLaneLean.BridgeLemmas
import FourierFourierStieltjesTransformsTransformsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

def ConstrainedFourierFourierStieltjesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fourier_fourier_stieltjes_endgame (A : AdmissibleClass) :
    ConstrainedFourierFourierStieltjesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse
