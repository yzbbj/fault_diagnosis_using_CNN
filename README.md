# fault_diagnosis_using_CNN
  The aim of this project is to diagnosis fault of bearing using CNN.
  Original data come from Western Reserve University Bearing Data Center.Futhure details can be seen in the doc file called <Bearing Data Center Seeded Fault Test Data>.
  3 types of faults and normal data are included in this project,and 4 corresponding folders is created before running the program to save 4 types of data,which are in form of images.If your want to devide the data into further subcategoties,corresponding folders need to be created beforehand.
  You should run the file 'creat_set.m' to ceat the train and validation sets of the CNN network.Then you should run the file 'CNN.m' to train and evaluate the network.
  After the CNN model is trained,you can use the file 'visualize.m' to visulaize the features of different layers to see the effect of CNN in terms of extracting fault features.
