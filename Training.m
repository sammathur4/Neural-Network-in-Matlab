input = [ 0 0 1;
          0 0 1;
          1 0 1;
          1 1 1;
          ];
correct_output = [0
                  0
                  1
                  1
                  ];
Weight = 2*rand(1,3) -1;
for epoch = 1:10000
    Weight = SGD_method(Weight, input, correct_output)
end

save('Trained_network.mat')