# Golden Cases

The golden files are not a benchmark. They are a stable review surface for compilers.

The main golden fixture is `fixtures/golden/scoreboard.csv`. The matrix fixture is `fixtures/golden/lane-matrix.csv`. Together they cover `IR pressure`, `lowering drift`, `stack depth`, and `diagnostic reach` with different score ranges.

The purpose is to make intentional rule changes show up in review.
