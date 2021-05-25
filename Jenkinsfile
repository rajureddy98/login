node{
    stage('scm checkout') {
        git 'https://github.com/rajureddy98/login'
    }
    stage('hello'){
      sh 'echo "success"'
    }
    stage('maven'){
       sh ' mvn clean package'
    }
    stage('docker build'){
        sh 'docker build -t login:1.0 .'
    }
    stage('docker login and push'){
        sh 'docker login -u=rajureddy98 -p=rajureddy98'
        sh 'docker tag login:1.0 rajureddy98/login:1.0'
        sh 'docker push rajureddy98/login:1.0'
    }
    stage('execute playbook'){
        ansiblePlaybook become: true, colorized: true, credentialsId: 'aafa341c-5688-4454-97c3-4f6ea14a04d5', disableHostKeyChecking: true, installation: 'ansible', playbook: 'dockerrun.yaml'
    }
}

