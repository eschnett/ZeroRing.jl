using Test
using ZeroRing

zeroelem::ZeroElem

@test zeroelem === zeroelem

@test zeroelem == zeroelem
@test !(zeroelem != zeroelem)
@test !(zeroelem < zeroelem)
@test hash(zeroelem) === hash(zeroelem)

@test rand(ZeroElem) === zeroelem

@test +zeroelem === zeroelem
@test -zeroelem === zeroelem

@test zeroelem + zeroelem === zeroelem
@test zeroelem - zeroelem === zeroelem

@test inv(zeroelem) === zeroelem

@test zeroelem * zeroelem === zeroelem
@test zeroelem / zeroelem === zeroelem

@test zeroelem^zeroelem === zeroelem

@test copy(zeroelem) === zeroelem

@test zeroelem' === zeroelem
@test transpose(zeroelem) === zeroelem
