# lex/yacc

## lex/flex

- lex is a scanner generator
- Input is a set of regex and associated actions (written in C)
- Output is a table-driven scanner (lex.yy.c)
- This output, when given to a C compiler, produces as output a stream of tokens.
- flex: An open-source implementation of the original UNIX lex utility

### Program Structure: 

In the input file, there are 3 sections:

1. **Definition Section**: The definition section contains the declaration of variables, regular definitions, manifest constants. In the definition section, text is enclosed in “%{ %}” brackets. Anything written in this brackets is copied directly to the file lex.yy.c

2. **Pattern and Action**

3. **User code section**: Contains C statements and additional functions. We can also compile these functions separately and load with the lexical analyzer.
