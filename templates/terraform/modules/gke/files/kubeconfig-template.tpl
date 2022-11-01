apiVersion: v1
kind: Config
clusters:
- name: ${context}
  cluster:
    certificate-authority-data: ${cluster_ca_certificate}
    server: https://${endpoint}
contexts:
- name: ${context}
  context:
    cluster: ${context}
    user: ${context}
current-context: ${context}
users:
- name: ${context}
  user:
    token: ${token}
preferences: {}