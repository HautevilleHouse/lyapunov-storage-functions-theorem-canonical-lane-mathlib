import HautevilleHouse.LyapunovStorageFunctionsTheoremCanonicalLaneLean.LyapunovFunction

namespace HautevilleHouse
namespace LyapunovStorageFunctionsTheoremCanonicalLaneLean

structure LyapunovAdmittedObject where
  L : LyapunovFunction
  endpointReached : Prop
  conclusion : L.positiveDefinite ∧ L.decreasingAlongFlows ∧ L.proper

end LyapunovStorageFunctionsTheoremCanonicalLaneLean
end HautevilleHouse