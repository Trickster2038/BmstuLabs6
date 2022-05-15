warning('off','all');

function [v] = Lanrange(X, Y, t)
% вычисление полинома Лагранжа в точке
	v=0;
	n=size(X,1);
	for i=1:n
		bp=Y(i);
		for j =1:n
			if i ~= j
				bp=bp*(t-X(j))/(X(i)-X(j));
			end
		end
		v=v+bp;
	end
end

function [A,B,C,D] = GetCoeff(X,Y)
% Инициализация массива сплайнов
	N = size(X,1);
	A = Y;
	C(1) = 0; C(N) = 0;
	alfa = zeros(N);
	beta = zeros(N);
	% Решение СЛАУ относительно коэффициентов сплайнов c[i]
	% методом прогонки для трехдиагональных матриц
	alfa(1) = 0; beta(1) = 0;
	for i = 2:N-1
		h_i = X(i)-X(i-1);
		h_i1 = X(i+1)-X(i);
		wA = h_i;
		wC = 2*(h_i+h_i1);
		wB = h_i1;
		wF = 6*((Y(i+1)-Y(i))/h_i1 - (Y(i)-Y(i-1))/h_i);
		wz = wA * alfa(i-1) + wC;
		alfa(i) = -wB/wz;
		beta(i) = (wF-wA*beta(i-1))/wz;
	end
	C(N) = (wF-wA*beta(N-1))/(wC+wA*alfa(N-1));
	% Обратный ход метода прогонки
	for i = N-1:-1:2
		C(i) = alfa(i)*C(i+1)+ beta(i);
		for i = N:-1:2
			h_i = X(i)-X(i-1);
			D(i) = (C(i)-C(i-1))/h_i;
			B(i) = h_i*(2*C(i)+C(i-1))/6 + (Y(i)-Y(i-1))/h_i;
		end
	end
end

function [v] = SplineCube(X,A,B,C,D, u)
	N=size(X,1);
	if u<=X(1)
		j = 1;
	elseif u>=X(N)
		j = N;
	else
		i = 1; j = N;
	while (i+1<j)
		k = round((i+j)/2);
		if u<=X(k)
			j = k;
		else
			i = k;
		end
		end
	end
	dx = u - X(j);
	v = A(j)+(B(j)+(C(j)/2+D(j)*dx/6)*dx)*dx;
end

function [] = Draw(f,L,R,N)
	X = linspace(L,R,N)'; % сетка интерполяции
	Y = f(X); % значение функции в узлах
	% полином Лагранжа
	% построение сплайна b полинома
	[A,B,C,D] = GetCoeff(X,Y);
	K=200;
	XG = linspace(L,R,K)';
	YG = f(XG);
	for i=1:K
		YL(i) = Lanrange(X,Y,XG(i));
		YS(i) = SplineCube(X,A,B,C,D, XG(i));
	end

	% графики функции и интерполянтов
	figure
	subplot(2,1,1);
	plot(XG,YG,'-b')
	hold on
	plot(XG,YL','-r')
	plot(XG,YS','-k')
	grid on
	legend('f(s)','L(x)','S(x)','Location','NorthWest')
	str=sprintf('N=%d',N);
	title(str);
	% графики отклонений
	subplot(2,1,2);
	plot(XG,YG-YL','-b')
	hold on
	plot(XG,YG-YS','-k')
	grid on
	legend('f(s)-L(x)','f(x)-S(x)','Location','NorthWest')
	str=sprintf('N=%d',N)
end

% =============================================

% Условия:
f1 = @(x) 2.^x;
f2 = @(x) (1+25*x.^2).^(-1);

a1=0; b1=4;
a2=-2; b2=2;
%Вывод графиков:
disp('Для функции f1=2^x :');
Draw(f1, a1, b1, 5);
Draw(f1, a1, b1, 10);
Draw(f1, a1, b1, 50);
disp('Для функции f2=(1+25*x^2)^(-1) :');
Draw(f2, a2, b2, 5);
Draw(f2, a2, b2, 10);
Draw(f2, a2, b2, 50);
