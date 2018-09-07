FROM ibmcom/icp-inception-amd64:latest-ee

COPY calico-1.1.1.tgz /addon/

# RUN sed -i 's|^network_helm_chart_path:.*|network_helm_chart_path: "/addon/calico-1.1.1.tgz"|' /installer/playbook/group_vars/all.yaml
COPY all.yaml /installer/playbook/group_vars/all.yaml
COPY always.yaml /installer/playbook/roles/common/tasks/always.yaml
COPY common.yaml /installer/playbook/roles/kubelet/tasks/common.yaml
COPY azure_cloud_conf.j2 /installer/playbook/roles/kubelet/templates/azure_cloud_conf.j2
COPY kubelet.service.j2 /installer/playbook/roles/kubelet/templates/kubelet.service.j2
COPY config.yaml /installer/playbook/roles/master/tasks/config.yaml
COPY azure_cloud_conf-controller.j2 /installer/playbook/roles/master/templates/conf/azure_cloud_conf-controller.j2
COPY master.json.j2 /installer/playbook/roles/master/templates/pods/master.json.j2
