Build image in subfolder:

```
docker run -ti --rm -v "$(pwd)/slides/input:/input" -v "$(pwd)/docs:/output" bryanrosander/k8s-talk
```

Edit files in input, watch output appear in output :)
