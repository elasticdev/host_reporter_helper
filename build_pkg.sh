export MAIN_DIR="edreporthelper"
export CODE_DIR="edreporthelper"
export CURRENT_DIR=`pwd`

# Erase previous packages
rm -rf dist $MAIN_DIR.egg-info

python setup.py sdist

tar xvfz $CURRENT_DIR/dist/$MAIN_DIR-0.100.tar.gz -C $CURRENT_DIR/dist/
cd $CURRENT_DIR/dist/$MAIN_DIR-0.100 || exit 9

for i in `find -name "*.py" -type f` 
do 
    pyminifier --destdir=$i $i
    python -m compileall $i
    rm -rf $i
done

for i in `find -name "*.swn" -type f` 
do 
    rm -rf $i
done

for i in `find -name "*.sw0" -type f` 
do 
    rm -rf $i
done

for i in `find -name "*.swp" -type f` 
do 
    rm -rf $i
done

tar cvfz ${CODE_DIR}.tar.gz $CODE_DIR
mv ${CODE_DIR}.tar.gz $CURRENT_DIR/dist/

cd $CURRENT_DIR
rm -rf $CURRENT_DIR/dist/$MAIN_DIR-0.100

git add $CURRENT_DIR/dist/${CODE_DIR}.tar.gz
git commit -a -m "updated package"
git push
