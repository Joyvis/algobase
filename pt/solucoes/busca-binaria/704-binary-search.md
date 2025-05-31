# 🔍 704. Binary Search

## 🧠 Intuição

Quando pensamos em **buscar um valor dentro de um array ordenado**, a abordagem mais natural é percorrer item por item (busca linear). Mas, como os dados estão ordenados, podemos usar um método muito mais eficiente: **dividir para conquistar**.

A ideia inicial é: por que não ir direto para o meio do array e verificar se o valor está ali, ou se devemos procurar apenas em uma das metades?

---

## ⚙️ Abordagem

Utilizamos a técnica de **busca binária**, que consiste em:

1. Definir dois ponteiros: `esquerda` e `direita`, indicando o início e fim do array.
2. Calcular o índice do meio: `meio = (esquerda + direita) // 2`.
3. Verificar se o valor do meio é igual ao `target`.
   - Se for, retornamos o índice.
   - Se o valor for menor que o `target`, ignoramos a metade esquerda (`esquerda = meio + 1`).
   - Se for maior, ignoramos a metade direita (`direita = meio - 1`).
4. Repetimos esse processo até encontrarmos o valor ou os ponteiros se cruzarem (nesse caso, retornamos `-1`).

Essa técnica reduz o número de comparações drasticamente, sendo ideal para arrays **ordenados**.

---

## ⏱️ Complexidade

- **Complexidade de tempo**: $$O(\log n)$$
  A cada iteração cortamos o espaço de busca pela metade.

- **Complexidade de espaço**: $$O(1)$$
  Utilizamos apenas variáveis de controle — nenhum espaço adicional significativo é alocado.

---

## 🧩 Soluções por linguagem

- [Python](../../../src/python/704-binary-search/solution.py)
- Ruby (em breve)
- TypeScript (em breve)
- Go (em breve)

