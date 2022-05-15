pkg load symbolic
pkg load tablicious

warning('off','all');

format shortG

% =============================================

% Вывод ошибки, если значения на концах отрезка не принимают разные знаки
function cond(f, low_f, high_f)
	if f(low_f) * f(high_f) >= 0
		error('Значения на концах отрезка не противоположных знаков')
	end
end

% =============================================

function [middle, iter, obr] = bisection(f, low, high, tol)
	iter = 0; %Число итераций
	obr = 0; %Число обращений к f(x)
	%Изменяем high и low, пока не достигнем максимального приближения к нулю
	while (abs(high - low) >= 2*tol)
		middle = (high + low)/2; %Новое значение в качестве корня
		y3 = f(middle);
		%Сужаем границы
		if f(low) * y3 > 0
			low = middle;
		else
			high = middle;
		end
		iter = iter + 1;
		obr = obr + 2;
	end
end

% =============================================

function [bn, iter, obr] = horda(f, low, high, tol)
	%вторая производная
	syms x
	double_diff(x) = diff(diff(f(x),'x'),'x');
	%Выбор подвижного и неподвижного конца
	if f(low)*double_diff(low)>0
		b = high;
		a = low;
	else
		b = low;
		a = high;
	end
		bn = b-f(b)*(a-b)/(f(a)-f(b)); %1-я итерация
		iter = 1; %Число итераций
		obr = 3; %Число обращений к f(x)
	while(abs(b-bn)>=tol)
		b=bn;
		bn=b-f(b)*(a-b)/(f(a)-f(b));
		iter = iter + 1;
		obr = obr + 3;
	end
end

% =============================================

function [xm, iiter, obr] = iter(f, low, high, tol)
	%Берём производную
	syms x
	func(x) = diff(f(x),'x');
	%Поиск максимума производной функции
	M = fminbnd(@(x) - double(subs(func(x),x)), low, high);
	max = f(M);
	%Поиск минимума производной функции
	m = fminbnd(@(x) double(subs(func(x),x)), low, high);
	min = f(m);

	t=2/(min+max);
	q=(max-min)/(max+min);

	fi=@(x) x-t*f(x);
	xn = low;
	xm = fi(low);
	iiter = 1; %Число итераций
	obr = 6; %Число обращений к f(x)

	while(abs(xn-xm)>=tol)
		xn = xm;
		xm = fi(xn);
		iiter = iiter + 1;
		obr = obr + 1;
	end
end

% =============================================

function [xm, iter, obr] = newton(f, low, high, tol)
	%Берѐм производную
	syms x
	func(x) = diff(f(x),'x');
	xn = low;
	xm = xn - f(xn)/double(subs(func(xn),xn));
	iter = 1; %Число итераций
	obr = 3; %Число обращений к f(x)

	while abs(xn-xm)>=tol
		xn = xm;
		xm = xn - f(xn)/double(subs(func(xn),xn));
		iter = iter + 1;
		obr = obr + 2;
	end
end

% =============================================

% Условия:
f1 = @(x) (x-0.2)^3; % x* = 0.2
a1 = 0; b1 = 1;
eps1 = 0.0001;

f2 = @(x) 2.^(x-0.1)-1; % x* = 0.1
a2 = 0; b2 = 1;
eps2= 0.0001;

%Проверка знака на концах отрезка
cond(f1, a1, b1);
cond(f2, a2, b2);
%Метод бисекции:
[bis1_appr, bis1_it, bis1_calls] = bisection(f1, a1,b1, eps1);
%A[]=bisection(f1, a1,b1, eps);
[bis2_appr, bis2_it, bis2_calls] = bisection(f2, a2,b2, eps2);
%Метод хорд
[hord1_appr, hord1_it, hord1_calls] = horda(f1, a1,b1, eps1);
[hord2_appr, hord2_it, hord2_calls] = horda(f2, a2,b2, eps2);
%Метод простой итерации
[i1_appr, i1_it, i1_calls] = iter(f1, a1, b1,eps1);
[i2_appr, i2_it, i2_calls] = iter(f2, a2, b2,eps2);
%Метод Ньютона
[newt1_appr, newt1_it, newt1_calls] = newton (f1, a1,b1, eps1);
[newt2_appr, newt2_it, newt2_calls] = newton (f2, a2,b2, eps2);

%Таблицы:
disp('функция f1=2^(x=0.1) :');
Metod = {'Метод бисекции';'Метод хорд';'Метод простой итерации';'Метод Ньютона'};
Reshenie = [bis1_appr;hord1_appr;i1_appr;newt1_appr];
Iterazii = [bis1_it;hord1_it;i1_it;newt1_it];
Vizovi = [bis1_calls;hord1_calls;i1_calls;newt1_calls];
T1 = ...
table(
	Reshenie,
	Iterazii,
	Vizovi,
	Metod
	);
prettyprint(T1);

disp('функция f2=(x-0.2)^3 :');
Metod = {'Метод бисекции';'Метод хорд';'Метод простой итерации';'Метод Ньютона'};
Reshenie = [bis2_appr;hord2_appr;i2_appr;newt2_appr];
Iterazii = [bis2_it;hord2_it;i2_it;newt2_it];
Vizovi = [bis2_calls;hord2_calls;i2_calls;newt2_calls];
T2 = ...
table(
	Reshenie,
	Iterazii,
	Vizovi,
	Metod
	);

prettyprint(T2);


