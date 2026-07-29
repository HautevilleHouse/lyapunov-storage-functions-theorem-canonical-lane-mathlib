import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure LyapunovStorageObject where
  stateSpace : Type
  stateTopology : TopologicalSpace stateSpace
  dynamics : stateSpace → stateSpace
  lyapunovFunction : stateSpace → ℝ
  equilibriumPoint : stateSpace
  positiveDefinite : lyapunovFunction equilibriumPoint = 0 ∧ (∀ x, x ≠ equilibriumPoint → lyapunovFunction x > 0)
  strictlyDecreasing : ∀ x, x ≠ equilibriumPoint → lyapunovFunction (dynamics x) < lyapunovFunction x

structure AdmittedStorageObject where
  object : LyapunovStorageObject
  admissibleClass : AdmissibleClass
  conclusion : object.strictlyDecreasing

structure StorageWitness (O : AdmittedStorageObject) where
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def StorageWitnessClosed (O : AdmittedStorageObject) (W : StorageWitness O) : Prop :=
  W.endpointSatisfied ∨ W.remainderRecorded

def StorageAdmittedClosure (O : AdmittedStorageObject) (W : StorageWitness O) : Prop :=
  O.conclusion ∧ StorageWitnessClosed O W

end HautevilleHouse
end LyapunovStorageFunctionsTheoremCanonicalLaneLean