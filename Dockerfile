FROM ibmcom/icp-inception:2.1.0.3

COPY calico-1.1.1.tgz /addon/calico/

COPY all.yaml playbook/group_vars/all.yaml
COPY always.yaml playbook/roles/common/tasks/always.yaml
COPY common.yaml playbook/roles/kubelet/tasks/common.yaml
COPY azure_cloud_conf.j2 playbook/roles/kubelet/templates/azure_cloud_conf.j2
COPY kubelet.service.j2 playbook/roles/kubelet/templates/kubelet.service.j2
COPY config.yaml playbook/roles/master/tasks/config.yaml
COPY azure_cloud_conf-controller.j2 playbook/roles/master/templates/conf/azure_cloud_conf-controller.j2
COPY master.json.j2 playbook/roles/master/templates/pods/master.json.j2
