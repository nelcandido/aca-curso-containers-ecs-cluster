output "load_balancer_dns" {
  description = "O nome DNS do Load Balancer criado. Esse valor pode ser usado para acessar o Load Balancer dentro da rede ou pela internet, dependendo da configuraçao."
  value       = aws_lb.main.dns_name
}

output "lb_ssm_arn" {
  description = "O Amazon Resource Name (ARN) do parametro do AWS Systems Manager (SSM) que armazena o ARN do Load Balancer. Esse valor pode ser usado para referenciar o ARN do Load Balancer em politicas de IAM, regras de seguranca, ou em qualquer outro lugar que requeira o ARN do Load Balancer."
  value       = aws_ssm_parameter.lb_arn.id
}

output "lb_ssm_listener" {
  description = "O ID do parametro do AWS Systems Manager (SSM) que armazena o Listener do Load Balancer. Esse valor pode ser utilizado para referenciar o Listener em automaçoes, scripts, ou dentro de outras configuraçoes da AWS que necessitem do ID do Listener."
  value       = aws_ssm_parameter.lb_listener.id
}