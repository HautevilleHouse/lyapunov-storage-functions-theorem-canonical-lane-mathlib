import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.LyapunovFunctionDefinition

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure StorageFunctionPackage (L : LyapunovFunctionPackage) where
  storageFunction : L.stateSpace → ℝ
  storageNonnegative : ∀ x, storageFunction x ≥ 0
  storageDissipation : ∀ x, storageFunction (L.dynamics x) - storageFunction x ≤ -L.lyapunovFunction x

theorem storage_function_existence_from_lyapunov (L : LyapunovFunctionPackage) : StorageFunctionPackage L where
  storageFunction := L.lyapunovFunction
  storageNonnegative := by intro x; apply le_of_lt; apply L.positiveDefinite x; exact ?_
  storageDissipation := by
    intro x
    have h := L.strictLyapunov x
    linarith

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse