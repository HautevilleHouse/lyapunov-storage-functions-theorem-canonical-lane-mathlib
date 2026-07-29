import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure InvariantSet (X : Type u) [TopologicalSpace X] where
  set : Set X
  invariance : Prop

structure LaSalleInvariance (X : Type u) [TopologicalSpace X] where
  storage : LyapunovStorageFunction X
  flow : ℝ → X → X
  dissipativityClosed : dissipativity flow storage
  invariantSetFound : InvariantSet X
  limitSetConverges : Prop

structure LaSalleEvidence (X : Type u) [TopologicalSpace X] (L : LaSalleInvariance X) where
  dissipativityClosed : L.dissipativityClosed
  invariantSetFoundClosed : L.invariantSetFound.invariance
  limitSetConvergesClosed : L.limitSetConverges

def LaSalleInvarianceClosed (X : Type u) [TopologicalSpace X] (L : LaSalleInvariance X) : Prop :=
  L.dissipativityClosed ∧ L.invariantSetFound.invariance ∧ L.limitSetConverges

theorem la_salle_invariance_closed_from_evidence (X : Type u) [TopologicalSpace X] (L : LaSalleInvariance X) (E : LaSalleEvidence L) : LaSalleInvarianceClosed L := by
  exact And.intro E.dissipativityClosed (And.intro E.invariantSetFoundClosed E.limitSetConvergesClosed)

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
