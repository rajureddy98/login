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
        sh 'sudo docker build -t login:1.0 .'
    }
}

