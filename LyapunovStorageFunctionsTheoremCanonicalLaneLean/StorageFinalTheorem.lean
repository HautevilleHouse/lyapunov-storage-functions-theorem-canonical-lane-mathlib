import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.StorageGateLemmas

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

def ConstrainedLyapunovStorageClosure (O : AdmittedStorageObject) (W : StorageWitness O) : Prop :=
  bridgeClosed O ∧ gateClosed O W

theorem constrained_lyapunov_storage_endgame (O : AdmittedStorageObject) (W : StorageWitness O) : ConstrainedLyapunovStorageClosure O W :=
  And.intro (bridge_from_admissible_class O) (gate_from_admissible_class O W)

end HautevilleHouse
end LyapunovStorageFunctionsTheoremCanonicalLaneLean