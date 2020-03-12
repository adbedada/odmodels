#! /bin/bash
T1=$1
T2="faster"
T3="mask"

if [ "$T1" = "$T2" ];
then
  python demo/demo.py --config-file configs/COCO-Detection/faster_rcnn_R_50_FPN_3x.yaml \
  --input coco-sample/img-2.jpg \
  [--other-options] --opts MODEL.WEIGHTS detectron2://COCO-Detection/faster_rcnn_R_50_FPN_3x/137849458/model_final_280758.pkl
elif [ "$T1" = "$T3" ];
then
 python demo/demo.py --config-file configs/COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x.yaml \
  --input coco-sample/img-2.jpg \
  [--other-options] --opts MODEL.WEIGHTS detectron2://COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x/137849600/model_final_f10217.pkl

else
  echo provide model of your choise, please!
fi

exit
