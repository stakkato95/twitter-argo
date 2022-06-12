argocd app delete twitter-app

$mysqlPvc = kubectl get pvc -l app.kubernetes.io/name=mysql -l app.kubernetes.io/instance=twitter-app -o=name
if ($mysqlPvc) {
    kubectl delete $mysqlPvc
}

$postgresqlPvc = kubectl get pvc -l app.kubernetes.io/name=postgresql -l app.kubernetes.io/instance=twitter-app -o=name
if ($postgresqlPvc) {
    kubectl delete $postgresqlPvc
}

$kafkaPvc = kubectl get pvc -l app.kubernetes.io/name=kafka -o=name
if ($kafkaPvc) {
    kubectl delete $postgresqlPvc
}

$zookeeperPvc = kubectl get pvc -l app.kubernetes.io/name=zookeeper -o=name
if ($zookeeperPvc) {
    kubectl delete $zookeeperPvc
}