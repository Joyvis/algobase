# ⛰️ 973. K Closest Points to Origin

## 🧠 Intuicao

Precisamos encontrar os K pontos mais proximos da origem. Podemos usar um **max heap** de tamanho K: mantemos os K menores elementos vistos ate agora. Quando o heap excede K elementos, removemos o maior.

---

## ⚙️ Abordagem

1. Calcular a distancia de cada ponto a origem (podemos usar distancia ao quadrado para evitar raiz quadrada)
2. Usar um max heap de tamanho K:
   - Adicionar cada ponto ao heap
   - Se o tamanho exceder K, remover o ponto mais distante (topo do max heap)
3. Retornar os K pontos no heap

Alternativa: usar Quick Select para O(n) em media.

---

## ⏱️ Complexidade

- **Tempo**: O(n log K) - Cada insercao/remocao no heap e O(log K)
- **Espaco**: O(K) - Heap com K elementos

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/973-k-closest-points-to-origin/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/973-k-closest-points-to-origin/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
