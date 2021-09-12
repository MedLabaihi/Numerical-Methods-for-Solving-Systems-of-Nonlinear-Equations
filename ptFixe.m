function [x,niter]=ptFixe(Gfix,x0,tol,Nmax)
  x=x0;
  for k=1:Nmax
    y=x;
    x=Gfix(x);
    if norm(x-y)/norm(x)<tol break, endif
  endfor
  niter=k;
endfunction






#algorithme en employant while
#{
function [x,niter]=ptFixe(Gfix,x0,tol,Nmax)
x=Gfix(x0); n=1;
while (norm(x-x0)/norm(x0)>=tol && n<Nmax)
  x0=x;
  x=Gfix(x0);
  n=n+1;
endwhile
niter=n;
endfunction
#}