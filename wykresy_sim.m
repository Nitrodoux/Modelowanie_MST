load
figure(1)
plot(prze.Time,prze.Data)
xlabel('Czas [s]')
ylabel('Przesuni�cie [m]')
title('Odpowied� uk�adu mst na wymuszenie si�� u')
grid on

figure(2)
plot(pred.Time,pred.Data)
xlabel('Czas [s]')
ylabel('Pr�dko�� [m/s]')
title('Wykres przebiegu pr�dko�ci w uk�adzie po wymuszeniu si�� u')
grid on

figure(3)
plot(przy.Time,przy.Data)
xlabel('Czas [s]')
ylabel('Przyspieszenie [m/s^2]')
title('Wykres przebiegu przyspieszenia w uk�adzie po wymuszeniu si�� u')
grid on