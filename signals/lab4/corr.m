pkg load signal

tColor='b'; % Цвет графиков во временной области
fColor=[1 0.4 0]; % Цвет графиков в частотной области
tColor='b'; % Цвет графиков во временной области
fColor=[1 0.4 0]; % Цвет графиков в частотной области
A0=2; % Постоянная составляющая сигнала
A=3; % Амплитуда сигнала

fmin=16; fmax=96; f0=5; % Частота сигнала, Гц
fd=100; % Частота дискретизации, Гц

T = 5.8;
tmin = -T * 0.2;
tmax = T*2.5;
dt=tmax-tmin; % Интервал определения функции
N = round(dt*fd); % Количество отсчетов


xd = linspace(tmin,tmax,N); % Формирование области определения
tau = 0.3;
zd = A*rectpuls(xd,tau);

figure;plot(xd, zd, 'Color', tColor,'LineWidth',2);

% Моделирование последовательности треугольных импульсов
d = 0 : T : T*10; % Период повторения импульса
zd = A*pulstran(xd,d,'rectpuls', tau); % Формирование значений
% Формирование графика
figure;plot(xd, zd, 'Color', tColor,'LineWidth',2);
axis([tmin tmax -A A*2]); % Диапазон значений осей
set(get(gcf, 'CurrentAxes'), 'FontSize', 10); % Изменение шрифта
title({'\rm Сигнал в виде последовательности',...
'треугольных импульсов'}); % Заголовок
xlabel('Время,\it nT_д\rm, с'); % Надпись оси абсцисс
ylabel('Сигнал,\it x(nT_д )\rm, В'); % Надпись оси ординат

corr = xcorr(zd, zd)
length(corr)
% disp(0:1:length(corr))
figure;plot(1:1:length(corr), corr, 'Color', tColor,'LineWidth',2);