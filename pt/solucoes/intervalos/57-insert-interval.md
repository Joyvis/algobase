# 📐 57. Insert Interval

## 🧠 Intuicao

Precisamos inserir um novo intervalo em uma lista ordenada de intervalos nao-sobrepostos, mesclando quando necessario. Dividimos em tres partes: intervalos antes do novo, intervalos que se sobrepoem (mesclar), e intervalos depois.

---

## ⚙️ Abordagem

1. Adicionar todos os intervalos que terminam antes do novo comecar
2. Mesclar todos os intervalos que se sobrepoem com o novo:
   - Atualizar inicio: `min(novo.inicio, intervalo.inicio)`
   - Atualizar fim: `max(novo.fim, intervalo.fim)`
3. Adicionar o intervalo mesclado ao resultado
4. Adicionar todos os intervalos restantes

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Uma passagem pelos intervalos
- **Espaco**: O(n) - Lista de resultado

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/57-insert-interval/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/57-insert-interval/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
