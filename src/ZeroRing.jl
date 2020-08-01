module ZeroRing

using LinearAlgebra

export zeroelem, ZeroElem

struct ZeroElem <: Number end

const zeroelem = ZeroElem()

Base.:+(::ZeroElem) = zeroelem
Base.:-(::ZeroElem) = zeroelem

Base.:+(::ZeroElem, ::ZeroElem) = zeroelem
Base.:-(::ZeroElem, ::ZeroElem) = zeroelem

Base.inv(::ZeroElem) = zeroelem

Base.:*(::ZeroElem, ::ZeroElem) = zeroelem
Base.:/(::ZeroElem, ::ZeroElem) = zeroelem

Base.:^(::ZeroElem, ::ZeroElem) = zeroelem

Base.copy(::ZeroElem) = zeroelem

LinearAlgebra.adjoint(::ZeroElem) = zeroelem
LinearAlgebra.transpose(::ZeroElem) = zeroelem

end
