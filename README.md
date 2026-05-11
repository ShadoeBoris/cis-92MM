# My CIS-92 Project 

This repository has the starter code for CIS-92MM. 

Author: Boris Jocoy

| **Variable Name** | **Default Value** | **Short Description** |
| --- | --- | --- | 
| **---** | **<ins>config.yaml</ins>** | **---** | 
| **PORT** | "8080" | *Set output port to 8080.*  | 
| **STUDENT_NAME** | "Boris Jocoy" | *My name.* | 
| **SITE_NAME** | "www.borisjocoy.com" | *Fake url.* | 
| **DATA_DIR** | "/data" | *Local data directory.* | 
| **DEBUG** | "1" | *Debugging set to on.* | 
| **POSTGRES_DB** | "mysite" | *Postgres database name.* | 
| **POSTGRES_HOSTNAME** | "postgres-postgresql" | *Hosted postgres database location.* | 
| **---** | **<ins>secret.yaml</ins>** | **---** | 
| **SECRET_KEY** | "this-is-a-bad-key" | *Secret key string - must match in other locations.*  | 
| **POSTGRES_PASSWORD** | "this-is-a-bad-password" | *Password string - must match in other locations.* | 
| **POSTGRES_USER** | "mysiteuser" | *Username for postgres database.* | 
| **---** | **<ins>values-postgres.yaml</ins>** | **---** | 
| username | mysiteuser | Postgres DB username | 
| password | this-is-a-bad-password | Postgres DB password | 
| database | mysite | Postgres DB database | 
| --- | resources: requests:| --- | 
| memory | "512Mi" | kubernetes memory request | 
| cpu | "500m" | kubernetes cpu request | 
| ephemeral-storage | "100Mi" | kubernetes ephemeral request | 
| --- | resources: limits: | --- | 
| memory | "512Mi" | kubernetes floor memory limit | 
| cpu | "500m" | kubernetes floor cpu limit | 
| ephemeral-storage | "100Mi" | kubernetes floor ephemeral storage limit | 
| --- | --- | --- | 


**CIS-92MM with Postgres SQL Deployment Instructions**

In order to deploy this application to a Kubernetes cluster run the following commands from project folder in cluster:  

**helm install postgres oci://registry-1.docker.io/bitnamicharts/postgresql --values values-postgres.yaml**

Once database services are set up, run:

**kubectl apply -f deployment/**

Once deployement is applied, acquire the external IP address once assigned by running the following command:

**kubectl get all**

The issued ip address may take awhile, you may opt to use the following command to watch for the new ip address to be issued:

**watch kubectl get all**

Commence testing by visiting the external ip address in your web browser.  This may take a moment.  Once application start page appears, you may navigate to the admin page by clicking the Goto Admin hyperlink.

To log in to the Django Administration, the default admin login credentials are:

**U: test**
**P: test**

**Deletion Instructions**
Once testing is completed you can unload/delete the deployment and delete the database with the following commands:

**kubectl delete -f deployment/**

then

**helm uninstall postgres**

**kubectl delete pvc data-postgres-postgresql-0**

Please bring your seats and trays to their upright positions...