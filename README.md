# boilerplate

A docker tools to generate source code.

# Usage

```
    docker run -it \
        --volume ./myPath/boilerplate.yaml:/srv/app/config/packages/dev/boilerplate.yaml  \
        --volume ./myPath/templates:/srv/app/templates  \
        --volume ./myPath/src:/srv/app/src  \
        --volume ./myPath/tests:/srv/app/tests  \
        tbeaujean/boilerplate
```
