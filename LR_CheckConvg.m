% Check whether the objective value has converged 
% by comparing the difference between consecutive 
% objective values to the tolerance

function hasConverged = LR_CheckConvg(oldObj,newObj,tol)

  % TODO: complete the function
  if((newObj-oldObj)<tol)
  hasConverged = true;
  else
  hasConverged = false;
  endif

end

