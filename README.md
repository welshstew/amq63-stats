# amq63-stats

Simplified addition of prometheus jar using a docker build

```
oc new-build openshift/jboss-amq-63:1.3~https://github.com/welshstew/amq63-stats.git --strategy=docker --allow-missing-images
```