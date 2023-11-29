% Justine Tran. 1896572
% Khue Do, UHID
% Karthik Kallakuri, UHID
% Vinh Nguyen, 2039299

% Virutal CT Scanner
[ph,E] = phantom(1024);
figure, imshow(ph);
disp(E)
title('Default Shepp-Logan Phantom');

E = [
    1.0000    0.6900    0.9200         0         0         0
   -0.8000    0.6624    0.8740         0   -0.0184         0
   -0.2000    0.1100    0.3100    0.2200         0  -18.0000
   -0.2000    0.1600    0.4100   -0.2800         0   18.0000
    0.1000    0.1800    0.2200         0    0.3500         0
    0.1000    0.0460    0.0460         0    0.0500         0
    0.1000    0.0460    0.0460         0   -0.1000         0
    0.1000    0.0230    0.0230   -0.0800   -0.6050         0
    0.1000    0.0230    0.0230         0   -0.6060         0
    0.1000    0.0230    0.0230    0.0700   -0.6050    0
];

% Rectangle Phantom
P = phantom(E, 1024);
disp(E);
figure, imshow(P);
title('Rectangle Phantom');