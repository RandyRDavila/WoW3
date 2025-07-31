---
title: "Conjecture GT.2"
status: open
---

---

## Statement

**Conjecture.** If $G \not\cong K_4$ is a connected graph with maximum degree $\Delta(G) \leq 3$, then
$$
Z(G) \leq \alpha(G) + 1,
$$
and this bound is sharp.

> **Status:** <span class="badge status-open">Open</span>

---

## Lean4 Theorem

```lean
theorem (G : SimpleGraph V)
  (h1 : connected G) :
  zero_forcing_number G ≤ independence_number G + 1 :=
sorry
```

---

## Definitions

Let $G$ be a finite, simple, undirected graph.

- The *zero forcing color change rule* operates on a blue-and-white coloring of the vertices of $G$: at each discrete time step, a blue vertex $u$ with exactly one white neighbor $v$ may force $v$ to become blue. If repeating this process iteratively results in all vertices eventually becoming blue, then the initial set of blue vertices is a *zero forcing set* of $G$. The minimum cardinality of this set is the **zero forcing number**, denoted $Z(G)$.

- A set $S\subseteq V(G)$ is an *independent set* if no two vertices in $S$ are adjacent. The **independence number** of $G$, denoted $\alpha(G)$, is the maximum cardinality of an independent set of vertices in $G$.

---

## Commentary

Originally introduced in the context of bounding the minimum rank of matrices associated with graphs[^aim], the zero forcing number has since become a widely studied invariant with connections to linear algebra, control theory, and graph propagation models[^zbook].

We note that $G \not\cong K_4$ is necessary in the statement of Conjecture GT.2 since $Z(K_4) = 3$ and $\alpha(K_n) = 1$. This conjecture has received considerable attention. For example, it has been proven—and in some cases strengthened—under additional structural assumptions, such as when $G$ is claw-free~\citep{HenningDavila2020, DavilaDissertation2019, HE2024321, Schuerger2024ZAlpha}. It has also been shown to hold with equality on an infinite family of nontrivial constructions, including cubic trees modified by appending specific subgraphs at the leaves~\citep{Schuerger2024ZAlpha}.

### Equality Cases

---

## References

[^aim]: F. Barioli, W. Barrett, S. Butler, S. M Cioab˘ a, D. Cvetkovi´ c, S. M. Fallat, C. Godsil, W. Haemers, L. Hogben, R. Mikkelson, S. Narayan, O. Pryporova, I. Sciriha, W. So, D. Stevanovi´ c, H. van der Holst, K. Vander Meulen, and A. Wangsness Wehe. Zero forcing sets and the minimum rank of graphs. *Linear Algebra Appl.*, 428(7):1628–1648, 2008.

[^zbook]: L. Hogben, J. C.-H. Lin, and B. L. Shader. Inverse Problems and Zero Forcing for Graphs, volume 270 of Mathematical Surveys and Monographs. American Mathematical Society, 2022. ISBN 978-1-4704-6655-8. URL <https://bookstore.ams.org/surv-270>.
