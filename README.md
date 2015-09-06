## oreno-fluentd-azurestorage

### ����ȂɁH 

- [fluent-plugin-azurestorage](https://github.com/htgc/fluent-plugin-azurestorage) �̓���m�F�̍ۂɗ��p���� 

### �K�v�ȏ��

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

### �G�߂���̂�

- �����ݓ���낵�����肢���܂��I
