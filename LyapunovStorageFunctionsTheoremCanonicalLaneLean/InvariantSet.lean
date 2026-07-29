import canonicalLaneMathlib.AdmissibleClass
import LyapunovStorageFunctionsTheoremCanonicalLaneLean.LyapunovStorageFunctions

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure InvariantSetPackage {L : LyapunovStorageFunctionPackage} where
  invariantSet : Set (Type u)
  forwardInvariance : Prop
  invarianceUnderFlow : Prop
  setNonempty : Set.Nonempty invariantSet
  forwardInvarianceClosed : forwardInvariance
  invarianceUnderFlowClosed : invarianceUnderFlow

def InvariantSetClosed {L : LyapunovStorageFunctionPackage} (I : InvariantSetPackage L) : Prop :=
  I.forwardInvariance ∧ I.invarianceUnderFlow

theorem invariant_set_closed_from_package {L : LyapunovStorageFunctionPackage}
    (I : InvariantSetPackage L) : InvariantSetClosed I := by
  exact And.intro I.forwardInvarianceClosed I.invarianceUnderFlowClosed

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse