load
figure(1)
plot(prze.Time,prze.Data)
xlabel('Czas [s]')
ylabel('Przesuniêcie [m]')
title('OdpowiedŸ uk³adu mst na wymuszenie si³¹ u')
grid on

figure(2)
plot(pred.Time,pred.Data)
xlabel('Czas [s]')
ylabel('Prêdkoœæ [m/s]')
title('Wykres przebiegu prêdkoœci w uk³adzie po wymuszeniu si³¹ u')
grid on

figure(3)
plot(przy.Time,przy.Data)
xlabel('Czas [s]')
ylabel('Przyspieszenie [m/s^2]')
title('Wykres przebiegu przyspieszenia w uk³adzie po wymuszeniu si³¹ u')
grid on