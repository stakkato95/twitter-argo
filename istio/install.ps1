echo "`n1-istio-init...`n"
kubectl apply -f 1-istio-init.yaml
echo "`n2-istio-minikube...`n"
kubectl apply -f 2-istio-minikube.yaml