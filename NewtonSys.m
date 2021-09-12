function [x,niter]=NewtonSys(Fun,JFun,x0,tol,Nmax)
    niter = 0;
    
    for k=1:Nmax
        x = x0; J = JFun(x); b = Fun(x);
        x = x - J\b; 
        if norm(x-x0)/norm(x0)<tol
         break; 
        endif
        x0 = x;
    endfor
    niter = k;
endfunction

