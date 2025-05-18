#funcoes #reutilizacao #typescript #javascript 

### Conceito de funcoes no JavaScript/TypeScript
Funcoes nao sao nada mais do que "**blocos reutilizaveis** de codigo". 
Quando certo codigo/acao e **utilizado varias vezes** dentro de um arquivo, esse codigo/acao geralmente e **encapsulado** e transformado em uma funcao, por alguns aspectos:
- As funcoes tornam o **codigo mais reutilizavel**
- As funcoes tornam o codigo mais **facil de ser mantido**
- As funcoes nos permite "**simplificar**" logicas complexas

*Esse conceito e bastante importante e usado, tanto que existe ate um paradigma de programacao que gira todo em torna de funcoes. React gira em torno de funcao, Javascript gira em torno de funcao, **toda** linguagem usa funcao.*

### Sintaxe das funcoes (comuns)
```typescript
function cumprimenta(nome) {
	return "Oi " + nome;
}
```

**Links**: [[Arrow functions]], [[High-Order-Functions (HOFs)]], [[Entendendo escopos]], [[Conceito de componentes React]], [[Componentes fortemente tipados]], [[Entendendo componentes de funcao]], [[Recursao]]