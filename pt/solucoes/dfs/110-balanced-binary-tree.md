# 🌲 110. Balanced Binary Tree

## 🧠 Intuicao

Uma arvore e **balanceada** se, para cada no, a diferenca de altura entre suas subarvores esquerda e direita for no maximo 1. Podemos verificar isso recursivamente, calculando a altura de cada subarvore e verificando o balanceamento ao mesmo tempo.

---

## ⚙️ Abordagem

1. Criar uma funcao recursiva que retorna a altura de uma subarvore
2. Se encontrar um desbalanceamento, retornar -1 para propagar o erro
3. Para cada no:
   - Calcular altura da subarvore esquerda
   - Calcular altura da subarvore direita
   - Se a diferenca for maior que 1, retornar -1
   - Caso contrario, retornar max(esquerda, direita) + 1
4. A arvore e balanceada se a funcao nao retornar -1

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Visitamos cada no uma vez
- **Espaco**: O(h) - Pilha de recursao, onde h e a altura da arvore

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/110-balanced-binary-tree/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/110-balanced-binary-tree/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
