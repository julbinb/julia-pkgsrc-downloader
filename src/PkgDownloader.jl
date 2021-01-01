module PkgDownloader

# Flag responsible for printing status info
VERBOSE = true

include("common/errors.jl")
include("utils/utils.jl")

# Write your package code here.
greet() = print("Hello World!")

end
