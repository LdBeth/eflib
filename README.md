# SysRPL implementation of Error function and Q function.

This program is intended for use with HP49/50G calculators.

## Build

Need HPTools, then just run `make`.

## Install

The pre-built binary for the library is `EFLIB`, copy it to the HP
calculator the way you usually do, and attach the library.

## Usage

There are seven functions of type `% --> %` provided, they are ERF
function, Q function, and their inverse implemented using numerical
approximation methods. Internally they are all computed using extended
float.

### `ERF`, `IERF`

Implementation of error function and its inverse using method from
Sergei Winitzki's paper.

### `ERFIV`

Implementation of inverse error function using method from Mike Giles'
paper.

### `QNORM`, `IQNORM`

Implementation of Q function and its inverse using `ERF` and `IERF`.
Note the `UPTN` function actually gives a more acurrate result for
Q function, but the inverse Q function is much faster than
computing the inverse of Q using numerical solver, while
the accuracy of both methods are approximately the same.

### `QBEST`

A slightly better Q function approximation from [Dao Ngoc Phong et al].
If you ask me the result is still not as good as `UPTN`.

### `IQSML`

This function from Pingyi Fan's paper gives decent approximation to
inverse Q function when the input is small enough, and can compute the
inverse when `IQNORM` gives infinity error.

## Reference

[Sergei Winitzki] A handy approximation for the error
function and its inverse, February 6, 2008.

[Dao Ngoc Phong, Nguyen Xuan Hoai, R.I. (Bob) McKay] Evolving
the Best Known Approximation to the Q Function.

[Mike Giles] Approximating the erfinv function.

[Pingyi Fan] New inequalities of Mill's ratio and Its Application to
The Inverse Q-function Approximation

