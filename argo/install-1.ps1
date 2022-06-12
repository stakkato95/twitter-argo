helm repo add argo https://argoproj.github.io/argo-helm
helm install argocd argo/argo-cd -n argocd --create-namespace

echo "`nwaiting for argo to be ready..."
$serverPod = kubectl get pod -l app.kubernetes.io/name=argocd-server -n argocd -o name
kubectl wait --for=condition=Ready $serverPod -n argocd
kubectl port-forward svc/argocd-server -n argocd 8080:443