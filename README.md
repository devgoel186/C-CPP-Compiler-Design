# Lox-Compiler-Design

More about general compiler design than following the footsteps of Lox, with some touches here and there of my own.

## Steps in Compiler Design

1. **Scanning/Lexing/Lexical Analysis** - Taking in a linear stream of characters and chunking them together into 'tokens'

2. **Parsing** - Takes the flat sequence of tokens generated and builds a 'parse tree', or an 'abstract syntax tree', or simply 'syntax tree'.

3. **Static Analysis** - The first bit of analysis that most languages do is called 'binding' or 'resolution'. If the language is statically typed, we can figure out types, and probably store them back as attributes in the AST. Or, transform it into a symbol table, or into an entirely different data structure.
