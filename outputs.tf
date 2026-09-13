output "server_public_ip" {
  description = "Web sunucusunun genel IP adresi"
  value       = aws_instance.web_server.public_ip
}

output "server_url" {
  description = "Web uygulamasina erisim linki"
  value       = "http://${aws_instance.web_server.public_ip}"
}
