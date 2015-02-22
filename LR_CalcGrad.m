% Calculate the gradient of the logistic regression
% objective function with respect to each parameter

function grad = LR_CalcGrad(XTrain,yTrain,wHat)
l = size(XTrain,1);
X=ones(l,1);
NEW=[X XTrain];
g=1./(1+e.^(-NEW * wHat));
grad=zeros(size(wHat));
for i =1:l
grad=grad+(yTrain(i)-(g(i)))*NEW(i,:)';
end
end

