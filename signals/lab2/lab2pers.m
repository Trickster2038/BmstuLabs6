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
axis([tmin tmax -1 A*2]); % Диапазон значений осей
set(get(gcf, 'CurrentAxes'), 'FontSize', 10); % Изменение шрифта
title({'\rm Сигнал в виде прямоугольного импульса'}); % Заголовок
xlabel('Время,\it nT_д\rm, с'); % Надпись оси абсцисс
ylabel('Сигнал,\it x(nT_д )\rm, В'); % Надпись оси ординат

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

% Моделирование сигнала с линейной частотной модуляцией
zd = A*chirp(xd,fmin,tmax,fmax); % Формирование значений
% Формирование графика
figure;plot(xd, zd, 'Color', tColor,'LineWidth',2);
axis([0 T -A A]); % Диапазон значений осей
set(get(gcf, 'CurrentAxes'), 'FontSize', 10); % Изменение шрифта
title({'\rm Сигнал с линейной частотной модуляцией'}); % Заголовок
xlabel('Время,\it nT_д\rm, c'); % Надпись оси абсцисс
ylabel('Сигнал,\it x(nT_д )\rm, В'); % Надпись оси ординат

zd = A*sin(2*pi*f0*xd); % Формирование значений
% Формирование графика
figure;hPlot=plot(xd, zd, 'Color', tColor);
axis([tmin tmax -A+A0 A+A0]); % Диапазон значений осей
set(get(gcf, 'CurrentAxes'), 'FontSize', 10); % Изменение шрифта
title({'\rm Сигнал во временной области'}); % Заголовок
xlabel('Время,\it nT_д\rm, с'); % Надпись оси абсцисс
ylabel('Сигнал,\it x(nT_д )\rm, В'); % Надпись оси ординат

% Расчет энергии и средней мощности сигнала во временной области
Et = 1/fd * sum(zd.^2);
Pt = Et/dt;
% Расчет энергии и средней мощности сигнала в частотной области
X = fft(zd,N);
Ew = 1/(fd*N) * sum(abs(X).^2);
% Вывод результата
fprintf('Энергия сигнала во временной области: %f \n', Et);
fprintf('Энергия сигнала в частотной области: %f \n', Ew);
fprintf('Средняя мощность сигнала во временной области: %f \n', Pt);

%===================================

% Расчет амплитудного спектра сигнала
f=0:fd/N:fd-fd/N; % Формирование области определения
af = abs(fft(zd)/N); % Формирование значений
% Формирование графика
figure; plot([-fliplr(f(1:end/2)) f(1:end/2)],fftshift(af),...
'Color', fColor,'LineWidth',3);
set(get(gcf, 'CurrentAxes'), 'FontSize', 10); % Изменение шрифта
title({'\rm Амплитудный спектр сигнала'}); % Заголовок
xlabel('Частота,\it f\rm, Гц'); % Надпись оси абсцисс
ylabel('Амплитуда,\it A(f)\rm, В'); % Надпись оси ординат

% Расчет энергетического спектра сигнала
ef = 1/(N*fd) * (abs(fft(zd)).^2); % Формирование значений
% Формирование графика
figure; plot([-fliplr(f(1:end/2)) f(1:end/2)],fftshift(ef),...
'Color',fColor,'LineWidth',3);
set(get(gcf, 'CurrentAxes'), 'FontSize', 10); % Изменение шрифта
title({'\rm Энергетический спектр сигнала'}); % Заголовок
xlabel('Частота,\it f\rm, Гц'); % Надпись оси абсцисс
ylabel('Энергия,\it E(f)\rm, Дж'); % Надпись оси ординат

% Расчет спектра мощности сигнала
pf = ef/dt; % Формирование значений
% Формирование графика
figure; plot([-fliplr(f(1:end/2)) f(1:end/2)],fftshift(pf),...
'Color', fColor,'LineWidth',3);
set(get(gcf, 'CurrentAxes'), 'FontSize', 10); % Изменение шрифта
title({'\rm Cпектр мощности сигнала'}); % Заголовок
xlabel('Частота,\it f\rm, Гц'); % Надпись оси абсцисс
ylabel('Мощность,\it P(f)\rm, Вт'); % Надпись оси ординат

[pf,ff]=periodogram(zd,rectwin(length(zd)),...
length(zd),fd,'power'); % Формирование значений
% Формирование графика
figure; plot(ff,pf, 'Color', fColor,'LineWidth',3);
set(get(gcf, 'CurrentAxes'), 'FontSize', 10); % Изменение шрифта
title({'\rm Спектр мощности сигнала',...
'(для положительных значений частоты)'}); % Заголовок
xlabel('Частота,\it f\rm, Гц'); % Надпись оси абсцисс
ylabel('Мощность,\it P(f)\rm, Вт'); % Надпись оси ординат

% Расчет функции спектральной мощности сигнала
[pf,ff]=periodogram(zd,rectwin(length(zd)),...
length(zd),fd,'psd'); % Формирование значений
% Формирование графика
figure; plot(ff,pf, 'Color', fColor,'LineWidth',3);
set(get(gcf, 'CurrentAxes'), 'FontSize', 10); % Изменение шрифта
title({'\rm Функция спектральной плотности мощности'}); % Заголовок
xlabel('Частота,\it f\rm, Гц'); % Надпись оси абсцисс
ylabel('Плотность мощности,\it S(f)\rm, Вт/Гц'); % Надпись оси ординат