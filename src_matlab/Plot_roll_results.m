
Span = 1;
Chord = 0.15;
load(['B3T2_FWT_Locked_RC',sprintf('_roll_data_span_%.0fmm_chord_%.0fmm.mat',Span*1e3,Chord*1e3)],'res');
B3T2L = res;
load(['B3T2_FWT_RC',sprintf('_roll_data_span_%.0fmm_chord_%.0fmm.mat',Span*1e3,Chord*1e3)],'res');
B3T2 = res;

% load(['B1T1_FWT_Locked_RC',sprintf('_roll_data_span_%.0fmm_chord_%.0fmm.mat',Span*1e3,Chord*1e3)]],'res');
% B1T1L = res;
% load(['B1T1_FWT_RC',sprintf('_roll_data_span_%.0fmm_chord_%.0fmm.mat',Span*1e3,Chord*1e3)]],'res');
% B1T1 = res;


%% abs_plot
abs_plot(1,B3T2L)
f = gcf;
f.Name = 'Locked';
abs_plot(2,B3T2)
f = gcf;
f.Name = 'Free';
% delta plot
delta_plot(3,B3T2,B3T2L)
f = gcf;
f.Name = 'Delta';


function delta_plot(num,res1,res2)
    f = fh.pubFig(Size=[16,12],Layout=[2,2],Num=num);
    [SS,HH] = meshgrid(unique([res1.S]),unique([res1.H]));
    nexttile(1)
    delta = griddata([res1.S],[res1.H],[res1.R],SS,HH) - griddata([res2.S],[res2.H],[res2.R],SS,HH);
    contourf(SS,HH,delta)
    colorbar()
    xlabel('$\Sigma$')
    ylabel('h [mm]')
    title('Roll Rate [deg/s]')
    
    nexttile(2)
    delta = griddata([res1.S],[res1.H],[res1.A],SS,HH) - griddata([res2.S],[res2.H],[res2.A],SS,HH);
    contourf(SS,HH,delta)
    colorbar()
    xlabel('$\Sigma$')
    ylabel('h [mm]')
    title('Tip Twist [deg]')
    
    nexttile(3)
    delta = griddata([res1.S],[res1.H],[res1.Z],SS,HH) - griddata([res2.S],[res2.H],[res2.Z],SS,HH);
    delta = delta./0.5*100;
    delta(delta<-4) = nan;
    contourf(SS,HH,delta)
    colorbar()
    xlabel('$\Sigma$')
    ylabel('h [mm]')
    title('Tip Disp. [\% Semi-span]')
    
    nexttile(4)
    delta = griddata([res1.S],[res1.H],[res1.F],SS,HH) - griddata([res2.S],[res2.H],[res2.F],SS,HH);
    contourf(SS,HH,delta)
    colorbar()
    xlabel('$\Sigma$')
    ylabel('h [mm]')
    title('Fold [deg]')
end


function abs_plot(num,res)
    f = fh.pubFig(Size=[16,12],Layout=[2,2],Num=num);
    [SS,HH] = meshgrid(unique([res.S]),unique([res.H]));
    nexttile(1)
    contourf(SS,HH,griddata([res.S],[res.H],[res.R],SS,HH))
    colorbar()
    xlabel('$\Sigma$')
    ylabel('h [mm]')
    title('Roll Rate [deg/s]')
    
    nexttile(2)
    contourf(SS,HH,griddata([res.S],[res.H],[res.A],SS,HH))
    colorbar()
    xlabel('$\Sigma$')
    ylabel('h [mm]')
    title('Tip Twist [deg]')
    
    nexttile(3)
    contourf(SS,HH,griddata([res.S],[res.H],[res.Z],SS,HH)./0.5*100)
    colorbar()
    xlabel('$\Sigma$')
    ylabel('h [mm]')
    title('Tip Disp. [\% Semi-span]')
    
    nexttile(4)
    contourf(SS,HH,griddata([res.S],[res.H],[res.F],SS,HH))
    colorbar()
    xlabel('$\Sigma$')
    ylabel('h [mm]')
    title('Fold [deg]')
end
