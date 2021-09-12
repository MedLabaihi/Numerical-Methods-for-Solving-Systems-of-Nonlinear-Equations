System

x0=input("donner le vecteur colonne initial : "); #[-1;-1;-1];
tol=input("donner une tolerance de precision : "); # 1e-7;
Nmax=input("donner le nombre maximal d'iterations : "); #40;


[xp,niter]=ptFixe(@G,x0,tol,Nmax);
if niter<Nmax
  disp("la solution par point fixe est xp = "); disp(xp);
  printf("apres %d iterations \n",niter); 
  printf("la norme ||F(xp)|| = %.7e\n",norm(F(xp)));
else printf("convergence non atteinte par pt fixe \
  apres %d iterations \n",Nmax)
end





input("Entree pour continuer ... ");
printf("\nResolution par Newton\n=====================\n")
[xn,niter]=NewtonSys(@F,@JF,x0,tol,Nmax);
if niter<Nmax
  disp("la solution par Newton  = "); disp(xn);
  printf("apres %d iterations \n",niter); 
else printf("convergence non atteinte apres %d iterations \n",Nmax)
end
%
%
printf("\nResolution directe par Octave\n=====================\n")
fsolve(@F,x0) 