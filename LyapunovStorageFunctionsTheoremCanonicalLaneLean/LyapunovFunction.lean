import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure LyapunovFunction where
  space : Type u
  topology : TopologicalSpace space
  measure : Type v
  dynamics : Type w
  V : space → ℝ
  positiveDefinite : Prop
  decreasingAlongFlows : Prop
  proper : Prop

def LyapunovBridgeClosed (L : LyapunovFunction) : Prop :=
  L.positiveDefinite ∧ L.decreasingAlongFlows ∧ L.proper

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse