import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.GraphMinorDecomposition

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure RobertsonSeymourTheoremPackage
    {W : GraphWidthPackage}
    {T : TreeWidthDecompositionPackage W}
    {F : ForbiddenMinorPackage T}
    {E : ExcludedMinorClassificationPackage F}
    {G : GraphStructureOfBoundedTreeWidth E}
    {D : GraphMinorDecompositionPackage G}
    (R : WellQuasiOrderingPackage D) where
  minorOrderWellQuasi : Prop
  finiteObstructionSet : Prop
  structuralCharacterizationComplete : Prop

structure RobertsonSeymourTheoremEvidence
    {W : GraphWidthPackage}
    {T : TreeWidthDecompositionPackage W}
    {F : ForbiddenMinorPackage T}
    {E : ExcludedMinorClassificationPackage F}
    {G : GraphStructureOfBoundedTreeWidth E}
    {D : GraphMinorDecompositionPackage G}
    {R : WellQuasiOrderingPackage D}
    (RS : RobertsonSeymourTheoremPackage R) where
  minorOrderWellQuasiClosed : RS.minorOrderWellQuasi
  finiteObstructionSetClosed : RS.finiteObstructionSet
  structuralCharacterizationCompleteClosed : RS.structuralCharacterizationComplete

def RobertsonSeymourTheoremClosed
    {W : GraphWidthPackage}
    {T : TreeWidthDecompositionPackage W}
    {F : ForbiddenMinorPackage T}
    {E : ExcludedMinorClassificationPackage F}
    {G : GraphStructureOfBoundedTreeWidth E}
    {D : GraphMinorDecompositionPackage G}
    {R : WellQuasiOrderingPackage D}
    (RS : RobertsonSeymourTheoremPackage R) : Prop :=
  RS.minorOrderWellQuasi ∧ RS.finiteObstructionSet ∧ RS.structuralCharacterizationComplete

theorem robertson_seymour_theorem_closed_from_evidence
    {W : GraphWidthPackage}
    {T : TreeWidthDecompositionPackage W}
    {F : ForbiddenMinorPackage T}
    {E : ExcludedMinorClassificationPackage F}
    {G : GraphStructureOfBoundedTreeWidth E}
    {D : GraphMinorDecompositionPackage G}
    {R : WellQuasiOrderingPackage D}
    (RS : RobertsonSeymourTheoremPackage R)
    (Ev : RobertsonSeymourTheoremEvidence RS) :
    RobertsonSeymourTheoremClosed RS := by
  exact And.intro Ev.minorOrderWellQuasiClosed
    (And.intro Ev.finiteObstructionSetClosed Ev.structuralCharacterizationCompleteClosed)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse