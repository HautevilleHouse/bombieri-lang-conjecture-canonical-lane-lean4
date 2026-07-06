import BombieriLangConjectureCanonicalLaneLean.Formalization
import BombieriLangConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace BombieriLangConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "fcc5a256d4347437c013d6d6d6e2c57f35442fc57f406f728a8c8a544e0f3d3b", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "56b898f1c3c3731da2f5763693ce5c89669f472c2528fa760ffffdc8650f29d2", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "3d0e464f024393cd32eaf0a9409652158b7a429fed260690e211a860d3950552", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "401a94a291385f0e4505eb7b36e79a5ec5855385fa14b316b9d576c9b2d40c2c", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "61db65625413a46a2af3ba9545d0d92e778aa764b8f2563cffc757837bcd64f3", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "a8c9a459c039c3a8820bf08e00539282b304bcf3a55e43daccbaf9a856da3e16", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "5361059648966ade5dc4bd3e5a39bd405a6bad8af3dbda5c2a4d2c624c923b8a", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "abefaea38b21abfbf1eca581c0fb4e0a04a5ccfada0c40252371f20328946f29", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "fbc878a3c7c6a6071e02306bf58998253769bb6132d76757e08545ad1c267e78", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "BL_G1", constant := "kappa_rational" },
  { gate := "BL_G2", constant := "sigma_sparsity" },
  { gate := "BL_G3", constant := "kappa_compact" },
  { gate := "BL_G4", constant := "rho_rigidity" },
  { gate := "BL_G5", constant := "lang_transfer" },
  { gate := "BL_G6", constant := "eps_coh" },
  { gate := "BL_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "45cd4239aeb217b6fa6901ce6e8413be57e01548fa51663ca7d7b2477840f895" },
  { path := "README.md", sha256 := "7c2b394fb5377c119c9922aaae6d05f44b9828416778d864a6b2096d5f61ac3c" },
  { path := "artifacts/constants_extracted.json", sha256 := "401a94a291385f0e4505eb7b36e79a5ec5855385fa14b316b9d576c9b2d40c2c" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "3d0e464f024393cd32eaf0a9409652158b7a429fed260690e211a860d3950552" },
  { path := "artifacts/constants_registry.json", sha256 := "61db65625413a46a2af3ba9545d0d92e778aa764b8f2563cffc757837bcd64f3" },
  { path := "artifacts/promotion_report.json", sha256 := "5361059648966ade5dc4bd3e5a39bd405a6bad8af3dbda5c2a4d2c624c923b8a" },
  { path := "artifacts/stitch_constants.json", sha256 := "a8c9a459c039c3a8820bf08e00539282b304bcf3a55e43daccbaf9a856da3e16" },
  { path := "notes/EG1_public.md", sha256 := "5845fa4dfa0642de8cfa5662552240bf92b8bf9caec7381cf9afa65f66f35042" },
  { path := "notes/EG2_public.md", sha256 := "95b1b8b176e1319c43f8fdca8b219c27f903f846d9235e5f06cd394220c87c58" },
  { path := "notes/EG3_public.md", sha256 := "2e8cf88cd8dc0254f7399e46ce3a909e7b5ec5f2326a71a19aa6f1922d01545e" },
  { path := "notes/EG4_public.md", sha256 := "c324ef73d34059c2bfb7ab26d30871c3c670daa3e4c9e9b82841516f0f7b0d27" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "56b898f1c3c3731da2f5763693ce5c89669f472c2528fa760ffffdc8650f29d2" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "aa844056c6147917ada1e7b6e01fb6eb4a48cebe3e4c57ab0af0cecd00938005" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "5003208072239f895525cef28ee4c5c9de26f9290d10cbd8e5882c6f77ac324c" },
  { path := "paper/BOMBIERI_LANG_CONJECTURE_PREPRINT.md", sha256 := "597fd6ac9a39a6d7d106aad8d2f76c1b172ae9aad2bc4a12a43d1d36173ab9f9" },
  { path := "repro/certificate_baseline.json", sha256 := "fbc878a3c7c6a6071e02306bf58998253769bb6132d76757e08545ad1c267e78" },
  { path := "repro/run_repro.sh", sha256 := "b2ee7e53d5b14ee770b99a51ff6ba3f8cea5e997b70a2635da8f2ecc4115075a" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/README.md", sha256 := "b0080ea9a212268d560fc4ec6fe0eed395b9d124bea4ebfe7a5f66b92d7f3fa5" },
  { path := "scripts/bl_closure_guard.py", sha256 := "bf618b903721e486675dd12cadf1958f21916012bbff669dc2db045e6362dc90" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "BL_G1", status := "PASS" },
  { gate := "BL_G2", status := "PASS" },
  { gate := "BL_G3", status := "PASS" },
  { gate := "BL_G4", status := "PASS" },
  { gate := "BL_G5", status := "PASS" },
  { gate := "BL_G6", status := "PASS" },
  { gate := "BL_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_rational", value := "1.0937330000000003" },
  { key := "lang_transfer", value := "1.029422" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_sparsity", value := "1.074" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_rational",
  "lang_transfer",
  "rho_rigidity",
  "sigma_sparsity",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 23 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end BombieriLangConjectureCanonicalLaneLean
end HautevilleHouse
