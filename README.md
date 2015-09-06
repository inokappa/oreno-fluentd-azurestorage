## oreno-fluentd-azurestorage

### これなに？ 

- [fluent-plugin-azurestorage](https://github.com/htgc/fluent-plugin-azurestorage) の動作確認の際に利用した 

### 必要な情報

- Azure Storage Account Name
- Azure Storage Access Key
- Azure Storage Container Name

### Dockerbuild

```sh
docker build --no-cache=true -t your_name/image_name
```

### Run

```sh
docker run -d \
  --name=fluentd \
  -p 24224:24224 \
  --env 'STORAGE_NAME=${STORAGE_NAME}' \
  --env 'STORAGE_ACCESS_KEY=${STORAGE_ACCESS_KEY}' \
  --env 'STORAGE_CONTAINER=${STORAGE_CONTAINER}' \
inokappa/fluentd-azure-blob /app/start.sh
```

### 雑過ぎるので

- つっこみ等よろしくお願いします！
