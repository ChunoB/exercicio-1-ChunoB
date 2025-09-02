function t = exercicio1(func, func_d, x0)

  % nao alterar: inicio
  es = 0.01;
  imax = 20;
  % nao alterar: fim

  % Valores iniciais para a secante
  x_prev = x0 * 0.9;  % pequeno ajuste
  x_curr = x0;

  for ii = 1:imax
    f_prev = func(x_prev);
    f_curr = func(x_curr);

    % Evita divisão por zero
    if f_curr == f_prev
      break
    endif

    % Passo da secante
    x_next = x_curr - f_curr * (x_curr - x_prev) / (f_curr - f_prev);

    % Checa convergência
    if abs(x_next - x_curr) < es
      t = x_next;
      return
    endif

    % Atualiza para próxima iteração
    x_prev = x_curr;
    x_curr = x_next;
  endfor

  % Se não convergiu, retorna último valor
  t = x_curr;

endfunction
