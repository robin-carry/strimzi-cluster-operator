# Wrapper Helm strimzi-cluster-operator Chart

Inspired by [Strimzi Kafka Operator](https://github.com/strimzi/strimzi-kafka-operator/tree/main/helm-charts/helm3/strimzi-kafka-operator)

## :information_source: **Idea of the concept** :information_source:

1. To extend the operator (example change operator source code or add more crds)
2. To give chart our own custom name.
3. Deploy it collectively, rather each component one by one

## Prerequisite
1. Helm cli required (`brew install helm`)
2. k9s optionally thought helps in switching between CRDs quickly (`brew install k9s`)

## How to run

Note: See the [parent]() git repo, from where kafka-ecosystem from Strimzi can be started collectively. If you still want to installed just the kafka operator, use the following steps. 

Step 1: Run the initialization script provided
```shell
strimzi-cluster-operator>$ 0-init.sh #Downloads the helm dependent chart
Initializing...downloading helm chart dependencies
...
...
Update Complete. ⎈Happy Helming!⎈
Saving 1 charts
Downloading strimzi-kafka-operator from repo https://strimzi.io/charts/
Deleting outdated charts
Completed init.
```
Step 2: Install this customized wrapper helm chart
```bash
strimzi-cluster-operator>$ helm install my-cluster . # Deployes the kafka-operator 
```

Step 3: Verify if it is installed 
```bash
strimzi-cluster-operator>$ helm list
NAME            NAMESPACE       REVISION        UPDATED                                 STATUS          CHART                                   APP VERSION
my-cluster      default         1               2022-09-27 22:28:20.494119 -0700 PDT    deployed        strimzi-cluster-operator-arpit-0.1.0    0.1.0 
```

### Pending
1. Improve the README.md
2. Add more content in the output of `helm install my-cluster .`
