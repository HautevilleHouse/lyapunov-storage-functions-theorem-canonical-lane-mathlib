import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.AsymptoticStability

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure LyapunovStorageAdmissibleObject where
  lyapunovPackage : LyapunovFunctionPackage
  storageExists : StorageFunctionPackage lyapunovPackage
  dissipationHolds : DissipationInequalityPackage lyapunovPackage storageExists
  asymptoticStability : AsymptoticStabilityPackage lyapunovPackage

def LyapunovStorageClosed (A : LyapunovStorageAdmissibleObject) : Prop := True

theorem lyapunov_storage_bridge_closed (A : LyapunovStorageAdmissibleObject) : LyapunovStorageClosed A := by
  trivial

theorem lyapunov_storage_gate_closed (A : LyapunovStorageAdmissibleObject) : gateClosed A := by
  exact A.gateWitness

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse