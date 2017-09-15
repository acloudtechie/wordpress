Constratins:
   1. Autoscaling, ELB, RDS are not available
   2. Shared account
   
Assumptions:
   1. Dev site without HA requirements
   
Design: For a typical Wordpress HA site, it could either leverage multi-AZ RDS, ELB, and Autoscaling Group to achieve high availability.  However, for this exercise, due to the containts and limitations stated above, the Ansible playbooks and CloudFormation template will not create a HA wordpress site.
