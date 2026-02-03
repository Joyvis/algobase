# 🌳 102. Binary Tree Level Order Traversal

## 🧠 Intuicao

Para percorrer uma arvore **nivel por nivel**, usamos BFS com uma fila. Processamos todos os nos de um nivel antes de passar para o proximo, agrupando os valores de cada nivel em uma lista separada.

---

## ⚙️ Abordagem

1. Criar uma fila e adicionar a raiz
2. Enquanto a fila nao estiver vazia:
   - Determinar o tamanho do nivel atual
   - Processar todos os nos do nivel
   - Adicionar filhos a fila para o proximo nivel
3. Retornar lista de listas

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Visitamos cada no uma vez
- **Espaco**: O(n) - Fila e resultado

---

## 🧩 Solucoes

- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/102-binary-tree-level-order-traversal/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
