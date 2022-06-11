echo "waiting for mysql to be ready..."
kubectl wait --for=condition=Ready $(kubectl get pod -l app.kubernetes.io/name=mysql -o=name)
kubectl port-forward svc/twitter-app-mysql 3306:3306