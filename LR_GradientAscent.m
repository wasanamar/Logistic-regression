% Run the gradient ascent algorithm for logistic regression

function [wHat,objVals] = LR_GradientAscent(XTrain,yTrain)
    % Set the step size
    eta = .01;
    % Set the convergence tolerance
    tol = .001;
    % TODO: implement the remainder of the algorithm
    wHat=zeros(columns(XTrain)+1,1);
    hasConverged=0;
    i=0;
    while(hasConverged==0)
    i=i+1;
    objVals(i,1)=LR_CalcObj(XTrain,yTrain,wHat);
        
    grad=LR_CalcGrad(XTrain,yTrain,wHat);
    
    wHat = LR_UpdateParams(wHat,grad,eta); 
    
    objVals(i+1,1)=LR_CalcObj(XTrain,yTrain,wHat);
    
    hasConverged = LR_CheckConvg(objVals(i,1),objVals(i+1,1),tol);
    endwhile
    
    
end
 




