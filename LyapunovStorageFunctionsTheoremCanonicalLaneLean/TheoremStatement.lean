import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "lyapunov-storage-functions-canonical-lane",
  theoremName := "Lyapunov Storage Functions Theorem",
  theoremObject := "Asymptotic stability via Lyapunov storage functions",
  classicalBoundary := "derived",
  manifoldConstrainedStatement := "LyapunovStorageClosure internalized through admissible class",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by theorem boundary open"
}

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse