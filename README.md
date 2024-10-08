This Verilog code can be used to implement the digit classification system on hardware like FPGA. The digit classification architecture uses a CNN algorithm that classifies the digits 0,1,2,3,4,5,6,7,8, and 9. The model was initially trained using the digit dataset. The following MATLAB link helps to train the model that uses the digit dataset present in the MATLAB toolbox.
https://in.mathworks.com/help/deeplearning/ug/create-simple-deep-learning-network-for-classification.html

As the MATLAB code in the above link is executed it will generate a trained model. The trained model has the following essential components to develop the Verilog code to perform digit classification. 
1.	Convolutional-1 filter weights and biases (8 filters).
2.	Parameters in Batch normalization-1 (Mean, Variance, Scale, Shift parameters)
3.	Convolutional-2 filter weights and biases (16 filters).
4.	Parameters in Batch normalization-2 (Mean, Variance, Scale, Shift parameters)
5.	Convolutional-3 filter weights and biases (32 filters).
6.	Parameters in Batch normalization-2 (Mean, Variance, Scale, Shift parameters)
7.	Fully connected network weights and biases.
The dataset can be downloaded from the following Kaggle links for testing the Verilog codes
https://www.kaggle.com/datasets/jidhumohan/mnist-png
https://www.kaggle.com/datasets/alexanderyyy/mnist-png
The digit images from these datasets are grayscale images that have a size of 28x28. 

The instructions to run this verilog code can be found in following link

https://github.com/EdwinDhasD/Verilog-code-for-Convolutional-Neural-Network-based-Digit-Classification/blob/main/Instructions.pdf
