import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LyapunovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LyapunovBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse