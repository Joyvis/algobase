# 📚 232. Implement Queue Using Stacks

## 🧠 Intuicao

Uma fila e FIFO (primeiro a entrar, primeiro a sair) enquanto uma pilha e LIFO (ultimo a entrar, primeiro a sair). Podemos simular uma fila usando **duas pilhas**: uma para entrada e outra para saida. Quando precisamos desenfileirar, transferimos elementos da pilha de entrada para a de saida (invertendo a ordem).

---

## ⚙️ Abordagem

1. Usar duas pilhas: `entrada` e `saida`
2. **Push**: adicionar a pilha de entrada
3. **Pop/Peek**:
   - Se a pilha de saida estiver vazia, transferir todos elementos da entrada para saida
   - Retornar/remover do topo da pilha de saida
4. **Empty**: ambas pilhas vazias

---

## ⏱️ Complexidade

- **Tempo**: Push O(1), Pop/Peek amortizado O(1)
- **Espaco**: O(n) - Armazenamos todos os elementos nas pilhas

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/232-implement-queue-using-stacks/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/232-implement-queue-using-stacks/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
