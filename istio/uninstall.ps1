echo "`n2-istio-minikube...`n"
kubectl delete -f 2-istio-minikube.yaml
echo "`n1-istio-init...`n"
kubectl delete -f 1-istio-init.yaml
