# Azure Security Technologies (AZ-500)

## Trilhas de Aprendizagem

### Trilha 1: Identidade e Acesso Seguro
- Gerenciar controles de segurança para identidade e acesso
- Gerenciar acesso de aplicações do Microsoft Entra
- Laboratório do módulo

### Trilha 2: Rede Segura
- Planejar e implementar segurança para redes virtuais
- Planejar e implementar segurança para acesso privado aos recursos do Azure
- Planejar e implementar segurança para acesso público aos recursos do Azure
- Laboratórios do módulo

### Trilha 3: Computação, Armazenamento e Bancos de Dados Seguros
- Planejar e implementar segurança avançada para computação
- Planejar e implementar segurança para armazenamento
- Planejar e implementar segurança para Azure SQL Database e Azure SQL Managed Instance
- Laboratórios do módulo

### Trilha 4: Proteção do Azure com Microsoft Defender for Cloud e Microsoft Sentinel
- Implementar e gerenciar a aplicação de políticas de governança na nuvem
- Gerenciar postura de segurança usando Microsoft Defender for Cloud
- Configurar e gerenciar proteção contra ameaças usando Microsoft Defender for Cloud
- Configurar e gerenciar soluções de monitoramento e automação de segurança
- Laboratórios do módulo


# Gerenciar controles de segurança para identidade e acesso

Conta de emergência, segura e não usada regularmente, que pode ser usada para acessar recursos críticos em caso de emergência.

https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/security-emergency-access

### Ciclos de vida e revisões de acesso

-Gerenciar o ciclo de vida de acesso de usuários e grupos
- Revisar o acesso de usuários e grupos
- Garantir acesso de emergência a recursos críticos
- Security privileged operations


Gerenciamento de Identidade e Acesso Seguro

Controlar o de acesso a recursos do Azure e do Microsoft Entra ID, garantindo que apenas usuários autorizados tenham acesso.
Incluindo Single Sign-On (SSO), autenticação multifator (MFA) e gerenciamento de identidade privilegiada (PIM).

### Acesso privilegiado

- Cobre o controle para proteger acesso ao tenant e recursos do Azure, incluindo o controle para proteger o modelo administrativo, contas administrativas, e privilegios de acesso.

# Pontos em destaque

- CIS - Critical Security Controls

- NIST SP 800-53

- PCI DSS - Payment Card Industry Data Security Standard 


https://datacenters.microsoft.com/globe/explore/


| Feature                                                       | Free | P1  | P2  | Governance |
|---------------------------------------------------------------|:----:|:---:|:---:|:----------:|
| Single Sign-On (unlimited)                                    |  ✓   | ✓   | ✓   |            |
| Cloud and Federated authentication                            |  ✓   | ✓   | ✓   |            |
| Advanced group management                                     |      | ✓   | ✓   |            |
| Self-service account management portal                        |  ✓   | ✓   | ✓   |            |
| Multifactor authentication (MFA)                              |  ✓   | ✓   | ✓   |            |
| Conditional access                                            |      | ✓   | ✓   |            |
| Risk-based Conditional Access (sign-in risk, user risk)       |      |     | ✓   |            |
| Automated user and group provisioning to apps                 |      | ✓   | ✓   |     ✓      |
| Privileged identity management (PIM)                          |      |     | ✓   |     ✓      |

# Group protection

User risk

O usuário pode ser bloqueado se o Microsoft Entra ID detectar um risco de segurança, como comprometimento de conta, etc.

Sign-in risk

Quando o Microsoft Entra ID detecta um risco de segurança ao fazer login, brute force e etc...

Insider risk

Se alguem tenta partilhar um arquivo com um usuário externo, o Microsoft Entra ID pode bloquear o compartilhamento e notificar o administrador.

# Links úteis

https://thecybergeneral.hashnode.dev/how-to-set-up-an-active-directory-lab

https://www.microsoft.com/en-us/evalcenter/download-windows-server-2025?msockid=0023e2f4e9b469b51b52f4e9e8ba6836