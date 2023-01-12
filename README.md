# C-CPP-Compiler-Design

About general compiler design concepts, that include inspirations from Lex/Yacc tutorials, following the footsteps of Lox development using Crafting Interpreters book, the Dragon Book, and some touches here and there of my own.

## Steps in Compiler Design

1. **Scanning/Lexing/Lexical Analysis** - Taking in a linear stream of characters and chunking them together into 'tokens'

2. **Parsing** - Takes the flat sequence of tokens generated and builds a 'parse tree', or an 'abstract syntax tree', or simply 'syntax tree'.

3. **Static Analysis** - The first bit of analysis that most languages do is called 'binding' or 'resolution'. If the language is statically typed, we can figure out types, and probably store them back as attributes in the AST. Or, transform it into a symbol table, or into an entirely different data structure.

4. **Intermediate representation** - The code can be stored in some form of shared intermediate form, i.e., not tightly tied to either the source or destination.

5. **Optimization** - Optimization is a huge part of the programming language. Uses methods like constant folding to optimize.

6. **Code generation** - Convert it all to a form which the machine can actually run. Now, here comes the decision, do we generate instructions for a real CPU or a virtual one? Native code is fast, but generation of that code is complicated. Another way is producing VM code, which we generally refer to as 'bytecode' today.

7. **Virtual Machine** - If producing bytecode, you can write a VM which will run your bytecode.

8. **Runtime**

- We finally hammered the user's program into a form that we can execute. If compiled to machine code, we simply tell the OS to load the executable. If compiled to bytecode, we need to start the VM and load the program into that.
- In a fully compiled language, like Go, the code implementing the runtime gets inserted directly into the resulting executable. If running inside a VM, then the runtime also lives there. Like in Java, Python and Javascript.

## Shortcut & Alternate Routes

1. Single-pass compilers = produce output code directly in parser, without any ASTs or IR. This means you need to provide all info for correct compilation at declaration only. Examples - Pascal and C. **Note** - This is why C requires linear declaration of functions as per their usage, and not in a random order.

2. Tree-walk interpreters = Begin execution after parsing to AST.

3. Transpilers

4. JIT -
