

using AbstractAlgebra
using Groebner

# The system:
#   x^4 = x^2 - y^2
#   -2z = 2x^2 + y

R, (xx, yy, zz) = PolynomialRing(QQ, ["x","y","z"], ordering=:lex)

system1 = [
    xx^4 - xx^2 + yy^2,
    2xx^2 + yy + 2zz
]
gb1 = groebner(system1)

system2 = [
    4*system1[1] - system1[2]^2,
    system1[2]
]
gb2 = groebner(system2)


R, (yy, xx, zz) = PolynomialRing(QQ, ["y","x","z"], ordering=:lex)

system3 = [
    xx^4 - xx^2 + yy^2,
    2xx^2 + yy + 2zz
]
gb3 = groebner(system3)


R, (zz, yy, xx) = PolynomialRing(QQ, ["z","y","x"], ordering=:lex)

system4 = [
    xx^4 - xx^2 + yy^2,
    2xx^2 + yy + 2zz
]
gb4 = groebner(system4)


R, (yy, zz, xx) = PolynomialRing(QQ, ["y","z","x"], ordering=:lex)

system5 = [
    xx^4 - xx^2 + yy^2,
    2xx^2 + yy + 2zz
]
gb5 = groebner(system5)
# ^
# independent of y
# z^2 + 2*z*x^2 + 5//4*x^4 - 1//4*x^2

R, (xx, zz, yy) = PolynomialRing(QQ, ["x","z","y"], ordering=:lex)

system6 = [
    xx^4 - xx^2 + yy^2,
    2xx^2 + yy + 2zz
]
gb6 = groebner(system6)
