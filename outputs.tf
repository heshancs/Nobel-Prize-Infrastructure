output "frontend_instance_id" {
  description = "The ID of the frontend instance"
  value       = aws_instance.frontend.id
}

output "backend_instance_id" {
  description = "The ID of the backend instance"
  value       = aws_instance.backend.id
}
