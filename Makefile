test:

install-collections-roles:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook --ask-vault-pass playbook.yml -i inventory.ini

ping:
	ansible all -i inventory.ini -m ping

encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml
decrypt:
	ansible-vault decrypt group_vars/webservers/vault.yml
