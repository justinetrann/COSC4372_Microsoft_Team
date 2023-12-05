% Define the image size
imageSizeX = 256;
imageSizeY = 256;

% Create a black image
image = zeros(imageSizeX, imageSizeY);

% Define the positions and radii of the circles
positions = [40 40; 100 100; 160 160]; % [x y] coordinates
radii = [20, 40, 80]; % radii of the circles

% Define the gray levels for each circle
grayLevels = [0.8, 0.5, 0.2]; % 1 is white, 0 is black

% Create the circles in the image
for k = 1:length(radii)
    [columnsInImage, rowsInImage] = meshgrid(1:imageSizeY, 1:imageSizeX);
    % Calculate the pixels within the current circle
    circlePixels = (rowsInImage - positions(k,2)).^2 ...
        + (columnsInImage - positions(k,1)).^2 <= radii(k).^2;
    image(circlePixels) = grayLevels(k);
end

% Display the image
imshow(image, 'InitialMagnification', 'fit');
colormap(gray); % Use a gray colormap
axis off;
axis image;