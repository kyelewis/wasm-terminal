# WASM Terminal

A WASM package written in C that draws a terminal and outputs it to a canvas.

## Usage
```typescript
import { WASMTerminal } from "@kyedoesdev/wasm-terminal";

(async () => {
  const terminal = new WASMTerminal();
  await terminal.init();
  terminal.setText("abc wasm!!");
  terminal.renderToCanvas("#renderCanvas");
})();
```

## Screenshots
![Screenshot of wasm-terminal](https://github.com/kyelewis/hello-wasm-with-c/blob/main/screenshots/screenshot-1.png?raw=true)

