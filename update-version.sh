WORKDIR="C:/"
TMPDIR="DevOpsFinalProject"
GITREPO="https://github.com/itaybiton/DevOpsFinalProject.git"
RESOURCE="C:\Program Files\Apache Software Foundation\Tomcat 8.5\webapps\omer-dan-itay-amit"
 
cat <<EOF
     _            _                                   _ 
    | |          | |                                 | |
  __| | ___ _ __ | | ___  _   _   _ __  _ __ ___   __| |
 / _  |/ _ \   _ | |/ _ \| | | | |  _ \|  __/ _ \ / _  |
| (_| |  __/ |_) | | (_) | |_| | | |_) | | | (_) | (_| |
 \__,_|\___| .__/|_|\___/ \__, | | .__/|_|  \___/ \__,_|
           | |             __/ | | |                    
           |_|            |___/  |_|                    

EOF

cd "${WORKDIR}"
# DELETE FOLDER IF EXISTS
echo "delete tmp folder if exists: ${WORKDIR}/${TMPDIR}"
rm -rf "${TMPDIR}"
# CLONE GIT REPO
echo "cloning project: ${GITREPO} to tmp folder: ${WORKDIR}/${TMPDIR}"
git clone "${GITREPO}"
cd "${TMPDIR}"
echo "" # new line

# REMOVE PREVIOUS RESOURCE
echo "remove previous version from: ${RESOURCE}"
rm -rf "${RESOURCE}"
# CREATE NEW RESOURCE FOLDER
mkdir "${RESOURCE}"
# COPY RESOURCE TO TARGET FOLDER
echo "copy new version (index.jsp) to: ${RESOURCE}"
cp index.jsp "${RESOURCE}"

echo "cleaning tmp folder: ${WORKDIR}/${TMPDIR}"
rm -rf "${WORKDIR}/${TMPDIR}"