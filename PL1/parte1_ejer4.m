% Carga de datos de ejemplo disponibles en la toolbox 
[inputs,targets] = cancer_dataset;   
% Creción de una red neuronal para el reconocimiento de patrones 
hiddenLayerSize = 10; 
net = patternnet(hiddenLayerSize); 
  
% División del conjunto de datos para entrenamiento, validación y test 
net.divideParam.trainRatio = 40/100; 
net.divideParam.valRatio = 30/100; 
net.divideParam.testRatio = 30/100; 
  
% Entrenamiento de la red 
[net,tr] = trainbr(net,inputs,targets); 
  % Prueba 
outputs = net(inputs); 
errors = gsubtract(targets,outputs); performance = perform(net,targets,outputs) 
  
% Visualización 
%view(net)  