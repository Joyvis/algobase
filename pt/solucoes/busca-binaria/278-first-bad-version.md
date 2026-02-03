# 🔍 278. First Bad Version

## 🧠 Intuicao

Imagine uma linha de producao onde, a partir de um certo ponto, todas as versoes estao defeituosas. Precisamos encontrar a **primeira versao ruim** de forma eficiente. Como as versoes estao em ordem e todas depois da primeira ruim tambem sao ruins, podemos usar **busca binaria**.

---

## ⚙️ Abordagem

1. Definir dois ponteiros: `esquerda = 1` e `direita = n`
2. Calcular o meio: `meio = (esquerda + direita) / 2`
3. Verificar se a versao do meio e ruim:
   - Se for ruim, a primeira versao ruim esta no meio ou antes: `direita = meio`
   - Se nao for ruim, a primeira versao ruim esta depois: `esquerda = meio + 1`
4. Quando `esquerda == direita`, encontramos a primeira versao ruim

---

## ⏱️ Complexidade

- **Tempo**: O(log n) - Dividimos o espaco de busca pela metade a cada iteracao
- **Espaco**: O(1) - Apenas variaveis de controle

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/278-first-bad-version/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/278-first-bad-version/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
