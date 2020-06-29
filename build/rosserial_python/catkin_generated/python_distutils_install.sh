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

echo_and_run cd "/home/soo/sve_design_project/src/control/rosserial-noetic-devel/rosserial_python"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/soo/sve_design_project/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/soo/sve_design_project/install/lib/python2.7/dist-packages:/home/soo/sve_design_project/build/rosserial_python/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/soo/sve_design_project/build/rosserial_python" \
    "/usr/bin/python2" \
    "/home/soo/sve_design_project/src/control/rosserial-noetic-devel/rosserial_python/setup.py" \
     \
    build --build-base "/home/soo/sve_design_project/build/rosserial_python" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/soo/sve_design_project/install" --install-scripts="/home/soo/sve_design_project/install/bin"
