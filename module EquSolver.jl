module EquSolver

function MC_log(x; N = 1000)
    count = 1

    for i = 1: N
        Y = rand()
        X = (x-1)*rand() + 1

        if Y < 1/X
            count = count +1
        end
    end
    I = count/N * (x-1)
end


## Bisection method

function hal(Dave)
    println("I can't do that, $Dave.")
end

## Fixed point iterations


## Newtons method


end # module

##Bisection Method

"""
Biscetion Method
by Patrick Whitehouse (Feb 7, 2024)

AN implementation of the bisection method [Numerical ANalysis 9e, Burden, Sec 2.1].

"""

function bisect_method(f,a,b;maxit = 50, tol = 1e-10)

    i=1             #intialize counter
    FA = f(a)       # Function value at left end
    p = a + (b-a)/2 # nothing in current scope so check to global scope

    for i = 1:maxit

        fp = f(p)
    if fp == 0 ||(b-a)/2 < tol  #chech p is the zero or error is with in tolerance
            break
        end

        if fa*fp > 0        #check if fa and fp are diff. sgins
            a = p
        else 
            b = p

            return p, i
        end