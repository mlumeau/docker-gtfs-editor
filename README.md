
# Conveyal GTFS editor as Docker image

A ready-to-use GTFS editor web-app as a docker image. Based on the simple, straight-forward [GTFS editor by Conveyal](https://github.com/conveyal/gtfs-editor).

## Install guide:

 1. Get an access token from MapBox - https://www.mapbox.com/
 2. (Optional) Copy any "data" directory on your storage volume
 3. Pull the docker image
   
    `docker pull mlumeau/gtfs-editor:latest` 

 4.  Run the container

    `docker run -p {my_host_port}:9000 -e MAPBOX_KEY={my_mapbox_key} -v {my_storage_volume_data_dir}:/var/gtfs-editor-master/data mlumeau/gtfs-editor`

## License

This project and the content of this project itself are licensed under the [MIT license](https://github.com/github/choosealicense.com/blob/gh-pages/LICENSE.md).
