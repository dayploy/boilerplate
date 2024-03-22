# boilerplate

A docker tools to generate source code.

# Usage

```
    docker run -it \
        --volume ./myPath/boilerplate.yaml:/opt/config/packages/dev/boilerplate.yaml  \
        --volume ./myPath/templates:/opt/templates  \
        --volume ./:/srv/app  \
        tbeaujean/boilerplate
```
