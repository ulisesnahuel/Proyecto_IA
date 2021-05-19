%MUY LENTO Y ALGO CALMADO
muy_lento = lento.^2
algo_calmado = intens(x,(min((calmado.^2),(1-(calmado.^2)))));
muy_lento_y_algo_calmado =min(muy_lento,algo_calmado);
plot(x,muy_lento_y_algo_calmado)