# 🗺️ 242. Valid Anagram

## 🧠 Intuicao

Um anagrama e uma palavra formada pelo rearranjo de todas as letras de outra palavra. Para verificar se duas strings sao anagramas, podemos **contar a frequencia de cada caractere** e comparar as contagens.

---

## ⚙️ Abordagem

1. Se os tamanhos forem diferentes, retornar falso
2. Criar um hash map para contar frequencias
3. Para a primeira string, incrementar contagens
4. Para a segunda string, decrementar contagens
5. Verificar se todas as contagens sao zero

Alternativa: ordenar ambas as strings e comparar.

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Uma passagem por cada string
- **Espaco**: O(1) - Hash map com no maximo 26 letras (alfabeto fixo)

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/242-valid-anagram/solution.rb)

---

🔙 [Voltar ao indice](../../index.md)
