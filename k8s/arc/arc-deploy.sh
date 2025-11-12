INSTALLATION_NAME="arc-runner-set"   # este nome será usado no runs-on:
NAMESPACE="arc-runners"
GITHUB_CONFIG_URL="https://github.com/rafaelvieira96/python-app-poc"

# Se usar PAT (quickstart)
GITHUB_PAT="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"

helm install "${INSTALLATION_NAME}" \
  --namespace "${NAMESPACE}" \
  --create-namespace \
  --set githubConfigUrl="${GITHUB_CONFIG_URL}" \
  --set githubConfigSecret.github_token="${GITHUB_PAT}" \
  oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set
