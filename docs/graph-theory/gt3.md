---
title: "Conjecture GT.3"
status: open
---

---

## Statement

**Conjecture.** If $G$ is an $r$-regular graph with $r > 0$, then
$$
i(G) \leq \mu^*(G),
$$
and this bound is sharp.

> **Status:** <span class="badge status-open">Open</span>

---

## Lean4 Theorem

```lean
theorem (G : SimpleGraph V)
  (h1 : connected G) :
  independent_domination_number G ≤ min_maximal_matching G :=
sorry
```

---

## Definitions

- The **independent domination number** of a graph $G$, denoted $i(G)$, is the minimum cardinality of a *maximal independent set*—that is, an independent set that cannot be extended by including any additional vertex.
- The **minimal maximal matching number** of a graph $G$, denoted $\mu^*(G)$, the minimum cardinality of a *maximal matching*, meaning a matching that cannot be extended by adding more edges.

---

## Commentary

This conjecture parallels the inequality $\alpha(G) \le \mu(G)$ for regular graphs, where $\alpha(G)$ denotes the independence number and $\mu(G)$ the matching number. That result, which originated from an earlier \texttt{TxGraffiti} conjecture and was later proved and generalized in~\citep{CaroDavilaPepper2022, TxGraffitiConjectures2022}, highlights a symmetry between vertex- and edge-based packing parameters. In the present conjecture, a similar structure emerges between their saturation analogues: while $\alpha(G)$ and $\mu(G)$ capture maximum-size packings, the pair $i(G)$ and $\mu^*(G)$ measure minimum-maximal saturated structures.

The requirement that $G$ is $r$-regular for $r > 0$ is necessary in the statement of Conjecture~\ref{conj:mirror-conjecture}, since, for example, it fails on binary star graphs. Moreover, the statement is clearly true for 2-regular graphs, and so, the conjecture is only open for $r$-regular graphs with $r \geq 3$.

### Equality Cases
