import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.LyapunovFunctionConstruction

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure StabilityCertificatePackage {D : EnergyStorageDynamicsPackage}
    {I : DissipativityInequalityPackage D}
    (L : LyapunovFunctionConstructionPackage I) where
  equilibriumPoint : D.stateSpace
  invariantSet : Set D.stateSpace
  asymptoticStability : Prop
  stabilityCertificateProved : Prop

structure StabilityCertificateEvidence {D : EnergyStorageDynamicsPackage}
    {I : DissipativityInequalityPackage D}
    {L : LyapunovFunctionConstructionPackage I}
    (S : StabilityCertificatePackage L) where
  asymptoticStabilityClosed : S.asymptoticStability
  stabilityCertificateProvedClosed : S.stabilityCertificateProved

def StabilityCertificateClosed {D : EnergyStorageDynamicsPackage}
    {I : DissipativityInequalityPackage D}
    {L : LyapunovFunctionConstructionPackage I}
    (S : StabilityCertificatePackage L) : Prop :=
  S.asymptoticStability ∧ S.stabilityCertificateProved

theorem stability_certificate_closed_from_evidence
    {D : EnergyStorageDynamicsPackage} {I : DissipativityInequalityPackage D}
    {L : LyapunovFunctionConstructionPackage I} (S : StabilityCertificatePackage L)
    (E : StabilityCertificateEvidence S) : StabilityCertificateClosed S := by
  exact And.intro E.asymptoticStabilityClosed E.stabilityCertificateProvedClosed

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse