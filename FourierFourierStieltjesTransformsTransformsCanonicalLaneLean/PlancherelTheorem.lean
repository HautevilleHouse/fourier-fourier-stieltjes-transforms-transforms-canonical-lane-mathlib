import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure PlancherelTheoremPackage where
  group : Type u
  haarMeasure : MeasureTheory.Measure group
  fourierTransformOnL2 : Prop
  isometryProperty : Prop
  inversionL2 : Prop

structure PlancherelTheoremEvidence (P : PlancherelTheoremPackage) where
  fourierTransformOnL2Closed : P.fourierTransformOnL2
  isometryPropertyClosed : P.isometryProperty
  inversionL2Closed : P.inversionL2

def PlancherelTheoremClosed (P : PlancherelTheoremPackage) : Prop :=
  P.fourierTransformOnL2 ∧ P.isometryProperty ∧ P.inversionL2

theorem plancherel_theorem_closed_from_evidence (P : PlancherelTheoremPackage) (E : PlancherelTheoremEvidence P) :
    PlancherelTheoremClosed P := by
  exact And.intro E.fourierTransformOnL2Closed (And.intro E.isometryPropertyClosed E.inversionL2Closed)

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse
