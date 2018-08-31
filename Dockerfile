FROM ibmcom/icp-inception:2.1.0.3

COPY all.yaml /installer/playbook/group_vars/all.yaml
COPY common.yaml /installer/playbook/roles/kubelet/tasks/common.yaml
COPY kubelet.service.j2 /installer/playbook/roles/kubelet/templates/kubelet.service.j2

COPY always.yaml /installer/playbook/roles/common/tasks/always.yaml
COPY common.yaml /installer/playbook/roles/kubelet/tasks/common.yaml
COPY config.yaml /installer/playbook/roles/master/tasks/config.yaml

COPY master.json.j2 /installer/playbook/roles/master/templates/pods/master.json.j2

COPY calico-1.1.0.tgz /addon/calico/

COPY azure_cloud_conf.j2 /installer/playbook/roles/kubelet/templates/azure_cloud_conf.j2
COPY azure_cloud_conf-controller.j2 /installer/playbook/roles/master/templates/conf/azure_cloud_conf-controller.j2
