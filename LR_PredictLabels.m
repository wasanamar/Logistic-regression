% Predict the labels for a test set using logistic regression

function [yHat,numErrors] = LR_PredictLabels(XTest,yTest,wHat)
numErrors=0;
yHat=zeros(size(yTest),1);
T=ones(length(XTest),1);
n=[T XTest];
yHat1=1./(1+e.^(-n * wHat));
yHat2=1-yHat1;
for i=1:length(yTest)
if(yHat1(i,1)>yHat2(i,1))
yHat(i,1)=1;
else 
yHat(i,1)=0;
endif
end
for j=1:length(yTest)
if(yHat(j,1)!=yTest(j,1))
numErrors=numErrors+1;
endif
end
end


