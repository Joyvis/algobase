# 🌳 235. Lowest Common Ancestor of BST

## 🧠 Intuicao

Em uma BST, o LCA e o primeiro no onde os caminhos para p e q divergem. Usamos a propriedade de ordenacao para navegar eficientemente.

---

## ⚙️ Abordagem

1. Se ambos menores, ir para esquerda
2. Se ambos maiores, ir para direita
3. Caso contrario, encontramos o LCA

---

## ⏱️ Complexidade

- **Tempo**: O(h) - Altura da arvore
- **Espaco**: O(1) iterativo ou O(h) recursivo

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/235-lowest-common-ancestor-of-a-binary-search-tree/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/235-lowest-common-ancestor-of-a-binary-search-tree/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
