## Medical Course
An introduction to Brain Computer Interface both from a theoretical and a practical point of view of data acquisition and data analysis through Machine Learning techniques.

Lectures recordings are available on our YouTube channel [https://youtu.be/84q-bjevPAQ](https://youtu.be/84q-bjevPAQ)

### References 
* [Introduction to Modern Brain-Computer Interface Design](https://youtube.com/playlist?list=PLbbCsk7MUIGcO_IZMbyymWU2UezVHNaMq)
* [A review of classification algorithms for EEG-based brain–computer interfaces](https://iopscience.iop.org/article/10.1088/1741-2552/aab2f2)
* [Deep learning-based electroencephalography analysis: a systematic review](https://iopscience.iop.org/article/10.1088/1741-2552/ab260c)


-----
## 1st Lecture: Introduction to EEG-dependent BCIs

During the first lecture on Brain Computer Interfaces, held on 12/12/2022, we introduce some basic definitions, principles of EEG signals acquisition up to analyzing a first dataset (available in [BCIIV_calib_ds1a.mat](https://github.com/MachineLearningJournalClub/Didattica-MedicAI/blob/main/Lecture%201/BCICIV_calib_ds1a.mat)) and understanding its main features.
Matlab code to open this dataset in Matlab and Matlab file we used to preprocess them are respectively [Open_dataset.m](https://github.com/MachineLearningJournalClub/Didattica-MedicAI/blob/main/Lecture%201/open_dataset.m) and [Pre_process_data.m](https://github.com/MachineLearningJournalClub/Didattica-MedicAI/blob/main/Lecture%201/pre_process_data.m). Then we analyzed data following the steps in [L_1.ipynb](https://github.com/MachineLearningJournalClub/Didattica-MedicAI/blob/main/Lecture%201/L_1.ipynb)
In [Lecture_1.pptx](https://github.com/MachineLearningJournalClub/Didattica-MedicAI/blob/main/Lecture%201/Lecture_1%20.pptx) we share slides of the first theorethical part while in [BCIcompIV_dataset_description.pdf](https://github.com/MachineLearningJournalClub/Didattica-MedicAI/blob/main/Lecture%201/BCIcompIV_dataset_description.pdf) the description of the experimental protocol and subjects characteristics are available. For more information see: [https://www.bbci.de/competition/iv/desc_1.html](https://www.bbci.de/competition/iv/desc_1.html).




-----
## 2nd Lecture: Feature Extraction e Classification Methods for EEG-based BCIs

The second lesson is an overview of various methods of feature extraction and later EEG-signal classification [Lecture_2.pptx](https://github.com/MachineLearningJournalClub/Didattica-MedicAI/blob/main/Lecture%202/Lecture_2.pptx).
Much of the lesson was spent solving the notebook [L_2_Student.ipynb](https://github.com/MachineLearningJournalClub/Didattica-MedicAI/blob/main/Lecture%202/L_2_Student.ipynb) using data described in Lecture 1.

[L_2_SOL.ipynb](https://github.com/MachineLearningJournalClub/Didattica-MedicAI/blob/main/Lecture%202/L_2_SOL.ipynb) contains some ideas on how to conclude the problem assigned in class.

### References 
* [Single-trial analysis and classification of ERP components](https://doc.ml.tu-berlin.de/bbci/publications/BlaLemTreHauMue10.pdf)
* [Comparative Study of Band-Power Extraction Techniques for Motor Imagery Classification](https://nicolas.brodu.net/common/recherche/publications/bci_powcomp.pdf)
* [Signal processing techniques for motor imagery brain computer interface: A review](https://www.frontiersin.org/articles/10.3389/fninf.2018.00078/full)
