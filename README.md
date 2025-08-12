# 🚀 Aprendendo mais sobre Terraform

Este projeto é um **ambiente de desenvolvimento completo** para aplicações **Django**, criado com **Terraform** e **Ansible**.  

💡 **O que você vai encontrar aqui?**
- ☁️ Infraestrutura provisionada automaticamente com Terraform  
- 🤖 Configuração de servidor via Ansible  
- 🛠 Ajuste automático no `settings.py` do Django para permitir acesso a qualquer IP  
- 🐚 Scripts em **Shell** prontos para execução, divididos em tarefas

---

## 📦 O que esse projeto faz
1. **Provisiona** o servidor na nuvem  
2. **Configura** dependências necessárias para rodar o Django  
3. **Ajusta** permissões de acesso no projeto  
4. **Automatiza** processos com scripts separados por etapas

---

## 🏗 Tecnologias utilizadas
- **Terraform** – Provisionamento de infraestrutura  
- **Ansible** – Automação da configuração  
- **Django** – Framework web Python  
- **Shell Script** – Execução de tarefas automatizadas

---

## 🖥 Pré-requisitos
Antes de começar, você precisa ter instalado na sua máquina:
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [Python 3](https://www.python.org/downloads/)

---

## 📌 Como usar
```bash
# 1. Clone o repositório
git clone git@github.com:mataroh/iac-alura.git
cd iac-alura.git

# 2. Provisione a infraestrutura
terraform init
terraform apply

# 3. Configure o servidor
ansible-playbook playbook.yml -u user --private-key your_private_key.pem -i hosts.yml

# 4. Dentro da EC2 ative a venv
. /home/ubuntu/tcc/venv/bin/activate

# 5. Ative o servidor de desenvolvimento django
python manage.py runserver 0.0.0.0:8000

# 6. Acesse seu Django no navegador
http://IP_DO_SERVIDOR:8000
````
🎯 Objetivo do projeto

Praticar o uso integrado de Terraform e Ansible, criando um ambiente de desenvolvimento Django pronto para uso, com automações e boas práticas de DevOps.

💬 Sinta-se à vontade para clonar, modificar e contribuir com melhorias!

Obrigado!
