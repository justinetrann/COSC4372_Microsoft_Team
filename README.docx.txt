CT Scanner MATLAB GUI Project README


Introduction
Welcome to the CT Scanner project! This README file will guide you through the process of setting up and operating the MATLAB GUI designed to simulate a CT scanning process and analyze images.


Installation
To run this project, you need to have MATLAB installed on your computer. MATLAB automatically includes all necessary packages and libraries upon installation.


Running the Project
1. Download the CT Scanner project folder to your local machine.
2. Launch MATLAB and navigate to the folder where the project files are located.
3. Locate and double-click on GUIProject.mlapp within MATLAB to open the project in the MATLAB environment. The window will display both code and design views.
4. To initiate the project, click the RUN button located in the top panel.


Using the Application
The application is divided into the following main components:


1. Generate Phantom
* Choose a phantom type from the Generate Phantom dropdown. Options include Rectangle Phantom, Circle Phantom, and Head Phantom.
* For Rectangle Phantom, select the desired dimensions using the Rectangle Dimensions dropdown (30x60, 45x45, 60x30).
* For Circle Phantom, specify the radius using the dropdown (0, 20%).
* Click Generate Phantom to display the phantom image on the screen.
* Use the Save Phantom Image button to save the generated image.


2. Scanners
* Select a Angle Projection (18 projections, 24 projections, 90 projections)
* Select Scanner Method Drop down (Original CT Intensity, Radon Transform, Filtered Backprojection)
* Click on Generate CT Image  to execute the analysis and view the results.


3. SI Graph Generator
* Decide between Original Image and Reconstructed Image.
* Click on Run SI Graph to produce the signal intensity graph for the selected image.
* To save the graph, use the Save SI Graph button.


You can repeat these steps for each phantom type as required.