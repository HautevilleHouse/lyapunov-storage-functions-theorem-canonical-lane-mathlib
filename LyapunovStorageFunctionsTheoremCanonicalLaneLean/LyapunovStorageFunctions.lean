import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure LyapunovStorageFunction (X : Type u) where
  domain : Set X
  V : X -> ℝ
  positivity : ∀ x ∈ domain, V x ≥ 0
  properness : ∀ c, {x ∈ domain | V x ≤ c}.IsCompact

def dissipativity (X : Type u) [TopologicalSpace X] (φ : ℝ → X → X) (V : LyapunovStorageFunction X) : Prop :=
  ∀ x ∈ V.domain, ∀ t ≥ 0, V (φ t x) ≤ V x

structure LyapunovStoragePackage (X : Type u) [TopologicalSpace X] where
  flow : ℝ → X → X
  V : LyapunovStorageFunction X
  dissipativityClosed : dissipativity flow V
  storageFunctionClosed : True

structure LyapunovStorageEvidence (X : Type u) [TopologicalSpace X] (L : LyapunovStoragePackage X) where
  dissipativityClosed : L.dissipativityClosed
  storageFunctionClosed : L.storageFunctionClosed

def LyapunovStorageClosed (X : Type u) [TopologicalSpace X] (L : LyapunovStoragePackage X) : Prop :=
  L.dissipativityClosed ∧ L.storageFunctionClosed

theorem lyapunov_storage_closed_from_evidence (X : Type u) [TopologicalSpace X] (L : LyapunovStoragePackage X) (E : LyapunovStorageEvidence L) : LyapunovStorageClosed L := by
  exact And.intro E.dissipativityClosed E.storageFunctionClosed

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
