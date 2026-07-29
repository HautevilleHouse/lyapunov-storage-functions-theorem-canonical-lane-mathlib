import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.StorageBridgeLemmas

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

def gateClosed (O : AdmittedStorageObject) (W : StorageWitness O) : Prop :=
  W.endpointSatisfied ∨ W.remainderRecorded

theorem gate_from_admissible_class (O : AdmittedStorageObject) (W : StorageWitness O) : gateClosed O W :=
  W.gateWitness

end HautevilleHouse
end LyapunovStorageFunctionsTheoremCanonicalLaneLean