## File transfer between local machine and AWS S3

Commands:
Go to the project folder

1. Build docker: `docker build -t <container_name> .`

2. Run docker: `docker run --rm -v <Host>:<mount_path_in_docker> <container_name> <up/dwn> <local_dir> <file> <s3_dir> <BUCKET>  <ACCESS_KEY> <SEC_KEY> <REGION>`

---

### Example:

Download `text.txt` file from `s3://bucket/test_dir/` and save it to `/home/pratik/test.t`

`docker run --rm -v /Users/pratik:/home/pratik mover dwn /home/pratik test.txt bucket test_dir <ACC_KEY> <SEC_KEY> <REGION>`
