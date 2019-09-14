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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/best_jill_forever/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/best_jill_forever/catkin_ws/install/lib/python2.7/dist-packages:/home/best_jill_forever/catkin_ws/build/voxblox/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/best_jill_forever/catkin_ws/build/voxblox" \
    "/usr/bin/python" \
    "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox/setup.py" \
    build --build-base "/home/best_jill_forever/catkin_ws/build/voxblox" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/best_jill_forever/catkin_ws/install" --install-scripts="/home/best_jill_forever/catkin_ws/install/bin"
