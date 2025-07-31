---
title: "Conjecture GT.5"
status: open
---

---

## Statement

**Conjecture.** If $G$ is a non-trivial connected graph, then
$$
\gamma_c(G) \geq \frac{1}{2} \cdot \operatorname{tri}(G) - 2,
$$
with equality attained on **119** graphs in the known collection.

> **Status:** <span class="badge status-open">Open</span>

---

## Lean4 Theorem

```lean
theorem (G : SimpleGraph V)
  (h1 : connected G) :
  connected_domination_number G ≥ (triameter G) / 2 - 2 :=
sorry
```

## Definitions

- A **connected graph** is a graph in which there exists a path between every pair of vertices.

- A **connected dominating set** of a graph $G$ is a dominating set $D \subseteq V(G)$ such that the subgraph induced by $D$ is connected. The **connected domination number**, denoted by $\gamma_c(G)$, is the minimum cardinality of such a set.

- The **triameter** of a graph $G$, denoted by $\operatorname{tri}(G)$, is defined as:
  $$
  \operatorname{tri}(G) = \max \{ d(u,v) + d(v,w) + d(u,w) : u,v,w \in V(G) \},
  $$
  where $d(u,v)$ denotes the shortest-path distance between $u$ and $v$ in $G$.

## Equality Cases

Equality holds on **119** graphs in the current database.
