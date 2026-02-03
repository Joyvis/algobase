# 🌲 133. Clone Graph

## 🧠 Intuicao

Para clonar um grafo, precisamos criar copias de todos os nos e manter as mesmas conexoes. O desafio e evitar criar duplicatas quando encontramos nos ja visitados. Usamos um **hash map** para mapear nos originais para seus clones.

---

## ⚙️ Abordagem

1. Criar um hash map para armazenar nos ja clonados
2. Usar DFS recursivo:
   - Se o no ja foi clonado, retornar o clone do hash map
   - Criar um novo no clone
   - Adicionar ao hash map
   - Recursivamente clonar todos os vizinhos
3. Retornar o clone do no inicial

---

## ⏱️ Complexidade

- **Tempo**: O(V + E) - Visitamos cada no e cada aresta uma vez
- **Espaco**: O(V) - Hash map com todos os nos

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/133-clone-graph/solution.rb)

---

🔙 [Voltar ao indice](../../index.md)
