#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/soyeong/sve_design_project/src/control/rosserial-noetic-devel/rosserial_client"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/soyeong/sve_design_project/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/soyeong/sve_design_project/install/lib/python2.7/dist-packages:/home/soyeong/sve_design_project/build/rosserial_client/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/soyeong/sve_design_project/build/rosserial_client" \
    "/usr/bin/python2" \
    "/home/soyeong/sve_design_project/src/control/rosserial-noetic-devel/rosserial_client/setup.py" \
     \
    build --build-base "/home/soyeong/sve_design_project/build/rosserial_client" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/soyeong/sve_design_project/install" --install-scripts="/home/soyeong/sve_design_project/install/bin"
