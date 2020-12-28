module HelloWorld

using Printf

# The function julia_main has been annotated with Base.@ccallable which means 
# that a function with the unmangled name will appear in the sysimage.
Base.@ccallable function julia_main()::Cint
    try
        real_main()
    catch
        Base.invokelatest(Base.display_error, Base.catch_stack())
        return 1
    end
    return 0
end

function real_main()
    t = ccall(:clock, Int32, ())
    @printf("hello world, clock() returns %d\n", t)
end

if abspath(PROGRAM_FILE) == @__FILE__
    real_main()
end

end # module