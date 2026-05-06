using Test
using ZeroRing

zeroelem::ZeroElem

@test sizeof([zeroelem]) == 0

@test zeroelem === zeroelem

@test zeroelem == zeroelem
@test !(zeroelem != zeroelem)
@test !(zeroelem < zeroelem)
@test hash(zeroelem) === hash(zeroelem)
@test iszero(zeroelem)

@test zero(zeroelem) === zeroelem
@test zero(ZeroElem) === zeroelem
@test rand(ZeroElem) === zeroelem

@test abs(zeroelem) == zeroelem
@test abs2(zeroelem) == zeroelem
@test conj(zeroelem) == zeroelem
@test sign(zeroelem) == zeroelem

@test +zeroelem === zeroelem
@test -zeroelem === zeroelem

@test zeroelem + zeroelem === zeroelem
@test zeroelem + zeroelem + zeroelem === zeroelem
@test zeroelem - zeroelem === zeroelem

# @test inv(zeroelem) === zeroelem

@test zeroelem * zeroelem === zeroelem
@test zeroelem * zeroelem * zeroelem === zeroelem
# @test zeroelem / zeroelem === zeroelem
# @test zeroelem \ zeroelem === zeroelem

@test zeroelem^zeroelem === zeroelem

@test copy(zeroelem) === zeroelem

@test zeroelem' === zeroelem
@test transpose(zeroelem) === zeroelem
