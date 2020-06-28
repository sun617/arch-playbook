if status --is-interactive
  abbr --add --global kap   kubectl apply --filename
  abbr --add --global kat   kubectl attach
  abbr --add --global ke    kubectl exec
  abbr --add --global kp    kubectl get pods
  abbr --add --global krp   kubectl delete pods
  abbr --add --global kdp   kubectl describe pods
  abbr --add --global kl    kubectl logs
  abbr --add --global kse   kubectl --namespace kube-system exec
  abbr --add --global ksp   kubectl --namespace kube-system get pods
end
