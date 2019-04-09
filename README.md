# docker-anaconda3-notebook
Just simple way for running Anaconda3 Jupyter Notebook.

### How to use
`/home/user/notebook` is the userdata directory.

#### Usage without password.
`docker run -d -v notebook:/home/user/notebook maxsid/anaconda3-notebook`

#### Usage with password.
Generate a hash of the password.
`get_hash.sh <password>`

Set the gotten hash in `$PASSHASH`.
`docker run -d -e PASSHASH=<hash> -v notebook:/home/user/notebook maxsid/anaconda3-notebook`
or
`docker run -d -e PASSHASH=$(get_hash.sh <password>) -v notebook:/home/user/notebook maxsid/anaconda3-notebook`
