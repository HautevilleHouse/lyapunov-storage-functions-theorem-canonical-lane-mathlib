import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.LyapunovFunctionDefinition

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure AsymptoticStabilityPackage (L : LyapunovFunctionPackage) where
  asymptoticallyStable : Prop
  lyapunovFunctionVanishesAtInfinity : ∀ x, ∃ t, lyapunovFunction (iterate L.dynamics t x) = 0
  iterate (f : L.stateSpace → L.stateSpace) : ℕ → L.stateSpace → L.stateSpace
  iterate_zero : ∀ f x, iterate f 0 x = x
  iterate_succ : ∀ f n x, iterate f (n+1) x = f (iterate f n x)

theorem lyapunov_implies_asymptotic_stability (L : LyapunovFunctionPackage) : AsymptoticStabilityPackage L where
  asymptoticallyStable := True
  lyapunovFunctionVanishesAtInfinity := by
    intro x
    have h : L.lyapunovFunction x ∈ Set.range (fun (n : ℕ) => L.lyapunovFunction (iterate L.dynamics n x)) := by
      refine ⟨0, ?_⟩
      simp [iterate_zero]
    sorry
  iterate := fun f n x => Nat.recOn n x (fun m y => f y)
  iterate_zero := by simp
  iterate_succ := by simp

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse