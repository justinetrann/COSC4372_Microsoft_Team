P = phantom(256);
% imshow(P)
% improfile

theta1 = 0:2:178; 
[R1,xp_1] = radon(P,theta1); 
num_angles_R1 = size(R1,2);

%N_R1 = size(R1,1);

imagesc(theta1,xp_1,R1)
colormap(hot)
colorbar
xlabel('Parallel Rotation Angle - \theta (degrees)'); 
ylabel('Parallel Sensor Position - x\prime (pixels)');

output_size = max(size(P));

dtheta1 = theta1(2) - theta1(1);
I1 = iradon(R1,dtheta1,output_size);

figure
montage({I1},'Size',[1 3])
title(['Reconstruction from Parallel Beam Projection ' ...
    'with 18, 24, and 90 Projection Angles'])