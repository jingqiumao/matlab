subplot('position',[0.04,0.52,0.45,0.45])
plot(timeDecay(i,:),ohExpDecay(i,:),'b.','markersize',16);
legend('F1','Corrected','F0',3);
hold;
plot(timeDecay(i,:),timeDecay(i,:).*noOutLierDecay(i)+noOutLierIntercept(i),'k-',...
    timeDecay(i,:),timeDecay(i,:).*robDecay(i)+robIntercept(i),'r-',...
    timeDecay(i,:),timeDecay(i,:).*maxDecay(i)+maxIntercept(i),'g-');
% ylim([0 7]);
% legend('data','Decay without outliers','Robust Regression','maxdecay',3);
Grid on;
ylabel('Signal');
hold;
subplot('position',[0.04,0.04,0.45,0.45])
plot(timeDecay(i,:),airVelocity(i,:),'r.');
Grid on;
ylabel('Air Velocity');