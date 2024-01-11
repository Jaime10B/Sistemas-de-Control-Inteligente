training_data = load("datos_entrenamiento6").training_data;

%Generar los inputs y los outputs
inputs = training_data(:,[6,7,8,9,11]);
outputs = training_data(:,[18,19]);
inputs(isinf(inputs)) = 5.0;
inputs = double(inputs');
outputs = double(outputs');

%Generación de la red
net = feedforwardnet([10,3,3]);
net = configure(net,inputs,outputs);
net = train(net,inputs,outputs);

%Formación de la red
gensim(net)