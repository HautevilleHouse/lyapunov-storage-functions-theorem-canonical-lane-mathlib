import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure EnergyStorageDynamicsPackage where
  stateSpace : Type u
  inputSpace : Type v
  dynamics : stateSpace → inputSpace → stateSpace
  energyFunction : stateSpace → ℝ
  dissipationRate : stateSpace → ℝ
  supplyRate : stateSpace → inputSpace → ℝ
  energyBalanceEquation : Prop
  dissipationNonnegative : Prop

structure EnergyStorageDynamicsEvidence (D : EnergyStorageDynamicsPackage) where
  energyBalanceEquationClosed : D.energyBalanceEquation
  dissipationNonnegativeClosed : D.dissipationNonnegative

def EnergyStorageDynamicsClosed (D : EnergyStorageDynamicsPackage) : Prop :=
  D.energyBalanceEquation ∧ D.dissipationNonnegative

theorem energy_storage_dynamics_closed_from_evidence
    (D : EnergyStorageDynamicsPackage) (E : EnergyStorageDynamicsEvidence D) :
    EnergyStorageDynamicsClosed D := by
  exact And.intro E.energyBalanceEquationClosed E.dissipationNonnegativeClosed

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse