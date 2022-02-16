clear all;
close all;

I=0;
for P = -0.5:0.25:5
sim('schemat',30)

figure(1);
hold on;
grid on;

plot(ans.tout, ans.x1);
end
xlabel("Czas");
ylabel("Wartości");
title('Regulator typu P')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

I=0.5;
for P = 3:0.5:5
sim('schemat',40)

figure(2);
hold on;
grid on;

plot(ans.tout, ans.x);
end
xlabel("Czas");
ylabel("Wartości");
title('Regulator typu PI I=0.5')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

I=1;
for P = 3:0.5:5
sim('schemat',60)

figure(3);
hold on;
grid on;

plot(ans.tout, ans.x);
end
xlabel("Czas");
ylabel("Wartości");
title('Regulator typu PI I=1')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

I=1.5;
for P = 3:0.5:4
sim('schemat',70)

figure(4);
hold on;
grid on;

plot(ans.tout, ans.x);
end
xlabel("Czas");
ylabel("Wartości");
title('Regulator typu PI I=1.5')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

I=2;
for P = 3:0.5:4
sim('schemat',200)

figure(5);
hold on;
grid on;

plot(ans.tout, ans.x);
end
xlabel("Czas");
ylabel("Wartości");
title('Regulator typu PI I=2')



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

I=2.2;
for P = 3:0.25:4
sim('schemat',1500)

figure(6);
hold on;
grid on;

plot(ans.tout, ans.x);
end
xlabel("Czas");
ylabel("Wartości");
title('Regulator typu PI I=2.2')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%minimalizacja kryterium

P = 4;

figure(7);
hold on;
grid on;

for i = 0.01:0.01:2
I = i;
sim('schemat.slx');
plot(I, ans.Q(end), '.');
end

title('Minimalizacja kryterium');
xlabel('I');
ylabel('Q(P,I)');

