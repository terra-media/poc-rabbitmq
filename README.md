# poc-rabbitmq
Poc vagrant + rabbitmq


<h6>Inicialiar os ambientes com vagrant - node1 e node2 </h6>
```
  cd poc-rabbitmq/
  vagrant up
```  
  
<h6>Verificar o status das maquinas(node1/node2)</h6>
```
  vagrant status
  
node1                     running (virtualbox)
node2                     running (virtualbox)
```

<h6>Acesso as maquinas</h6>
```
  vagrant ssh node1
  vagrant ssh node2
```
<h6>Acesso ao RabbitMQ Management</h6>
[http://192.168.0.100:15672/](http://192.168.0.100:15672/) <br/>
[http://192.168.0.200:15672/](http://192.168.0.200:15672/)
```
Usuário: guest
Senha: guest
```
