import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.DissipativityInequality

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure LyapunovFunctionConstructionPackage {D : EnergyStorageDynamicsPackage}
    (I : DissipativityInequalityPackage D) where
  candidateFunction : D.stateSpace → ℝ
  positiveDefiniteness : Prop
  alongTrajectoriesDecrease : Prop
  candidateIsStorage : Prop

structure LyapunovFunctionConstructionEvidence {D : EnergyStorageDynamicsPackage}
    {I : DissipativityInequalityPackage D}
    (L : LyapunovFunctionConstructionPackage I) where
  positiveDefinitenessClosed : L.positiveDefiniteness
  alongTrajectoriesDecreaseClosed : L.alongTrajectoriesDecrease
  candidateIsStorageClosed : L.candidateIsStorage

def LyapunovFunctionConstructionClosed {D : EnergyStorageDynamicsPackage}
    {I : DissipativityInequalityPackage D}
    (L : LyapunovFunctionConstructionPackage I) : Prop :=
  L.positiveDefiniteness ∧ L.alongTrajectoriesDecrease ∧ L.candidateIsStorage

theorem lyapunov_function_construction_closed_from_evidence
    {D : EnergyStorageDynamicsPackage} {I : DissipativityInequalityPackage D}
    (L : LyapunovFunctionConstructionPackage I)
    (E : LyapunovFunctionConstructionEvidence L) : LyapunovFunctionConstructionClosed L := by
  exact And.intro E.positiveDefinitenessClosed
    (And.intro E.alongTrajectoriesDecreaseClosed E.candidateIsStorageClosed)

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse