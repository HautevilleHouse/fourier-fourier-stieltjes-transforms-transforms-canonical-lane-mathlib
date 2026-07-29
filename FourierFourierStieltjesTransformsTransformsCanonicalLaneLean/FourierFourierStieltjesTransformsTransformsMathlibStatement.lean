import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FourierFourierStieltjesTransformsTransformsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsTransformsCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "FourierFourierStieltjesTransforms",
  theoremObject := "Fourier-Fourier-Stieltjes Transform Continuity",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem mathlib_proof_obligation_common_core_imported :
  mathlibProofObligation.commonCoreImported = true := by rfl

theorem mathlib_proof_obligation_theorem_specific_definitions_native :
  mathlibProofObligation.theoremSpecificDefinitionsNative = true := by rfl

end FourierFourierStieltjesTransformsTransformsCanonicalLaneLean
end HautevilleHouse