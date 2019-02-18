# amq63-stats

Simplified addition of prometheus jar using an s2i build, but without touching the original s2i files (only extending assemble)

```
oc new-build openshift/jboss-amq-63:1.3~https://github.com/welshstew/amq63-stats.git --strategy=source --allow-missing-images
```