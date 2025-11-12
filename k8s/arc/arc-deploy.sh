NAMESPACE_SYS="arc-systems"

helm install arc \
  --namespace "${NAMESPACE_SYS}" \
  --create-namespace \
  oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set-controller

echo "aguarde...."

sleep 5

INSTALLATION_NAME="arc-runner-set"   # este nome será usado no runs-on:
NAMESPACE_RUNNER="arc-runners"
GITHUB_CONFIG_URL="https://github.com/rafaelvieira96/python-app-poc"
GITHUB_PAT="token"

helm install "${INSTALLATION_NAME}" \
  --namespace "${NAMESPACE_RUNNER}" \
  --create-namespace \
  --set githubConfigUrl="${GITHUB_CONFIG_URL}" \
  --set githubConfigSecret.github_token="${GITHUB_PAT}" \
  --set minRunners=1 \
  --set maxRunners=2 \
  oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set
