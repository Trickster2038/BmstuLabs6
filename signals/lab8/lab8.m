pkg load statistics
pkg load signal

% Моделирование фазоманипулированных сигналов
clear all; % Очистка памяти
close all; % Закрытие всех окон с графиками
clc; % Очистка окна команд и сообщений
fontSize=10; % Размер шрифта графиков
fontType=''; % Тип шрифта графиков
% Цвет графиков
tColor=[0,0.447,0.741]; % Временная область
tColorLight=[0.3 0.7 0.9]; % Временная область
Color0=[1 0 0]; % Эталонные сигналы
fColor=[1 0.4 0]; % Частотная область
eColor=[0.85 0.325 0.098]; % Погрешности
eColorLight=[0.9 0.9 0.4]; % Погрешности
eColorDark=[0.635 0.078 0.184]; % Погрешности

S0=2; % Уровень ФСПМ, Вт/Гц
S_mu=0; % Математическое ожидание ФСПМ
S_sigma=0.1*S0; % Среднеквадратичное отклонение ФСПМ
snrS=-20; % Уровень SNR, дБ
fd=100; % Частота дискретизации, Гц
N=1000; % Количество точек ФСПМ
fmin=15; % Частота среза ФСПМ, Гц
fmax=25; % Частота среза ФСПМ, Гц
Nmin=round(2*(N-1)*fmin/fd+1); % Номера отсчетов ...
Nmax=round(2*(N-1)*fmax/fd+1); % ... частот среза ФСПМ

% Моделирование исходной ФСПМ
% Формирование ФСПМ
f=linspace(0,fd/2,N); % Область определения ФСПМ
S_prob = normrnd(S_mu,S_sigma, Nmax-Nmin+1)(:)'(1:1:Nmax-Nmin+1);%makedist('Normal',S_mu,S_sigma); % Распределение вероятности
%rS=random(S_prob,Nmax-Nmin+1,1); % Случайная составляющая
rS = S_prob;
sFSPM(1:Nmin-1)=0; % Минимальный уровень
sFSPM(Nmin:Nmax)=S0+rS; % Максимальный уровень
sFSPM(Nmax+1:N)=0; % Минимальный уровень
% Формирование графика
figure; plot(f,sFSPM,'Color',fColor,'LineWidth',3);
set(get(gcf,'CurrentAxes'),'FontSize',10); % Изменение шрифта
title({'\rm Исходная функция спектральной плотности мощности'}); % Заголовок
xlabel('Частота,\it f,\rm Гц'); % Надпись оси абсцисс
ylabel('Плотность мощности,\it S(f)\rm, Вт/Гц'); % Надпись оси ординат

% Формирование амплитудного спектра сигнала
NN=2*N; % Количество точек в спектре
sf=[-fliplr(f(1:end)) f]; % Область определения
sX2=[fliplr(sFSPM(1:end))/2 sFSPM(1:end)/2]; % Формирование значений
sX=sqrt(NN*fd*sX2);
% Формирование графика
figure; plot(sf,sX,'Color',fColor,'LineWidth',3);
set(get(gcf,'CurrentAxes'),'FontSize',10); % Изменение шрифта
title({'\rm Модуль амплитудного спектра сигнала'});
xlabel('Частота,\it f,\rm Гц'); % Надпись оси абсцисс
ylabel('Модуль спектра сигнала,\it |X(f)|\rm, В'); % Надпись оси ординат

% Формирование сигнала во временной области по ФСПМ
td=1/fd; % Период дискретизации
dt=NN*td; % Длина временного интервала
t=linspace(0,dt,NN); % Область определения сигнала
x=ifft(fftshift(sX)); % Обратное преобразование Фурье
% Формирование графика
figure; plot(t,real(ifftshift(x)),'Color',tColor,'LineWidth',3);
set(get(gcf,'CurrentAxes'),'FontSize',10); % Изменение шрифта
title({'\rm Сигнал во временной области'}); % Заголовок
xlabel('Время,\it nT_д,\rm с'); % Задаем надпись оси абсцисс
ylabel('Сигнал\it x(nT_д ),\rm В'); % Задаем надпись оси ординат

[pf,ff]=periodogram(real(x),rectwin(length(x)),...
length(x),fd,'psd'); % Формирование значений
% Формирование графика
figure; plot(ff,pf,'Color',fColor,'LineWidth',10);
set(get(gcf,'CurrentAxes'),'FontSize',10); % Изменение шрифта
title({'\rm Функция спектральной плотности мощности'}); % Заголовок
xlabel('Частота,\it f,\rm Гц'); % Надпись оси абсцисс
ylabel('Плотность мощности,\it S(f),\rm Вт/Гц'); % Надпись оси ординат
hold on; plot(f,sFSPM,'Color',eColorDark,'LineWidth',3);
legend('Экспериментальная','Исходная');

% Моделирование исходной АКФ
% Формирование АКФ
dt=10; % Длительность сигнала
N=1001; % Количество отсчетов сигнала
td=dt/(N-1); % Период дискретизации
NN=2*N-1; % Количество точек АКФ
t=linspace(-dt,dt,NN); % Область определения
sACF0=exp(-t(1:NN-N+1));
sACF0=sACF0/max(sACF0);
sACF=[sACF0(1:end) fliplr(sACF0(2:end))]; % Формирование значений
% Формирование графика
figure; plot(t,sACF,'Color',tColor,'LineWidth',3);
set(get(gcf,'CurrentAxes'),'FontSize',10); % Изменение шрифта
title({'\rm Автокорреляционная функция'});
xlabel('Время,\it nT_д,\rm с'); % Надпись оси абсцисс
ylabel('Автокорреляционная функция,\it R_x(nT_д)'); % Надпись оси ординат

% Формирование функции спектральной плотности
fd=1/td; % Частота дискретизации
f=linspace(-fd/2,fd/2,N); % Область определения
aFSPM0=fft(sACF); % Формирование значений
aFSPM=decimate(aFSPM0,2);
% Формирование графика
figure; plot(f,abs(fftshift(aFSPM)),'Color',fColor,'LineWidth',3);
set(get(gcf,'CurrentAxes'),'FontSize',10); % Изменение шрифта
title({'\rm Функция спектральной плотности мощности'});
xlabel('Частота,\it f,\rm Гц'); % Надпись оси абсцисс
ylabel('Плотность мощности,\it S(f)\rm, Вт/Гц'); % Надпись оси ординат

% Формирование функции спектральной плотности
sX=sqrt(aFSPM); % Формирование значений
% Формирование графика
figure; plot(f,abs(fftshift(sX)),'Color',fColor,'LineWidth',3);
set(get(gcf,'CurrentAxes'),'FontSize',10); % Изменение шрифта
title({'\rm Модуль амплитудного спектра сигнала'});
xlabel('Частота,\it f,\rm Гц'); % Надпись оси абсцисс
ylabel('Модуль спектра сигнала,\it |X(f)|\rm, В'); % Надпись оси ординат

% Моделирование сигнала во временной области по ФСПМ
x=real(ifft(sX)); % Обратное преобразование Фурье
x=ifftshift(x); % Смещение сигнала
% Формирование графика
figure; plot(t(NN-N+1:NN),x,'Color',tColor,'LineWidth',3);
set(get(gcf,'CurrentAxes'),'FontSize',10); % Изменение шрифта
title({'\rm Сигнал во временной области'}); % Заголовок
xlabel('Время,\it nT_д,\rm с'); % Задаем надпись оси абсцисс
ylabel('Сигнал\it x(nT_д ),\rm В'); % Задаем надпись оси ординат

% Расчет АКФ
xACF=xcorr(x,x); % Формирование значений
% Формирование графика
figure; plot(t,xACF,'Color',tColor,'LineWidth',10);
set(get(gcf,'CurrentAxes'),'FontSize',10); % Изменение шрифта
title({'\rm Автокорреляционная функция'}); % Заголовок
xlabel('Время,\it nT_д,\rm с'); % Задаем надпись оси абсцисс
ylabel('Автокорреляционная функция,\it R_x(nT_д )'); % Надпись оси ординат
hold on; plot(t,ifftshift(sACF),'Color',Color0,'LineWidth',3);
legend('Экспериментальная','Исходная');