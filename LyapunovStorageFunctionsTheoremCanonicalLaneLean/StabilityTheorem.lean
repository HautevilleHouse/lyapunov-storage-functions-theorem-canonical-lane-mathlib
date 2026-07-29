import canonicalLaneMathlib.AdmissibleClass
import LyapunovStorageFunctionsTheoremCanonicalLaneLean.BarrierFunction

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure StabilityTheoremPackage {L : LyapunovStorageFunctionPackage}
    {I : InvariantSetPackage L} {B : BarrierFunctionPackage L I} where
  equilibriumPoint : Type u
  storageFunctionDecrease : Prop
  barrierEnsuresAttractivity : Prop
  asymptoticStability : Prop
  equilibriumPointDefined : equilibriumPoint ≠ Empty
  storageFunctionDecreaseClosed : storageFunctionDecrease
  barrierEnsuresAttractivityClosed : barrierEnsuresAttractivity
  asymptoticStabilityClosed : asymptoticStability

def StabilityTheoremClosed {L : LyapunovStorageFunctionPackage}
    {I : InvariantSetPackage L} {B : BarrierFunctionPackage L I}
    (S : StabilityTheoremPackage L I B) : Prop :=
  S.storageFunctionDecrease ∧ S.barrierEnsuresAttractivity ∧ S.asymptoticStability

theorem stability_theorem_closed_from_package {L : LyapunovStorageFunctionPackage}
    {I : InvariantSetPackage L} {B : BarrierFunctionPackage L I}
    (S : StabilityTheoremPackage L I B) : StabilityTheoremClosed S := by
  exact And.intro S.storageFunctionDecreaseClosed
    (And.intro S.barrierEnsuresAttractivityClosed S.asymptoticStabilityClosed)

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse