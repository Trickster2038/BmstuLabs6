pkg load mapping

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
% Параметры области определения функций
nMax= 300; % Количество отсчетов по каждой полуоси
nScale=10;%.1; % Коэффициент масштабирования
% Время запуска текста в видео, с
startText0=5;
startText1=10;
frameRate=25; % Частота кадрирования
videoDuration=15; % Длительность видео
fCount=frameRate*videoDuration; % Количество кадров

function domain = getComplexDomain(nMax,nScale)
	domain = [];
	arr = -nMax:nScale:nMax;
    for y = arr 
    	d2 = [];
    	for x = arr
	    	comp_arr = complex(x,y);
	    	d2 = cat(1, d2, comp_arr);
   		end
   		domain = cat(2, domain, d2);
    end
    domain = domain;
end

%getComplexDomain = @(nMax,nScale) complex(0:nScale:nMax, 0:nScale:nMax);

% Формирование изображения комплексной функции
% f(z)=z
z=getComplexDomain(nMax,nScale); % Область определения
f=z; % Формирование значений
% Формирование изображения HSV

hsv1(:,:,1)=wrapTo2Pi(angle(f))/(2*pi); % Тон
hsv1(:,:,2)=1; % Насыщенность
hsv1(:,:,3)=abs(f)./max(abs(f)); % Яркость
rgb1=hsv2rgb(hsv1); % Преобразование в формат RGB
figure; imshow(rgb1); % Визуализация

