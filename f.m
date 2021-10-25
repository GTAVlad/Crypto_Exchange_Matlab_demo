function out = f(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10)
if nargin>10
  error('Too many input arguments, must be from 0 to 10');
elseif nargin==0
   out = 0;   
elseif nargin==1
  %user called f(x)
  out = x1;
elseif nargin==2
  out = x1*x2;
elseif nargin==3
  out = x1*x2*x3;
elseif nargin==4
  out = x1*x2*x3*x4;
elseif nargin==5
  out = x1*x2*x3*x4*x5;
elseif nargin==6
  out = x1*x2*x3*x4*x5*x6;  
elseif nargin==7
  out = x1*x2*x3*x4*x5*x6*x7;
elseif nargin==8
  out = x1*x2*x3*x4*x5*x6*x7*x8;
elseif nargin==9
  out = x1*x2*x3*x4*x5*x6*x7*x8*x9;
 elseif nargin==10
  out = x1*x2*x3*x4*x5*x6*x7*x8*x9*x10; 
end  