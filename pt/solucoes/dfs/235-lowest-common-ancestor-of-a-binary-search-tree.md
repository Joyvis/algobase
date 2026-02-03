# 🌲 235. Lowest Common Ancestor of a Binary Search Tree

## 🧠 Intuicao

Em uma BST, todos os valores menores estao a esquerda e maiores a direita. O **ancestral comum mais baixo (LCA)** de dois nos e o primeiro no onde os caminhos para p e q divergem. Podemos usar essa propriedade para encontrar o LCA sem visitar todos os nos.

---

## ⚙️ Abordagem

1. Comecar da raiz
2. Se ambos p e q sao menores que o no atual, ir para a esquerda
3. Se ambos p e q sao maiores que o no atual, ir para a direita
4. Caso contrario, o no atual e o LCA (os caminhos divergem aqui)

---

## ⏱️ Complexidade

- **Tempo**: O(h) - Onde h e a altura da arvore
- **Espaco**: O(1) - Solucao iterativa, ou O(h) se recursiva

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/235-lowest-common-ancestor-of-a-binary-search-tree/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/235-lowest-common-ancestor-of-a-binary-search-tree/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
