# AWS EKS Terraform with Prometheus and Grafana

This project sets up an Amazon Elastic Kubernetes Service (EKS) cluster using Terraform and deploys Prometheus and Grafana for monitoring and visualization. 


## Prerequisites

- AWS Account with appropriate permissions
- Terraform installed
- kubectl (Kubernetes command-line tool) installed
- kustomize installed (if using kustomize manifests)

1. Configure AWS credentials:

```bash
    aws configure
```

2. Initialize Terraform: `terraform init`
3. Review and customize the Terraform configuration files as needed.
4. Plan the infrastructure changes: `terraform plan`
5. Apply the changes to create the EKS cluster and related resources: `terraform apply`

6. After the cluster is provisioned, configure kubectl to connect to the EKS cluster using the provided instructions.
Deploy applications and resources to the EKS cluster using the Kubernetes manifests in the `k8s_manifests/` directory.

If using Kustomize, navigate to the `kustomize/` directory and apply the manifests using `kubectl apply -k .`

7. Access the Prometheus and Grafana dashboards using the provided URLs or LoadBalancer endpoints.

### Monitoring
This project includes the deployment of Prometheus and Grafana for monitoring the EKS cluster and applications.

Prometheus is a open-source monitoring and alerting tool that collects metrics from various sources, including Kubernetes clusters.
Grafana is a visualization tool that can be used to create dashboards and visualize the metrics collected by Prometheus.
To access the Prometheus and Grafana dashboards, follow the instructions provided after the successful deployment.

### Load Testing
The load_test/ directory contains scripts or tools for performing load testing on the deployed applications. You can use tools like hey, locust, or k6 to generate load and test the performance of your applications.

### Cleanup
To clean up and delete the EKS cluster and related resources, navigate to the terraform/ directory and run:

```bash
terraform destroy
```
This will remove all the resources created by Terraform.