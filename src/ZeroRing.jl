module ZeroRing

using LinearAlgebra
using Random

export zeroelem, ZeroElem

struct ZeroElem <: Number end

const zeroelem = ZeroElem()

Base.:(==)(::ZeroElem, ::ZeroElem) = true
Base.:(<)(::ZeroElem, ::ZeroElem) = false
Base.hash(::ZeroElem, h::UInt) = hash(UInt(0x56212a80), h)

Base.rand(rng::AbstractRNG, ::Random.SamplerType{ZeroElem}) = zeroelem

Base.:+(::ZeroElem) = zeroelem
Base.:-(::ZeroElem) = zeroelem

Base.:+(::ZeroElem, ::ZeroElem) = zeroelem
Base.:-(::ZeroElem, ::ZeroElem) = zeroelem

Base.inv(::ZeroElem) = zeroelem

Base.:*(::ZeroElem, ::ZeroElem) = zeroelem
Base.:/(::ZeroElem, ::ZeroElem) = zeroelem
Base.:\(::ZeroElem, ::ZeroElem) = zeroelem

Base.:^(::ZeroElem, ::ZeroElem) = zeroelem

Base.copy(::ZeroElem) = zeroelem

LinearAlgebra.adjoint(::ZeroElem) = zeroelem
LinearAlgebra.transpose(::ZeroElem) = zeroelem

end
