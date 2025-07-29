# Conjecture 001: Independence vs Residue

**Statement:**
If \( G \) is a connected graph, then
\[
\alpha(G) \geq \frac{r(G) + A(G)}{\Delta(G)}
\]

**Equality Cases:**

- Petersen graph
- Star graphs

**Lean4 Theorem:**
\`\`\`lean
theorem (G : SimpleGraph V)
  (h1 : connected G) :
  independence_number G ≥ ((residue G + annihilation_number G) / max_degree G) :=
sorry
\`\`\`

**Commentary:**
This inequality links residue and annihilation number with max degree—strong for sparse graphs.
