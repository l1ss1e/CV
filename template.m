%I spent too much time for solving this task omg and I still have questions
function index = template(t, s)
  s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
  t = [1 1 0];
  c = normxcorr2(t, s);
  %disp([1:size(c, 2); c]);
  [maxValue rawIndex]=max(c);
  index=rawIndex - size(t, 2) + 1;  
endfunction
pkg load image;

disp('Signal: '), disp([1:size(s, 2); s]);
disp('Template: '), disp([1:size(t, 2); t]);
index = template(t, s);
disp('Index: '), disp(index);