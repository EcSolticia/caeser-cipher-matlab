
function [plaintext] = CaeserDecr(ciphertext)
   

na = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' '];
nac = ['C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ', 'A', 'B'];

s = size(ciphertext);
SIZE_cipher = s(2);

plaintext_raw = [];

for i = 1:SIZE_cipher
    for j = 1:27
        if ciphertext(i) == nac(j)
            plaintext_raw(i) = j;
        end
    end    
end    

plaintext = '';

for i = 1:SIZE_cipher
    plaintext(i) = na(plaintext_raw(i));
end
