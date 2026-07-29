import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.StorageFunctionExistence

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure DissipationInequalityPackage (L : LyapunovFunctionPackage) (S : StorageFunctionPackage L) where
  supplyRate : L.stateSpace → ℝ
  dissipationInequality : ∀ x, S.storageFunction (L.dynamics x) - S.storageFunction x ≤ S.supplyRate x

theorem dissipation_inequality_from_storage (L : LyapunovFunctionPackage) (S : StorageFunctionPackage L) :
    DissipationInequalityPackage L S where
  supplyRate := fun x => -L.lyapunovFunction x
  dissipationInequality := by
    intro x
    have h := S.storageDissipation x
    linarith

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse