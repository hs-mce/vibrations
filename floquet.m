function z = floquet(fun)
global alpha

omega=alpha;

%omega= 3.26593813788237580363648604583;
%delta=x(1);epsilon=x(2);

options=odeset('reltol',1e-9,'abstol',1e-9);
[t,X]=ode45(fun,[0,2*pi/omega],[1;0;0;0],options);
 C=[X(end,:)'];
[t,X]=ode45(fun,[0,2*pi/omega],[0;1;0;0],options);
C=[C  X(end,:)'];
'dddd'
[t,X]=ode45(fun,[0,2*pi/omega],[0;0;1;0],options);
 C=[C  X(end,:)'];
[t,X]=ode45(fun,[0,2*pi/omega],[0;0;0;1],options);

C=[C  X(end,:)'];

z=eig(C);

% if(max(abs(z))>1)
%     S=[delta,epsilon]
%     
% else
%      S=[];
% end
% 
% S=[[];S];

end

