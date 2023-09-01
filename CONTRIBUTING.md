# Contribution Guidelines

Please ensure your pull request adheres to the following guidelines:

- Search previous suggestions before making a new one, as yours may be a duplicate.
- Make an individual pull request for each new addition.
- Use the roxygen2 @family tag to categorise your ipsum function as either "practical" or "whimsical".
- All functions should be named `lipsum_*()`. The `*` need not be the name of the API necessarily, but should generally describe the kind of output (e.g., `lipsum_dino()` for dinosaurs).
- Function arguments should try to be in keeping with other `{lipsum}` functions. If another function has arguments that behave identically to your function's arguments, use the same argument names.
- Always name the API you're accessing in the function documentation, and link it using the roxygen2 @source tag.

Thank you for your contribution!
