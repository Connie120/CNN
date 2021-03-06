clear
N = 21125;

Tr_Tc_16 = [];
Tm_16 = [];
Block_16 = [];
Tr_16 = [];
Tc_16 = [];
GFLOPS_16 = [];

T_16 = readtable('unroll_16.csv'); 
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
% 
% figure(1)
% scatter3(Tr_16, Tc_16, GFLOPS_16, 10, Tm_16, 'filled')
% xlabel('Tr')
% ylabel('Tc')
% zlabel('Performance')
% xlim([4 16])
% ylim([4 16])
% 
% cb = colorbar;                                     
% cb.Label.String = 'Tm';
% 
% % plot3(Tm_16, Block_16, GFLOPS_16, '.')
% % xlabel('Tr')
% % ylabel('Block Size')
% % zlabel('Performance')
% % zlim([0 60])
% 

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
%     if T_8.Tm(i) <= 20 && T_8.Tm(i) >= 15
        Tr_Tc_8 = [Tr_Tc_8 T_8.Tr_Tc(i)];
        Tm_8 = [Tm_8 T_8.Tm(i)];
        Block_8 = [Block_8 T_8.Block_Size(i)];
        Tr_8 = [Tr_8 T_8.Tr(i)];
        Tc_8 = [Tc_8 T_8.Tc(i)];
        GFLOPS_8 = [GFLOPS_8 T_8.GFLOPS(i)];
%     end
end

figure(1)

scatter3(Tr_8, Tc_8, GFLOPS_8, 10, Tm_8, 'filled')
xlabel('Tr')
ylabel('Tc')
zlabel('Performance')

cb = colorbar;  
% caxis([15 20])
cb.Label.String = 'Tm';
zlim([10 60])

Tr_Tc_8 = [];
Tm_8 = [];
Block_8 = [];
Tr_8 = [];
Tc_8 = [];
GFLOPS_8 = [];
T_8 = readtable('unroll_8_char.csv');
for i=1:N
%     if T_8.Tm(i) <= 28 && T_8.Tm(i) >= 26
        Tr_Tc_8 = [Tr_Tc_8 T_8.Tr_Tc(i)];
        Tm_8 = [Tm_8 T_8.Tm(i)];
        Block_8 = [Block_8 T_8.Block_Size(i)];
        Tr_8 = [Tr_8 T_8.Tr(i)];
        Tc_8 = [Tc_8 T_8.Tc(i)];
        GFLOPS_8 = [GFLOPS_8 T_8.GFLOPS(i)];
%     end
end

figure(2)

scatter3(Tr_8, Tc_8, GFLOPS_8, 10, Tm_8, 'filled')
xlabel('Tr')
ylabel('Tc')
zlabel('Performance')

cb = colorbar;  
% caxis([26 28])
cb.Label.String = 'Tm';

zlim([20 30])

% Tr_Tc_4 = [];
% Tm_4 = [];
% Block_4 = [];
% Tr_4 = [];
% Tc_4 = [];
% GFLOPS_4 = [];
% T_4 = readtable('unroll_4.csv');
% % Tr_Tc_4 = T_4.Tr_Tc;
% % Tm_4 = T_4.Tm;
% % Block_4 = T_4.Block_Size;
% % Tr_4 = T_4.Tr;
% % Tc_4 = T_4.Tc;
% % GFLOPS_4 = T_4.GFLOPS;
% % 
% for i=1:N
%     if T_4.Tm(i) <= 32 && T_4.Tm(i) >= 30
%         Tr_Tc_4 = [Tr_Tc_4 T_4.Tr_Tc(i)];
%         Tm_4 = [Tm_4 T_4.Tm(i)];
%         Block_4 = [Block_4 T_4.Block_Size(i)];
%         Tr_4 = [Tr_4 T_4.Tr(i)];
%         Tc_4 = [Tc_4 T_4.Tc(i)];
%         GFLOPS_4 = [GFLOPS_4 T_4.GFLOPS(i)];
%     end
% end
% 
%  figure(1)
% scatter3(Tr_4, Tc_4, GFLOPS_4, 10, Tm_4, 'filled')
% xlabel('Tr')
% ylabel('Tc')
% zlabel('Performance')
% 
% cb = colorbar;  
% caxis([30 32])
% cb.Label.String = 'Tm';
% 
% % plot3(Tm_4, Block_4, GFLOPS_4, '.')
% % xlabel('Tr')
% % ylabel('Block Size')
% % zlabel('Performance')
% zlim([10 35])
% 
% T_2 = readtable('unroll_2.csv');
% % Tr_Tc_2 = T_2.Tr_Tc;
% % Tm_2 = T_2.Tm;
% % Block_2 = T_2.Block_Size;
% % Tr_2 = T_2.Tr;
% % Tc_2 = T_2.Tc;
% % GFLOPS_2 = T_2.GFLOPS;
% 
% Tr_Tc_2 = [];
% Tm_2 = [];
% Block_2 = [];
% Tr_2 = [];
% Tc_2 = [];
% GFLOPS_2 = [];
% 
% for i=1:N
%     if T_2.Tm(i) <=20 && T_2.Tm(i) >= 15
%         Tr_Tc_2 = [Tr_Tc_2 T_2.Tr_Tc(i)];
%         Tm_2 = [Tm_2 T_2.Tm(i)];
%         Block_2 = [Block_2 T_2.Block_Size(i)];
%         Tr_2 = [Tr_2 T_2.Tr(i)];
%         Tc_2 = [Tc_2 T_2.Tc(i)];
%         GFLOPS_2 = [GFLOPS_2 T_2.GFLOPS(i)];
%     end
% end
% 
% figure(1)
% scatter3(Tr_2, Tc_2, GFLOPS_2, 10, Tm_2, 'filled')
% xlabel('Tr')
% ylabel('Tc')
% zlabel('Performance')
% 
% cb = colorbar;
% caxis([15 20])
% cb.Label.String = 'Tm';
% 
% % plot3(Tm_2, Block_2, GFLOPS_2, '.')
% % xlabel('Tr')
% % ylabel('Block Size')
% % zlabel('Performance')
% zlim([10 15])