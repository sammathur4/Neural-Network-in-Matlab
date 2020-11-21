load('Trained_network');
input = [ 0 0 1;
          0 1 1;
          1 0 1;
          1 1 1;
          ];
N = 4;
for k = 1:N
    transposed_input = input(k,:)';
    weighted_sum = Weight*transposed_input;
    output = sigmoid(weighted_sum)
end

    
      
