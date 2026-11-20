# Contributing to tranquil-qalta

Thanks for your interest in contributing. This project is built in OCaml with
[Dune](https://dune.build/). If you are new to the codebase, start with the
[Good First Issues](#good-first-issues) section below.

## Build and test

```sh
dune build          # compile the project
dune runtest        # run the expect tests
dune fmt --check    # verify formatting (see .ocamlformat)
dune build @doc     # build the odoc documentation
```

The inline tests use [`ppx_expect`](https://github.com/janestreet/ppx_expect). If a test
fails because its expected output is intentionally out of date, review the diff and then:

```sh
dune promote
```

## Contribution flow

1. Fork the repository and create a branch from `main`.
2. Make your change in the smallest scoped way that resolves the issue.
3. Run `dune runtest` and `dune fmt` locally.
4. Open a pull request using the pull-request template.
5. Link the issue you are resolving (for example, `Fixes #38`).

A maintainer will review your change. Please keep changes focused on the issue at hand.

## Good First Issues

These are small, self-contained tasks with clear acceptance criteria. Each maps to a
single file and is sized for a first contribution.

### GFI 1 — Document the `Exeter` module API

- **Files:** `lib/simple/exeter.ml`, `lib/simple/exeter.mli`
- **Task:** Add `odoc`-compatible `(** ... *)` doc comments for every public type
  (`aleph`, `gimel`, `dalet`) and function (`gimel_of_bool`, `gimel_flip`,
  `gimel_to_string`, `dalet_of`). Keep the existing source-attribution note.
- **Acceptance:** `dune build @doc` succeeds; every public symbol has a non-trivial doc
  comment; no behavior changes.
- **Labels:** `good first issue`, `documentation`

### GFI 2 — Add a round-trip expect test for `gimel_flip`

- **File:** `test/unit/simple/test_exeter.ml`
- **Task:** Add a `let%expect_test` asserting `gimel_flip (gimel_flip x) = x` for both
  `Christos` and `Christine`, printing the results in the existing `print_endline` style.
- **Acceptance:** `dune runtest` passes; the new expect block's output is deterministic.
- **Labels:** `good first issue`, `tests`

### GFI 3 — Fix prose typos in `README.md`

- **File:** `README.md`
- **Task:** Correct the following: "graphy database" → "graph database", "one large graphy" →
  "one large graph", "sustainence" → "sustenance", "I am trying to to build" → "I am trying
  to build", "Its hard to write" → "It's hard to write".
- **Acceptance:** no spelling or grammar defects remain; no meaning changes.
- **Labels:** `good first issue`, `documentation`

## Maintainer filing checklist

After a curated task is ready to advertise, file it in the issue tracker:

1. Open a new issue using `.github/ISSUE_TEMPLATE/good_first_issue.md`.
2. Paste the task and acceptance criteria from the section above.
3. Apply `good first issue` plus the secondary label listed for the task.
4. Do not apply `good first issue` to multi-part task groups; keep that label reserved for
   single-file, newcomer-sized work.
