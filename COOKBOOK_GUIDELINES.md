# Lean 4 Metaprogramming Cookbook Guidelines

Welcome to the Lean 4 Metaprogramming Cookbook. We appreciate you taking out time and reading through this document, to help everyone code better with Lean4. This document outlines how you should contribute to the cookbook.

## Structure

The cookbook is organized into a hierarchy of chapters and recipes:

- **Main Entry**: `MetaprogrammingRecipes.lean` is the front page.
- **Chapter Aggregator**: `MetaprogrammingRecipes/Chapters.lean` manages the list of all chapters and the index.
- **Chapter Parent Files**: Located in `MetaprogrammingRecipes/` (e.g., `Syntax.lean`, `Expressions.lean`). These define the chapter title and include individual recipes.
- **Recipes**: Individual Lean files located in subdirectories (e.g., `MetaprogrammingRecipes/Syntax/Commands.lean`).

## Writing a New Recipe

Writing a new recipe is straightforward. Follow these steps to ensure your contribution is consistent with the existing content:

1. **Consult**: Make sure what you are writing is not already covered. Please consult in discussions before starting.

2. **Create a New File**: Add a `.lean` file in the appropriate subdirectory: `MetaprogrammingRecipes/{CHAPTER_NAME}/{RecipeName}.lean`.

3. **Import Common Modules**: Start your file with the below imports:

```lean
import VersoManual
import MetaprogrammingRecipes.Lean

open Verso.Genre Manual
open Verso.Genre.Manual.InlineLean

open Lean Elab Meta Tactic Command
open MetaprogrammingRecipes

set_option pp.rawOnError true
```

4. **Define the Document**: Use `#doc (Manual) "Your Recipe Title" =>` to start.

5. **Use Sections**: Use `#` for top-level headers within your recipe and `##` for sub-sections.

6. **Link to Chapter**:
   - Open the chapter's parent file (e.g., `MetaprogrammingRecipes/{CHAPTER_NAME}.lean`).
   - Add `import MetaprogrammingRecipes.{CHAPTER_NAME}.{RecipeName}` at the top.
   - Include it using `{include 1 MetaprogrammingRecipes.{CHAPTER_NAME}.{RecipeName}}`.

Please go through the [Example.lean](./MetaprogrammingRecipes/Example.lean) recipe for a template to follow.

## Best Practices

- **Atomic Examples**: Keep each recipe focused on one specific problem.
- **Indexing**: Add index entries for key concepts: `{index}[My Concept]`.
- **Explain the "Why"**: Don't just show code; explain the approach and mention any "Pro-tips".
- **Cross-Reference**: Link to related recipes using `{ref "tag"}[text]`.
- **Run Locally**: Always build your changes locally:

```bash
lake build metaprogramming-recipes
lake exe metaprogramming-recipes
```

- No AI Slop. Please write the content yourself. Since this is meant for you to write code easily, the more AI Slop there is with complicated jargon and less precise explanations, the less useful it will be. If you need help, ask in discussions or reach out on discusssions.

## Building and Previewing

The output will be in `_out/html-multi`. You can serve it locally using any static file server (e.g., `python3 -m http.server -d _out/html-multi`).

## Troubleshooting "INTERNAL PANIC"

If `lake exe` panics with `executed 'sorry'`:

1. Check your `+error` blocks. Ensure the error message matches the Lean output **perfectly**.
2. Ensure every `+error` block has a `(name := ...)` argument.
3. If all else fails, remove the `+error` or `leanOutput` and use a standard code block until the mismatch is found.
