% training_data = [];
% for i =1:5
%     aux = load("datos_entrenamiento"+i).training_data;
%     training_data = vertcat(training_data,aux);
% end

training_data = load("datos_entrenamiento6").training_data;

%Generar los inputs y los outputs
inputs = training_data(:,[6,8,9,11]);
outputs = training_data(:,[18,19]);
inputs(isinf(inputs)) = 5.0;
inputs = double(inputs');
outputs = double(outputs');

%Generación de la red
net = feedforwardnet([10,10,5]);
net = configure(net,inputs,outputs);
net = train(net,inputs,outputs);

%Formación de la red
gensim(net)