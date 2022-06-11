argocd app delete twitter-app

$mysqlPvc = kubectl get pvc -l app.kubernetes.io/name=mysql -l app.kubernetes.io/instance=twitter-app -o=name
if ($mysqlPvc) {
    kubectl delete $($mysqlPvc)
}

$postgresqlPvc = kubectl get pvc -l app.kubernetes.io/name=postgresql -l app.kubernetes.io/instance=twitter-app -o=name
if ($postgresqlPvc) {
    kubectl delete $($postgresqlPvc)
}