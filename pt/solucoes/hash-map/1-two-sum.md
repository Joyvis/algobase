# 🗺️ 1. Two Sum

## 🧠 Intuicao

Para encontrar dois numeros que somam ao alvo, podemos usar um **hash map** para armazenar os numeros ja vistos. Para cada numero, verificamos se o complemento (alvo - numero) ja existe no hash.

---

## ⚙️ Abordagem

1. Criar um hash map vazio
2. Para cada numero no array:
   - Calcular o complemento: `alvo - numero`
   - Se o complemento existe no hash, retornar os dois indices
   - Caso contrario, adicionar o numero atual ao hash com seu indice
3. Se nenhum par for encontrado, retornar vazio

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Uma passagem pelo array
- **Espaco**: O(n) - Hash map com ate n elementos

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/1-two-sum/solution.rb)

---

🔙 [Voltar ao indice](../../index.md)
