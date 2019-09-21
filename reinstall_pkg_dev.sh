export PYTHON_DIR='/usr/local/lib/python2.7/dist-packages'
export CURRENT_DIR=`pwd`
export VERSION="0.100"

export CODE_DIR="edreporthelper"

pip uninstall $CODE_DIR -y
rm -rf $PYTHON_DIR/${CODE_DIR}
pip install dist/${CODE_DIR}-${VERSION}.tar.gz
