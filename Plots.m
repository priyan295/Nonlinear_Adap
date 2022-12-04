
%tout_IFF=out_IFF.tout;
%uk_in_IFF=out_IFF.Input;
%yk_lin_IFF=out_IFF.yk_lin;
%yk_non_lin_IFF=out_IFF.yk_non_lin;

%tout_NFB_HYP=out_NFB_HYP.tout;
%yk_lin_NFB_HYP=out_NFB_HYP.yk_lin;
%yk_non_lin_NFB_HYP=out_NFB_HYP.yk_non_lin;

%tout_NFB_OSC=out_NFB_OSC.tout;
%yk_lin_NFB_OSC=out_NFB_OSC.yk_lin;
%yk_non_lin_NFB_OSC=out_NFB_OSC.yk_non_lin;

tout_IFF_RET=out_IFF_RET.tout;
uk_in_IFF_RET=out_IFF_RET.Input;
yk_lin_IFF_RET=out_IFF_RET.yk_lin;
yk_non_lin_IFF_RET=out_IFF_RET.yk_non_lin;

tout_IFF_NRET=out_IFF_NRET.tout;
uk_in_IFF_NRET=out_IFF_NRET.Input;
yk_lin_IFF_NRET=out_IFF_NRET.yk_lin;
yk_non_lin_IFF_NRET=out_IFF_NRET.yk_non_lin;

tout_NFB_RET=out_NFB_RET.tout;
uk_in_NFB_RET=out_NFB_RET.Input;
yk_lin_NFB_RET=out_NFB_RET.yk_lin;
yk_non_lin_NFB_RET=out_NFB_RET.yk_non_lin;

tout_NFB_NRET=out_NFB_NRET.tout;
uk_in_NFB_NRET=out_NFB_NRET.Input;
yk_lin_NFB_NRET=out_NFB_NRET.yk_lin;
yk_non_lin_NFB_NRET=out_NFB_NRET.yk_non_lin;

%tout2=out.tout;
%uk_in1=out.Input;
%yk_lin2=out.yk_lin;
%yk_non_lin2=out.yk_non_lin;
%yk_non_lin1=out.yk_non_lin1;
%yk_non_lin2=out.yk_non_lin2;
%yk_non_lin3=out.yk_non_lin3;
%yk_non_lin4=out.yk_non_lin4;
t = tiledlayout(3,1); % Requires R2019b or later
ax1 = nexttile;
plot(ax1,tout_IFF_RET,uk_in_IFF_RET)
ax2 = nexttile;
plot(ax2,tout_IFF_RET,yk_non_lin_IFF_RET)
hold on
plot(ax2,tout_IFF_NRET,yk_non_lin_IFF_NRET)
hold off
ax3 = nexttile;
plot(ax3,tout_NFB_RET,yk_non_lin_NFB_RET)
hold on
plot(ax3,tout_NFB_NRET,yk_non_lin_NFB_NRET)
hold off
%plot(ax3,tout_NFB_HYP,yk_lin_NFB_HYP)
%hold on
%plot(ax3,tout_NFB_HYP,yk_non_lin_NFB_HYP)
%hold off
%ax4 = nexttile;
%plot(ax4,tout_NFB_OSC,yk_lin_NFB_OSC)
%hold on
%plot(ax4,tout_NFB_OSC,yk_non_lin_NFB_OSC)
%hold off

linkaxes([ax1,ax2,ax3],'x');