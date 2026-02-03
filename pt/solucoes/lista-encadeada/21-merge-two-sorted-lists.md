# 🔗 21. Merge Two Sorted Lists

## 🧠 Intuicao

Para mesclar duas listas ordenadas, comparamos os elementos de cada lista e sempre escolhemos o menor. Usamos um **no sentinela** (dummy) para simplificar a construcao da lista resultante.

---

## ⚙️ Abordagem

1. Criar um no sentinela e um ponteiro `atual`
2. Enquanto ambas as listas tiverem elementos:
   - Comparar os valores dos nos atuais
   - Conectar o menor ao `atual`
   - Avancar o ponteiro da lista escolhida
   - Avancar `atual`
3. Conectar o restante da lista nao-vazia
4. Retornar `sentinela.proximo`

---

## ⏱️ Complexidade

- **Tempo**: O(n + m) - Percorremos ambas as listas
- **Espaco**: O(1) - Apenas rearranjo de ponteiros

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/21-merge-two-sorted-lists/solution.rb)

---

🔙 [Voltar ao indice](../../index.md)
