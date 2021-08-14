test:

install-collections-roles:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook playbook.yml -i inventory.ini

ping:
	ansible all -i inventory.ini -m ping
