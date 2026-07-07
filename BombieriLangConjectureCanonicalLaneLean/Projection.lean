import BombieriLangConjectureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BombieriLangConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def theoremProjection : Projection EndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem theorem_projection_idempotent (x : EndgameState) :
    theoremProjection.toFun (theoremProjection.toFun x) = theoremProjection.toFun x := by
  exact theoremProjection.idempotent x

end BombieriLangConjectureCanonicalLaneLean
end HautevilleHouse
