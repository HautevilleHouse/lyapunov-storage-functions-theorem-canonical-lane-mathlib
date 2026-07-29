import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.LyapunovStorageFunctionsCore

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

def bridgeClosed (O : AdmittedStorageObject) : Prop :=
  O.conclusion

theorem bridge_from_admissible_class (O : AdmittedStorageObject) : bridgeClosed O :=
  O.conclusion

end HautevilleHouse
end LyapunovStorageFunctionsTheoremCanonicalLaneLean