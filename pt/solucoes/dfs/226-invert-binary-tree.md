# 🌲 226. Invert Binary Tree

## 🧠 Intuicao

Inverter uma arvore binaria significa **espelhar** todos os nos: o filho esquerdo vira o direito e vice-versa. Podemos fazer isso recursivamente, invertendo cada subarvore.

---

## ⚙️ Abordagem

1. Se o no for nulo, retornar nulo
2. Trocar os filhos esquerdo e direito do no atual
3. Recursivamente inverter a subarvore esquerda
4. Recursivamente inverter a subarvore direita
5. Retornar o no (agora invertido)

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Visitamos cada no uma vez
- **Espaco**: O(h) - Pilha de recursao, onde h e a altura da arvore

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/226-invert-binary-tree/solution.rb)

---

🔙 [Voltar ao indice](../../index.md)
