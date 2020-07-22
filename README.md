# See5/C5.0 docker 

This docker container builds C5.0 using its official sources.

How to build this container:

         docker build --tag c50 .
  
How to use this container, demonstraited on the well known example of income prediction:

        wget https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data
        wget https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.names
        wget https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.test
        docker run --rm -v $(pwd):/workspace -w /workspace c50 /c5.0 -f adult
        
Improvements are wellcome

For the first couple of month I run this build as a testcase in my Jenkins:
https://www.tmcombi.org/jenkins/job/docker-See5-C5.0/
