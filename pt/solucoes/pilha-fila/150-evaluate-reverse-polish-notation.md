# 📚 150. Evaluate Reverse Polish Notation

## 🧠 Intuicao

A notacao polonesa reversa (RPN) coloca os operadores **depois** dos operandos. Podemos avaliar usando uma **pilha**: empilhamos numeros e, quando encontramos um operador, desempilhamos dois numeros, aplicamos a operacao e empilhamos o resultado.

---

## ⚙️ Abordagem

1. Criar uma pilha vazia
2. Para cada token:
   - Se for numero, empilhar
   - Se for operador (+, -, *, /):
     - Desempilhar dois operandos (segundo operando primeiro)
     - Aplicar a operacao
     - Empilhar o resultado
3. O valor final na pilha e o resultado

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Processamos cada token uma vez
- **Espaco**: O(n) - Pilha pode ter ate n/2 elementos

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/150-evaluate-reverse-polish-notation/solution.rb)

---

🔙 [Voltar ao indice](../../index.md)
