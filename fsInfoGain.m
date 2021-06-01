function [out] =  fsInfoGain(X,Y)
%Using Weka's feature selection algorithm
% X,  the features on current trunk, each colum is a feature vector on all
%     instances, and each row is a part of the instance
% Y,  the label of instances, in single column form: 1 2 3 4 5 ...

nF = size(X,2);

t = weka.attributeSelection.InfoGainAttributeEval();
t.buildEvaluator(wekaCategoricalData(X, SY2MY(Y)));
%%t.buildEvaluator(X);
out.W = zeros(1,nF);

for i =1:nF;
    out.W(i) = t.evaluateAttribute(i-1);
end
  

[foo, out.fList] = sort(out.W, 'descend');
out.List=out.fList';
out.prf = -1;
end