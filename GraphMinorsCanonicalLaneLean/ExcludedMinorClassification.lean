import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.TreeWidthDecomposition

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

structure ExcludedMinorClassificationPackage
    {W : GraphWidthPackage}
    {T : TreeWidthDecompositionPackage W}
    (F : ForbiddenMinorPackage T) where
  obstructionSet : Type
  excludedMinorCharacterization : Prop
  structureTheoremApplied : Prop
  tangleDuality : Prop

structure ExcludedMinorClassificationEvidence
    {W : GraphWidthPackage}
    {T : TreeWidthDecompositionPackage W}
    {F : ForbiddenMinorPackage T}
    (E : ExcludedMinorClassificationPackage F) where
  excludedMinorCharacterizationClosed : E.excludedMinorCharacterization
  structureTheoremAppliedClosed : E.structureTheoremApplied
  tangleDualityClosed : E.tangleDuality

def ExcludedMinorClassificationClosed
    {W : GraphWidthPackage}
    {T : TreeWidthDecompositionPackage W}
    {F : ForbiddenMinorPackage T}
    (E : ExcludedMinorClassificationPackage F) : Prop :=
  E.excludedMinorCharacterization ∧ E.structureTheoremApplied ∧ E.tangleDuality

theorem excluded_minor_classification_closed_from_evidence
    {W : GraphWidthPackage}
    {T : TreeWidthDecompositionPackage W}
    {F : ForbiddenMinorPackage T}
    (E : ExcludedMinorClassificationPackage F)
    (Ev : ExcludedMinorClassificationEvidence E) :
    ExcludedMinorClassificationClosed E := by
  exact And.intro Ev.excludedMinorCharacterizationClosed
    (And.intro Ev.structureTheoremAppliedClosed Ev.tangleDualityClosed)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse