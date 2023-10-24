
function [cipherStr] = CaeserEncr(plaintext)

na = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' '];
nac = ['C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ', 'A', 'B'];
    
S = size(plaintext);
SIZE = S(2);

cipher = [];
SIZE_cipher = 0;

%%converts the list of numbers to an array
for i = 1:SIZE %%i is the ith char
    for j = 1:27 %% j is the jth element in na
        if plaintext(i) == na(j)
            
            s = size(cipher);
            SIZE_cipher = s(2);
            
            cipher(SIZE_cipher + 1) = j;
            SIZE_cipher = SIZE_cipher + 1;  
        end
    end
end

cipherStr = '';

for i = 1:SIZE_cipher
    s = size(cipherStr);
    cipherStr(s(2) + 1) = nac(cipher(i));
end

end
