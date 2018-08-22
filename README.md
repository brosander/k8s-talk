Build image in subfolder:
```
cd slides/docker
docker build -t pandoc .
cd ../..
```

```
docker run -ti --rm -v "$(pwd)/slides/input:/input" -v "$(pwd)/docs:/output" pandoc
```

Edit files in input, watch output appear in output :)
