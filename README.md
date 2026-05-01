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


**CIS-92MM Deployment Instructions**

In order to deploy this application to a Kubernetes cluster run the following command from project folder in your cluster:  

**kubectl apply -f deployment/**

Once deployement is applied, acquire the external IP address once assigned by running the following command:

**kubectl get all**

The issued ip address may take awhile, you may opt to use the following command to watch for the new ip address to be issued:

**watch kubectl get all**

Commence testing by visiting the external ip address in your web browser.

Once testing is completed you can unload/delete the deployment with the folowing command:

**kubectl delete -f deployment/**

Please bring your seats to their upright positions...