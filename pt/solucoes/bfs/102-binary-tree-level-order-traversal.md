# 🌊 102. Binary Tree Level Order Traversal

## 🧠 Intuicao

Para percorrer uma arvore **nivel por nivel** (da raiz ate as folhas), precisamos visitar todos os nos de um nivel antes de passar para o proximo. Isso e exatamente o que a **busca em largura (BFS)** faz, usando uma fila para processar os nos na ordem correta.

---

## ⚙️ Abordagem

1. Criar uma fila e adicionar a raiz
2. Enquanto a fila nao estiver vazia:
   - Determinar quantos nos estao no nivel atual (`tamanho da fila`)
   - Processar todos esses nos, adicionando seus valores a uma lista do nivel
   - Adicionar os filhos de cada no a fila
3. Adicionar a lista do nivel ao resultado final
4. Retornar a lista de listas com todos os niveis

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Visitamos cada no exatamente uma vez
- **Espaco**: O(n) - A fila pode conter ate n/2 nos no pior caso (ultimo nivel)

---

## 🧩 Solucoes

- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/102-binary-tree-level-order-traversal/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
