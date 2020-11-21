function Weight = SGD_method(Weight, input, correct_output)
alpha = 0.9;

N = 4;
for k = 1:N
    transposed_input = input(k,:)';
    d = correct_output(k);
    weighted_sum = Weight * transposed_input;
    output = sigmoid(weighted_sum);
    error = d - output;
    del = output * (1-output);
    delta = del* error;
    dWeigh = alpha * delta;
    dWeight = dWeigh* transposed_input;
    Weight(1) = Weight(1) + dWeight(1);
    Weight(2) = Weight(2) + dWeight(2);
    Weight(3) = Weight(3) + dWeight(3);
end
end

