Before starting the docker containers first run:

```zsh
chmod 755 first.sh

./first.sh
```

And then run
```zsh
docker-compose up -d
```

---

After stopping the containers with 
```zsh
docker-compose down
```

you'll need to delete and recreate the ceph directories before trying to run up again. This is because ceph is in demo mode. There's no way around it. Yes, it's annoying.
The easiest way to do this is with the provided script
```zsh
chmod 755 cleanup.sh
./cleanup.sh
```

then you can run
```zsh
docker-compose up -d
```