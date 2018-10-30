clc
close all
figure
title('State-Time History')

plot(tout, states(:,1));
hold on;
plot(tout, states(:,2));
hold on;
plot(tout,states(:,3) );

legend('p','q', 'r')
xlabel('Time(Secs)')
ylabel('States')
saveas(gca, 'State-Time History.jpg')