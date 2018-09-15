num=randn([1 100]);
[n, x]=hist(num, [-3 -2 -1 0 1 2 3]);
disp([n; x]);
plot(x, n);
