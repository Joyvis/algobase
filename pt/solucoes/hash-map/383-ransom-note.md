# 🗺️ 383. Ransom Note

## 🧠 Intuicao

Precisamos verificar se podemos construir uma nota de resgate usando as letras de uma revista. Cada letra da revista so pode ser usada uma vez. Usamos um **hash map** para contar as letras disponiveis na revista.

---

## ⚙️ Abordagem

1. Contar a frequencia de cada letra na revista
2. Para cada letra na nota de resgate:
   - Verificar se a letra existe na revista com contagem > 0
   - Se nao existir ou contagem for 0, retornar falso
   - Decrementar a contagem da letra
3. Se todas as letras forem encontradas, retornar verdadeiro

---

## ⏱️ Complexidade

- **Tempo**: O(m + n) - Onde m e n sao os tamanhos das strings
- **Espaco**: O(1) - Hash map com no maximo 26 letras

---

## 🧩 Solucoes

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/383-ransom-note/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/383-ransom-note/solution.ts)

---

🔙 [Voltar ao indice](../../index.md)
