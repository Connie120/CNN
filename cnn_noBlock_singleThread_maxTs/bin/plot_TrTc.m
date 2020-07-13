clear
N = 21125;

Tr_Tc_16 = [];
Tm_16 = [];
Block_16 = [];
Tr_16 = [];
Tc_16 = [];
GFLOPS_16 = [];

T_16 = readtable('unroll_16.csv');
% Tr_Tc_16 = T_16.Tr_Tc;
% Tm_16 = T_16.Tm;
% Block_16 = T_16.Block_Size;
% Tr_16 = T_16.Tr;
% Tc_16 = T_16.Tc;
% GFLOPS_16 = T_16.GFLOPS;

for i=1:N
%     if T_8.Tm(i) == 64
        Tr_Tc_16 = [Tr_Tc_16 T_16.Tr_Tc(i)];
        Tm_16 = [Tm_16 T_16.Tm(i)];
        Block_16 = [Block_16 T_16.Block_Size(i)];
        Tr_16 = [Tr_16 T_16.Tr(i)];
        Tc_16 = [Tc_16 T_16.Tc(i)];
        GFLOPS_16 = [GFLOPS_16 T_16.GFLOPS(i)];
%     end
end

figure(1)
scatter3(Tr_16, Tc_16, GFLOPS_16, 10, Tm_16, 'filled')
xlabel('Tr')
ylabel('Tc')
zlabel('Performance')
xlim([4 16])
ylim([4 16])

cb = colorbar;                                     
cb.Label.String = 'Tm';

% plot3(Tm_16, Block_16, GFLOPS_16, '.')
% xlabel('Tr')
% ylabel('Block Size')
% zlabel('Performance')
% zlim([0 60])

Tr_Tc_8 = [];
Tm_8 = [];
Block_8 = [];
Tr_8 = [];
Tc_8 = [];
GFLOPS_8 = [];
T_8 = readtable('unroll_8.csv');
% Tr_Tc_8 = T_8.Tr_Tc;
% Tm_8 = T_8.Tm;
% Block_8 = T_8.Block_Size;
% Tr_8 = T_8.Tr;
% Tc_8 = T_8.Tc;
% GFLOPS_8 = T_8.GFLOPS;
for i=1:N
    if T_8.Tm(i) == 32 && T_8.Block_Size(i) == 2304
        Tr_Tc_8 = [Tr_Tc_8 T_8.Tr_Tc(i)];
        Tm_8 = [Tm_8 T_8.Tm(i)];
        Block_8 = [Block_8 T_8.Block_Size(i)];
        Tr_8 = [Tr_8 T_8.Tr(i)];
        Tc_8 = [Tc_8 T_8.Tc(i)];
        GFLOPS_8 = [GFLOPS_8 T_8.GFLOPS(i)];
    end
end

figure(2)

% scatter3(Tr_8, Tc_8, GFLOPS_8, 10, Tm_8, 'filled')
% xlabel('Tr')
% ylabel('Tc')
% zlabel('Performance')
% 
% cb = colorbar;                                     
% cb.Label.String = 'Tm';
% x = zeros(N,2);
% x(:,1) = Block_8;
% x(:,2) = GFLOPS_8;
% 
% [membership,member_value]=find_pareto_frontier(x);
% plot(x(:,1),x(:,2),'.','markersize',15);
% hold on
% plot(member_value(:,1),member_value(:,2),'.r','markersize',15);
% legend({'Data','Pareto Frontier'})

% plot3(Tr_8, Tc_8, GFLOPS_8, '.')

subplot(2,1,1)
plot3(Tr_8, Block_8, GFLOPS_8, '.')
xlabel('Tr')
ylabel('Block Size')
zlabel('Performance')
subplot(2,1,2)
plot3(Tc_8, Block_8, GFLOPS_8, '.')
xlabel('Tc')
ylabel('Block Size')
zlabel('Performance')
zlim([0 60])

T_4 = readtable('unroll_4.csv');
Tr_Tc_4 = T_4.Tr_Tc;
Tm_4 = T_4.Tm;
Block_4 = T_4.Block_Size;
Tr_4 = T_4.Tr;
Tc_4 = T_4.Tc;
GFLOPS_4 = T_4.GFLOPS;

figure(3)
scatter3(Tr_4, Tc_4, GFLOPS_4, 10, Tm_4, 'filled')
xlabel('Tr')
ylabel('Tc')
zlabel('Performance')

cb = colorbar;                                     
cb.Label.String = 'Tm';

% plot3(Tm_4, Block_4, GFLOPS_4, '.')
% xlabel('Tr')
% ylabel('Block Size')
% zlabel('Performance')
% zlim([0 60])

T_2 = readtable('unroll_2.csv');
Tr_Tc_2 = T_2.Tr_Tc;
Tm_2 = T_2.Tm;
Block_2 = T_2.Block_Size;
Tr_2 = T_2.Tr;
Tc_2 = T_2.Tc;
GFLOPS_2 = T_2.GFLOPS;

figure(4)
scatter3(Tr_2, Tc_2, GFLOPS_2, 10, Tm_2, 'filled')
xlabel('Tr')
ylabel('Tc')
zlabel('Performance')

cb = colorbar;                                     
cb.Label.String = 'Tm';

% plot3(Tm_2, Block_2, GFLOPS_2, '.')
% xlabel('Tr')
% ylabel('Block Size')
% zlabel('Performance')
% zlim([0 60])