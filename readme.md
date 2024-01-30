
# Projeto de Containers - Curso de DevOps - Vem Ser Tech Ada

## Aluno:
- Juan Soto Sotelo

## Objetivo

- Procurar uma aplicação web de exemplo (na linguagem de preferencia de vocês)

- Trabalhar nesse app com Dockerfile e docker-compose.yaml

- O compose precisa conter 1 banco de dados (mysql ou postgresql)

- Compose precisar conter pelo menos 2 serviços
- 
- banco de dados com Volume

- Network (criar e referenciar uma network no compose)

- O serviço de app precisa ter dependencia do serviço de banco. Ou seja o o banco precisa subir primeiro que o app

- Mostrar a aplicação funcionando na porta 80 localmente.

- Plus: Criar stack no swarm com mais de 1 replica.

# Solução:
---------

![Solucao](/files/Projeto_Redes_solucao.png)

--->link da nossa [solucao](./Projeto_Redes_Equipe1.pkt)

## Configuração das Redes

Rede A:
-------
- Monte a rede com 4 PCs, um servidor e um switch na configuração estrela (switch na posição central).
- Conecte os dispositivos. 
- Configure o servidor DHCP com o IP estático:
    - 192.168.10.254 (Gateway)
    - 192.168.10.253 (DNS)

![Servidor DHCP](/files/server_DHCP.png)

- Configure  e ative o serviço DHCP:
    - 192.168.10.254 (Gateway)
    - 192.168.10.253 (DNS)

![Servico DHCP](/files/server_DHCP1.png)

- Para cada uma das PCs, configure o IP usando o protocolo DHCP. Dessa forma o servidor distribuira os IP's para cada computador.

![PCs IP](/files/pc1.png)



Rede B:
-------
- Monte a rede com 4 PCs, um servidor e um switch na configuração estrela (switch na posição central).
- Conecte os dispositivos.
- Configure o servidor DHCP com o IP estático:
    - 172.15.0.254 (Gateway) 
    - 172.15.0.253 (DNS)

![Servidor DHCP(1)](/files/server_DHCP(1).png)

- Configure  e ative o serviço DHCP:
    - 172.15.0.254 (Gateway) 
    - 172.15.0.253 (DNS)

![Servico DHCP(1)](/files/server_DHCP(1)1.png)

- Para cada uma das PCs, configure o IP usando o protocolo DHCP. Dessa forma o servidor distribuira os IP's para cada computador.

![PCs IP](/files/pc3(1).png)

- Servidor web:
    - Desligue o servidor e troque a placa de rede por uma PT-HOST-NM-1CGE (para melhorar o tráfego de navegação), ligue o servidor novamente.

![Servidor web](/files/server_web2ada.png)

    - Configure os IPs do servidor:
        - 172.15.0.254 (Gateway) 
        - 172.15.0.253 (DNS)
        
![Servidor web](/files/server_web2ada1.png)
        
    - Ative os serviços http
    
![Servidor web](/files/server_web2ada2.png)

## Configuração do Roteamento

- Ligue o roteador
- Incluia as redes A e B usando o protocolo de roteamento RIP.

![router](/files/router_ring.png)

- Verifique as conexões das redes A e B com o roteador e  configure as rotas das redes para as interfaces FastEthernet0/0 e FastEthernet0/1:

![router](/files/router.png)

![router](/files/router1.png)

## Configuração do DNS

Finalmente, nos servidores DHCP das redes A e B incluia os dns do servidor web da rede B

![DNSweb2](/files/server_DHCP2.png)


![DNSweb2](/files/server_DHCP(1)2.png)
  

## Testes

### Comunicação
---------------

- Abra um prompt de comando em um dos desktops da rede A e execute o comando ping para o endereço IP do servidor da rede B:

![comunicacao](/files/ping_pc0.png)


### Acesso WEB
---------------

- Teste o acesso HTTP ao servidor web da rede B usando o IP:
    - Abra um navegador da web em um dos PCs da rede A e insira o IP na barra de endereços.

![web_ip](/files/pc3webada.png)

- Teste o acesso HTTP ao servidor web da rede B usando o nome de domínio:
    - Abra um navegador da web em um dos PCs da rede A e insira o nome de domínio na barra de endereços.

![web_ip](/files/pc3webada1.png)
