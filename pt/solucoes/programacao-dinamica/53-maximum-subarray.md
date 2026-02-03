# 📊 53. Maximum Subarray

## 🧠 Intuicao

Queremos encontrar o **subarray contiguo com maior soma**. A chave e perceber que, ao iterar pelo array, se a soma acumulada ate agora for negativa, e melhor comecar um novo subarray do elemento atual. Isso e o **algoritmo de Kadane**.

---

## ⚙️ Abordagem

1. Inicializar `soma_atual` e `soma_maxima` com o primeiro elemento
2. Para cada elemento a partir do segundo:
   - `soma_atual = max(elemento, soma_atual + elemento)`
   - `soma_maxima = max(soma_maxima, soma_atual)`
3. Retornar `soma_maxima`

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Uma unica passagem pelo array
- **Espaco**: O(1) - Apenas variaveis de controle

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/53-maximum-subarray/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/53-maximum-subarray/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
