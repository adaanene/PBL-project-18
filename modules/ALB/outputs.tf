output "alb-dns-name" {
  value = aws_lb.ext-alb.arn
  description = "External lb arn"
}

output "wordpress-tgt" {
  value = aws_lb_target_group.wordpress-tgt
  description = "wordpress target group"
}

output "tooling-tgt" {
  value = aws_lb_target_group.tooling-tgt
  description = "tooling target group"
}

output "nginx-tgt" {
  value = aws_lb_target_group.nginx-tgt
  description = "nginx target group"
}

