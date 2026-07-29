import canonicalLaneMathlib.AdmissibleClass
import LyapunovStorageFunctionsTheoremCanonicalLaneLean.LyapunovStorageFunctions

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure DissipativityPackage {L : LyapunovStorageFunctionPackage} where
  supplyRate : Type u
  storageInequality : Prop
  dissipationInequality : Prop
  feasibility : Prop
  supplyRateDefined : supplyRate ≠ Empty
  storageInequalityClosed : storageInequality
  dissipationInequalityClosed : dissipationInequality
  feasibilityClosed : feasibility

def DissipativityClosed {L : LyapunovStorageFunctionPackage} (D : DissipativityPackage L) : Prop :=
  D.storageInequality ∧ D.dissipationInequality ∧ D.feasibility

theorem dissipativity_closed_from_package {L : LyapunovStorageFunctionPackage}
    (D : DissipativityPackage L) : DissipativityClosed D := by
  exact And.intro D.storageInequalityClosed
    (And.intro D.dissipationInequalityClosed D.feasibilityClosed)

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse