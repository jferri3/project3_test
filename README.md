# part2package

## Description
part2package provides functions to approximate sine and cosine using truncated series,
and to calculate sample statistics and confidence intervals.

## Exported Functions
- **fn_cos(x, k)**: Approximate cosine of `x` with `k` terms.
- **fn_sin(x, k)**: Approximate sine of `x` with `k` terms.
- **calculate_CI(x, conf = 0.95)**: Calculate confidence interval of a numeric vector.

## Example of fn_cos() and fn_sin()
### input
> fn_cos(0.5, k = 3)

> fn_sin(0.5, k = 5)

### output
> fn_cos(0.5, k = 3)

[1] 0.8775825

> fn_sin(0.5, k = 5)

[1] 0.4794255

