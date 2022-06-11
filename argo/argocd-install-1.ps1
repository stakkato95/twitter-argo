helm repo add argo https://argoproj.github.io/argo-helm
helm install argocd argo/argo-cd -n argocd --create-namespace

echo "`nwaiting for argo to be ready..."
kubectl wait --for=condition=Ready svc/argocd-server -n argocd
kubectl port-forward svc/argocd-server -n argocd 8080:443