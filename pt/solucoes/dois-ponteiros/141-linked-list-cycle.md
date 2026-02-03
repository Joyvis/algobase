# 👆👆 141. Linked List Cycle

## 🧠 Intuicao

Para detectar um ciclo em uma lista encadeada, usamos a tecnica dos **ponteiros rapido e lento** (Floyd's Cycle Detection). O ponteiro rapido avanca 2 passos enquanto o lento avanca 1. Se houver ciclo, eles eventualmente se encontram.

---

## ⚙️ Abordagem

1. Inicializar dois ponteiros: `lento` e `rapido` no inicio da lista
2. Enquanto `rapido` e `rapido.proximo` nao forem nulos:
   - Mover `lento` um passo
   - Mover `rapido` dois passos
   - Se `lento == rapido`, ha um ciclo
3. Se sair do loop, nao ha ciclo

---

## ⏱️ Complexidade

- **Tempo**: O(n) - No maximo duas voltas pelo ciclo
- **Espaco**: O(1) - Apenas dois ponteiros

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/141-linked-list-cycle/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/141-linked-list-cycle/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
