import canonicalLaneMathlib.AdmissibleClass
import LyapunovStorageFunctionsTheoremCanonicalLaneLean.InvariantSet

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure BarrierFunctionPackage {L : LyapunovStorageFunctionPackage}
    {I : InvariantSetPackage L} where
  barrierFunction : Type u
  barrierProperty : Prop
  compatibilityWithStorage : Prop
  barrierFunctionDefined : barrierFunction ≠ Empty
  barrierPropertyClosed : barrierProperty
  compatibilityWithStorageClosed : compatibilityWithStorage

def BarrierFunctionClosed {L : LyapunovStorageFunctionPackage}
    {I : InvariantSetPackage L} (B : BarrierFunctionPackage L I) : Prop :=
  B.barrierProperty ∧ B.compatibilityWithStorage

theorem barrier_function_closed_from_package {L : LyapunovStorageFunctionPackage}
    {I : InvariantSetPackage L} (B : BarrierFunctionPackage L I) :
    BarrierFunctionClosed B := by
  exact And.intro B.barrierPropertyClosed B.compatibilityWithStorageClosed

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse