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
    stage('connect to docker system'){
        sh 'ssh -o StrictHostKeyChecking=no rootr@13.126.134.216'
        sh 'docker run -d -p 8080:8080 rajureddy98/login:1.0'
    }
}

