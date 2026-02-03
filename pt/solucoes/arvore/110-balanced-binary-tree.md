# 🌳 110. Balanced Binary Tree

## 🧠 Intuicao

Uma arvore balanceada tem diferenca de altura entre subarvores de no maximo 1 para cada no. Verificamos recursivamente, calculando altura e balanceamento simultaneamente.

---

## ⚙️ Abordagem

1. Funcao recursiva retorna altura ou -1 se desbalanceada
2. Para cada no, verificar ambas subarvores
3. Se diferenca > 1, propagar -1
4. Caso contrario, retornar max(esq, dir) + 1

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Visitamos cada no uma vez
- **Espaco**: O(h) - Pilha de recursao

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/110-balanced-binary-tree/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/110-balanced-binary-tree/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
