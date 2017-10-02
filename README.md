
# Usage

```
docker-compose build --arg=BASE_IMAGE=ubuntu:16.04
docker-compose run build
sudo cp ./src/build/pam_google_authenticator.so /lib/security/
```

Where `BASE_IMAGE` should match your host OS and `/lib/security/` may vary on
your os