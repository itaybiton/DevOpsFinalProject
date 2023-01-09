WORKDIR="C:\Users\Amit Asher\Desktop"
TMPDIR="DevOpsFinalProject"
GITREPO="https://github.com/itaybiton/DevOpsFinalProject.git"
RESOURCE="C:\Program Files\Apache Software Foundation\Tomcat 8.5\webapps\omer-dan-itay-amit"

cd $WORKDIR
# DELETE FOLDER IF EXISTS
rm -rf $TMPDIR
# CLONE GIT REPO
git clone $GITREPO
cd $TMPDIR

# REMOVE PREVIOUS RESOURCE
rm -rf "${RESOURCE}"
# CREATE NEW RESOURCE FOLDER
mkdir "${RESOURCE}"
# COPY RESOURCE TO TARGET FOLDER
cp index.jsp "${RESOURCE}"

rm -rf "${WORKDIR}/${TMPDIR}"