# 🌊 542. 01 Matrix

## 🧠 Intuicao

Precisamos encontrar a **distancia ate o 0 mais proximo** para cada celula. A chave e perceber que podemos comecar de **todos os zeros simultaneamente** e expandir para fora. Isso e um BFS multi-source classico.

---

## ⚙️ Abordagem

1. Criar uma matriz de distancias, inicializando 0s com distancia 0 e 1s com infinito
2. Adicionar todas as celulas com valor 0 a fila
3. Para cada celula na fila, verificar os 4 vizinhos:
   - Se a distancia atual + 1 for menor que a distancia do vizinho, atualizar
   - Adicionar o vizinho a fila
4. Retornar a matriz de distancias

---

## ⏱️ Complexidade

- **Tempo**: O(m * n) - Visitamos cada celula no maximo uma vez
- **Espaco**: O(m * n) - Matriz de distancias e fila

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/542-01-matrix/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/542-01-matrix/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
