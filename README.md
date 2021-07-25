## Setup Prometheus
Make sure ingress domain on `p-prometheus-ingress.yaml` is match.

```
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: prometheus-ui
  namespace: monitoring
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
  # Use the host you used in your kubernetes Ingress Configurations
  - host: monitoring.domain.id
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: prometheus-service
            port:
              number: 8080

```

Then run

```
./install-prometheus.sh
```

## Setup Grafana

Make sure ingress domain on `p-grafana-ingress.yaml` is match.

```
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: grafana-ingress
  namespace: monitoring
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
  - host: resource.domain.id
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: grafana
            port:
              number: 3000

```

Then run

```
./install-grafana.sh
```

