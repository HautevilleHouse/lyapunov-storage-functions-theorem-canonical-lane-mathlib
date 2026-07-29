import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.LyapunovStorageFunctionsCore

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure StorageStabilityPackage (O : AdmittedStorageObject) where
  invariantSet : Set O.object.stateSpace
  forwardInvariant : ∀ x ∈ invariantSet, O.object.dynamics x ∈ invariantSet
  lyapunovNonincreasing : ∀ x ∈ invariantSet, O.object.lyapunovFunction (O.object.dynamics x) ≤ O.object.lyapunovFunction x
  stabilityClaim : ∀ ε > 0, ∃ δ > 0, ∀ x, O.object.lyapunovFunction x < δ → ∀ t : ℕ, O.object.lyapunovFunction (Nat.iterate O.object.dynamics t x) < ε

def StorageStabilityClosed (O : AdmittedStorageObject) (P : StorageStabilityPackage O) : Prop :=
  P.forwardInvariant ∧ P.lyapunovNonincreasing ∧ P.stabilityClaim

end HautevilleHouse
end LyapunovStorageFunctionsTheoremCanonicalLaneLean