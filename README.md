# Compilation time benchmarks

This repository contains synthetic benchmarks of compilation and build times
across various programming languages with the goal to publicly quantify
performance claims.

Median of 11 runs.

## Language results

| Language                 | Seconds |
| ------------------------ | ------- |
| C#                       | 0.778   |
| Cheby native             | 0.220   |
| Cheby check              | 0.043   |
| Elixir                   | 0.511   |
| Elm                      | 0.854   |
| Erlang                   | 0.434   |
| Gleam v1.17.0 Erlang     | 0.443   |
| Gleam v1.19.2 Erlang     | 0.383   |
| Gleam v1.19.2 JavaScript | 0.079   |
| Go                       | 0.464   |
| Java                     | 0.435   |
| Rust                     | 0.823   |
| TypeScript 6             | 1.739   |
| TypeScript 7             | 1.202   |

Versions: Cheby 0.0.0 (`d09a113`, release build), Java OpenJDK 27.0.1, Gradle
9.8.2, Dotnet 10.0.402, Rebar 3.28.0, Erlang 29 (ERTS 17.1.1), Elixir
1.20.4-otp-29, Elm 0.19.3, Go 1.27.3, Rust 1.99.0, Node 24.22.1, TypeScript
6.0.3 and 7.0.2. Apple M3, on AC power.

Cheby native is `cheby build`: a cold build cache and a linked native
executable. `cheby build` compiles only the modules that `main` reaches, so
`main` calls one function from each module. Cheby check is `cheby check`, which
type-checks every module and generates no code. The scripts expect `cheby` on
`PATH`.
