#componentes #react #reutilizacao #typescript

### Componentes no React
Os componentes sao uma maneira disponibilizada pelo React de **reutilizarmos** determinado bloco de codigo de forma **dinamica** dentro do nosso projeto. Usando um componente, podemos **simplificar**, **encapsular** e **reutilizar** logicas **complexas** de forma simples e facil dentro de **qualquer parte** do nosso projeto.

No React, existem **duas formas** de se criar componentes:
1. **Function components** - Forma mais moderna e recomendada
2. **Class componentes** - Forma antiga, menos recomendada e pouco utilizada.

### Sintaxe dos componentes

```tsx
export default function Botao () {
	return (
		<button>Ola esse e um componente de botao!</button>
	);
}
```

**Links**: [[Conceito de JSX]], [[Conceito de propriedades de componentes]], [[Entendendo componentes de funcao]], [[Entendendo componentes de classe]], [[Conceito de funcoes]], [[Componentes fortemente tipados]], 