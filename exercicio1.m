function t = exercicio1(func,func_d,x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%
t = 0;
x = zeros(imax,1);
x(1) = x0;
erros = zeros(imax,1);
for j = 1:imax -1
  x(j+1) = x(j) - (func(x(j)) / func_d(x(j)));
  t = x(j+1);
    if j ~=1
      erros(j) = abs((x(j) - x(j-1)) / x(j));
      if erros(j) <= es
        break
      endif
    endif
endfor
t
%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
