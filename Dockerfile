FROM openjdk:15-alpine

ENV PLANTUML_VERSION 1.2020.15
ENV LANG en_US.UTF-8

RUN apk add --no-cache graphviz font-noto-cjk curl unzip \
 && mkdir /app \
 && curl -L https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download -o /app/plantuml.jar \
 && curl -L http://beta.plantuml.net/batikAndFop.zip -o /app/tmp.zip \
 && unzip -d /app /app/tmp.zip \
 && rm /app/tmp.zip \
 && apk del curl unzip

ENTRYPOINT [ "java", "-jar", "/app/plantuml.jar" ]
CMD [ "-h" ]
