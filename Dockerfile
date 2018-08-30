FROM ibmcom/icp-inception:2.1.0.3

COPY all.yaml /installer/playbook/group_vars/all.yaml
COPY common.yaml /installer/playbook/roles/kubelet/tasks/common.yaml
COPY kubelet.service.j2 /installer/playbook/roles/kubelet/templates/kubelet.service.j2 

COPY calico-1.1.0.tgz /addon/calico/ 
