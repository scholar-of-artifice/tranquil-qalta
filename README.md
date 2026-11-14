# tranquil-qalta

> An OCaml tool turns your project into a queryable graphy database.

## Why make this?

Graph databases are extremely powerful. Graph representations are useful for solving many problems. In the world of software, your code is one large graphy. Networks, dependencies, inheritance, function calls, dataflow, types and composition are all factors that dictate how computation happens in your application.

## The Problem

Reading large codebases is difficult. The ability to do this takes time, experience and sustained personal interest. LLMs provide a crutch more than a reliable tool for human contributors, standard IDE navigation is local and reactive. As software engineers, we often wish it was easier to find answers to certain questions in our applications.

**`tranquil-qalta`** aims to bridge the gap between static analysis and relational data by lowering OCaml source code into a rich property graph. It is my *hope* that this tool can provide peace of mind and sustainence to my fellow OCamleers much like the isolated qaltas of the Sahara.

## Project Aspirations

This project is in early stages. My goals are to make a tool that allows you to do some of the following:

- enforce architectural guardrails
- identify dead code
- identify circular dependencies
- enforce strict boundary enforcements
- detect API breaking changes
- refactoring analysis
- enforce codebase-wide invariants
- write your own rules such as queries to enforce OWASP guidelines

## Engineering Ethos

I am trying to to build this project to production-grade standards. I want it to reflect the rigor expected in correctness-critical use cases that most OCaml users value.

### Pragmatic Dependency Choices

I am one person (right now) and I am not qualified to write every part from scratch. Instead, this tool leans heavily on other libraries where appropriate.

While using feature rich libraries speeds up development, I want to keep this project easy to build and port without much friction.

### Rigorous Testing

Comprehensive test suites. Includes unit, integration, dependency related regression tests, tool verification, use case simulations, etc.

### Done in Slices

There is a larger roadmap that may show how I am breaking down this problem. 

### Documentation

I am a rather demanding for documentation. Its hard to write but is important as I come back to this after breaks. Therefore, expect:
- Fully documented APIs and internal modules using `odoc` compatible comments.
- Engineering realted documents in the related project directory.

### Community Contributions not Accepted Yet...

I am one person and I am learning OCaml.
I am open to any advice and challenges on this project.
Please reach out to me.
If you really want to contribute then I will set up things for us to team up.
