module ZeroRing

using LinearAlgebra
using Random

export zeroelem, ZeroElem

struct ZeroElem <: Number end

const zeroelem = ZeroElem()

Base.:(==)(::ZeroElem, ::ZeroElem) = true
Base.isless(::ZeroElem, ::ZeroElem) = false
Base.iszero(::ZeroElem) = true
Base.hash(::ZeroElem, h::UInt) = hash(UInt(0x56212a80), h)

Base.zero(::ZeroElem) = zeroelem
Base.zero(::Type{ZeroElem}) = zeroelem
Base.rand(rng::AbstractRNG, ::Random.SamplerType{ZeroElem}) = zeroelem

Base.abs(::ZeroElem) = zeroelem
Base.abs2(::ZeroElem) = zeroelem
Base.conj(::ZeroElem) = zeroelem
Base.sign(::ZeroElem) = zeroelem

Base.:+(::ZeroElem) = zeroelem
Base.:-(::ZeroElem) = zeroelem

Base.:+(::ZeroElem, ::ZeroElem...) = zeroelem
Base.:-(::ZeroElem, ::ZeroElem) = zeroelem

# Base.inv(::ZeroElem) = zeroelem

Base.:*(::ZeroElem, ::ZeroElem...) = zeroelem
# Base.:/(::ZeroElem, ::ZeroElem) = zeroelem
# Base.:\(::ZeroElem, ::ZeroElem) = zeroelem

Base.:^(::ZeroElem, ::ZeroElem) = zeroelem

Base.copy(::ZeroElem) = zeroelem

LinearAlgebra.adjoint(::ZeroElem) = zeroelem
LinearAlgebra.transpose(::ZeroElem) = zeroelem

end
