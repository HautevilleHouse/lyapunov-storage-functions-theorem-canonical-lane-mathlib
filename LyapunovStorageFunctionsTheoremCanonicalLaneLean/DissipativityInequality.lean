import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.EnergyStorageDynamics

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure DissipativityInequalityPackage {D : EnergyStorageDynamicsPackage} where
  storageFunction : D.stateSpace → ℝ
  passivityCondition : Prop
  dissipationLowerBound : Prop
  storageFunctionNonnegative : Prop

structure DissipativityInequalityEvidence {D : EnergyStorageDynamicsPackage}
    (I : DissipativityInequalityPackage D) where
  passivityConditionClosed : I.passivityCondition
  dissipationLowerBoundClosed : I.dissipationLowerBound
  storageFunctionNonnegativeClosed : I.storageFunctionNonnegative

def DissipativityInequalityClosed {D : EnergyStorageDynamicsPackage}
    (I : DissipativityInequalityPackage D) : Prop :=
  I.passivityCondition ∧ I.dissipationLowerBound ∧ I.storageFunctionNonnegative

theorem dissipativity_inequality_closed_from_evidence
    {D : EnergyStorageDynamicsPackage} (I : DissipativityInequalityPackage D)
    (E : DissipativityInequalityEvidence I) : DissipativityInequalityClosed I := by
  exact And.intro E.passivityConditionClosed
    (And.intro E.dissipationLowerBoundClosed E.storageFunctionNonnegativeClosed)

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse