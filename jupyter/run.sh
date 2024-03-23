WORKBOOK_DIR="${PWD}"/workbooks
DATA_DIR="${PWD}"/../data

echo $WORKBOOK_DIR
ls $WORKBOOK_DIR
echo $DATA_DIR
ls $DATA_DIR

docker pull quay.io/jupyter/pytorch-notebook:latest
docker run -it --rm -p 8888:8888 \
    --user root \
    -e NB_UID=$(id -u) \
    -e NB_GID=$(id -g) \
    -v $WORKBOOK_DIR:/home/jovyan/work \
    -v $DATA_DIR:/home/jovyan/data \
    quay.io/jupyter/pytorch-notebook \
    start.sh jupyter notebook --NotebookApp.token=''
