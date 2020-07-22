pipeline {
    agent { label 'dockerHost' }

    stages {
        stage('Build-Docker') {
            steps {
                echo 'Creating a docker container and building c5.0'
		sh 'docker build --tag c50 .'
            }
        }
       stage('Run-Toy-Training') {
            steps {
                echo 'Running toy example: adult income prediction'
		sh 'wget https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data'
		sh 'wget https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.names'
		sh 'wget https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.test'
		sh 'docker run --rm -v $(pwd):/workspace -w /workspace c50 /c5.0 -f adult'
            }
        }
    }
}
