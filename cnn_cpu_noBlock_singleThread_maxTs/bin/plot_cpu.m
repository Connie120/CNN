clear
N = 21125;

Tr_Tc_16 = [];
Tm_16 = [];
Block_16 = [];
Tr_16 = [];
Tc_16 = [];
GFLOPS_16 = [];

T_16 = readtable('cpu.csv'); 
for i=1:N
%     if T_8.Tm(i) == 64
%         Tr_Tc_16 = [Tr_Tc_16 T_16.Tr_Tc(i)];
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

Tr_Tc_16 = [];
Tm_16 = [];
Block_16 = [];
Tr_16 = [];
Tc_16 = [];
GFLOPS_16 = [];

T_16 = readtable('cpu_buf.csv'); 
for i=1:2031
%     if T_8.Tm(i) == 64
%         Tr_Tc_16 = [Tr_Tc_16 T_16.Tr_Tc(i)];
        Tm_16 = [Tm_16 T_16.Tm(i)];
%         Block_16 = [Block_16 T_16.Block_Size(i)];
        Tr_16 = [Tr_16 T_16.Tr(i)];
        Tc_16 = [Tc_16 T_16.Tc(i)];
        GFLOPS_16 = [GFLOPS_16 T_16.GFLOPS(i)];
%     end
end

figure(2)
scatter3(Tr_16, Tc_16, GFLOPS_16, 10, Tm_16, 'filled')
xlabel('Tr')
ylabel('Tc')
zlabel('Performance')
xlim([4 16])
ylim([4 16])

cb = colorbar;                                     
cb.Label.String = 'Tm';


