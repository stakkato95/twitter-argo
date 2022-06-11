# wait for argo to be ready
echo "waiting for argo to be ready..."
kubectl wait --for=condition=Ready svc/argocd-server -n argocd

# read default password
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" > password.txt
certutil -decode password.txt password-decoded.txt > $null

echo "admin password:"
$adminPassword = cat password-decoded.txt

rm password.txt
rm password-decoded.txt

# login with default password
argocd login --core
argocd login localhost:8080 --username admin --password $adminPassword

# update default password
$newAdminPassword = "adminadmin"
argocd account update-password --account admin --current-password $adminPassword --new-password $newAdminPassword