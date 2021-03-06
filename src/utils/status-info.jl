#######################################################################
# Macros for printing information depending on verbosity
#
# ASSUMPTION: the package defines variable `VERBOSE`
#######################################################################

const STATUS_BEGIN = "..."
const STATUS_END   = " completed"

# If verbose, prints information about the start and completion of
# of `action` named `name`
macro status(name :: String, action)
    quote
        @statusb $name
        $action
        @statuse $name
    end
end

# If verbose, prints information about the start of `name`
macro statusb(name :: String)
    :(if VERBOSE ; @info($name * $STATUS_BEGIN) end)
end

# If verbose, prints information about the completion of `name`
macro statuse(name :: String)
    :(if VERBOSE ; @info($name * $STATUS_END) end)
end
