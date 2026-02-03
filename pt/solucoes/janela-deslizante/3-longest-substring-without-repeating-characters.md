# 🪟 3. Longest Substring Without Repeating Characters

## 🧠 Intuicao

Queremos encontrar a maior substring **sem caracteres repetidos**. Usamos uma **janela deslizante**: expandimos a janela adicionando caracteres, e quando encontramos uma repeticao, contraimos a janela ate remover a duplicata.

---

## ⚙️ Abordagem

1. Usar um hash set para rastrear caracteres na janela atual
2. Usar dois ponteiros: `esquerda` e `direita`
3. Expandir `direita`:
   - Se o caractere nao esta no set, adicionar e atualizar tamanho maximo
   - Se esta no set, remover caracteres de `esquerda` ate remover a duplicata
4. Retornar o tamanho maximo encontrado

---

## ⏱️ Complexidade

- **Tempo**: O(n) - Cada caractere e adicionado e removido no maximo uma vez
- **Espaco**: O(min(m, n)) - Onde m e o tamanho do alfabeto

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/3-longest-substring-without-repeating-characters/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/3-longest-substring-without-repeating-characters/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
