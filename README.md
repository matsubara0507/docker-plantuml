# docker-plantuml

Docker Image for PlantUML CLI with PDF Support

```
$ docker build -t plantuml .
$ docker run --rm -w /work -v `pwd`:/work plantuml -tpdf sample.puml
```
