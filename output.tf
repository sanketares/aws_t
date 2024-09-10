output "instance_ip_addrs" {
  value       = aws_instance.sanket[*].private_ip
  description = "The private IP addresses of all server instances."
  sensitive   = true
}
