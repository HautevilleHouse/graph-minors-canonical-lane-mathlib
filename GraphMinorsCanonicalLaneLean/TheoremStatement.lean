import HautevilleHouse.GraphMinorsCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  minorClosedStatement : String
  decompositionStatement : String
  graphMinorTheoremStatement : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "GraphMinorsCanonicalLane",
  theoremName := "Graph Minors Theorem",
  minorClosedStatement := "Every minor-closed class of graphs has a finite forbidden minor set",
  decompositionStatement := "Graphs in a minor-closed class admit structural decomposition via tree decompositions",
  graphMinorTheoremStatement := "The Graph Minors Theorem holds for all finite graphs"
}

def GraphMinorStatement (A : AdmissibleClass) : Prop :=
  A.object.minorClosedProperty ∧ A.object.structuralDecomposition

theorem source_theorem_statement_consistent :
  sourceTheoremStatement.theoremName = "Graph Minors Theorem" := by
  rfl

end GraphMinorsCanonicalLaneLean
end HautevilleHouse