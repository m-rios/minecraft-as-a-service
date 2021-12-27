.PHONY: all os server

all: os server

os: ansible.cfg hosts playbooks/system-setup.yaml
	ansible-playbook playbooks/system-setup.yaml

server: ansible.cfg hosts playbooks/system-setup.yaml
	ansible-playbook playbooks/minecraft-server-setup.yaml
