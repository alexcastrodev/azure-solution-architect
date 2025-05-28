Summary

Esta sessão forneceu uma introdução abrangente ao DevOps, cobrindo os conceitos fundamentais, práticas e ferramentas necessárias para implementar uma cultura DevOps eficaz nas organizações.

### O que é DevOps

DevOps é uma cultura organizacional que visa aumentar a comunicação, colaboração e integração entre as equipes de desenvolvimento (Dev) e operações de TI (Ops). O objetivo principal é quebrar os silos departamentais tradicionais, permitindo entregas de software mais rápidas, frequentes e confiáveis.

Os principais pilares do DevOps incluem:

- Eliminar desperdício e aumentar a qualidade
- Reduzir o tempo de entrega de valor (time to value)
- Melhorar a estabilidade, fiabilidade, disponibilidade e segurança dos sistemas
- Proporcionar feedback rápido e contínuo

### Os Três Caminhos (Three Ways) do DevOps

1. **First Way (Flow)**: Foco em otimizar o fluxo de trabalho da esquerda para a direita (desenvolvimento até produção)
    - Identificar e eliminar constrangimentos (Theory of Constraints)
    - Nunca passar problemas para a próxima etapa
    - Utilizar Infrastructure as Code para consistência e automatização
2. **Second Way (Feedback)**: Criar ciclos de feedback rápidos e contínuos
    - Shift-left testing para encontrar bugs o mais cedo possível
    - Comunicação frequente com o cliente para ajustes contínuos
    - Implementar testes automatizados (unitários, integração, sistema)
3. **Third Way (Continuous Learning)**: Experimentação e aprendizagem contínua
    - Alocar tempo para melhorar processos e ferramentas
    - Realizar hackathons para inovação
    - Implementar Chaos Engineering para testar resiliência

### Práticas de CI/CD

- **Continuous Integration (CI)**: Integração frequente de código em um repositório compartilhado com testes automatizados
    - Testes unitários, de integração e de sistema
    - Feedback rápido sobre a qualidade do código
- **Continuous Delivery**: Automatização do processo de entrega, mantendo o software sempre pronto para implantação
    - Requer aprovação manual para implantação em produção
    - Reduz riscos com ambiente de pré-produção
- **Continuous Deployment**: Automatização completa do processo de implantação sem intervenção humana
    - Mais arriscado para ambientes de produção
    - Ideal para ambientes de teste/qualidade

### Estratégias de Implantação

- **A/B Testing**: Comparação de duas variantes para avaliar desempenho
- **Canary Releases**: Liberação gradual para um pequeno grupo de usuários
- **Blue-Green Deployment**: Manter duas versões (atual e nova) com troca rápida
- **Deployment Slots**: Recurso do Azure App Services para facilitar implantações

### Ferramentas e Tecnologias

- **Repositórios de Código**: GitHub, GitLab, Azure DevOps
- **CI/CD**: Jenkins, GitHub Actions, Azure DevOps, CircleCI
- **Containerização**: Docker, Kubernetes, Azure Container Instances, AKS
- **Infrastructure as Code**: Terraform, Azure Bicep, ARM Templates
- **Monitoramento**: Azure Monitor, Application Insights, Splunk, Datadog
- **Comunicação**: Teams, Slack (ChatOps)

### Conceitos Relacionados

- **Microserviços**: Arquitetura de software com componentes pequenos e independentes conectados via APIs
- **Aplicações Monolíticas**: Aplicações com todos os componentes integrados, dificultando escalabilidade
- **Load Balancing**: Distribuição de carga entre múltiplas instâncias para maior resiliência
- **Time to Restore Service**: Tempo necessário para restaurar um serviço após falha
- **Change Failure Rate**: Frequência com que novos lançamentos causam degradação do serviço

### Action Items

- [ ]  Explorar o DevOps Handbook para aprofundar os conceitos
- [ ]  Investigar as ferramentas mencionadas na tabela periódica de DevOps
- [ ]  Acessar o Moodle para obter os slides da apresentação compartilhados pelo instrutor
- [ ]  Realizar os exercícios práticos que serão disponibilizados no fórum do Moodle
- [ ]  Estudar os padrões de implementação (Blue-Green, Canary, etc.)
