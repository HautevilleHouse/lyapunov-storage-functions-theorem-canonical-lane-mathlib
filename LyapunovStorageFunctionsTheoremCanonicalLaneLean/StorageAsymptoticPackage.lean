import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.StorageStabilityPackage

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure StorageAsymptoticPackage (O : AdmittedStorageObject) (P : StorageStabilityPackage O) where
  strictDecayOnTrajectories : ∀ x ≠ O.object.equilibriumPoint, O.object.lyapunovFunction (O.object.dynamics x) < O.object.lyapunovFunction x
  limitInfimumZero : ∀ x, Filter.Tendsto (λ t : ℕ => O.object.lyapunovFunction (Nat.iterate O.object.dynamics t x)) Filter.atTop (𝓝 0)
  convergenceToEquilibrium : ∀ x, Filter.Tendsto (λ t : ℕ => Nat.iterate O.object.dynamics t x) Filter.atTop (𝓝 O.object.equilibriumPoint)

def StorageAsymptoticClosed (O : AdmittedStorageObject) (P : StorageStabilityPackage O) (A : StorageAsymptoticPackage O P) : Prop :=
  A.strictDecayOnTrajectories ∧ A.limitInfimumZero ∧ A.convergenceToEquilibrium

end HautevilleHouse
end LyapunovStorageFunctionsTheoremCanonicalLaneLean