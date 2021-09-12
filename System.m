1;

function y=F(x)
    y = [-x(1)-sin(x(1))/81+2*x(2)/9+cos(x(3))/3;
    	 -x(2)-cos(x(1))/81+sin(x(3))/3;
    	 -x(3)-sin(x(1))/9+x(2)/3+cos(x(3))/6];
endfunction

function z=G(x)
  z=[-sin(x(1))/81+2*x(2)/9+cos(x(3))/3; 
      -cos(x(1))/81+sin(x(3))/3; 
      -sin(x(1))/9+x(2)/3+cos(x(3))/6];
endfunction

#Jacobien de F :
function J=JF(x)
  J(1,1)=-1-cos(x(1))/81; J(1,2)=2/9; J(1,3)=-sin(x(3))/3;
  J(2,1)=sin(x(1))/81; J(2,2)=-1; J(2,3)=cos(x(3))/3;
  J(3,1)=-cos(x(1))/9; J(3,2)=1/3; J(3,3)=-sin(x(3))/6-1;  
endfunction



