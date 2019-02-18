# amq63-stats

Simplified addition of prometheus jar using a docker build

```
oc new-build openshift/jboss-amq-63~https://github.com/welshstew/amq63-stats.git --strategy=docker 
```