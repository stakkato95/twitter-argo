echo "`nadd label to default namespace...`n"
kubectl label ns default istio-injection=enabled
echo "`n1-istio-init...`n"
kubectl apply -f 1-istio-init.yaml
echo "`n2-istio-minikube...`n"
kubectl apply -f 2-istio-minikube.yaml