# 🌲 733. Flood Fill

## 🧠 Intuicao

O flood fill e como usar a ferramenta "balde de tinta" em um editor de imagens: a partir de um pixel inicial, pintamos todos os pixels conectados da mesma cor com uma nova cor. Usamos **DFS** para visitar todos os pixels adjacentes.

---

## ⚙️ Abordagem

1. Verificar se a cor inicial ja e a nova cor (evita loop infinito)
2. Usar DFS a partir do pixel inicial:
   - Pintar o pixel atual com a nova cor
   - Recursivamente visitar os 4 vizinhos (cima, baixo, esquerda, direita)
   - Apenas visitar vizinhos que tem a cor original
3. Retornar a imagem modificada

---

## ⏱️ Complexidade

- **Tempo**: O(m * n) - Podemos visitar cada pixel uma vez
- **Espaco**: O(m * n) - Pilha de recursao no pior caso

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/733-flood-fill/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/733-flood-fill/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
