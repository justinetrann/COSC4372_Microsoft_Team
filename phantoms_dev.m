E1 = [1.0, 0.9, 0.9, 0, 0, 0;
      -0.8, 0.8999, 0.8999, 0, 0, 0;
      0.8, 0.2, 0.2, 0, 0, 0
      -0.2, 0.06 * 1.2, 0.06 * 1.2, -0.11, 0.5, 0;
      0.2, 0.05 * 1.2, 0.05 * 1.2, -0.11, 0.5, 0;
      -0.2, 0.12 * 1.2, 0.12 * 1.2, -0.60, -0.1, 0;
      0.2, 0.11 * 1.2, 0.11 * 1.2, -0.60, -0.1, 0;
      -0.2, 0.17 * 1.2, 0.17 * 1.2, 0, -0.55, 0;
      0.2, 0.16 * 1.2, 0.16 * 1.2, 0, -0.55, 0;
      ];

[A1, A2] = phantom(E1, 256);

P1 = phantom(A2, 256);
figure, imshow(P1, [])

% imshow(P)
% improfile

theta1 = 0:2:178; 
[R1,xp_1] = radon(P1,theta1); 
num_angles_R1 = size(R1,2);

%N_R1 = size(R1,1);

imagesc(theta1,xp_1,R1)
colormap(hot)
colorbar
xlabel('Parallel Rotation Angle - \theta (degrees)'); 
ylabel('Parallel Sensor Position - x\prime (pixels)');

output_size = max(size(P1));

dtheta1 = theta1(2) - theta1(1);
I1 = iradon(R1,dtheta1,output_size);

c = improfile(I1);
% figure
% montage({I1},'Size',[1 3])
% title(['Reconstruction from Parallel Beam Projection ' ...
%     'with 18, 24, and 90 Projection Angles'])