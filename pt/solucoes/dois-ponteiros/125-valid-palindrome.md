# 👆👆 125. Valid Palindrome

## 🧠 Intuicao

Um palindromo e uma string que se le igual de tras para frente. Usando **dois ponteiros** (um no inicio, outro no fim), podemos comparar caracteres simetricamente, ignorando caracteres nao-alfanumericos e diferenca de maiusculas/minusculas.

---

## ⚙️ Abordagem

1. Usar dois ponteiros: `esquerda = 0`, `direita = tamanho - 1`
2. Enquanto `esquerda < direita`:
   - Avancar `esquerda` enquanto nao for alfanumerico
   - Recuar `direita` enquanto nao for alfanumerico
   - Comparar caracteres (ignorando case)
   - Se diferentes, retornar falso
   - Mover ambos ponteiros
3. Se chegar ao fim, retornar verdadeiro

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Uma passagem pela string
- **Espaco**: O(1) - Apenas ponteiros

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/125-valid-palindrome/solution.rb)

---

🔙 [Voltar ao indice](../../index.md)
