import VersoManual
import Cookbook.Lean

open Verso.Genre Manual
open Verso.Genre.Manual.InlineLean

open Lean Elab Meta Tactic Command
open Cookbook

set_option pp.rawOnError true


#doc (Manual) "Template Example" =>

%%%
tag := "template-example"
number := false
%%%

This chapter demonstrates the standard layout and features available for cookbook entries.

*Adding Subheaders* 
You can use `##` for subheaders to organize your content into sections of `*` for a bolder header. 
Notice that in the code, there is no extra line between the `*header*` and the following text, hence it started immediately after the header. Add a blank line if you want to start a new paragraph after the header.

*Adding inline Lean Code*

You can include Lean code that is elaborated directly within the document. This is useful for small snippets.

```lean
def helloCookbook := "Welcome!"
```

*Errors and Warnings*

Expected errors must be explicitly marked with `+error`. If the error message does not match exactly, the documentation build may fail.


*Cross-References*

You can link to other sections using their tags: {ref "template-example"}[Back to top].

*Other Notes*

You can add marginal notes like this.{margin}[Marginal notes are great for extra context.]

*Adding Sections*

Use the `#` symbol for top-level section like below. Each chapter should start with a clear problem statement and a summary of the solution.


# A section made from #

This is a section created using the `#` symbol. You can have multiple levels of sections and subsections as needed.

## Another subsection with ##

Yep!



