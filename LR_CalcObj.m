% Calculate the logistic regression objective value
function obj = LR_CalcObj(XTrain,yTrain,wHat)
l= size(XTrain,1);
X=ones(l,1);
NEW=[X XTrain];
g=1./(1+e.^(-NEW * wHat));
obj=sum(yTrain.*log(g) + (1-yTrain).*log(1-g));
end
  



%obj = LR_CalcObj(XTrain,yTrain,wHat)

