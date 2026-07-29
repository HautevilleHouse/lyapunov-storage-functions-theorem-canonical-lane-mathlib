import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.LyapunovAdmittedObject

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure SlidingSurface where
  surface : Set (LyapunovFunction.space (AdmittedObject := ?_) )
  reachable : Prop
  invariant : Prop

structure SlidingModeEvidence (S : SlidingSurface) where
  reachableClosed : S.reachable
  invariantClosed : S.invariant

def SlidingModeClosed (S : SlidingSurface) : Prop :=
  S.reachable ∧ S.invariant

theorem sliding_mode_closed_from_evidence (S : SlidingSurface) (E : SlidingModeEvidence S) :
    SlidingModeClosed S := by
  exact And.intro E.reachableClosed E.invariantClosed

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse