# 📊 121. Best Time to Buy and Sell Stock

## 🧠 Intuicao

Para maximizar o lucro, precisamos **comprar na baixa e vender na alta**. Ao percorrer os precos, mantemos o menor preco visto ate agora e calculamos o lucro potencial em cada dia. O maior lucro encontrado e a resposta.

---

## ⚙️ Abordagem

1. Inicializar `preco_minimo` com infinito e `lucro_maximo` com 0
2. Para cada preco:
   - Atualizar `preco_minimo` se o preco atual for menor
   - Calcular lucro potencial: `preco - preco_minimo`
   - Atualizar `lucro_maximo` se o lucro potencial for maior
3. Retornar `lucro_maximo`

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Uma unica passagem pelo array
- **Espaco**: O(1) - Apenas variaveis de controle

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/121-best-time-to-buy-and-sell-stock/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/121-best-time-to-buy-and-sell-stock/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
