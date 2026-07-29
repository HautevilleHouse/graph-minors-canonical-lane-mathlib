import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphMinorsCanonicalLaneLean

/-- A finite undirected multigraph without loops. -/
structure FiniteGraph where
  Vertex : Type
  Edge : Type
  incidence : Edge → Vertex × Vertex
  finiteVertices : Fintype Vertex
  finiteEdges : Fintype Edge

/-- A subgraph relation: H is a subgraph of G. -/
structure Subgraph (G H : FiniteGraph) : Prop where
  vertexSubset : H.Vertex ⊆ G.Vertex
  edgeSubset : H.Edge ⊆ G.Edge
  incidencePreserved : ∀ (e : H.Edge), H.incidence e = G.incidence (Subtype.val e)

end GraphMinorsCanonicalLaneLean
end HautevilleHouse