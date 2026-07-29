import GraphMinorsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GraphMinorSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GraphMinorAdmittedObject where
  graph : GraphMinorSpace
  finiteGraph : Prop
  minorClosedClass : Prop
  obstructionSet : Type
  obstructionTopology : TopologicalSpace obstructionSet
  finiteObstruction : Prop
  conclusion : finiteObstruction

structure GraphMinorEndgameState where
  object : GraphMinorAdmittedObject

def GraphMinorWitnessClosed (O : GraphMinorAdmittedObject) : Prop :=
  O.finiteObstruction

end GraphMinorsCanonicalLaneLean
end HautevilleHouse