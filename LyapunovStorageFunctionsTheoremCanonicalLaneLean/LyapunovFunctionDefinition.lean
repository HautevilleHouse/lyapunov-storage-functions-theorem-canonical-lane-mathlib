import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure LyapunovFunctionPackage where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  dynamics : stateSpace → stateSpace
  lyapunovFunction : stateSpace → ℝ
  positiveDefinite : ∀ x, x ≠ default → lyapunovFunction x > 0
  proper : ∀ r, {x | lyapunovFunction x ≤ r} ∈ CompactOperator stateSpace
  strictLyapunov : ∀ x, x ≠ default → lyapunovFunction (dynamics x) < lyapunovFunction x
  equilibrium : stateSpace
  equilibriumProperty : dynamics equilibrium = equilibrium ∧ lyapunovFunction equilibrium = 0
  default : stateSpace

theorem lyapunov_function_implies_stability (L : LyapunovFunctionPackage) :
    ∀ ε > 0, ∃ δ > 0, ∀ x, lyapunovFunction x < δ → lyapunovFunction (L.dynamics x) < ε := by
  intro ε hε
  refine ⟨L.lyapunovFunction (L.dynamics (some x)), ?_, ?_⟩
  sorry

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse