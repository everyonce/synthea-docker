FROM debian as BUILD
RUN apt-get update && apt-get install -y git
WORKDIR /opt
RUN git clone https://github.com/synthetichealth/synthea.git
WORKDIR /opt/synthea
RUN git checkout v2.6.1


FROM openjdk:latest
COPY --from=BUILD /opt/synthea /opt/synthea
WORKDIR /opt/synthea
CMD [ "/opt/synthea/run_synthea" ]
