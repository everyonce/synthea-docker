# synthea-docker

Quick script to use Synthea to generate FHIR data.

Usage:
```
docker build -t synthea .
docker run -v /tmp/output:/opt/synthea/output -it synthea /opt/synthea/run_synthea -p 1000
```

See the main Synthea codebase for flags/options/etc:
https://github.com/synthetichealth/synthea
