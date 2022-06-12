echo "waiting for postgres to be ready..."
kubectl wait --for=condition=Ready $(kubectl get pod -l app.kubernetes.io/name=postgresql -o=name)
kubectl port-forward svc/twitter-app-postgresql 5432:5432