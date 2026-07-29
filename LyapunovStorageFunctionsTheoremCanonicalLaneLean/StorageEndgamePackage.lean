import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.StorageAsymptoticPackage

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure StorageEndgamePackage (O : AdmittedStorageObject) (P : StorageStabilityPackage O) (A : StorageAsymptoticPackage O P) where
  endpointEquilibrium : O.object.equilibriumPoint = O.object.equilibriumPoint
  endpointLyapunovZero : O.object.lyapunovFunction O.object.equilibriumPoint = 0
  asymptoticStabilityConclusion : ∀ x, Filter.Tendsto (λ t : ℕ => O.object.lyapunovFunction (Nat.iterate O.object.dynamics t x)) Filter.atTop (𝓝 0) → Filter.Tendsto (λ t : ℕ => Nat.iterate O.object.dynamics t x) Filter.atTop (𝓝 O.object.equilibriumPoint)

end HautevilleHouse
end LyapunovStorageFunctionsTheoremCanonicalLaneLean