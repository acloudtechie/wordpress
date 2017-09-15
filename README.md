Constratins:
   1. Autoscaling, ELB, RDS are not available
   2. Shared account
   
Assumptions:
   1. Dev site without HA requirements
   
Design: 
   1. For a typical Wordpress HA site, it could either leverage multi-AZ RDS, ELB, and Autoscaling Group to achieve high availability.  However, for this exercise, due to the containts and limitations stated above, the Ansible playbooks and CloudFormation template are not built for a HA site.
   
   2. However, the scripts are develope with the option to convereted to supporting HA options with ease. 
      i. Subnets are created with 2 AZs for both Ansible Playbooks and CloudFormation templates. 
      2. DB is placed in a separate private subnet.
      3. Bastion server is created for the option to lock down the ssh access, if needed.
      4. For HA support, wordpress can be replicated in the 2nd AZ and using either ELB or a proxy server like Nginx to load balancing.
      

Deliverable:
    1. Ansible playbooks: aws.yml, site.yml
    2. Cloudformation template: Cloudformation.json
