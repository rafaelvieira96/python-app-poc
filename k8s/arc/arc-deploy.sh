INSTALLATION_NAME="gke-agents"
NAMESPACE="agents"
GITHUB_CONFIG_URL="https://github.com/rafaelvieira96/python-app-poc"
GITHUB_PAT="xxxx"
helm install "${INSTALLATION_NAME}" \
    --namespace "${NAMESPACE}" \
    --create-namespace \
    --set githubConfigUrl="${GITHUB_CONFIG_URL}" \
    --set githubConfigSecret.github_token="${GITHUB_PAT}" \
    oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set

