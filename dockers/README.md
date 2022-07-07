
ros2 simnple cpntainer 

# compile docker

    docker build -t lulav/lulav_ros2:v1.0 -f dockers/Dockerfile .

# run docker

    docker run --rm -it --net=host lulav/lulav_ros2:v1.0
    
    docker run --rm -it --net=host lulav/lulav_ros2:v1.0 ros2 launch entry_point demo.launch.py


