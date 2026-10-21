# Kubernetes (K8s) Practice Playground ☸️

Welcome to my Kubernetes practice repository! This project serves as a personal sandbox for learning, experimenting, and deploying various K8s resources.

## 📋 Prerequisites

Before running any manifests, ensure you have the following installed:
*   [Docker](https://docs.docker.com/get-docker/) (or another container runtime)
*   [kubectl](https://kubernetes.io/docs/tasks/tools/) (Kubernetes command-line tool)
*   [Minikube](https://minikube.sigs.k8s.io/docs/start/) (for local cluster testing) or access to a cloud K8s cluster.

## 🚀 Getting Started

1. **Start your local cluster:**
   ```bash
   minikube start
   ```

2. **Verify your cluster is running:**
   ```bash
   kubectl cluster-info
   kubectl get nodes
   ```

## 🛠️ Common Commands

Here are a few handy commands I use regularly in this repo:

*   **Apply a manifest:** `kubectl apply -f <filename.yaml>`
*   **List resources:** `kubectl get pods,svc,deployments`
*   **Describe a resource:** `kubectl describe pod <pod-name>`
*   **Check logs:** `kubectl logs <pod-name>`
*   **Delete a resource:** `kubectl delete -f <filename.yaml>`

## 📁 Repository Structure

*   `/pods` - Basic single or multi-container pod manifests.
*   `/deployments` - ReplicaSets, Deployments, and rolling update examples.
*   `/services` - ClusterIP, NodePort, and LoadBalancer configurations.
*   `/configmaps-secrets` - Managing application configuration and sensitive data.

## 🛑 Clean Up

To stop your local Minikube cluster when you are done practicing:
```bash
minikube stop
```
# kubernetes-practice
# Kubernetes (K8s) Practice Playground ☸️

Welcome to my Kubernetes practice repository! This project serves as a personal sandbox for learning, experimenting, and deploying various K8s resources.

## 📋 Prerequisites

Before running any manifests, ensure you have the following installed:
*   [Docker](https://docs.docker.com/get-docker/) (or another container runtime)
*   [kubectl](https://kubernetes.io/docs/tasks/tools/) (Kubernetes command-line tool)
*   [Minikube](https://minikube.sigs.k8s.io/docs/start/) (for local cluster testing) or access to a cloud K8s cluster.

## 🚀 Getting Started

1. **Start your local cluster:**
   ```bash
   minikube start
   ```

2. **Verify your cluster is running:**
   ```bash
   kubectl cluster-info
   kubectl get nodes
   ```

## 🛠️ Common Commands

Here are a few handy commands I use regularly in this repo:

*   **Apply a manifest:** `kubectl apply -f <filename.yaml>`
*   **List resources:** `kubectl get pods,svc,deployments`
*   **Describe a resource:** `kubectl describe pod <pod-name>`
*   **Check logs:** `kubectl logs <pod-name>`
*   **Delete a resource:** `kubectl delete -f <filename.yaml>`

## 📁 Repository Structure

*   `/pods` - Basic single or multi-container pod manifests.
*   `/deployments` - ReplicaSets, Deployments, and rolling update examples.
*   `/services` - ClusterIP, NodePort, and LoadBalancer configurations.
*   `/configmaps-secrets` - Managing application configuration and sensitive data.

## 🛑 Clean Up

To stop your local Minikube cluster when you are done practicing:
```bash
minikube stop
```
