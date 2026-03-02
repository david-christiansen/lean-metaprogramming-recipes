import VersoManual
import MetaprogrammingRecipes.Lean

open Verso.Genre Manual
open Verso.Genre.Manual.InlineLean

open Lean Elab Meta Tactic Command
open MetaprogrammingRecipes

set_option pp.rawOnError true


#doc (Manual) "Template Example" =>

%%%
tag := "template-example"
number := false
%%%

This chapter demonstrates the standard layout and features available for cookbook entries.

# Introduction

Use the `#` symbol for top-level sections. Each chapter should start with a clear problem statement and a summary of the solution.

# Inline Lean Code

You can include Lean code that is elaborated directly within the document. This is useful for small snippets.

```lean
def helloCookbook := "Welcome!"
```

# Errors and Warnings

Expected errors must be explicitly marked with `+error`. If the error message does not match exactly, the documentation build may fail.

# Cross-References

You can link to other sections using their tags: {ref "template-example"}[Back to top].

# Notes

You can add marginal notes like this.{margin}[Marginal notes are great for extra context.]
