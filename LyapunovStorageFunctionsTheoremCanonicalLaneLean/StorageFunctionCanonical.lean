import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.LyapunovAdmittedObject

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure StorageFunctionCanonicalPackage (L : LyapunovAdmittedObject) where
  supplyRate : LyapunovFunction.space → ℝ
  storageFunctional : LyapunovFunction.space → ℝ
  dissipationInequality : Prop
  reachabilitySet : Set (LyapunovFunction.space)
  minimalStorage : Prop

structure StorageFunctionCanonicalEvidence (L : LyapunovAdmittedObject)
    (P : StorageFunctionCanonicalPackage L) where
  dissipationInequalityClosed : P.dissipationInequality
  minimalStorageClosed : P.minimalStorage

def StorageFunctionCanonicalClosed (L : LyapunovAdmittedObject)
    (P : StorageFunctionCanonicalPackage L) : Prop :=
  P.dissipationInequality ∧ P.minimalStorage

theorem storage_function_canonical_closed_from_evidence
    (L : LyapunovAdmittedObject) (P : StorageFunctionCanonicalPackage L)
    (E : StorageFunctionCanonicalEvidence L P) : StorageFunctionCanonicalClosed L P := by
  exact And.intro E.dissipationInequalityClosed E.minimalStorageClosed

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse