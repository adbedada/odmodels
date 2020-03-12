
Detectron2
--

### Installation

Custom environment & installation of files is recommended because the module is designed to work with mainly CudaTookit version 9.2.

   ##### create conda environment
    conda create -n cuda_9.2
    
   ##### Activate env
    conda activate cuda_9.2$
    
   ##### Install toolkit and dependencies
    conda install condatoolkit==9.2 cython -c anaconda
    conda install pytorch torchvision -c pytorch
    pip install -r requirements.txt
    
   ##### install detectron2
    pip install -e .

### Run detection

  ##### Convert bash to exectable
    chmod +x run_detectron2.sh
    
 ##### Detect with models
    # Faster-RCNN
    sh run_detectron2.sh faster
    
    # Mask-RCNN
    sh run_detectrion2.sh mask
    